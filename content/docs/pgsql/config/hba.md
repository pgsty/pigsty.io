---
title: HBA Rules
weight: 1206
description: Detailed explanation of PostgreSQL and Pgbouncer Host-Based Authentication (HBA) rules configuration in Pigsty.
icon: fa-solid fa-key
module: [PGSQL]
categories: [Reference]
---

## Overview

HBA (Host-Based Authentication) controls "who can connect to the database from where and how".
Pigsty manages HBA rules declaratively through [**`pg_default_hba_rules`**](#pg_default_hba_rules) and [**`pg_hba_rules`**](#pg_hba_rules).

Pigsty renders the following config files during cluster init or HBA refresh:

| Config File    | Path                          | Description                 |
|:---------------|:------------------------------|:----------------------------|
| PostgreSQL HBA | `/pg/data/pg_hba.conf`        | PostgreSQL server HBA rules |
| Pgbouncer HBA  | `/etc/pgbouncer/pgb_hba.conf` | Connection pool HBA rules   |

HBA rules are controlled by these parameters:

| Parameter                                         | Level | Description                      |
|:--------------------------------------------------|:------|:---------------------------------|
| [`pg_default_hba_rules`](#pg_default_hba_rules)   | G     | PostgreSQL global default HBA    |
| [`pg_hba_rules`](#pg_hba_rules)                   | G/C/I | PostgreSQL cluster/instance add  |
| [`pgb_default_hba_rules`](#pgb_default_hba_rules) | G     | Pgbouncer global default HBA     |
| [`pgb_hba_rules`](#pgb_hba_rules)                 | G/C/I | Pgbouncer cluster/instance add   |

Rule features:

- **Role filtering**: Rules support `role` field, auto-filter based on instance's `pg_role`
- **Order sorting**: Rules support `order` field, controls position in final config file
- **Two syntaxes**: Supports alias form (simplified) and raw form (direct HBA text)


----------------

## Refresh HBA

After modifying config, re-render config files and reload services:

```bash
bin/pgsql-hba <cls>                   # Refresh entire cluster HBA (recommended)
bin/pgsql-hba <cls> <ip>...           # Refresh specific instances in cluster
```

Script executes the following playbook:

```bash
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true
```

**PostgreSQL only**: `./pgsql.yml -l <cls> -t pg_hba,pg_reload -e pg_reload=true`

**Pgbouncer only**: `./pgsql.yml -l <cls> -t pgbouncer_hba,pgbouncer_reload`

{{% alert title="Don't edit config files directly" color="warning" %}}
Don't directly edit `/pg/data/pg_hba.conf` or `/etc/pgbouncer/pgb_hba.conf` - they'll be overwritten on next playbook run.
All changes should be made in `pigsty.yml`, then execute `bin/pgsql-hba` to refresh.
{{% /alert %}}


----------------

## Parameter Details

**`pg_default_hba_rules`**

PostgreSQL global default HBA rule list, usually defined in `all.vars`, provides base access control for all clusters.

- Type: `rule[]`, Level: Global (G)

```yaml
pg_default_hba_rules:
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  ,order: 100}
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' ,order: 150}
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replicator replication from localhost',order: 200}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replicator replication from intranet' ,order: 250}
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replicator postgres db from intranet' ,order: 300}
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' ,order: 350}
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor from infra host with password',order: 400}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   ,order: 450}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin @ everywhere with ssl & pwd'    ,order: 500}
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'pgbouncer read/write via local socket',order: 550}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'read/write biz user via password'     ,order: 600}
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'allow etl offline tasks from intranet',order: 650}
```

**`pg_hba_rules`**

PostgreSQL cluster/instance-level additional HBA rules, can override at cluster or instance level, merged with default rules and sorted by `order`.

- Type: `rule[]`, Level: Global/Cluster/Instance (G/C/I), Default: `[]`

```yaml
pg_hba_rules:
  - {user: app_user, db: app_db, addr: intra, auth: pwd, title: 'app user access'}
```

**`pgb_default_hba_rules`**

Pgbouncer global default HBA rule list, usually defined in `all.vars`.

- Type: `rule[]`, Level: Global (G)

```yaml
pgb_default_hba_rules:
  - {user: '${dbsu}'    ,db: pgbouncer   ,addr: local     ,auth: peer  ,title: 'dbsu local admin access with os ident',order: 100}
  - {user: 'all'        ,db: all         ,addr: localhost ,auth: pwd   ,title: 'allow all user local access with pwd' ,order: 150}
  - {user: '${monitor}' ,db: pgbouncer   ,addr: intra     ,auth: pwd   ,title: 'monitor access via intranet with pwd' ,order: 200}
  - {user: '${monitor}' ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other monitor access addr' ,order: 250}
  - {user: '${admin}'   ,db: all         ,addr: intra     ,auth: pwd   ,title: 'admin access via intranet with pwd'   ,order: 300}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other admin access addr'   ,order: 350}
  - {user: 'all'        ,db: all         ,addr: intra     ,auth: pwd   ,title: 'allow all user intra access with pwd' ,order: 400}
```

**`pgb_hba_rules`**

Pgbouncer cluster/instance-level additional HBA rules.

- Type: `rule[]`, Level: Global/Cluster/Instance (G/C/I), Default: `[]`

> **Note**: Pgbouncer HBA does not support `db: replication`.


----------------

## Rule Fields

Each HBA rule is a YAML dict supporting these fields:

| Field   | Type   | Required | Default  | Description                                           |
|:--------|:-------|:---------|:---------|:------------------------------------------------------|
| `user`  | string | No       | `all`    | Username, supports `all`, placeholders, `+rolename`   |
| `db`    | string | No       | `all`    | Database name, supports `all`, `replication`, db name |
| `addr`  | string | Yes*     | -        | Address alias or CIDR, see [**Address Aliases**](#address-aliases) |
| `auth`  | string | No       | `pwd`    | Auth method alias, see [**Auth Methods**](#auth-methods) |
| `title` | string | No       | -        | Rule description, rendered as comment in config       |
| `role`  | string | No       | `common` | Instance role filter, see [**Role Filtering**](#role-filtering) |
| `order` | int    | No       | `1000`   | Sort weight, lower first, see [**Order Sorting**](#order-sorting) |
| `rules` | list   | Yes*     | -        | Raw HBA text lines, mutually exclusive with `addr`    |

> Either `addr` or `rules` must be specified. Use `rules` to write raw HBA format directly.


----------------

## Address Aliases

Pigsty provides address aliases to simplify HBA rule writing:

| Alias               | Expands To                                           | Description                |
|:--------------------|:-----------------------------------------------------|:---------------------------|
| `local`             | Unix socket                                          | Local Unix socket          |
| `localhost`         | Unix socket + `127.0.0.1/32` + `::1/128`             | Loopback addresses         |
| `admin`             | `${admin_ip}/32`                                     | Admin IP address           |
| `infra`             | All infra group node IPs                             | Infrastructure nodes       |
| `cluster`           | All current cluster member IPs                       | Same cluster instances     |
| `intra` / `intranet`| `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`      | Intranet CIDRs             |
| `world` / `all`     | `0.0.0.0/0` + `::/0`                                 | Any address (IPv4 + IPv6)  |
| `<CIDR>`            | Direct use                                           | e.g., `192.168.1.0/24`     |

Intranet CIDRs can be customized via `node_firewall_intranet`:

```yaml
node_firewall_intranet:
  - 10.0.0.0/8
  - 172.16.0.0/12
  - 192.168.0.0/16
```


----------------

## Auth Methods

Pigsty provides auth method aliases for simplified config:

| Alias       | Actual Method              | Connection Type | Description                    |
|:------------|:---------------------------|:----------------|:-------------------------------|
| `pwd`       | `scram-sha-256` or `md5`   | `host`          | Auto-select based on `pg_pwd_enc` |
| `ssl`       | `scram-sha-256` or `md5`   | `hostssl`       | Force SSL + password           |
| `ssl-sha`   | `scram-sha-256`            | `hostssl`       | Force SSL + SCRAM-SHA-256      |
| `ssl-md5`   | `md5`                      | `hostssl`       | Force SSL + MD5                |
| `cert`      | `cert`                     | `hostssl`       | Client certificate auth        |
| `trust`     | `trust`                    | `host`          | Unconditional trust (dangerous)|
| `deny` / `reject` | `reject`             | `host`          | Reject connection              |
| `ident`     | `ident`                    | `host`          | OS user mapping (PostgreSQL)   |
| `peer`      | `peer`                     | `local`         | OS user mapping (Pgbouncer/local) |

> `pg_pwd_enc` defaults to `scram-sha-256`, can be set to `md5` for legacy client compatibility.


----------------

## User Variables

HBA rules support these user placeholders, auto-replaced with actual usernames during rendering:

| Placeholder  | Default          | Corresponding Param         |
|:-------------|:-----------------|:----------------------------|
| `${dbsu}`    | `postgres`       | `pg_dbsu`                   |
| `${repl}`    | `replicator`     | `pg_replication_username`   |
| `${monitor}` | `dbuser_monitor` | `pg_monitor_username`       |
| `${admin}`   | `dbuser_dba`     | `pg_admin_username`         |


----------------

## Role Filtering

The `role` field in HBA rules controls which instances the rule applies to:

| Role      | Description                                                         |
|:----------|:--------------------------------------------------------------------|
| `common`  | Default, applies to all instances                                   |
| `primary` | Primary instance only                                               |
| `replica` | Replica instance only                                               |
| `offline` | Offline instance only (`pg_role: offline` or `pg_offline_query: true`) |
| `standby` | Standby instance                                                    |
| `delayed` | Delayed replica instance                                            |

Role filtering matches based on instance's `pg_role` variable. Non-matching rules are commented out (prefixed with `#`).

```yaml
pg_hba_rules:
  # Only applies on primary: writer can only connect to primary
  - {user: writer, db: all, addr: intra, auth: pwd, role: primary, title: 'writer only on primary'}

  # Only applies on offline instances: ETL dedicated network
  - {user: '+dbrole_offline', db: all, addr: '172.20.0.0/16', auth: ssl, role: offline, title: 'offline dedicated'}
```


----------------

## Order Sorting

PostgreSQL HBA is **first-match-wins**, rule order is critical. Pigsty controls rule rendering order via the `order` field.

**Order Interval Convention**

| Interval    | Usage                                           |
|:------------|:------------------------------------------------|
| `0 - 99`    | User high-priority rules (before all defaults)  |
| `100 - 650` | Default rule zone (spaced by 50 for insertion)  |
| `1000+`     | User rule default (rules without `order`)       |

**PostgreSQL Default Rules Order**

| Order | Rule Description               |
|:------|:-------------------------------|
| 100   | dbsu local ident               |
| 150   | dbsu replication local         |
| 200   | replicator localhost           |
| 250   | replicator intra replication   |
| 300   | replicator intra postgres      |
| 350   | monitor localhost              |
| 400   | monitor infra                  |
| 450   | admin infra ssl                |
| 500   | admin world ssl                |
| 550   | dbrole_readonly localhost      |
| 600   | dbrole_readonly intra          |
| 650   | dbrole_offline intra           |

**Pgbouncer Default Rules Order**

| Order | Rule Description    |
|:------|:--------------------|
| 100   | dbsu local peer     |
| 150   | all localhost pwd   |
| 200   | monitor pgbouncer intra |
| 250   | monitor world deny  |
| 300   | admin intra pwd     |
| 350   | admin world deny    |
| 400   | all intra pwd       |


----------------

## Syntax Examples

**Alias Form**: Using Pigsty simplified syntax

```yaml
pg_hba_rules:
  - title: allow grafana view access
    role: primary
    user: dbuser_view
    db: meta
    addr: infra
    auth: ssl
```

Rendered result:

```ini
# allow grafana view access [primary]
hostssl  meta               dbuser_view        10.10.10.10/32     scram-sha-256
```

**Raw Form**: Using PostgreSQL HBA syntax directly

```yaml
pg_hba_rules:
  - title: allow intranet password access
    role: common
    rules:
      - host all all 10.0.0.0/8 scram-sha-256
      - host all all 172.16.0.0/12 scram-sha-256
      - host all all 192.168.0.0/16 scram-sha-256
```

Rendered result:

```ini
# allow intranet password access [common]
host all all 10.0.0.0/8 scram-sha-256
host all all 172.16.0.0/12 scram-sha-256
host all all 192.168.0.0/16 scram-sha-256
```


----------------

## Common Scenarios

**Blacklist IP**: Use `order: 0` to ensure first match

```yaml
pg_hba_rules:
  - {user: all, db: all, addr: '10.1.1.100/32', auth: deny, order: 0, title: 'block bad ip'}
```

**Whitelist App Server**: High priority for specific IP

```yaml
pg_hba_rules:
  - {user: app_user, db: app_db, addr: '192.168.1.10/32', auth: ssl, order: 50, title: 'app server'}
```

**Admin Force Certificate**: Override default SSL password auth

```yaml
pg_hba_rules:
  - {user: '${admin}', db: all, addr: world, auth: cert, order: 10, title: 'admin cert only'}
```

**Offline Instance Dedicated Network**: Only on offline instances

```yaml
pg_hba_rules:
  - {user: '+dbrole_offline', db: all, addr: '172.20.0.0/16', auth: ssl-sha, role: offline, title: 'etl network'}
```

**Restrict Access by Database**: Sensitive databases limited to specific networks

```yaml
pg_hba_rules:
  - {user: fin_user, db: finance_db, addr: '10.20.0.0/16', auth: ssl, title: 'finance only'}
  - {user: hr_user, db: hr_db, addr: '10.30.0.0/16', auth: ssl, title: 'hr only'}
```

**Pgbouncer Dedicated Rules**: Note no `db: replication` support

```yaml
pgb_hba_rules:
  - {user: '+dbrole_readwrite', db: all, addr: world, auth: ssl, title: 'app via pgbouncer'}
```


----------------

## Complete Cluster Example

```yaml
pg-prod:
  hosts:
    10.10.10.11: {pg_seq: 1, pg_role: primary}
    10.10.10.12: {pg_seq: 2, pg_role: replica}
    10.10.10.13: {pg_seq: 3, pg_role: offline}
  vars:
    pg_cluster: pg-prod

    pg_hba_rules:
      # Blacklist: known malicious IP (highest priority)
      - {user: all, db: all, addr: '10.1.1.100/32', auth: deny, order: 0, title: 'blacklist'}

      # App server whitelist (high priority)
      - {user: app_user, db: app_db, addr: '192.168.1.0/24', auth: ssl, order: 50, title: 'app servers'}

      # ETL tasks: offline instances only
      - {user: etl_user, db: all, addr: '172.20.0.0/16', auth: pwd, role: offline, title: 'etl tasks'}

      # Cluster internal monitoring
      - {user: '${monitor}', db: all, addr: cluster, auth: pwd, order: 380, title: 'cluster monitor'}

    pgb_hba_rules:
      # App via connection pool
      - {user: '+dbrole_readwrite', db: all, addr: '192.168.1.0/24', auth: ssl, title: 'app via pgbouncer'}
```


----------------

## Verification & Troubleshooting

**View Current HBA Rules**

```bash
psql -c "TABLE pg_hba_file_rules"         # View via SQL (recommended)
cat /pg/data/pg_hba.conf                  # View PostgreSQL HBA file
cat /etc/pgbouncer/pgb_hba.conf           # View Pgbouncer HBA file
grep '^#' /pg/data/pg_hba.conf | head -20 # View rule titles (verify order)
```

**Test Connection Auth**

```bash
psql -h <host> -p 5432 -U <user> -d <db> -c "SELECT 1"
```

**Common Issues**

| Error Message                           | Possible Cause          | Solution                           |
|:----------------------------------------|:------------------------|:-----------------------------------|
| `no pg_hba.conf entry for host...`      | No matching HBA rule    | Add corresponding rule and refresh |
| `password authentication failed`        | Wrong password or enc   | Check password and `pg_pwd_enc`    |
| Rule not taking effect                  | Not refreshed or order  | Run `bin/pgsql-hba`, check order   |


----------------

## Important Notes

1. **Order sensitive**: PostgreSQL HBA is first-match-wins, use `order` wisely
2. **Role matching**: Ensure `role` field matches target instance's `pg_role`
3. **Address format**: CIDR must be correct, e.g., `10.0.0.0/8` not `10.0.0.0/255.0.0.0`
4. **Pgbouncer limitation**: Does not support `db: replication`
5. **SSL prerequisite**: Ensure SSL is configured before using `ssl`, `cert` auth
6. **Test first**: Validate in test environment before modifying HBA
7. **Refresh on scale**: Rules using `addr: cluster` need refresh after cluster membership changes


----------------

## Related Documentation

- [**HBA Management**](/docs/pgsql/admin/hba/): Daily HBA rule management operations
- [**User Config**](/docs/pgsql/config/user/): User and role configuration
- [**Access Control**](/docs/pgsql/config/acl/): Role system and permission model
- [**Security & Compliance**](/docs/concept/sec/): PostgreSQL cluster security features
