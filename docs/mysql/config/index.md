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
- Replace all three platform passwords (`mysql_root_password`, `mysql_monitor_password`, `mysql_cluster_password`) with production values. Preflight rejects `CHANGE_ME` prefixes and INI interpolation expressions of the form `%(...)s` in `mysql_monitor_password`.

--------

## Identity

Each cluster is an inventory group with two required identity parameters:

| Parameter | Level | Description |
|:---|:---:|:---|
| `mysql_cluster` | Cluster | Must match the inventory group containing its members; also used for the backup subdirectory and monitoring `cls` label |
| `mysql_seq` | Instance | `1` for standalone; contiguous `1..3` for HA; used for instance names and the initial bootstrap coordinator |
{.full-width .wide .expand}

Topology follows member count: **one member is standalone; three members form an InnoDB Cluster**. Preflight rejects other counts. `mysql_seq=1` identifies only the initial bootstrap coordinator, not the runtime primary. `server_id` is derived from the member's IPv4 address as an unsigned 32-bit integer, or the first 32 bits of SHA-1 for a non-IPv4 hostname; no manual assignment is needed.

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

Deployment creates single-primary MGR: one writable PRIMARY and two read-only SECONDARY members, tolerating one failure. Each member runs Router, so any member's `6446` reaches the current primary. If the group's [`NODE`](/docs/node) module enables a Layer 2 VIP (`vip_enabled: true`, `vip_address`, `vip_vrid`), it is added to every member's TLS leaf certificate SANs. Clients can use `<vip>:6446` (RW) and `<vip>:6447` (RO).

> [!WARNING] Cluster Convergence and Partial Limits
> Full `mysql.yml` runs involving bootstrap, configuration, or topology coordination must select **all members** with `-l`, or omit `-l` to converge every MySQL cluster. Preflight rejects partial selection. Only independent phases `-t mysql_provision` (including `mysql_db` and `mysql_user`, with the current PRIMARY included), `-t mysql_backup`, and `-t mysql_monitor` permit convergence on a surviving subset of a degraded cluster.

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

Memory defaults are automatic: `innodb_buffer_pool_size` uses **50%** of physical memory on a dedicated MySQL node and **25%** when colocated with PostgreSQL (`pg_cluster` defined), reserving at least `1 GiB` for the system with a `256 MiB` lower bound. `innodb_redo_log_capacity` defaults to half the buffer pool, clamped to `128 MiB`–`4 GiB`. `max_connections` defaults to `1000`, and replication parallelism follows CPU count. Override individual settings with `mysql_parameters` when needed.

--------

## Data Directory and Backup Configuration

```yaml
mysql_data: /data/mysql               # MySQL data directory, including binlog and tmp subdirectories
mysql_backup_enabled: true            # daily full backups enabled by default
mysql_backup_dir: /data/backups/mysql # local backup root; must not overlap mysql_data
mysql_backup_retention: 3             # retain the latest 3 committed full backups
```

Data directory conventions:

- `mysql_data` defaults to `/data/mysql`, with `binlog/` and `tmp/` subdirectories. It cannot reside under reserved paths such as `/etc`, `/usr`, `/var`, or `/tmp`, except for managing a legacy `/var/lib/mysql` in place;
- Debian/Ubuntu nodes automatically render `/etc/apparmor.d/local/usr.sbin.mysqld` to allow custom `mysql_data` and `/etc/pki/ca.crt`;
- If `/var/lib/mysql` already contains an initialized database and `mysql_data` points elsewhere, preflight rejects the configuration to prevent accidentally creating an empty database alongside old data.

> [!IMPORTANT] Deprecated `mysql_backup_repo` Fails Preflight
> Use the flat parameters `mysql_backup_dir` and `mysql_backup_retention`. `mysql_check` fails if the inventory still defines `mysql_backup_repo`.

The backup contract (details in [Administration](/docs/mysql/admin#manage-backups)):

- Run a daily XtraBackup **full physical backup**, immediately followed by `--prepare`, yielding a directory ready for copy-back. The first `mysql_backup` phase creates an initial baseline if no backup exists;
- Standalone nodes back up locally. Every HA member has a timer, but **only the current writable PRIMARY executes the backup**; other members skip it;
- Backups live under `<mysql_backup_dir>/<mysql_cluster>/<UTC-timestamp>/`. The `latest` symlink atomically points to the newest backup containing `backup.ok`; prune according to `mysql_backup_retention` (default `3`);
- Each successful backup writes its timestamp and size to `/var/lib/node_exporter/textfile/mysql.prom` for `MySQLBackupStale` monitoring;
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
- `mysql_monitor_password` is written to Go INI `/etc/mysqld_exporter.cnf` using a `"""..."""` literal with `$` escaped as `$$`. **INI interpolation substrings of the form `%(...)s`**, such as `%(host)s`, are forbidden;
- **Ordinary HA reruns cannot rotate `mysql_cluster_password`.** Metadata and Router keyrings bind it, so implicit rotation fails. Standalone rotation works normally.
- **`mysql_root_password` cannot reset silently.** If the live value differs, the task fails instead of replacing it.

Credentials are stored under `/etc/mysql/pigsty/`, owned by root with directory mode `0700` and file mode `0600`. Nodes also install interactive shortcuts through `/etc/profile.d/mysql.sh`:

```bash
my                                                            # equivalent to sudo mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf
mysh                                                          # HA AdminAPI shortcut; prints dba.getCluster().status() by default
mysql --defaults-extra-file=/etc/mysql/pigsty/cluster.cnf     # cluster session via the local Router (HA members only)
```

> [!TIP] Always Use `--no-defaults` with Manual `mysqlsh` Commands
> Packaged client configuration can contain options MySQL Shell does not recognize. Explicitly use `mysqlsh --no-defaults ...` for manual commands. The `mysh` function and built-in maintenance scripts already include it.

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
    version: v4.6.0
    admin_ip: 10.10.10.10
    node_repo_modules: node,infra,mysql
    node_tune: oltp

    mysql_root_password: MySQL.Root
    mysql_monitor_password: MySQL.Monitor
    mysql_cluster_password: MySQL.Cluster
```

See the complete [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml) template. [`conf/fork/halo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/fork/halo.yml) is for OpenHalo, a PostgreSQL kernel with MySQL protocol compatibility, and is unrelated to the native MYSQL module.
