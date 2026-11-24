# FAQ

> Frequently asked questions about Pigsty's VAULT module.

---

LLMS index: [llms.txt](/llms.txt)

---

--------

## What Does VAULT Do?

VAULT supplies KMS (key management) and secrets storage for a Pigsty deployment, covering three main uses:

- **Transparent data encryption**: store PGSQL `pg_tde` master keys so leaked database disks and backups cannot be decrypted without VAULT keys.
- **Object storage encryption**: store keys for MINIO (Silo) KES server-side encryption.
- **Application secrets**: use KV, Transit, and AppRole to store/access passwords and API keys or call encryption services.

The first two integrations currently require manual configuration; automatic integration is still being developed. Applications can use the third immediately after deployment; see [Usage](/docs/vault/usage).




--------

## Why OpenBao Instead of HashiCorp Vault?

HashiCorp changed Vault's license to BSL in 2023. Later versions are no longer open-source software and are not packaged for distribution by Pigsty.
OpenBao is a community fork from before that license change, hosted by the Linux Foundation under MPL-2.0. Its API is largely compatible; Vault libraries, tools, and most documentation remain useful references.

VAULT names the secrets-vault capability rather than a specific engine, following the same convention as the MINIO module using Silo.




--------

## How Many Members Should a Cluster Have?

Use one member for development, testing, and demos. Use three with an L2 VIP for production HA; see [Configuration](/docs/vault/config).

Raft requires a majority. If half or more of the members are unavailable, the cluster cannot serve requests. Three members tolerate one failure.
Two members tolerate no failures and offer lower availability than one. The playbook warns about this topology; use it only temporarily during scaling.




--------

## What Happens When VAULT Is Unavailable?

The impact depends on how consumers use keys:

- Running consumers that have cached keys in memory can usually continue.
- Operations that must retrieve keys fail, such as restarting PostgreSQL encrypted with `pg_tde` or KES fetching a new data key.
- Application secret reads and encryption/decryption requests fail.

In production, VAULT should be at least as available as the databases that depend on it. `VaultDown` and `VaultNoLeader` are CRIT alerts.




--------

## Is Auto-Unseal Secure?

VAULT uses OpenBao static seal: a 32-byte key in `files/pki/vault/unseal.key` on the admin node is distributed to `/etc/openbao/unseal.key` on each member. Members unseal automatically after restart without manual key-share entry.

| Scenario | Protection |
|:---|:---|
| Leaked database disks, database backups, or object-storage disks | **Yes**: decryption requires VAULT keys; this is the purpose of separating keys from data |
| Leaked VAULT snapshot | **Yes**: it cannot be opened without `unseal.key` |
| Compromised VAULT member | No: the auto-unseal key resides there; without an HSM this applies to any automatic unseal scheme |
| Compromised admin node | No: Pigsty already keeps the CA private key and passwords on the admin node |
| Root or superuser access to a running database | No: transparent encryption protects data at rest |
{.full-width}

This balances operations and security: database restarts do not wait for manual unsealing. For stricter requirements, switch to manual unsealing or an external KMS seal after deployment; that is outside the current module's automation.




--------

## Which Files Must Be Backed Up?

Back up the admin node's entire `files/pki/` directory and copy VAULT snapshots off-site:

- `files/pki/vault/unseal.key`: **without it, all snapshots are unreadable**.
- `files/pki/vault/init.json`: root token and recovery keys for administrative access after restoration.
- `files/pki/ca/`: Pigsty CA, which signs VAULT server certificates.
- A recent Raft snapshot from members' `/data/vault/backup/` or the admin node's `files/pki/vault/backup/`.

Snapshots are encrypted and can be copied to other storage, but keep them separate from `unseal.key`. See [Backups](/docs/vault/admin#backups) and [Restore a Snapshot](/docs/vault/admin#restore-a-snapshot).




--------

## Why Does bao status Return Permission Denied?

`BAO_CACERT` points to `/etc/openbao/tls/ca.crt`, readable only by root and the `openbao` group. Regular users see:

```text
failed to read environment: Error loading CA File: open /etc/openbao/tls/ca.crt: permission denied
```

Run as root (`sudo -i`), or use the globally readable CA: `export BAO_CACERT=/etc/pki/ca.crt`.




--------

## Why Does vault.yml Refuse to Initialize?

`vault.yml` initializes only when all required conditions hold. Common reasons for refusal:

- **An unreachable member**: the playbook cannot determine whether the cluster is initialized and aborts to prevent creating a second cluster. Restore network/service access to every member and rerun.
- **All members are uninitialized, but `files/pki/vault/init.json` exists**: the cluster was initialized before and has lost its data. To recover, see [Rebuild After Total Data Loss](/docs/vault/admin#rebuild-after-total-data-loss). To create a new empty cluster, archive `init.json` first; see [Destroy a Cluster](/docs/vault/admin#destroy-a-cluster).




--------

## Why Does vault-rm.yml Abort by Default?

[`vault_safeguard`](/docs/vault/param#vault_safeguard) defaults to `true`, like MYSQL's `mysql_safeguard`. Deleting VAULT deletes all its keys, making encrypted data and **all backups** permanently unreadable. The impact extends beyond any one database cluster.

After verifying the target and snapshot, explicitly override it with `./vault-rm.yml -l <exact-target> -e vault_safeguard=false`, or use `bin/vault-rm`.




--------

## Why Are Metrics Token-Free and Served over HTTPS?

OpenBao normally requires a token for `/v1/sys/metrics`. VAULT enables `unauthenticated_metrics_access` on the node IP listener so monitoring needs no VAULT credentials. The loopback listener does not allow unauthenticated access.
Metrics contain counts and state, not secrets.

OpenBao provides TLS only, with metrics and business APIs sharing port `8200`. A separate plaintext port would increase exposure without benefit, so VictoriaMetrics scrapes over HTTPS using Pigsty CA.




--------

## Why Does VaultBackupStale Fire?

Each member runs `vault-backup` daily. The alert fires if a member has no successful snapshot for 26 hours, or has never succeeded. Common causes:

- Scheduled job failure: inspect `journalctl -t vault-backup` for an invalid token, missing active member, or full disk.
- node_exporter's textfile collector is disabled: newer NODE versions configure its directory. Refresh older nodes with `./node.yml -l vault -t node_exporter`.
- An invalid backup token, for example after snapshot restoration: run `./vault.yml -l vault -t vault_provision,vault_backup`. The playbook checks the token and reissues/distributes it if necessary.

After fixing the issue, run `vault-backup` manually. The alert clears at the next evaluation.




--------

## What Causes Frequent Leader Changes?

Raft leaders maintain their term through heartbeats. Timeouts cause elections, commonly due to network jitter, high disk latency, or host load that prevents timely scheduling, especially on oversubscribed VMs.

Inspect **Leader Elections**, **Follower Last Heartbeat**, and **Raft Commit Time** in Vault Overview, then correlate with node CPU, disk, and network metrics.
Occasional leader changes do not affect data consistency. HAProxy switches to the new active member automatically.




--------

## Where Are Audit Logs?

Each member enables a file audit device at `/var/log/openbao/audit.log`, rotated daily with seven files retained. OpenBao applies HMAC to sensitive fields.

Standbys forward requests to the active member, which records them. A member that has never been active may have no `audit.log`; this does not indicate broken audit configuration.

Audit logs are not collected into VictoriaLogs or deleted on VAULT removal. If audit writes fail, OpenBao rejects requests and `VaultAuditFailure` fires; check disk space first.




--------

## Can I Use an Existing External Vault?

Currently no. The module manages only OpenBao clusters deployed by Pigsty, not external or managed HashiCorp Vault, OpenBao, or cloud KMS services.

Applications may still access your existing Vault directly, but Pigsty deployment, monitoring, and future automatic consumer integration do not manage it.
