# Parameters

> The MYSQL module's 13 public parameters: 11 deployment parameters, 2 protected-removal parameters, and fixed platform conventions.

---

LLMS index: [llms.txt](/llms.txt)

---

Deployment exposes 11 parameters; removal adds two protected-operation parameters. Versions, ports, directories, charset, TLS paths, and schedules are fixed. Memory sizing follows node specifications. Use [`mysql_parameters`](#mysql_parameters) to change server behavior.


--------

## Quick Reference

| Parameter | Level | Default | Description |
|:---|:---:|:---|:---|
| [`mysql_cluster`](#mysql_cluster) | Cluster | required | Cluster name and identity |
| [`mysql_seq`](#mysql_seq) | Instance | required | `1` for standalone; sequential `1..3` for HA |
| [`mysql_root_password`](#mysql_root_password) | Cluster | `DBUser.Root` | Local root password |
| [`mysql_monitor_password`](#mysql_monitor_password) | Cluster | `DBUser.Monitor` | Exporter identity password |
| [`mysql_cluster_password`](#mysql_cluster_password) | Cluster | `DBUser.Cluster` | AdminAPI/Router/backup identity password |
| [`mysql_databases`](#mysql_databases) | Cluster | `[]` | Additive database declarations |
| [`mysql_users`](#mysql_users) | Cluster | `[]` | Additive user and grant declarations |
| [`mysql_parameters`](#mysql_parameters) | Cluster/Instance | `{}` | `[mysqld]` option overrides |
| [`mysql_backup_enabled`](#mysql_backup_enabled) | Cluster | `true` | Daily full-backup timer |
| [`mysql_backup_repo`](#mysql_backup_repo) | Cluster | see below | Local backup path and retention |
| [`mysql_exporter_enabled`](#mysql_exporter_enabled) | Cluster | `true` | Exporter and monitoring target |
{.full-width}

The removal parameters are used by `mysql-rm.yml`:

| Parameter | Level | Default | Description |
|:---|:---:|:---|:---|
| [`mysql_safeguard`](#mysql_safeguard) | Global/Cluster/CLI | `true` | Refuse removal by default |
| [`mysql_rm_confirm`](#mysql_rm_confirm) | CLI | `''` | Must exactly match the instance or cluster name |
{.full-width}

Earlier parameters are no longer supported: `mysql_role`, `mysql_services`, `mysql_packages`, `mysql_data`, `mysql_port`, `mysql_replication_*`, and `mysql_*_username`. Do not use them.


--------

## Identity

### `mysql_cluster`

Required cluster identity, matching the member inventory group. Preflight enforces this. Start with a letter, digit, or underscore. `._-` is permitted; maximum length is 63:

```yaml
mysql_cluster: my-test
```

This determines instance names (`my-test-1`), MGR group UUID, backup directory (`<repo>/my-test/`), and monitoring `cls`.

### `mysql_seq`

Required sequence: `1` for standalone, consecutive `1, 2, 3` for HA. It also sets `server_id`:

```yaml
10.10.10.11: { mysql_seq: 1 }
```

`mysql_seq=1` marks the bootstrap coordinator only. Runtime PRIMARY is elected; reruns preserve its placement.


--------

## Credentials

### `mysql_root_password`

Local `root@'localhost'` password for socket or loopback access. Use one line without a `CHANGE_ME` prefix:

The default is `DBUser.Root`:

```yaml
mysql_root_password: DBUser.Root
```

Set it at initial launch. Later mismatches between live and declared values fail explicitly. Rotate manually with `ALTER USER`, then update inventory.

### `mysql_monitor_password`

Exporter password for `dbuser_monitor@'127.0.0.1'`. This read-only, loopback account has a three-connection limit:

The default is `DBUser.Monitor`:

```yaml
mysql_monitor_password: DBUser.Monitor
```

### `mysql_cluster_password`

Shared password for TLS-only `dbuser_cluster@'%'` and local `dbuser_backup@'localhost'`. It supports AdminAPI, Router bootstrap, and XtraBackup:

The default is `DBUser.Cluster`:

```yaml
mysql_cluster_password: DBUser.Cluster
```

HA metadata and Router keyrings bind this password. **Ordinary reruns cannot rotate it**; preflight rejects mismatches. Standalone has no such binding. Update inventory and rerun there.


--------

## Business Objects

### `mysql_databases`

Additive database list accepting only `name / encoding / collate`:

```yaml
mysql_databases:
  - { name: app }
  - { name: app2, encoding: utf8mb4, collate: utf8mb4_general_ci }
```

Create and update only. Removing an entry never drops a database. See [Configuration](/docs/mysql/config#databases) for syntax and validation.

### `mysql_users`

Additive user list with fields `name / host / password / connlimit / priv`:

```yaml
mysql_users:
  - name: app
    host: '%'
    password: DBUser.App
    connlimit: 20
    priv: { 'app.*': 'ALL PRIVILEGES' }
```

Grants apply without implicit revocation. Platform identities are forbidden. See [Configuration](/docs/mysql/config#users) for syntax and validation.


--------

## `mysql_parameters`

Dictionary of `[mysqld]` overrides appended to managed configuration. The last value takes precedence:

```yaml
mysql_parameters:
  max_connections: 500
  long_query_time: 2
  innodb_buffer_pool_size: 2G
  innodb_print_all_deadlocks: true    # true/false render as ON/OFF
```

Constraints and behavior:

- Keys must match `[A-Za-z][A-Za-z0-9_.-]{0,63}`; values must be single-line scalars. `mysqld --validate-config` rejects errors before changing the instance.
- **Reserved settings are rejected**, treating `-` and `_` alike: `user`, `pid_file`, `server_id`, `datadir`, `socket`, `port`, `bind_address`, `mysqlx_bind_address`, `report_host`, `gtid_mode`, `enforce_gtid_consistency`, `log_bin`, `relay_log`, `require_secure_transport`, `ssl_ca`, `ssl_cert`, `ssl_key`, `plugin_load`, `plugin_load_add`, `clone`, `plugin_clone`, `mysqlx`, `plugin_mysqlx`. This also includes `group_replication_*`, `plugin_group_replication*`, `plugin_mysqlx_bind_address`, and `ssl_*`.
- Rerun `mysql.yml` to apply changes. It rolls secondaries first, then the primary, with one brief write interruption.
- Common overrides include `sql_require_primary_key` (default `ON`), `long_query_time` (default `1`), `binlog_expire_logs_seconds` (default seven days), and memory settings.

AdminAPI replication settings written through `SET PERSIST` control runtime behavior. Each run restores `group_replication_group_seeds` to declared membership to prevent persisted drift.


--------

## Backup

### `mysql_backup_enabled`

Control the daily `mysql-backup.timer`, which adds up to 30 minutes of random delay:

```yaml
mysql_backup_enabled: true
```

`false` stops the timer but retains script and configuration. If backup was never enabled, the repository directory is absent and manual execution exits immediately.

### `mysql_backup_repo`

The local backup repository — `local` is the only supported method:

```yaml
mysql_backup_repo:
  local:
    path: /data/backups/mysql     # absolute path; must not overlap the datadir
    retention: 7                  # keep the last N committed fulls (1-9999)
```

Layout and restore procedure: [Administration](/docs/mysql/admin#manage-backups).


--------

## Monitoring

### `mysql_exporter_enabled`

Whether mysqld_exporter runs and the VictoriaMetrics target is registered:

```yaml
mysql_exporter_enabled: true
```

`false` stops the exporter and empties `/infra/targets/mysql/<instance>.yml`. Only `mysql-rm.yml` removes the file.


--------

## Removal Parameters

### `mysql_safeguard`

Removal safety switch, default `true`. Explicitly set `false` for `mysql-rm.yml`; otherwise, removal stops:

```bash
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test
```

### `mysql_rm_confirm`

Confirmation string, empty by default. For one member, exactly match its instance name, such as `my-test-3`. For full-cluster or standalone removal, exactly match `mysql_cluster`. Both confirmation and `mysql_safeguard=false` are required.


--------

## Fixed Platform Conventions

These settings are fixed or derived. They are **not inventory parameters**:

| Item | Value |
|:---|:---|
| Versions | MySQL Server/Client/Shell/Router 8.4 LTS, Percona XtraBackup 8.4 |
| Ports | `3306` (classic), `33060` (X Protocol; loopback-only on standalone), `33061` (MGR), `6446/6447` (Router RW/RO), `9104` (exporter); INFRA carries the read-only reference constant `mysql_exporter_port: 9104` for monitoring config, not as a public MYSQL parameter |
| Data directory | `/var/lib/mysql` (binlogs under `binlog/`, 7-day expiry) |
| Config file | EL: `/etc/my.cnf.d/pigsty.cnf`; Debian/Ubuntu: `/etc/mysql/mysql.conf.d/pigsty.cnf` |
| Service units | MySQL: `mysqld` on EL, `mysql` on Debian/Ubuntu; Router: `mysqlrouter`; Exporter: `mysqld_exporter` |
| Secrets and scripts | `/etc/mysql/pigsty/` (root-owned: directory `0700`, files `0600`) |
| Logs | Error log at `/var/log/mysql/error.log`, mirrored to Journald; slow log at `/var/log/mysql/slow.log` (1s threshold) |
| TLS | Enforced (`require_secure_transport=ON`); CA at `/etc/pki/ca.crt`, leaf certs under `/etc/mysql/pki/` |
| Charset | `utf8mb4` / `utf8mb4_0900_ai_ci` |
| Memory | Buffer pool = max(25% of node memory, 256MB); redo = clamp(50% of buffer pool, 128MB, 4GB) |
| Replication | GTID enforced, `sql_require_primary_key=ON`, single-primary MGR, `BEFORE_ON_PRIMARY_FAILOVER` consistency |
| Datadir markers | `.pigsty-mysql-initialized` (ownership check) and `.pigsty-mysql-retired` (retirement guard) |
{.full-width}
