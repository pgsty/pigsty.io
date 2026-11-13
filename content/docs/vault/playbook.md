---
title: Playbooks
weight: 4983
description: Manage VAULT with predefined Ansible playbooks and common administration commands.
icon: fa-solid fa-scroll
module: [VAULT]
categories: [Task]
---

VAULT provides two playbooks: [`vault.yml`](#vaultyml) creates, updates, and scales clusters, while [`vault-rm.yml`](#vault-rmyml) removes members or the whole cluster.
The helper scripts [`bin/vault-add`](#helper-scripts) and [`bin/vault-rm`](#helper-scripts) wrap these playbooks.


--------

## `vault.yml`

Source: [`vault.yml`](https://github.com/pgsty/pigsty/blob/main/vault.yml)

Installs, configures, and starts OpenBao in the hardcoded `vault` group. It is idempotent: repeated runs reconcile configuration changes without reinitializing the cluster.

[`vault.yml`](https://github.com/pgsty/pigsty/blob/main/vault.yml) provides these task subsets:

- `id`: derive node identity and variables through `node_id`.
- `vault_assert`: validate member IDs, data paths, ports, and VIP configuration; derive instance names and members (always runs).
- `vault_install`: install `openbao` and ensure the `openbao` system user exists.
- `vault_dir`: create configuration, data, snapshot, and audit log directories.
- `vault_config`: generate VAULT configuration.
  - `vault_cert`: issue and distribute TLS certificates.
    - `vault_cert_issue`: issue server certificates with Pigsty CA on the admin node.
    - `vault_cert_copy`: copy the CA certificate, server certificate, and private key to members.
  - `vault_seal`: generate and distribute the static seal key; abort if an existing member key differs from the admin node's key.
  - `vault_conf`: render `openbao.hcl`, the systemd unit, `bao` client environment, and log rotation configuration.
- `vault_launch`: start stopped members. Members already running before execution restart one at a time only if their certificates, seal key, configuration, or unit changed, waiting for each to rejoin. Newly started members skip a second restart to avoid startup races.
- `vault_init`: initialize once on the member with the lowest `vault_seq`, then wait for all members to unseal and complete Raft election (`leader_address` nonempty).
- `vault_provision`: enable `secret/`, `transit/`, and `approle`; issue the backup token, reissuing it automatically if an existing token is invalid, for example from an old cluster.
- `vault_haproxy`: generate the `<VIP>:8200` HAProxy endpoint on members when VIP is enabled; otherwise remove it.
- `vault_backup`: install `vault-backup`, its daily schedule, and take the first snapshot.
- `vault_register` (aliases `register`, `add_metrics`): register members with VictoriaMetrics.

`vault_init` runs `bao operator init` only when **all** these conditions hold:

1. The current member has the lowest `vault_seq` in `vault`.
2. Every member is reachable and reports that it is uninitialized.
3. `files/pki/vault/init.json` does not exist on the admin node.

Using `-l <ip>` to add or rebuild a member therefore cannot bootstrap a second empty cluster. The new member joins through Raft `retry_join` and unseals with the same key.
The playbook aborts if an unreachable member prevents determining initialization state. It also aborts if all members are uninitialized but `init.json` exists, indicating a previously initialized cluster whose data was lost. See [Restore a Snapshot](/docs/vault/admin#restore-a-snapshot).

The generated root token and recovery keys are saved to `files/pki/vault/init.json` on the admin node. If saving fails, they remain temporarily in `/root/vault-init.json` on the member and the playbook stops; move them to the admin node manually.



--------

## `vault-rm.yml`

Source: [`vault-rm.yml`](https://github.com/pgsty/pigsty/blob/main/vault-rm.yml)

Removes members or the whole cluster. [`vault-rm.yml`](https://github.com/pgsty/pigsty/blob/main/vault-rm.yml) provides these task subsets:

- `vault_safeguard`: check the removal safeguard, **enabled by default**; abort if enabled.
- `vault_consumer`: before whole-cluster removal, list `tde/*` and `kes/*` consumers whose data will become unreadable.
- `vault_pause`: pause five seconds to allow cancellation with Ctrl-C.
- `vault_snapshot`: before whole-cluster removal, take a final snapshot and retrieve it to `files/pki/vault/backup/` on the admin node; **abort on failure** without deleting data.
- `vault_leave`: for partial removal, run `bao operator raft remove-peer` on a surviving member; **abort on failure** without deleting data.
- `vault_deregister` (aliases `deregister`, `rm_metrics`): remove members from VictoriaMetrics targets.
- `vault_svc`: remove the backup cron job and metrics, stop and disable `openbao`, and remove the HAProxy endpoint.
- `vault_data`: delete data, configuration, local TLS certificates, seal key and backup token copies, and local snapshots; disable with `vault_rm_data=false`.
- `vault_pkg`: uninstall `openbao`; explicitly enable with `vault_rm_pkg=true`.

The playbook uses [`vault_remove`](https://github.com/pgsty/pigsty/blob/main/roles/vault_remove) and supports:

- [`vault_safeguard`](/docs/vault/param#vault_safeguard): block removal when `true`; default `true`.
- [`vault_rm_data`](/docs/vault/param#vault_rm_data): delete VAULT data; default `true`.
- [`vault_rm_pkg`](/docs/vault/param#vault_rm_pkg): uninstall `openbao`; default `false`.

If the run targets every member of `vault`, it is treated as whole-cluster removal. Otherwise, it is partial removal and the selected members must first leave Raft.
Every selected member must be reachable before removal begins; an unreachable member aborts the playbook.
Peer removal uses the root token in the admin node's `init.json`, so members being removed **must remain in the inventory's `vault` group during execution**.

> [!CAUTION] Destructive operation
> Removing the whole VAULT cluster destroys all its keys. Databases, objects, and **all their backups** encrypted with them become permanently unreadable unless VAULT can be restored from a snapshot and `files/pki/vault/unseal.key`.
> `vault_rm_data` defaults to `true`, so local snapshots are deleted with member data. The playbook first retrieves a final snapshot to the admin node. Verify that `files/pki/vault/` is intact before proceeding.
> A broken or never-initialized cluster cannot produce a snapshot; removing it requires `--skip-tags vault_snapshot`.

The admin node's `files/pki/vault/` (seal key, initialization material, initial and final snapshots) and members' `/var/log/openbao/` audit logs are never deleted.



--------

## Command Reference

**Installation and configuration:**

```bash
./vault.yml -l vault                              # Create or update the vault cluster
./vault.yml -l vault --check                      # Preview proposed changes
./vault.yml -l vault -t vault_conf,vault_launch   # Refresh configuration; restart members sequentially as needed
./vault.yml -l vault -t vault_cert,vault_launch   # Reissue/distribute certificates; restart sequentially as needed
./vault.yml -l vault -t vault_haproxy             # Refresh the HAProxy VIP endpoint
./vault.yml -l vault -t vault_backup              # Refresh snapshot script, schedule, and backup token
./vault.yml -l vault -t vault_register            # Register monitoring targets again
./vault.yml -l 10.10.10.14                        # Add a new member to the existing cluster
```

**Removal and cleanup:**

```bash
./vault-rm.yml -l 10.10.10.13 -e vault_safeguard=false                       # Remove peer, stop service, delete local data
./vault-rm.yml -l 10.10.10.13 -e vault_safeguard=false -e vault_rm_data=false # Remove peer and stop service, retain local data
./vault-rm.yml -l vault -e vault_safeguard=false                             # Destroy the whole cluster
./vault-rm.yml -l vault -e vault_safeguard=false -e vault_rm_pkg=true        # Destroy cluster and uninstall package
```



--------

## Helper Scripts

```bash
bin/vault-add                  # Create/update the whole cluster; equivalent to ./vault.yml -l vault
bin/vault-add 10.10.10.14      # Add members (multiple IPs accepted)
bin/vault-rm                   # Destroy the whole cluster; type vault to confirm
bin/vault-rm 10.10.10.13       # Remove specified members (multiple IPs accepted)
```

Both scripts accept only full IPv4 addresses, provide a countdown, and suggest follow-up actions.
For example, after adding or removing members, they prompt you to refresh the remaining members' configuration and HAProxy endpoints:

```bash
./vault.yml -l 'vault,!10.10.10.14' -t vault_config,vault_launch,vault_haproxy,vault_backup
```



--------

## Safeguards

VAULT includes safeguards for deployment and removal:

| Safeguard | Purpose |
|:---|:---|
| Initialization guard | Initialize only if all members are reachable and uninitialized and `init.json` is absent; prevent a second empty cluster |
| Seal key validation | Abort if a member's existing key differs from the admin node's key |
| Sequential restart | With a leader present, wait for each member to rejoin before the next; without a leader, start the other members first |
| Removal safeguard | `vault_safeguard` defaults to `true`; requires an explicit command-line override |
| Consumer warning | List `tde/*` and `kes/*` consumers before whole-cluster removal |
| Abort on peer removal failure | Stop if `raft remove-peer` fails, preventing stale members from silently reducing fault tolerance |
| Preserve trust roots | Never delete `files/pki/vault/` on the admin node; retrieve the final snapshot there |
{.full-width}

Regardless of safeguard settings, recheck `bao status`, Raft membership, and fault tolerance after a real run. Playbook success does not replace runtime validation.
