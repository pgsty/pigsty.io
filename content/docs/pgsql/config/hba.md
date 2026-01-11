---
title: HBA Rules
weight: 1206
description: Detailed explanation of PostgreSQL and Pgbouncer Host-Based Authentication (HBA) rules configuration in Pigsty.
icon: fa-solid fa-key
module: [PGSQL]
categories: [Reference]
---

> HBA (Host-Based Authentication) controls "who can connect to the database from where and how".
> Pigsty manages HBA rules declaratively through `pg_default_hba_rules` and `pg_hba_rules`.


----------------

## Overview

Pigsty renders the following config files during cluster init or HBA refresh:

| Config File | Path | Description |
|-------------|------|-------------|
| PostgreSQL HBA | `/pg/data/pg_hba.conf` | PostgreSQL server HBA rules |
| Pgbouncer HBA | `/etc/pgbouncer/pgb_hba.conf` | Connection pool Pgbouncer HBA rules |

HBA rules are controlled by these parameters:

| Parameter | Level | Description |
|-----------|-------|-------------|
| [`pg_default_hba_rules`](#pg_default_hba_rules) | G | PostgreSQL global default HBA rules |
| [`pg_hba_rules`](#pg_hba_rules) | G/C/I | PostgreSQL cluster/instance additional rules |
| [`pgb_default_hba_rules`](#pgb_default_hba_rules) | G | Pgbouncer global default HBA rules |
| [`pgb_hba_rules`](#pgb_hba_rules) | G/C/I | Pgbouncer cluster/instance additional rules |

Rule features:

- **Role filtering**: Rules support `role` field, auto-filter based on instance's `pg_role`
- **Order sorting**: Rules support `order` field, controls position in final config file
- **Two syntaxes**: Supports alias form (simplified) and raw form (direct HBA text)


----------------

## Parameter Reference


### `pg_default_hba_rules`

PostgreSQL global default HBA rule list, usually defined in `all.vars`, provides base access control for all PostgreSQL clusters.

- Type: `rule[]`
- Level: Global (G)
- Default: See below

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


### `pg_hba_rules`

PostgreSQL cluster/instance-level additional HBA rules, can be overridden at cluster or instance level, merged with default rules and sorted by `order`.

- Type: `rule[]`
- Level: Global/Cluster/Instance (G/C/I)
- Default: `[]`

```yaml
pg_hba_rules:
  - {user: app_user, db: app_db, addr: intra, auth: pwd, title: 'app user access'}
```


### `pgb_default_hba_rules`

Pgbouncer global default HBA rule list, usually defined in `all.vars`.

- Type: `rule[]`
- Level: Global (G)
- Default: See below

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


### `pgb_hba_rules`

Pgbouncer cluster/instance-level additional HBA rules.

- Type: `rule[]`
- Level: Global/Cluster/Instance (G/C/I)
- Default: `[]`

> **Note**: Pgbouncer HBA does not support `db: replication`.


----------------

## Rule Fields

Each HBA rule is a YAML dict supporting these fields:

| Field | Type | Required | Default | Description |
|-------|------|----------|---------|-------------|
| `user` | string | No | `all` | Username, supports `all`, variable placeholders, `+rolename`, etc. |
| `db` | string | No | `all` | Database name, supports `all`, `replication`, specific db name |
| `addr` | string | Yes* | - | Address alias or CIDR, see [Address Aliases](#address-aliases) |
| `auth` | string | No | `pwd` | Auth method alias, see [Auth Methods](#auth-methods) |
| `title` | string | No | - | Rule description/comment, rendered as comment in config file |
| `role` | string | No | `common` | Instance role filter, see [Role Filtering](#role-filtering) |
| `order` | int | No | `1000` | Sort weight, lower numbers first, see [Order Sorting](#order-sorting) |
| `rules` | list | Yes* | - | Raw HBA text lines, mutually exclusive with `addr` |

> Either `addr` or `rules` must be specified. Use `rules` to write raw HBA format directly.


----------------

## Address Aliases

Pigsty provides address aliases to simplify HBA rule writing:

| Alias | Expands To | Description |
|-------|------------|-------------|
| `local` | Unix socket | Local Unix socket connection |
| `localhost` | Unix socket + `127.0.0.1/32` + `::1/128` | Loopback addresses |
| `admin` | `${admin_ip}/32` | Admin IP address |
| `infra` | All infra group node IPs | Infrastructure node list |
| `cluster` | All current cluster member IPs | All instances in same cluster |
| `intra` / `intranet` | `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16` | Intranet CIDR ranges |
| `world` / `all` | `0.0.0.0/0` + `::/0` | Any address (IPv4 + IPv6) |
| `<CIDR>` | Direct use | e.g., `192.168.1.0/24`, `10.1.1.100/32` |

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

| Alias | Actual Method | Connection Type | Description |
|-------|---------------|-----------------|-------------|
| `pwd` | `scram-sha-256` or `md5` | `host` | Auto-select based on `pg_pwd_enc` |
| `ssl` | `scram-sha-256` or `md5` | `hostssl` | Force SSL + password |
| `ssl-sha` | `scram-sha-256` | `hostssl` | Force SSL + SCRAM-SHA-256 |
| `ssl-md5` | `md5` | `hostssl` | Force SSL + MD5 |
| `cert` | `cert` | `hostssl` | Client certificate auth |
| `trust` | `trust` | `host` | Unconditional trust (dangerous) |
| `deny` / `reject` | `reject` | `host` | Reject connection |
| `ident` | `ident` | `host` | OS user mapping (PostgreSQL) |
| `peer` | `peer` | `local` | OS user mapping (Pgbouncer/local) |

> `pg_pwd_enc` defaults to `scram-sha-256`, can be set to `md5` for legacy client compatibility.


----------------

## User Variables

HBA rules support these user placeholders, auto-replaced with actual usernames during rendering:

| Placeholder | Default | Description |
|-------------|---------|-------------|
| `${dbsu}` | `postgres` | Database superuser |
| `${repl}` | `replicator` | Replication user |
| `${monitor}` | `dbuser_monitor` | Monitor user |
| `${admin}` | `dbuser_dba` | Admin user |

Actual values controlled by corresponding params:

```yaml
pg_dbsu: postgres
pg_replication_username: replicator
pg_monitor_username: dbuser_monitor
pg_admin_username: dbuser_dba
```


----------------

## Role Filtering

The `role` field in HBA rules controls which instances the rule applies to:

| Role | Description |
|------|-------------|
| `common` | Default, applies to all instances |
| `primary` | Primary instance only |
| `replica` | Replica instance only |
| `offline` | Offline instance only (`pg_role: offline` or `pg_offline_query: true`) |
| `standby` | Standby instance |
| `delayed` | Delayed replica instance |

Role filtering matches based on instance's `pg_role` variable. Non-matching rules are commented out (prefixed with `#`).

```yaml
pg_hba_rules:
  # Only applies on primary
  - {user: writer, db: all, addr: intra, auth: pwd, role: primary, title: 'writer only on primary'}

  # Only applies on offline instances
  - {user: '+dbrole_offline', db: all, addr: '172.20.0.0/16', auth: ssl, role: offline, title: 'offline dedicated'}
```


----------------

## Order Sorting

PostgreSQL HBA is **first-match-wins**, rule order is critical. Pigsty controls rule rendering order via the `order` field.

### Order Interval Convention

| Interval | Usage |
|----------|-------|
| `0 - 99` | User high-priority rules (before all default rules) |
| `100 - 650` | Default rule zone (spaced by 50 for easy insertion) |
| `1000+` | User rule default (rules without `order` append to end) |

### Default Rule Order Assignment

**PostgreSQL Default Rules**:

| Order | Rule Description |
|-------|------------------|
| 100 | dbsu local ident |
| 150 | dbsu replication local |
| 200 | replicator localhost |
| 250 | replicator intra replication |
| 300 | replicator intra postgres |
| 350 | monitor localhost |
| 400 | monitor infra |
| 450 | admin infra ssl |
| 500 | admin world ssl |
| 550 | dbrole_readonly localhost |
| 600 | dbrole_readonly intra |
| 650 | dbrole_offline intra |

**Pgbouncer Default Rules**:

| Order | Rule Description |
|-------|------------------|
| 100 | dbsu local peer |
| 150 | all localhost pwd |
| 200 | monitor pgbouncer intra |
| 250 | monitor world deny |
| 300 | admin intra pwd |
| 350 | admin world deny |
| 400 | all intra pwd |

### Sorting Example

```yaml
pg_hba_rules:
  # order: 0, before all default rules (blacklist)
  - {user: all, db: all, addr: '10.1.1.100/32', auth: deny, order: 0, title: 'blacklist bad ip'}

  # order: 120, between dbsu(100) and replicator(200)
  - {user: auditor, db: all, addr: local, auth: ident, order: 120, title: 'auditor access'}

  # order: 420, between monitor(400) and admin(450)
  - {user: exporter, db: all, addr: infra, auth: pwd, order: 420, title: 'prometheus exporter'}

  # no order, defaults to 1000, appends after all default rules
  - {user: app_user, db: app_db, addr: intra, auth: pwd, title: 'app user access'}
```


----------------

## Syntax Examples

### Alias Form

Using Pigsty simplified syntax:

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

```
# allow grafana view access [primary]
hostssl  meta               dbuser_view        10.10.10.10/32     scram-sha-256
```

### Raw Form

Using PostgreSQL HBA syntax directly:

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

```
# allow intranet password access [common]
host all all 10.0.0.0/8 scram-sha-256
host all all 172.16.0.0/12 scram-sha-256
host all all 192.168.0.0/16 scram-sha-256
```


----------------

## Common Configuration Examples

### 1. Intranet Password Access to Business DBs

```yaml
pg_hba_rules:
  - title: 'intra readwrite access'
    role: common
    user: '+dbrole_readwrite'
    db: all
    addr: intra
    auth: pwd
```

> Effect: All business read-write roles can access any database from intranet using password.


### 2. Offline Instance Dedicated Network

```yaml
pg_hba_rules:
  - title: 'offline replica dedicated network'
    role: offline
    user: '+dbrole_offline'
    db: all
    addr: 172.20.0.0/16
    auth: ssl-sha
```

> Effect: Only instances with `pg_role: offline` or `pg_offline_query: true` enable this rule.


### 3. Blacklist IP

```yaml
pg_hba_rules:
  - user: all
    db: all
    addr: '10.1.1.100/32'
    auth: deny
    order: 0
    title: 'block compromised host'
```

> Effect: `order: 0` ranks before all default rules (100+), matches and rejects first.


### 4. Whitelist Specific Application

```yaml
pg_hba_rules:
  - title: 'allow app server access'
    user: app_user
    db: app_db
    addr: '192.168.1.10/32'
    auth: ssl
    order: 50
```

> Effect: Specific app server uses SSL connection, high priority (50) ensures match before default rules.


### 5. Admin Forced Certificate Auth

```yaml
pg_hba_rules:
  - title: 'admin cert access'
    role: common
    user: '${admin}'
    db: all
    addr: world
    auth: cert
    order: 10
```

> Effect: Admin must carry client certificate to connect, `order: 10` takes priority over default ssl rules (450/500).


### 6. Allow Internet Read-Only Access

```yaml
pg_hba_rules:
  - title: 'readonly from internet'
    role: replica
    user: '+dbrole_readonly'
    db: all
    addr: world
    auth: ssl
```

> Effect: Read-only users can connect to replicas from internet via SSL.


### 7. Pgbouncer Dedicated Rules

```yaml
pgb_hba_rules:
  - title: 'app via pgbouncer'
    role: common
    user: '+dbrole_readwrite'
    db: all
    addr: world
    auth: ssl
```

> Note: Pgbouncer HBA does not support `db: replication`.


### 8. Multi-Condition Combination

```yaml
pg_hba_rules:
  # Dev env: trust local connections
  - {user: all, db: all, addr: local, auth: trust, title: 'dev trust local'}

  # Prod env: strict SSL
  - {user: '+dbrole_readwrite', db: all, addr: intra, auth: ssl-sha, title: 'prod ssl only'}

  # Monitor dedicated: from Prometheus nodes
  - {user: '${monitor}', db: all, addr: infra, auth: pwd, order: 380, title: 'prometheus access'}
```


### 9. Restrict Access by Database

```yaml
pg_hba_rules:
  # Finance system: only specific network
  - {user: fin_user, db: finance_db, addr: '10.20.0.0/16', auth: ssl, title: 'finance restricted'}

  # HR system: only HR network
  - {user: hr_user, db: hr_db, addr: '10.30.0.0/16', auth: ssl, title: 'hr restricted'}
```


### 10. Complete Cluster Config Example

```yaml
pg-prod:
  hosts:
    10.10.10.11: {pg_seq: 1, pg_role: primary}
    10.10.10.12: {pg_seq: 2, pg_role: replica}
    10.10.10.13: {pg_seq: 3, pg_role: offline}
  vars:
    pg_cluster: pg-prod

    pg_hba_rules:
      # Blacklist: known malicious IP
      - {user: all, db: all, addr: '10.1.1.100/32', auth: deny, order: 0, title: 'blacklist'}

      # App server whitelist
      - {user: app_user, db: app_db, addr: '192.168.1.0/24', auth: ssl, order: 50, title: 'app servers'}

      # ETL tasks: offline instances only
      - {user: etl_user, db: all, addr: '172.20.0.0/16', auth: pwd, role: offline, title: 'etl tasks'}

      # Enhanced monitoring
      - {user: '${monitor}', db: all, addr: cluster, auth: pwd, order: 380, title: 'cluster monitor'}

    pgb_hba_rules:
      # App via connection pool
      - {user: '+dbrole_readwrite', db: all, addr: '192.168.1.0/24', auth: ssl, title: 'app via pgbouncer'}
```


----------------

## Rendering Principle

Pigsty uses Jinja2 templates to render HBA config files:

1. **Merge rules**: `pg_default_hba_rules` + `pg_hba_rules`
2. **Sort rules**: Ascending by `order` field (rules without `order` append to end)
3. **Role filter**: Filter based on instance `pg_role`, non-matching rules commented out
4. **Variable replace**: `${dbsu}` etc. replaced with actual usernames
5. **Address expand**: `intra`, `infra` etc. expanded to actual IP/CIDRs
6. **Auth map**: `pwd`, `ssl` etc. mapped to actual auth methods

Template locations:
- PostgreSQL: `roles/pgsql/templates/pg_hba.conf`
- Pgbouncer: `roles/pgsql/templates/pgbouncer.hba`


----------------

## Important Notes

1. **Order sensitive**: PostgreSQL HBA is first-match-wins, rule order matters
2. **Role matching**: Ensure `role` field matches target instance's `pg_role`
3. **Address validation**: CIDR format must be correct, e.g., `10.0.0.0/8` not `10.0.0.0/255.0.0.0`
4. **Pgbouncer limitation**: Does not support `db: replication`
5. **Variable scope**: User variables limited to four predefined (`${dbsu}`, `${repl}`, `${monitor}`, `${admin}`)
6. **SSL config**: Ensure SSL is properly configured before using `ssl`, `cert` auth methods
7. **Test first**: Recommend validating in test env before modifying HBA


----------------

## Testing & Verification

Pigsty provides HBA order sorting test tools to verify config correctness before deployment:

### Run Sorting Logic Test

```bash
# Run sorting logic test in pigsty directory
./files/test-hba-order.yml
```

This test verifies:
- Rules sorted correctly by `order` field
- Rules without `order` append to end
- Same `order` values maintain original order (stable sort)
- Backward compatibility (old configs need no changes)

### Run Template Rendering Test

```bash
# Test HBA template rendering on target server
./files/test-hba-render.yml -l 10.10.10.10
```

This test renders HBA template on target server, verifying:
- Template syntax correct
- Rule order as expected
- High-priority rules appear first

### Verify Rendered Result

```bash
# View rendered PostgreSQL HBA
cat /pg/data/pg_hba.conf

# View rule titles order (verify order is effective)
grep '^#' /pg/data/pg_hba.conf | grep -v '^#=' | head -20

# Verify first rule is expected high-priority rule
head -30 /pg/data/pg_hba.conf
```


----------------

## Related Parameters

| Parameter | Description |
|-----------|-------------|
| `pg_pwd_enc` | Password encryption: `scram-sha-256` (default) or `md5` |
| `pg_dbsu` | Database superuser name |
| `pg_replication_username` | Replication username |
| `pg_monitor_username` | Monitor username |
| `pg_admin_username` | Admin username |
| `node_firewall_intranet` | Intranet CIDR definition |


----------------

## Related Documentation

- [**HBA Management**](/docs/pgsql/admin/hba/): Daily HBA rule management operations
- [**User Config**](/docs/pgsql/config/user/): User and role configuration
- [**Access Control**](/docs/pgsql/config/acl/): Role system and permission model
- [**Security & Compliance**](/docs/concept/sec/): PostgreSQL cluster security features
