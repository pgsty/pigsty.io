---
title: Parameters
weight: 5012
description: "The MYSQL module's 13 public parameters: 11 deployment parameters, 2 protected-removal parameters, and fixed platform conventions."
icon: fa-solid fa-sliders
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/param]
---

The MYSQL deployment role deliberately exposes only 11 parameters; the removal role adds 2 protected operations parameters. Software versions, ports, directories, charset, TLS paths, and timer schedules are fixed by the role; memory sizing is derived from node specs. To adjust server behavior, use [`mysql_parameters`](#mysql_parameters).


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

Variables that appeared on earlier versions of this page — `mysql_role`, `mysql_services`, `mysql_packages`, `mysql_data`, `mysql_port`, `mysql_replication_*`, `mysql_*_username` — are no longer part of the interface. Do not use them.


--------

## Identity

### `mysql_cluster`

Required cluster identity; must match an inventory group containing the member hosts (enforced at preflight). Starts with a letter, digit, or underscore; `._-` allowed; up to 63 characters:

```yaml
mysql_cluster: my-test
```

Used to derive instance names (`my-test-1`), the deterministic MGR group UUID, the backup directory (`<repo>/my-test/`), and the `cls` monitoring label.

### `mysql_seq`

Required instance sequence. `1` for standalone; a consecutive `1, 2, 3` for HA. Doubles as `server_id`:

```yaml
10.10.10.11: { mysql_seq: 1 }
```

`mysql_seq=1` only marks the bootstrap coordinator. The runtime primary is elected, and reruns never move it back.


--------

## Credentials

### `mysql_root_password`

Password for `root@'localhost'`, usable only locally (socket or loopback). Single-line, and must not keep the `CHANGE_ME` prefix:

The default is `DBUser.Root`:

```yaml
mysql_root_password: DBUser.Root
```

Set at first launch. Afterwards, if the live password differs from the declaration, the run fails explicitly rather than resetting it — rotate manually with `ALTER USER`, then update the inventory.

### `mysql_monitor_password`

Password for `dbuser_monitor@'127.0.0.1'`, used by mysqld_exporter: loopback-only, capped at 3 connections, read-only privileges:

The default is `DBUser.Monitor`:

```yaml
mysql_monitor_password: DBUser.Monitor
```

### `mysql_cluster_password`

Shared password for `dbuser_cluster@'%'` (TLS-required) and `dbuser_backup@'localhost'`, covering AdminAPI cluster management, Router bootstrap, and XtraBackup:

The default is `DBUser.Cluster`:

```yaml
mysql_cluster_password: DBUser.Cluster
```

On HA clusters this password is embedded in cluster metadata and Router keyrings, so **it cannot be rotated by an ordinary rerun**: a mismatch between the live value and the declaration is rejected at preflight. Standalone instances have no such binding — update the inventory and rerun.


--------

## Business Objects

### `mysql_databases`

Additive database list accepting only `name / encoding / collate`:

```yaml
mysql_databases:
  - { name: app }
  - { name: app2, encoding: utf8mb4, collate: utf8mb4_general_ci }
```

Creates and updates only; removing an entry never drops a database. Syntax and validation rules: [Configuration](/docs/mysql/config#databases).

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

Grants are applied but never revoked implicitly; platform identities cannot be declared. Syntax and validation rules: [Configuration](/docs/mysql/config#users).


--------

## `mysql_parameters`

A dictionary of `[mysqld]` overrides, rendered at the end of the managed config (last value wins):

```yaml
mysql_parameters:
  max_connections: 500
  long_query_time: 2
  innodb_buffer_pool_size: 2G
  innodb_print_all_deadlocks: true    # true/false render as ON/OFF
```

Constraints and behavior:

- Keys match `[A-Za-z][A-Za-z0-9_.-]{0,63}`; values are single-line scalars. The rendered config still passes `mysqld --validate-config`, so typos fail at deploy time without touching the running instance;
- **Reserved options are rejected** (`-` and `_` spellings are treated alike): `user`, `pid_file`, `server_id`, `datadir`, `socket`, `port`, `bind_address`, `mysqlx_bind_address`, `report_host`, `gtid_mode`, `enforce_gtid_consistency`, `log_bin`, `relay_log`, `require_secure_transport`, `ssl_ca`, `ssl_cert`, `ssl_key`, `plugin_load`, `plugin_load_add`, `clone`, `plugin_clone`, `mysqlx`, and `plugin_mysqlx`, plus all `group_replication_*`, `plugin_group_replication*`, `plugin_mysqlx_bind_address`, and `ssl_*` options;
- Applying a change reruns `mysql.yml`, which orchestrates a rolling restart (secondaries first, primary last) — expect one brief write interruption when the primary restarts;
- Commonly overridden defaults: `sql_require_primary_key` (default `ON`), `long_query_time` (default `1`), `binlog_expire_logs_seconds` (default 7 days), and the memory settings.

A note on dynamic variables: the few replication settings AdminAPI manages via `SET PERSIST` are authoritative at runtime; on every converge the role pins `group_replication_group_seeds` back to the declared member list to prevent persisted drift.


--------

## Backup

### `mysql_backup_enabled`

Whether the daily backup timer runs (`mysql-backup.timer`, daily with up to 30 minutes of randomized delay):

```yaml
mysql_backup_enabled: true
```

Setting `false` stops the timer but keeps the backup script and config. Note that if backups were never enabled, the repository directory does not exist and a manual trigger exits immediately.

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

Setting `false` stops the exporter and converges `/infra/targets/mysql/<instance>.yml` to an empty list (the file itself is only removed by `mysql-rm.yml`).


--------

## Removal Parameters

### `mysql_safeguard`

Protected-removal safety switch, defaulting to `true`. You must explicitly set it to `false` when running `mysql-rm.yml`, or the role refuses to continue:

```bash
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test
```

### `mysql_rm_confirm`

Target-name confirmation string, empty by default. When removing a single member, it must exactly equal the instance name, such as `my-test-3`; when removing a complete cluster or standalone instance, it must exactly equal `mysql_cluster`. Both this value and `mysql_safeguard=false` are required.


--------

## Fixed Platform Conventions

The following are fixed or derived by the role — **not** inventory parameters — listed here for operators' reference:

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
