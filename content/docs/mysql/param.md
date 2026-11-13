---
title: Parameters
weight: 5012
description: "The MYSQL module's 16 public parameters: 13 for deployment, 3 for protected removal, and fixed platform conventions."
icon: fa-solid fa-sliders
module: [MYSQL]
categories: [Reference]
---

The MYSQL deployment role exposes **13 parameters**; the removal role adds **3 protected operational parameters**, for **16 total**. Versions, ports, character set, TLS paths, and timer schedules are fixed by the role. Memory defaults follow node resources and PostgreSQL colocation. Use [`mysql_parameters`](#mysql_parameters) to adjust server behavior.

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
| [`mysql_data`](#mysql_data) | Cluster/Instance | `/data/mysql` | MySQL data directory, including `binlog/` and `tmp/` |
| [`mysql_backup_enabled`](#mysql_backup_enabled) | Cluster | `true` | Daily full-backup timer |
| [`mysql_backup_dir`](#mysql_backup_dir) | Cluster | `/data/backups/mysql` | Local physical backup root |
| [`mysql_backup_retention`](#mysql_backup_retention) | Cluster | `3` | Number of local full backups to retain |
| [`mysql_exporter_enabled`](#mysql_exporter_enabled) | Cluster | `true` | Exporter and monitoring target |
{.full-width .wide .expand}

The removal parameters are used by `mysql-rm.yml`:

| Parameter | Level | Default | Description |
|:---|:---:|:---|:---|
| [`mysql_safeguard`](#mysql_safeguard) | Global/Cluster/CLI | `true` | Deletion protection; refuses removal by default |
| [`mysql_rm_data`](#mysql_rm_data) | Global/Cluster/CLI | `true` | Remove data and managed configuration; always retain backups |
| [`mysql_rm_pkg`](#mysql_rm_pkg) | Global/Cluster/CLI | `false` | Also uninstall MySQL / Router / XtraBackup / Exporter packages |
{.full-width .wide .expand}

Old variables such as `mysql_backup_repo` (explicitly rejected by preflight), `mysql_rm_confirm`, `mysql_role`, `mysql_services`, `mysql_packages`, `mysql_port`, `mysql_replication_*`, and `mysql_*_username` are not part of the current public interface. Do not use them.

--------

## Identity

### `mysql_cluster`

Required cluster identity, matching the member inventory group. Preflight enforces this. Start with a letter, digit, or underscore. `._-` is permitted; maximum length is 63:

```yaml
mysql_cluster: my-test
```

Used for instance names (`my-test-1`), the AdminAPI cluster name, backup subdirectories (`<mysql_backup_dir>/my-test/`), and the monitoring `cls` label. AdminAPI generates the MGR Group UUID when creating the cluster, which then manages it internally.

### `mysql_seq`

Required instance sequence. Use `1` for standalone, or contiguous `1`, `2`, `3` for three nodes:

```yaml
10.10.10.11: { mysql_seq: 1 }
```

`mysql_seq=1` identifies only the initial bootstrap coordinator. MGR elects the runtime primary, and rerunning the playbook does not move it back. `mysql_seq` is not `server_id`, which is derived from the member's IPv4 address as an unsigned 32-bit integer.

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

Password for `dbuser_monitor@'127.0.0.1'`, used by `mysqld_exporter` with read-only privileges, loopback access only, and a maximum of 3 connections. Default: `DBUser.Monitor`:

```yaml
mysql_monitor_password: DBUser.Monitor
```

This password is rendered into Go INI `/etc/mysqld_exporter.cnf`, with `$` escaped as `$$`. **INI interpolation syntax of the form `%(...)s`**, such as `%(host)s`, is forbidden and rejected by preflight.

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
- **Reserved settings are rejected**, treating `-` and `_` alike and stripping `loose_`, `skip_`, `disable_`, `enable_`, and combinations of these prefixes before validation: `user`, `pid_file`, `server_id`, `datadir`, `socket`, `port`, `bind_address`, `mysqlx_bind_address`, `report_host`, `gtid_mode`, `enforce_gtid_consistency`, `log_bin`, `relay_log`, `require_secure_transport`, `ssl_ca`, `ssl_cert`, `ssl_key`, `plugin_load`, `plugin_load_add`, `clone`, `plugin_clone`, `mysqlx`, `plugin_mysqlx`. This also includes `group_replication_*`, `plugin_group_replication*`, `plugin_mysqlx_bind_address`, and `ssl_*`.
- Rerun `mysql.yml` to apply changes. It rolls secondaries first, then the primary, with one brief write interruption.
- Common overrides include `sql_require_primary_key` (default `ON`), `long_query_time` (default `1`), `binlog_expire_logs_seconds` (default seven days), and memory settings.

AdminAPI replication settings written through `SET PERSIST` control runtime behavior. Each run restores `group_replication_group_seeds` to declared membership to prevent persisted drift.


--------

## Storage and Backup Parameters

### `mysql_data`

MySQL data directory, default `/data/mysql`, with `binlog/` and `tmp/` subdirectories:

```yaml
mysql_data: /data/mysql
```

Constraints and platform behavior:

- Must be a multilevel absolute path, neither equal to nor nested with `mysql_backup_dir`, and outside reserved paths such as `/etc`, `/usr`, `/var`, or `/tmp`. The sole exception is managing legacy `/var/lib/mysql` in place;
- If `/var/lib/mysql` contains initialized system databases while `mysql_data` points elsewhere, preflight refuses to start an empty database alongside existing data;
- Debian/Ubuntu nodes maintain local AppArmor rules in `/etc/apparmor.d/local/usr.sbin.mysqld`; EL nodes automatically run `restorecon -RF`.

### `mysql_backup_enabled`

Control the daily `mysql-backup.timer`, which adds up to 30 minutes of random delay:

```yaml
mysql_backup_enabled: true
```

When enabled, if `<mysql_backup_dir>/<mysql_cluster>/latest/backup.ok` is absent, the `mysql_backup` phase creates an initial baseline on the current writable primary. Setting this to `false` disables the timer and removes `/var/lib/node_exporter/textfile/mysql.prom`, while retaining existing backups and scripts.

### `mysql_backup_dir`

Root directory for local full physical backups, default `/data/backups/mysql`:

```yaml
mysql_backup_dir: /data/backups/mysql
```

Must be a multilevel absolute path outside reserved system locations and must not overlap `mysql_data`. Backups reside under `<mysql_backup_dir>/<mysql_cluster>/`; even destructive `mysql-rm.yml` runs **never delete** this directory. The old structured `mysql_backup_repo` parameter is deprecated and rejected by preflight.

### `mysql_backup_retention`

Number of committed full physical backups to retain locally (`1..9999`), default `3`:

```yaml
mysql_backup_retention: 3
```

After a new backup completes `--prepare` and atomically updates `latest`, the script removes backups beyond the retention count. See [Administration](/docs/mysql/admin#manage-backups) for layout and recovery.

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

Deletion safeguard, default `true`, like [`VAULT`](/docs/vault/param#vault_safeguard)'s `vault_safeguard`. Explicitly pass `-e mysql_safeguard=false` to `mysql-rm.yml`; otherwise preflight refuses removal:

```bash
./mysql-rm.yml -l my-test -e mysql_safeguard=false
```

### `mysql_rm_data`

Whether removal destroys data and managed configuration, default `true`:

```yaml
mysql_rm_data: true
```

- `true` (default): after stopping services and deregistering monitoring, delete `mysql_data`, `/etc/mysql/pigsty`, `/etc/mysql/pki`, `pigsty.cnf`, Router configuration/keyring, exporter configuration, systemd overrides and backup units, `/var/lib/pigsty/mysql-backup`, `/var/lib/node_exporter/textfile/mysql.prom`, and `/etc/profile.d/mysql.sh`, but **always retain `mysql_backup_dir`**;
- `false`: supported **only for the entire cluster** (`-l <cluster> -e mysql_safeguard=false -e mysql_rm_data=false`). Stop services and deregister monitoring while retaining all data and configuration. Rerun `./mysql.yml -l <cluster>` to restart and recover in place. Single-member removal requires `mysql_rm_data=true`.

### `mysql_rm_pkg`

Whether to also uninstall MySQL Server/Client/Shell/Router, Percona XtraBackup, and `mysqld_exporter`, default `false`:

```yaml
mysql_rm_pkg: false
```

--------

## Fixed Platform Conventions

These settings are fixed or derived. They are **not inventory parameters**:

| Item | Value |
|:---|:---|
| Versions | MySQL Server/Client/Shell/Router 8.4 LTS, Percona XtraBackup 8.4 |
| Ports and VIP | `3306` (Classic), `33060` (X Protocol, loopback only for standalone), `33061` (MGR), `6446/6447` (Router RW/RO, also on `<vip>:6446/6447` with a `NODE` Layer 2 VIP), `9104` (Exporter) |
| Derived identity | `server_id` is the member IPv4 as an unsigned 32-bit integer, or the first 32 bits of SHA-1 for non-IPv4 names; AdminAPI generates the MGR Group UUID |
| Configuration | EL: `/etc/my.cnf.d/pigsty.cnf`; Debian/Ubuntu: `/etc/mysql/mysql.conf.d/pigsty.cnf`, with automatic local AppArmor rules |
| Service units | MySQL: `mysqld` on EL, `mysql` on Debian/Ubuntu; Router: `mysqlrouter`; Exporter: `mysqld_exporter`; backups: `mysql-backup.{service,timer}` |
| Credentials and shortcuts | `/etc/mysql/pigsty/`, root-owned with directory `0700` and files `0600`; `/etc/profile.d/mysql.sh` provides `my` and `mysh` |
| Logs and backup state | Errors: `/var/log/mysql/error.log`, also mirrored to Journald; slow queries: `/var/log/mysql/slow.log`, threshold 1s; failed backup logs: `/var/lib/pigsty/mysql-backup/`; backup metrics: `/var/lib/node_exporter/textfile/mysql.prom` |
| TLS | Required (`require_secure_transport=ON`); CA `/etc/pki/ca.crt`, leaf certificates `/etc/mysql/pki/`, automatically including node address and optional `NODE` VIP SANs |
| Charset | `utf8mb4` / `utf8mb4_0900_ai_ci` |
| Memory and connections | Buffer pool: 50% of memory when dedicated, 25% with PG (`pg_cluster` defined), reserving at least 1 GiB for the system with a 256 MiB lower bound; redo: `clamp(buffer pool × 50%, 128 MiB, 4 GiB)`; `max_connections`: `1000` |
| Replication | GTID enforced, `sql_require_primary_key=ON`, single-primary MGR, `BEFORE_ON_PRIMARY_FAILOVER` consistency |
| Data ownership marker | `<mysql_data>/.pigsty-mysql-initialized` records `version`, `cluster`, `instance`, and `topology` for ownership validation |
{.full-width .wide .expand}
