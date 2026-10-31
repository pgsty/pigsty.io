# Configuration

> Plan MySQL topology and identity; declare databases, users, parameter overrides, and backup policy.

---

LLMS index: [llms.txt](/llms.txt)

---

Declare the cluster in inventory. `mysql.yml` adjusts live state to match. This page covers topology and configuration blocks. See [Parameters](/docs/mysql/param) for the full reference.


--------

## Before You Deploy

- Manage nodes with [`NODE`](/docs/node). Install the shared CA at `/etc/pki/ca.crt` through `node_ca`. MYSQL issues leaf certificates only.
- Include `mysql` in repositories with `node_repo_modules: node,infra,mysql`, or cache packages locally with `repo_extra_packages: [mysql]`.
- Use supported platforms: `x86_64` EL 8/9/10, Debian 12/13, Ubuntu 22/24; or `aarch64` EL 9/10.
- Set production `mysql_root_password`, `mysql_monitor_password`, and `mysql_cluster_password`. Preflight rejects `CHANGE_ME` placeholders.


--------

## Identity

Each cluster is an inventory group with two required identity parameters:

| Parameter | Level | Description |
|:---|:---:|:---|
| `mysql_cluster` | Cluster | Cluster name; must match the inventory group holding the members. Also the backup directory and the `cls` monitoring label |
| `mysql_seq` | Instance | `1` for standalone; sequential `1..3` for HA; doubles as `server_id` |
{.full-width}

**One member selects standalone; three select InnoDB Cluster.** Preflight rejects other counts. `mysql_seq=1` coordinates bootstrap only; it does not set runtime PRIMARY.

Instances use `{{ mysql_cluster }}-{{ mysql_seq }}`, such as `my-test-1`. Inventory IP or resolvable hostname becomes the advertised MySQL/MGR address. Ordinary reruns cannot change it.


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

Standalone has no Router or `6446/6447` endpoints. Connect to `3306`. TLS, monitoring, and backups otherwise behave as in HA.


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

This creates one writable PRIMARY and two read-only SECONDARY members. It tolerates one node failure. Every member runs Router; any `6446` reaches the current primary.

> [!WARNING] Always select the complete cluster
> Every `mysql.yml` run must select **all members** with `-l`, or omit it to select all MySQL clusters.
> Preflight rejects partial selection to prevent topology divergence.


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

Convergence is **additive**. Reruns create missing databases. Removing an entry never drops a database; deletion is manual.

> [!NOTE] Every table needs a primary key
> Default `sql_require_primary_key=ON` rejects tables without primary keys with `ERROR 3750`. Such tables become read-only under MGR and block AdminAPI disaster recovery.
> Give every table a primary key, including an invisible-column key if needed. Override through `mysql_parameters` only if necessary.


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

Use `'db.table'` grant scopes. Either part can be `*`, as in `'*.*'` and `'app.*'`. Values are comma-separated privileges. Preflight rejects malformed users, hosts, scopes, or privilege names.

Semantics:

- Create missing users. Update existing passwords and connection limits.
- Apply `priv` grants. **Removing mappings does not REVOKE privileges.**
- Do not declare platform identities: `root`, `dbuser_monitor`, `dbuser_cluster`, or `dbuser_backup`.
- The server requires TLS. `PREFERRED` negotiates encryption; `DISABLED` plaintext connections fail. Prefer explicit `VERIFY_CA`.


--------

## Parameter Overrides

`mysql_parameters` appends `[mysqld]` overrides at the end of managed configuration. The last value takes precedence:

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

- Start option names with a letter; `._-` characters are permitted. Values must be single-line scalars.
- `mysqld --validate-config` checks the rendered result. Invalid options stop deployment without changing the running service.
- **Reserved settings cannot be overridden.** These include identity/protocol (`user`, `pid_file`, `server_id`, `datadir`, `socket`, `port`, `bind_address`, `mysqlx_bind_address`, `report_host`, `mysqlx`, …). They also include replication/plugins (`gtid_mode`, `enforce_gtid_consistency`, `log_bin`, `relay_log`, `plugin_load*`, `clone`, `plugin_clone`, `plugin_mysqlx`, `group_replication_*`, …) and TLS (`require_secure_transport`, `ssl_*`). The role owns and rejects overrides for these keys.
- Changes trigger [rolling restarts](/docs/mysql/admin#change-cluster-parameters): secondaries first, primary last.

Default buffer pool is 25% of node memory, at least 256MB. Redo capacity is half that size, limited to 128MB–4GB. Replica parallelism follows CPU count. Override `innodb_buffer_pool_size` and other keys through `mysql_parameters` when needed.


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

- Run a daily full physical XtraBackup backup and prepare it immediately. The result is directly restorable.
- Standalone backs up locally. Every HA timer runs, but **only the current PRIMARY performs backup**. Others skip.
- Use `<path>/<cluster>/<UTC timestamp>/`, atomic `latest` symlinks, and retention-based pruning.
- No incremental chains, binlog archiving, or PITR. Standalone recovery reaches the most recent backup.

> [!WARNING] Backups follow the primary
> After failover, backups use the new primary's local disk. Compare `latest` timestamps on **all members** and select the newest.
> For off-site protection, synchronize backups yourself, for example with scheduled rclone or rsync.


--------

## Platform Credentials

```yaml
mysql_root_password: MySQL.Root          # local root (root@localhost, socket only)
mysql_monitor_password: MySQL.Monitor    # exporter identity
mysql_cluster_password: MySQL.Cluster    # AdminAPI / Router / backup identity
```

Credential lifecycle rules:

- Passwords must be single-line and cannot retain a `CHANGE_ME` prefix. Preflight enforces this.
- **Ordinary HA reruns cannot rotate `mysql_cluster_password`.** Metadata and Router keyrings bind it, so implicit rotation fails. Standalone rotation works normally.
- **`mysql_root_password` cannot reset silently.** If the live value differs, the task fails instead of replacing it.

Root owns `/etc/mysql/pigsty/`, with directory mode `0700` and file mode `0600`. It contains secrets and ready-to-use local client configuration:

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

Use [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml) for the full template. [`conf/mysql.yml`](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/mysql.yml) belongs to OpenHalo, a MySQL-compatible PostgreSQL kernel, and is unrelated to this module. Development sources move it to `conf/fork/mysql.yml`.
