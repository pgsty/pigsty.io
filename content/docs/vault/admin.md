---
title: Administration
weight: 4984
description: VAULT administration procedures for creation, status checks, scaling, rebuilding, configuration, certificates, backup, recovery, upgrades, and removal.
icon: fa-solid fa-building-columns
module: [VAULT]
categories: [Task]
---

Common VAULT administration procedures:

- [Create a Cluster](#create-a-cluster): initialize VAULT.
- [Check Status](#check-status): inspect cluster, member, and Raft state.
- [Administrator Credentials](#administrator-credentials): use the root token safely.
- [Add Members](#add-members): add members or scale from one to three nodes.
- [Remove Members](#remove-members): retire existing members.
- [Rebuild a Member](#rebuild-a-member): recover from damaged data or replace hardware.
- [Update Configuration](#update-configuration): refresh configuration and certificates.
- [Backups](#backups): create snapshots manually and keep off-site copies.
- [Restore a Snapshot](#restore-a-snapshot): roll back data or rebuild after total data loss.
- [Upgrade OpenBao](#upgrade-openbao): update the software package.
- [Destroy a Cluster](#destroy-a-cluster): remove and recreate VAULT.

See the [VAULT FAQ](/docs/vault/faq) for other questions.


------

## Create a Cluster

Define the `vault` group in the [inventory](/docs/setup/config), and resolve its service domain with `node_etc_hosts`. See [Configuration](/docs/vault/config) for details:

```yaml
vault:
  hosts:
    10.10.10.11: { vault_seq: 1 }
    10.10.10.12: { vault_seq: 2 }
    10.10.10.13: { vault_seq: 3 }
  vars: { vault_cluster: vault, node_cluster: vault, vip_enabled: true, vip_vrid: 129, vip_address: 10.10.10.8 }
```

Provision the nodes through NODE, including the VIP, then run [`vault.yml`](/docs/vault/playbook#vaultyml):

```bash
./node.yml  -l vault               # Provision nodes and configure the L2 VIP
./node.yml  -t node_hosts          # Write vault.pigsty into /etc/hosts on all nodes
./vault.yml -l vault               # Create the cluster; bin/vault-add is also available
```

The playbook creates the seal key, initialization material, backup token, and initial snapshot in `files/pki/vault/` on the admin node. **Immediately back up the entire `files/pki/` directory to a secure location**.





------

## Check Status

`/etc/profile.d/bao.sh` sets the `bao` environment: `BAO_ADDR` points to local `https://127.0.0.1:8200`, and `BAO_CACERT` to `/etc/openbao/tls/ca.crt`.
Only root and the `openbao` group can read the TLS directory, so run `bao` as root on a member:

```bash
sudo -i                            # Switch to root and load /etc/profile.d/bao.sh
bao status                         # No token needed: initialization, seal, HA role, and Raft indexes
```

A healthy standby member produces output similar to:

```text
Key                      Value
---                      -----
Seal Type                static
Recovery Seal Type       shamir
Initialized              true
Sealed                   false
Total Recovery Shares    5
Threshold                3
Version                  2.7.2
Storage Type             raft
Cluster Name             vault
HA Enabled               true
HA Mode                  standby
Active Node Address      https://10.10.10.13:8200
Raft Committed Index     1150
Raft Applied Index       1150
```

To run as a regular user, use the globally readable Pigsty CA: `export BAO_CACERT=/etc/pki/ca.crt`.

Raft membership and Autopilot health checks require an administrator token; see [Administrator Credentials](#administrator-credentials):

```bash
bao operator raft list-peers                 # node_id, address, role, and voter status
bao operator raft autopilot state            # Cluster health, fault tolerance, and member health
```

Health endpoints require no token and can be accessed by service domain from any managed node:

```bash
curl -s --cacert /etc/pki/ca.crt https://vault.pigsty:8200/v1/sys/health   # Active returns 200
curl -s --cacert /etc/pki/ca.crt https://vault.pigsty:8200/v1/sys/leader   # Current active member address
```

Grafana's **Vault Overview** shows members, roles, seal status, Raft replication lag, and snapshot times. See [Monitoring](/docs/vault/monitor).





------

## Administrator Credentials

The root token and recovery keys generated during initialization are stored in `files/pki/vault/init.json` on the admin node:

```bash
jq -r .root_token ~/pigsty/files/pki/vault/init.json   # Read the root token on the admin node
```

On a member, enter the root token interactively into an environment variable to keep it out of command arguments and shell history:

```bash
sudo -i
read -rs BAO_TOKEN && export BAO_TOKEN      # Paste the root token and press Enter; input is hidden
bao operator raft list-peers
```

The root token has full privileges; use it briefly for administrative tasks only. Give applications policies and AppRoles with the minimum required privileges; see [Usage](/docs/vault/usage#issue-application-credentials).

In auto-unseal mode, the five recovery shares (threshold three) **cannot unseal the service**. They authorize quorum operations such as `bao operator generate-root`, for example to replace a lost root token.





------

## Add Members

### Recommended: Helper Script

```bash
# First add the new member to the inventory's vault group with a unique vault_seq, then run:
bin/vault-add 10.10.10.14
```

The script runs `./vault.yml -l 10.10.10.14`: it issues certificates, distributes the seal key, joins the existing cluster through Raft `retry_join`, unseals automatically, and registers monitoring.
The new member does not have the lowest `vault_seq`, so it never initializes the cluster.

Then refresh existing members' configuration, certificates, HAProxy endpoints, and backup scripts:

```bash
./vault.yml -l 'vault,!10.10.10.14' -t vault_config,vault_launch,vault_haproxy,vault_backup
```

If configuration or certificates change, `vault_launch` restarts existing members one at a time to apply the updates.


### Scale from One to Three Nodes

When scaling to three production members, the service domain changes from pointing to one member to pointing to a VIP. Existing certificates must include the VIP:

1. Add two members and configure `node_cluster`, `vip_enabled`, `vip_vrid`, and `vip_address` on the `vault` group.
2. Provision nodes and the VIP with `./node.yml -l vault`. Already managed nodes need only `./node.yml -l vault -t node_vip`.
3. Add members: `bin/vault-add 10.10.10.12 10.10.10.13`.
4. Refresh the original member's certificate, configuration, and endpoint. Certificate changes trigger its restart:

   ```bash
   ./vault.yml -l 10.10.10.11 -t vault_config,vault_launch,vault_haproxy,vault_backup
   ```

5. Point `vault.pigsty` at the VIP in `node_etc_hosts`, then run `./node.yml -t node_hosts` to update all nodes.
6. Verify that `bao operator raft list-peers` shows three voters and `/v1/sys/health` returns `200` through the VIP.

Check whether a certificate includes the VIP with `openssl x509 -in /etc/openbao/tls/server.crt -noout -ext subjectAltName` as root on the member.
If it does not, delete the corresponding `files/pki/vault/vault-<seq>.crt` on the admin node and repeat step 4.





------

## Remove Members

### Recommended: Helper Script

```bash
bin/vault-rm 10.10.10.13          # Remove 10.10.10.13 from the cluster
```

The script runs `./vault-rm.yml -l 10.10.10.13 -e vault_safeguard=false`: it executes `bao operator raft remove-peer vault-3` on a survivor, deregisters monitoring, stops services, and deletes local data and configuration.

**Keep the member in the inventory's `vault` group during execution**. The playbook needs the inventory to locate a surviving member for peer removal. If removal fails, for example due to an invalid administrator token, it aborts without deleting data.

After success, remove the member from the inventory and refresh the survivors' configuration and HAProxy endpoints:

```bash
vi pigsty.yml                     # Remove 10.10.10.13 from vault
./vault.yml -l vault -t vault_config,vault_launch,vault_haproxy,vault_backup
```

> [!WARNING] Check fault tolerance
> Removing a member from a three-node cluster leaves two members with **no fault tolerance**. Add a replacement promptly.
> In production, it is safer to add the replacement first, temporarily forming four members, then retire the old member.


### Manual Steps

To preserve local data and snapshots on the removed member:

```bash
./vault-rm.yml -l 10.10.10.13 -e vault_safeguard=false -e vault_rm_data=false   # Remove peer and stop service; retain data
```





------

## Rebuild a Member

For damaged data or hardware replacement at the same address, remove the member, then add it again. **Keep it in the inventory throughout**:

```bash
bin/vault-rm  10.10.10.13          # Remove from Raft, stop service, clean local data
bin/vault-add 10.10.10.13          # Rejoin with the same vault_seq
```

This applies only to multi-member clusters. Running `bin/vault-rm` against the sole member destroys the entire cluster; use [Restore a Snapshot](#restore-a-snapshot) instead.

The rebuilt member synchronizes all data from the active member. Even if it has the lowest `vault_seq`, the playbook does not initialize again because the other members are already initialized.

If the host is completely unavailable and cannot run `vault-rm.yml`, remove it manually from a survivor using an administrator token, then add its replacement:

```bash
bao operator raft remove-peer vault-3      # Run as root on a survivor with BAO_TOKEN set
```





------

## Update Configuration

The playbook generates VAULT configuration. Edit the inventory and rerun it instead of manually changing `/etc/openbao/openbao.hcl`.

```bash
./vault.yml -l vault -t vault_conf,vault_launch     # Refresh config; restart changed members sequentially
```

`vault_launch` first starts selected stopped services, then restarts previously running members whose certificates, seal key, configuration, or systemd unit changed. Newly started members already loaded the latest configuration and skip a second restart to avoid cold-start and initialization races. With a leader present, it waits for each member to rejoin before proceeding; without one, startup continues to allow quorum recovery. Check cluster health before updating. If an earlier run stopped after writing configuration, manually restart members that have not loaded it, one at a time.

**Renew certificates**: server certificates default to 20 years. To reissue them, for example after changing the VIP or domain, delete the corresponding certificates on the admin node and run:

```bash
rm -f files/pki/vault/vault-*.crt                   # Remove old certificates; retain private keys
./vault.yml -l vault -t vault_cert,vault_launch     # Reissue, distribute, and restart sequentially
```

**Refresh HAProxy** after enabling/disabling the VIP, changing membership, or running `node.yml` with `haproxy_clean=true`:

```bash
./vault.yml -l vault -t vault_haproxy
```





------

## Backups

**Daily snapshots**: each member runs `vault-backup` at 03:00, staggered by `vault_seq`, retrieving a Raft snapshot from the **active** member into `/data/vault/backup/` and retaining the latest seven.
Thus every member of a three-node cluster holds complete snapshot copies.

The backup token can only read `sys/storage/raft/snapshot`. The script uses `flock` on `${BACKUP_DIR}/.backup.lock` to serialize concurrent local jobs, such as scheduled and manual backups. Successful jobs write completion time and size into node_exporter's textfile directory. No successful snapshot for 26 hours triggers [`VaultBackupStale`](/docs/vault/monitor#alert-rules).

```bash
vault-backup                       # Run as root; the last output line is the snapshot path
vault-backup 14                    # Take a snapshot and retain the latest 14
journalctl -t vault-backup         # Inspect scheduled backup logs
```

**Initial and final snapshots**: immediately after initialization, the playbook takes a snapshot and retrieves it to `files/pki/vault/backup/` on the admin node. It also retrieves a final snapshot before [destroying the cluster](#destroy-a-cluster). Operators may copy other snapshots there; these files are not cleaned automatically.

If initial deployment stops before retrieval, a rerun detects the missing admin-node snapshot, takes one, and retrieves it.

**Off-site copies**: scheduled snapshots stay on members; operators are responsible for off-site replication. Snapshots are encrypted by OpenBao's barrier key and cannot be opened without `unseal.key`, so they may be copied to other storage. Store `files/pki/vault/` **separately from snapshots**.
For example, retrieve a member's latest snapshot from the admin node:

```bash
(umask 077; ssh 10.10.10.11 "sudo bash -c 'cat \$(ls -t /data/vault/backup/*.snap | head -1)'" \
  > files/pki/vault/backup/vault-$(date +%Y%m%d).snap)
```

> [!CAUTION] Avoid circular dependencies
> If object storage uses KES encryption and its keys reside in VAULT, do not keep VAULT's only snapshots there: recovery would depend on the service being recovered.





------

## Restore a Snapshot

Recovery requires **a snapshot**, **its matching `files/pki/vault/unseal.key`**, and **the original `files/pki/vault/init.json`**. The original root token and recovery keys become valid again after restoration.

> [!WARNING] Manual procedure
> Snapshot recovery is destructive: keys, tokens, and leases created after the snapshot are lost. Rehearse in an isolated environment and take a fresh snapshot of the current state before proceeding.

### Roll Back a Working Cluster

To roll a healthy cluster back to a snapshot, for example after accidental key deletion, run as root on the **active** member:

```bash
read -rs BAO_TOKEN && export BAO_TOKEN                          # Enter the root token
vault-backup                                                    # Snapshot the current state first
bao operator raft snapshot restore /data/vault/backup/vault-<timestamp>.snap
```

Raft replicates the restored state to the other members. Check `bao status` and application keys afterward.

### Rebuild After Total Data Loss

If all members lose their data, `vault.yml` refuses to initialize: all members report uninitialized, but `init.json` on the admin node identifies a previously initialized cluster.
Bootstrap a temporary empty cluster, then overwrite it with the snapshot:

1. Prepare the snapshot and verify that `files/pki/vault/unseal.key` on the admin node is the key used when it was created.
2. Archive the original initialization material; otherwise the playbook refuses initialization:

   ```bash
   mkdir -p files/pki/vault/orig
   mv files/pki/vault/init.json files/pki/vault/orig/
   ```

3. Bootstrap the temporary cluster, generating a new `init.json`. Its old `backup.token` is invalid, so the playbook reissues it and backs up the old file as `backup.token.*~`:

   ```bash
   ./vault.yml -l vault
   ```

4. Copy the snapshot to the temporary cluster's active member (`HA Mode: active` in `bao status`), for example `/tmp/restore.snap`. Use the **temporary cluster's** root token to force restoration; `-force` permits a snapshot from another cluster:

   ```bash
   sudo -i
   read -rs BAO_TOKEN && export BAO_TOKEN    # Enter the root token from the new init.json
   bao operator raft snapshot restore -force /tmp/restore.snap
   ```

5. Wait for members to become healthy. In OpenBao 2.7.2 testing, a standby sometimes continued reporting `decryption failed: cipher: message authentication failed` after a forced cross-cluster restore. Verify its `unseal.key` matches the admin node, then restart only that member and wait for normal `bao status` before continuing. Do not restart all members together:

   ```bash
   ansible 10.10.10.13 -b -m systemd -a 'name=openbao state=restarted'   # Substitute the affected member's address
   ```

6. After restoration, the original root token works again and temporary cluster credentials are invalid. Restore the original `init.json`, then run token provisioning and backup tasks. The playbook detects the invalid backup token and reissues/distributes it:

   ```bash
   mv -f files/pki/vault/orig/init.json files/pki/vault/
   ./vault.yml -l vault -t vault_provision,vault_backup
   ```

7. Use the original root token to check `bao operator raft list-peers` and application keys. Run `vault-backup` manually on every member to verify backups work again.

Snapshots also preserve audit device configuration. After unsealing, OpenBao writes to `/var/log/openbao/audit.log`. An unwritable path causes post-unseal initialization to fail; check directory permissions. **Do not disable auditing to bypass this problem**.

If VAULT holds other components' keys, restore in dependency order: VAULT → KES → Silo → pgBackRest → PostgreSQL.





------

## Upgrade OpenBao

The Pigsty Infra repository provides `openbao`. Upgrades are manual; refresh the local repository and take a snapshot first:

1. Run `vault-backup` on a member and copy the snapshot to a secure location.
2. Upgrade **standby** members one at a time: update the package, run `systemctl restart openbao`, wait for `bao status` to show unsealed and Autopilot to report the member healthy, then proceed.
3. Upgrade the **active** member last. Its restart triggers a new active election and the VIP endpoint switches accordingly.

```bash
ansible 10.10.10.12 -b -m package -a 'name=openbao state=latest'   # Upgrade one member's package
ansible 10.10.10.12 -b -m systemd -a 'name=openbao state=restarted'
```

Before a major upgrade, read the [OpenBao release notes](https://openbao.org/docs/release-notes/) and upgrade guide.





------

## Destroy a Cluster

Use [`vault-rm.yml`](/docs/vault/playbook#vault-rmyml) or `bin/vault-rm` to destroy the whole cluster.

> [!CAUTION] Destructive operation
> Destroying VAULT destroys **all its keys**. Databases, objects, and all their backups encrypted with those keys become permanently unreadable.
> Confirm that no consumers still use VAULT and that the admin node's `files/pki/vault/` is intact. Local snapshots are deleted with member data; the playbook retrieves a final snapshot first.

```bash
bin/vault-rm                                        # Type vault to confirm
./vault-rm.yml -l vault -e vault_safeguard=false    # Equivalent command
```

Whole-cluster removal lists `tde/*` and `kes/*` consumers, pauses five seconds, takes a **final snapshot** on a member, and retrieves it to the admin node's `files/pki/vault/backup/` before deregistering monitoring, stopping services, and deleting data. It does not run `raft remove-peer` or delete the admin node's `files/pki/vault/` or members' audit logs.

If the final snapshot fails, removal aborts before deleting anything. A broken or never-initialized cluster cannot produce a snapshot, so explicitly skip this step if necessary:

```bash
./vault-rm.yml -l vault -e vault_safeguard=false --skip-tags vault_snapshot   # Remove without a final snapshot
```

**Create a new empty cluster**: after removal, archive the old initialization material before creating a fresh **empty** cluster instead of restoring a snapshot; otherwise `vault.yml` refuses initialization:

```bash
mkdir -p files/pki/vault/archive-$(date +%Y%m%d)
mv files/pki/vault/init.json files/pki/vault/archive-$(date +%Y%m%d)/
./vault.yml -l vault
```

The old `backup.token` is invalid in the new cluster. The playbook reissues it and backs up the old file as `backup.token.*~`.

You may retain and reuse `unseal.key`. Old snapshots still require that key, so do not delete it.
