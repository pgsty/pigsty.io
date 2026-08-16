---
title: Configuration
weight: 5011
description: Plan MySQL topology and identity; declare databases, users, parameter overrides, and backup policy.
icon: fa-solid fa-code
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/config]
---

The MYSQL module is driven by the inventory: you declare the desired cluster, and `mysql.yml` converges the live state to match. This page covers topology planning and every configuration block; see [Parameters](/docs/mysql/param) for the full reference.


--------

## Before You Deploy

- Target nodes are [`NODE`](/docs/node)-managed, with the shared CA installed at `/etc/pki/ca.crt` (managed by the `node_ca` role; the MySQL role only issues leaf certificates);
- Package repositories include the `mysql` module: `node_repo_modules: node,infra,mysql`, or a local repo cached with `repo_extra_packages: [mysql]`;
- The platform is in the support matrix: `x86_64` on EL 8/9/10, Debian 12/13, Ubuntu 22/24; or `aarch64` on EL 9/10;
- The three platform passwords (`mysql_root_password`, `mysql_monitor_password`, `mysql_cluster_password`) are set to production values — preflight rejects `CHANGE_ME` placeholders.


--------

## Identity

Each cluster is an inventory group with two required identity parameters:

| Parameter | Level | Description |
|:---|:---:|:---|
| `mysql_cluster` | Cluster | Cluster name; must match the inventory group holding the members. Also the backup directory and the `cls` monitoring label |
| `mysql_seq` | Instance | `1` for standalone; sequential `1..3` for HA; doubles as `server_id` |
{.full-width}

Topology is inferred from member count: **1 member is a standalone, 3 members form an InnoDB Cluster**; any other count is rejected at preflight. `mysql_seq=1` is only the bootstrap coordinator, not the runtime primary.

Instance names follow `{{ mysql_cluster }}-{{ mysql_seq }}` (e.g. `my-test-1`). The inventory host address (IP or resolvable hostname) is the advertised MySQL and MGR address and cannot be changed by an ordinary rerun.


--------

## Standalone Instance

The minimal standalone declaration:

```yaml
my-meta:
  hosts:
    10.10.10.10: { mysql_seq: 1 }
  vars:
    mysql_cluster: my-meta
```

Standalone instances have no Router (`6446/6447` do not exist); clients connect to `3306` directly. Backups, monitoring, and TLS behave exactly as in HA mode.


--------

## Three-Node InnoDB Cluster

```yaml
my-test:
  hosts:
    10.10.10.11: { mysql_seq: 1 }
    10.10.10.12: { mysql_seq: 2 }
    10.10.10.13: { mysql_seq: 3 }
  vars:
    mysql_cluster: my-test
    mysql_databases:
      - { name: app }
    mysql_users:
      - name: app
        host: '%'
        password: DBUser.App
        connlimit: 20
        priv: { 'app.*': 'ALL PRIVILEGES' }
```

This yields a single-primary MGR cluster: one writable PRIMARY, two read-only SECONDARY members, tolerating one node failure. Every member runs a Router, so port `6446` on any member reaches the current primary.

{{% alert title="Always select the complete cluster" color="warning" %}}
Every `mysql.yml` run must select **all members** of the cluster with `-l` (or omit `-l` to converge every MySQL cluster). Partial member selection is rejected at preflight — a deliberate guard against topology divergence.
{{% /alert %}}


--------

## Databases

`mysql_databases` declares databases additively:

```yaml
mysql_databases:
  - { name: app }                                              # utf8mb4 / utf8mb4_0900_ai_ci by default
  - { name: app2, encoding: utf8mb4, collate: utf8mb4_general_ci }
```

| Field | Default | Description |
|:---|:---|:---|
| `name` | required | Database name, `[A-Za-z0-9_$-]`; system schema names are rejected |
| `encoding` | `utf8mb4` | Character set |
| `collate` | `utf8mb4_0900_ai_ci` | Collation |
{.full-width}

Each entry accepts only these three fields; preflight validation rejects additional keys.

Convergence is **additive**: reruns create missing databases, but removing an entry never drops one. Deleting data is a manual operation by design.

{{% alert title="Every table needs a primary key" color="info" %}}
The platform enables `sql_require_primary_key=ON` by default, so creating a PK-less table fails with `ERROR 3750`. This is not pedantry: PK-less tables are read-only under MGR and block AdminAPI cluster rebuilds during disaster recovery. Define a primary key on every table (invisible-column PKs work too); override via `mysql_parameters` only if you truly must.
{{% /alert %}}


--------

## Users

`mysql_users` declares users and grants additively:

```yaml
mysql_users:
  - name: app                        # username
    host: '%'                        # grant source, defaults to '%'
    password: DBUser.App             # required; special characters are handled
    connlimit: 20                    # MAX_USER_CONNECTIONS, 0 = unlimited
    priv:                            # grant map: 'db.table' -> privilege list
      'app.*': 'ALL PRIVILEGES'
      'app2.*': 'SELECT, INSERT, UPDATE, DELETE'
```

Grant scopes are written as `'db.table'`, with `*` wildcards on either side (`'*.*'`, `'app.*'`); values are comma-separated privilege names. Preflight validates usernames, hosts, scopes, and privilege words, rejecting malformed declarations.

Semantics:

- Missing users are created; existing users get their password and connection limit updated;
- Grants in `priv` are applied, but **removing a mapping does not REVOKE**;
- The platform identities (`root`, `dbuser_monitor`, `dbuser_cluster`, `dbuser_backup`) cannot be declared;
- The server enforces TLS: the client default `PREFERRED` mode negotiates encryption automatically, and plaintext (`DISABLED`) connections are rejected; prefer an explicit `VERIFY_CA`.


--------

## Parameter Overrides

`mysql_parameters` overrides `[mysqld]` options, rendered at the end of the managed config so the last value wins:

```yaml
my-test:
  vars:
    mysql_cluster: my-test
    mysql_parameters:
      max_connections: 500
      long_query_time: 2
      innodb_print_all_deadlocks: true   # booleans render as ON/OFF
```

Rules and safety:

- Keys must be plain option names (letter first; `._-` allowed); values must be single-line scalars;
- The rendered config still passes `mysqld --validate-config`, so a bad option fails at deploy time without touching the running service;
- **Platform-reserved options cannot be overridden**: identity and protocol (`user`, `pid_file`, `server_id`, `datadir`, `socket`, `port`, `bind_address`, `mysqlx_bind_address`, `report_host`, `mysqlx`, …), replication and plugins (`gtid_mode`, `enforce_gtid_consistency`, `log_bin`, `relay_log`, `plugin_load*`, `clone`, `plugin_clone`, `plugin_mysqlx`, `group_replication_*`, …), and TLS (`require_secure_transport`, `ssl_*`) are role-managed and rejected if declared;
- Parameter changes trigger an [orchestrated rolling restart](/docs/mysql/admin#change-cluster-parameters): secondaries first, primary last.

Memory needs no configuration: the buffer pool is 25% of node memory (256MB floor), redo capacity is half the buffer pool (128MB–4GB), and replica parallelism follows CPU count. For precise control, override `innodb_buffer_pool_size` and friends via `mysql_parameters`.


--------

## Backup Settings

```yaml
mysql_backup_enabled: true            # daily backup timer, on by default
mysql_backup_repo:
  local:
    path: /data/backups/mysql         # local backup root
    retention: 7                      # keep the last 7 fulls
```

The backup contract (details in [Administration](/docs/mysql/admin#manage-backups)):

- One XtraBackup **full physical backup** per day, prepared immediately after — the output directory is directly restorable;
- Standalone backs up locally; in HA every member's timer fires, but **only the current PRIMARY actually runs** — other members skip cleanly;
- Layout is `<path>/<cluster>/<UTC timestamp>/`, with an atomic `latest` symlink and retention-based pruning;
- No incremental chain, no binlog archiving, no PITR: for a standalone the recovery point is the most recent backup.

{{% alert title="Backups follow the primary" color="warning" %}}
After a failover, new backups land on the new primary's local disk. Before restoring, check the `latest` timestamp on **all members** and take the newest. For off-site protection, sync the backup directory yourself (e.g. a scheduled rclone/rsync job).
{{% /alert %}}


--------

## Platform Credentials

```yaml
mysql_root_password: MySQL.Root          # local root (root@localhost, socket only)
mysql_monitor_password: MySQL.Monitor    # exporter identity
mysql_cluster_password: MySQL.Cluster    # AdminAPI / Router / backup identity
```

Credential lifecycle rules:

- Passwords must be single-line and must not keep the `CHANGE_ME` prefix — enforced at preflight;
- **On HA clusters, `mysql_cluster_password` cannot be rotated by an ordinary rerun**: it is embedded in cluster metadata and Router keyrings, so implicit rotation is rejected (standalone instances have no such binding and rotate normally);
- **`mysql_root_password` cannot be silently reset either**: if the live root password differs from the declaration, the task fails explicitly instead of overwriting it.

Credential material lives in `/etc/mysql/pigsty/` (root-owned: directory `0700`, files `0600`), including ready-to-use client configs for local operations:

```bash
mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf        # local root session
mysql --defaults-extra-file=/etc/mysql/pigsty/cluster.cnf     # cluster session via the local Router (HA members only)
```


--------

## Full Example

Standalone plus three-node HA, matching the four-node sandbox:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }

    my-meta:
      hosts:
        10.10.10.10: { mysql_seq: 1 }
      vars: { mysql_cluster: my-meta, node_cluster: my-meta }

    my-test:
      hosts:
        10.10.10.11: { mysql_seq: 1 }
        10.10.10.12: { mysql_seq: 2 }
        10.10.10.13: { mysql_seq: 3 }
      vars:
        mysql_cluster: my-test
        node_cluster: my-test
        mysql_databases:
          - { name: app }
        mysql_users:
          - { name: app, password: DBUser.App, priv: { 'app.*': 'ALL PRIVILEGES' } }
        mysql_parameters:
          max_connections: 500

  vars:
    version: v4.5.0
    admin_ip: 10.10.10.10
    node_repo_modules: node,infra,mysql
    node_tune: oltp

    mysql_root_password: MySQL.Root
    mysql_monitor_password: MySQL.Monitor
    mysql_cluster_password: MySQL.Cluster
```

See [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml) for the full template. Note that [`conf/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mysql.yml) is the OpenHalo template (a MySQL-compatible PostgreSQL kernel) and is unrelated to this module.
