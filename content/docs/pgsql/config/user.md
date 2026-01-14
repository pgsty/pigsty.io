---
title: User/Role
weight: 1204
description: How to define and customize PostgreSQL users and roles through configuration?
icon: fa-solid fa-users
module: [PGSQL]
categories: [Reference]
---


> In this document, "user" refers to a logical object within a database cluster created with `CREATE USER/ROLE`.

In PostgreSQL, users belong directly to the database cluster rather than a specific database. Therefore, when creating business databases and users, follow the principle of "users first, databases later".

Pigsty defines roles and users through two config parameters:

- [**`pg_default_roles`**](/docs/pgsql/param#pg_default_roles): Define globally shared roles and users
- [**`pg_users`**](/docs/pgsql/param#pg_users): Define business users and roles at cluster level

The former defines roles/users shared across the entire environment; the latter defines business roles/users specific to a single cluster. Both have the same format as arrays of user definition objects.
Users/roles are created sequentially in array order, so later users can belong to roles defined earlier.

By default, all users marked with `pgbouncer: true` are added to the [**Pgbouncer**](/docs/concept/arch/pgsql#pgbouncer) connection pool user list.


----------------

## Define Users

Example from Pigsty demo `pg-meta` cluster:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - {name: dbuser_meta     ,password: DBUser.Meta     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
      - {name: dbuser_view     ,password: DBUser.Viewer   ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
      - {name: dbuser_grafana  ,password: DBUser.Grafana  ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for grafana database    }
      - {name: dbuser_bytebase ,password: DBUser.Bytebase ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for bytebase database   }
      - {name: dbuser_kong     ,password: DBUser.Kong     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for kong api gateway    }
      - {name: dbuser_gitea    ,password: DBUser.Gitea    ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for gitea service       }
      - {name: dbuser_wiki     ,password: DBUser.Wiki     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for wiki.js service     }
      - {name: dbuser_noco     ,password: DBUser.Noco     ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: admin user for nocodb service      }
      - {name: dbuser_remove   ,state: absent }  # use state: absent to delete user
```

Each user/role definition is a complex object. Only `name` is required:

```yaml
- name: dbuser_meta               # REQUIRED, `name` is the only mandatory field
  state: create                   # Optional, user state: create (default), absent
  password: DBUser.Meta           # Optional, password, can be scram-sha-256 hash or plaintext
  login: true                     # Optional, can login, default true
  superuser: false                # Optional, is superuser, default false
  createdb: false                 # Optional, can create databases, default false
  createrole: false               # Optional, can create roles, default false
  inherit: true                   # Optional, inherit role privileges, default true
  replication: false              # Optional, can replicate, default false
  bypassrls: false                # Optional, bypass row-level security, default false
  connlimit: -1                   # Optional, connection limit, default -1 (unlimited)
  expire_in: 3650                 # Optional, expire N days from creation (priority over expire_at)
  expire_at: '2030-12-31'         # Optional, expiration date in YYYY-MM-DD format
  comment: pigsty admin user      # Optional, user comment
  roles: [dbrole_admin]           # Optional, roles array
  parameters:                     # Optional, role-level config params
    search_path: public
  pgbouncer: true                 # Optional, add to connection pool user list, default false
  pool_mode: transaction          # Optional, pgbouncer pool mode, default transaction
  pool_connlimit: -1              # Optional, user-level max pool connections, default -1
```


----------------

## Parameter Overview

The only **required** field is `name` - a valid, unique username within the cluster. All other params have sensible defaults.

| Field                                   | Category  | Type     | Attr     | Description                                |
|-----------------------------------------|-----------|----------|----------|--------------------------------------------|
| [**`name`**](#name)                     | Basic     | `string` | Required | Username, must be valid and unique         |
| [**`state`**](#state)                   | Basic     | `enum`   | Optional | State: `create` (default), `absent`        |
| [**`password`**](#password)             | Basic     | `string` | Mutable  | User password, plaintext or hash           |
| [**`comment`**](#comment)               | Basic     | `string` | Mutable  | User comment                               |
| [**`login`**](#login)                   | Privilege | `bool`   | Mutable  | Can login, default `true`                  |
| [**`superuser`**](#superuser)           | Privilege | `bool`   | Mutable  | Is superuser, default `false`              |
| [**`createdb`**](#createdb)             | Privilege | `bool`   | Mutable  | Can create databases, default `false`      |
| [**`createrole`**](#createrole)         | Privilege | `bool`   | Mutable  | Can create roles, default `false`          |
| [**`inherit`**](#inherit)               | Privilege | `bool`   | Mutable  | Inherit role privileges, default `true`    |
| [**`replication`**](#replication)       | Privilege | `bool`   | Mutable  | Can replicate, default `false`             |
| [**`bypassrls`**](#bypassrls)           | Privilege | `bool`   | Mutable  | Bypass RLS, default `false`                |
| [**`connlimit`**](#connlimit)           | Privilege | `int`    | Mutable  | Connection limit, `-1` unlimited           |
| [**`expire_in`**](#expire_in)           | Validity  | `int`    | Mutable  | Expire N days from now (priority)          |
| [**`expire_at`**](#expire_at)           | Validity  | `string` | Mutable  | Expiration date, `YYYY-MM-DD` format       |
| [**`roles`**](#roles)                   | Role      | `array`  | Additive | Roles array, string or object format       |
| [**`parameters`**](#parameters)         | Params    | `object` | Mutable  | Role-level parameters                      |
| [**`pgbouncer`**](#pgbouncer)           | Pool      | `bool`   | Mutable  | Add to connection pool, default `false`    |
| [**`pool_mode`**](#pool_mode)           | Pool      | `enum`   | Mutable  | Pool mode: `transaction` (default)         |
| [**`pool_connlimit`**](#pool_connlimit) | Pool      | `int`    | Mutable  | Pool user max connections                  |
{.full-width}


----------------

## Parameter Details

### `name`

String, required. Username - must be unique within the cluster.

Must be a valid PostgreSQL identifier matching **`^[a-z_][a-z0-9_]{0,62}$`**: starts with lowercase letter or underscore, contains only lowercase letters, digits, underscores, max 63 chars.

```yaml
- name: dbuser_app         # Standard naming
- name: app_readonly       # Underscore separated
- name: _internal          # Underscore prefix (for internal roles)
```

### `state`

Enum for user operation: `create` or `absent`. Default `create`.

| State    | Description                                |
|----------|--------------------------------------------|
| `create` | Default, create user, update if exists     |
| `absent` | Delete user with `DROP ROLE`               |
{.full-width}

```yaml
- name: dbuser_app             # state defaults to create
- name: dbuser_old
  state: absent                # Delete user
```

These system users cannot be deleted via `state: absent` (to prevent cluster failure):

- `postgres`: Database superuser
- `replicator`: Replication user (or [**`pg_replication_username`**](/docs/pgsql/param#pg_replication_username))
- `dbuser_dba`: Admin user (or [**`pg_admin_username`**](/docs/pgsql/param#pg_admin_username))
- `dbuser_monitor`: Monitor user (or [**`pg_monitor_username`**](/docs/pgsql/param#pg_monitor_username))

### `password`

String, mutable. User password - users without password can't login via password auth.

Password can be:

| Format         | Example                              | Description                    |
|----------------|--------------------------------------|--------------------------------|
| Plaintext      | `DBUser.Meta`                        | Not recommended, logged to config |
| SCRAM-SHA-256  | `SCRAM-SHA-256$4096:xxx$yyy:zzz`     | Recommended, PG10+ default     |
| MD5 hash       | `md5...`                             | Legacy compatibility           |
{.full-width}

```yaml
# Plaintext (not recommended, logged to config)
- name: dbuser_app
  password: MySecretPassword

# SCRAM-SHA-256 hash (recommended)
- name: dbuser_app
  password: 'SCRAM-SHA-256$4096:xxx$yyy:zzz'
```

When setting password, Pigsty temporarily disables logging to prevent leakage:

```sql
SET log_statement TO 'none';
ALTER USER "dbuser_app" PASSWORD 'xxx';
SET log_statement TO DEFAULT;
```

To generate SCRAM-SHA-256 hash:

```bash
# Using PostgreSQL (requires pgcrypto extension)
psql -c "SELECT encode(digest('password' || 'username', 'sha256'), 'hex')"
```

### `comment`

String, mutable. User comment, defaults to `business user {name}`.

Set via `COMMENT ON ROLE`, supports special chars (quotes auto-escaped).

```yaml
- name: dbuser_app
  comment: 'Main business application account'
```

```sql
COMMENT ON ROLE "dbuser_app" IS 'Main business application account';
```

### `login`

Boolean, mutable. Can login, default `true`.

Setting `false` creates a **Role** rather than User - typically for permission grouping.

In PostgreSQL, `CREATE USER` equals `CREATE ROLE ... LOGIN`.

```yaml
# Create login-able user
- name: dbuser_app
  login: true

# Create role (no login, for permission grouping)
- name: dbrole_custom
  login: false
  comment: custom permission role
```

```sql
CREATE USER "dbuser_app" LOGIN;
CREATE USER "dbrole_custom" NOLOGIN;
```

### `superuser`

Boolean, mutable. Is superuser, default `false`.

Superusers have full database privileges, bypassing all permission checks.

```yaml
- name: dbuser_admin
  superuser: true            # Dangerous: full privileges
```

```sql
ALTER USER "dbuser_admin" SUPERUSER;
```

Pigsty provides default superuser via [**`pg_admin_username`**](/docs/pgsql/param#pg_admin_username) (`dbuser_dba`). Don't create additional superusers unless necessary.

### `createdb`

Boolean, mutable. Can create databases, default `false`.

```yaml
- name: dbuser_dev
  createdb: true             # Allow create database
```

```sql
ALTER USER "dbuser_dev" CREATEDB;
```

Some applications (Gitea, Odoo, etc.) may require `CREATEDB` privilege for their admin users.


### `createrole`

Boolean, mutable. Can create other roles, default `false`.

Users with `CREATEROLE` can create, modify, delete other non-superuser roles.

```yaml
- name: dbuser_admin
  createrole: true           # Allow manage other roles
```

```sql
ALTER USER "dbuser_admin" CREATEROLE;
```

### `inherit`

Boolean, mutable. Auto-inherit privileges from member roles, default `true`.

Setting `false` requires explicit `SET ROLE` to use member role privileges.

```yaml
# Auto-inherit role privileges (default)
- name: dbuser_app
  inherit: true
  roles: [dbrole_readwrite]

# Requires explicit SET ROLE
- name: dbuser_special
  inherit: false
  roles: [dbrole_admin]
```

```sql
ALTER USER "dbuser_special" NOINHERIT;
-- User must execute SET ROLE dbrole_admin to get privileges
```

### `replication`

Boolean, mutable. Can initiate streaming replication, default `false`.

Usually only replication users (`replicator`) need this. Normal users shouldn't have it unless for logical decoding subscriptions.

```yaml
- name: replicator
  replication: true          # Allow streaming replication
  roles: [pg_monitor, dbrole_readonly]
```

```sql
ALTER USER "replicator" REPLICATION;
```

### `bypassrls`

Boolean, mutable. Bypass row-level security (RLS) policies, default `false`.

When enabled, user can access all rows even with RLS policies. Usually only for admins.

```yaml
- name: dbuser_myappadmin
  bypassrls: true            # Bypass RLS policies
```

```sql
ALTER USER "dbuser_myappadmin" BYPASSRLS;
```

### `connlimit`

Integer, mutable. Max concurrent connections, default `-1` (unlimited).

Positive integer limits max simultaneous sessions for this user. Doesn't affect superusers.

```yaml
- name: dbuser_app
  connlimit: 100             # Max 100 concurrent connections

- name: dbuser_batch
  connlimit: 10              # Limit batch user connections
```

```sql
ALTER USER "dbuser_app" CONNECTION LIMIT 100;
```

### `expire_in`

Integer, mutable. Expire N days from current date.

This param has higher priority than [**`expire_at`**](#expire_at). Expiration recalculated on each playbook run - good for temp users needing periodic renewal.

```yaml
- name: temp_user
  expire_in: 30              # Expire in 30 days

- name: contractor_user
  expire_in: 90              # Expire in 90 days
```

Generates SQL:

```sql
-- expire_in: 30, assuming current date is 2025-01-01
ALTER USER "temp_user" VALID UNTIL '2025-01-31';
```

### `expire_at`

String, mutable. Expiration date in `YYYY-MM-DD` format, or special value `infinity`.

Lower priority than [**`expire_in`**](#expire_in). Use `infinity` for never-expiring users.

```yaml
- name: contractor_user
  expire_at: '2024-12-31'    # Expire on specific date

- name: permanent_user
  expire_at: 'infinity'      # Never expires
```

```sql
ALTER USER "contractor_user" VALID UNTIL '2024-12-31';
ALTER USER "permanent_user" VALID UNTIL 'infinity';
```

### `roles`

Array, additive. Roles this user belongs to. Elements can be strings or objects.

Simple format - strings for role names:

```yaml
- name: dbuser_app
  roles:
    - dbrole_readwrite
    - pg_read_all_data
```

```sql
GRANT "dbrole_readwrite" TO "dbuser_app";
GRANT "pg_read_all_data" TO "dbuser_app";
```

Full format - objects for fine-grained control:

```yaml
- name: dbuser_app
  roles:
    - dbrole_readwrite                            # Simple string: GRANT role
    - { name: dbrole_admin, admin: true }         # WITH ADMIN OPTION
    - { name: pg_monitor, set: false }            # PG16+: disallow SET ROLE
    - { name: pg_signal_backend, inherit: false } # PG16+: don't auto-inherit
    - { name: old_role, state: absent }           # Revoke role membership
```

**Object Format Parameters**:

| Param     | Type   | Description                                              |
|-----------|--------|----------------------------------------------------------|
| `name`    | string | Role name (required)                                     |
| `state`   | enum   | `grant` (default) or `absent`/`revoke`: control membership |
| `admin`   | bool   | `true`: WITH ADMIN OPTION, `false`: REVOKE ADMIN         |
| `set`     | bool   | PG16+: `true`: WITH SET TRUE, `false`: REVOKE SET        |
| `inherit` | bool   | PG16+: `true`: WITH INHERIT TRUE, `false`: REVOKE INHERIT |
{.full-width}

**PostgreSQL 16+ New Features**:

PostgreSQL 16 introduced finer-grained role membership control:

- **ADMIN OPTION**: Allow granting role to other users
- **SET OPTION**: Allow using `SET ROLE` to switch to this role
- **INHERIT OPTION**: Auto-inherit this role's privileges

```yaml
# PostgreSQL 16+ complete example
- name: dbuser_app
  roles:
    # Normal membership
    - dbrole_readwrite

    # Can grant dbrole_admin to other users
    - { name: dbrole_admin, admin: true }

    # Cannot SET ROLE to pg_monitor (only inherit privileges)
    - { name: pg_monitor, set: false }

    # Don't auto-inherit pg_execute_server_program (need explicit SET ROLE)
    - { name: pg_execute_server_program, inherit: false }

    # Revoke old_role membership
    - { name: old_role, state: absent }
```

`set` and `inherit` options only work in PG16+. On earlier versions they're ignored with warning comments.

### `parameters`

Object, mutable. Role-level config params via `ALTER ROLE ... SET`. Applies to all sessions for this user.

```yaml
- name: dbuser_analyst
  parameters:
    work_mem: '256MB'
    statement_timeout: '5min'
    search_path: 'analytics,public'
    log_statement: 'all'
```

```sql
ALTER USER "dbuser_analyst" SET "work_mem" = '256MB';
ALTER USER "dbuser_analyst" SET "statement_timeout" = '5min';
ALTER USER "dbuser_analyst" SET "search_path" = 'analytics,public';
ALTER USER "dbuser_analyst" SET "log_statement" = 'all';
```

Use special value `DEFAULT` (case-insensitive) to reset to PostgreSQL default:

```yaml
- name: dbuser_app
  parameters:
    work_mem: DEFAULT          # Reset to default
    statement_timeout: '30s'   # Set new value
```

```sql
ALTER USER "dbuser_app" SET "work_mem" = DEFAULT;
ALTER USER "dbuser_app" SET "statement_timeout" = '30s';
```

Common role-level params:

| Parameter                              | Description          | Example          |
|----------------------------------------|----------------------|------------------|
| `work_mem`                             | Query work memory    | `'64MB'`         |
| `statement_timeout`                    | Statement timeout    | `'30s'`          |
| `lock_timeout`                         | Lock wait timeout    | `'10s'`          |
| `idle_in_transaction_session_timeout`  | Idle transaction timeout | `'10min'`    |
| `search_path`                          | Schema search path   | `'app,public'`   |
| `log_statement`                        | Log level            | `'ddl'`          |
| `temp_file_limit`                      | Temp file size limit | `'10GB'`         |
{.full-width}

Query user-level params via [**`pg_db_role_setting`**](https://www.postgresql.org/docs/current/view-pg-db-role-setting.html) system view.


### `pgbouncer`

Boolean, mutable. Add user to Pgbouncer user list, default `false`.

For prod users needing connection pool access, must explicitly set `pgbouncer: true`.
Default `false` prevents accidentally exposing internal users to the pool.

```yaml
# Prod user: needs connection pool
- name: dbuser_app
  password: DBUser.App
  pgbouncer: true

# Internal user: no connection pool needed
- name: dbuser_internal
  password: DBUser.Internal
  pgbouncer: false           # Default, can be omitted
```

Users with `pgbouncer: true` are added to `/etc/pgbouncer/userlist.txt`.

### `pool_mode`

Enum, mutable. User-level pool mode: `transaction`, `session`, or `statement`. Default `transaction`.

| Mode          | Description                     | Use Case                    |
|---------------|---------------------------------|-----------------------------|
| `transaction` | Return connection after txn     | Most OLTP apps, default     |
| `session`     | Return connection after session | Apps needing session state  |
| `statement`   | Return after each statement     | Simple stateless queries    |
{.full-width}

```yaml
# DBA user: session mode (may need SET commands etc.)
- name: dbuser_dba
  pgbouncer: true
  pool_mode: session

# Normal business user: transaction mode
- name: dbuser_app
  pgbouncer: true
  pool_mode: transaction
```

User-level pool params are configured via `/etc/pgbouncer/useropts.txt`:

```ini
dbuser_dba      = pool_mode=session max_user_connections=16
dbuser_monitor  = pool_mode=session max_user_connections=8
```

### `pool_connlimit`

Integer, mutable. User-level max pool connections, default `-1` (unlimited).

```yaml
- name: dbuser_app
  pgbouncer: true
  pool_connlimit: 50         # Max 50 pool connections for this user
```


----------------

## ACL System

Pigsty provides a built-in, out-of-the-box access control / [**ACL**](/docs/concept/sec/ac/#default-roles) system. Just assign these four default roles to business users:

| Role               | Privileges           | Typical Use Case             |
|--------------------|----------------------|------------------------------|
| `dbrole_readwrite` | Global read-write    | Primary business prod accounts |
| `dbrole_readonly`  | Global read-only     | Other business read-only access |
| `dbrole_admin`     | DDL privileges       | Business admins, table creation |
| `dbrole_offline`   | Restricted read-only (offline only) | Individual users, ETL/analytics |
{.full-width}

```yaml
# Typical business user configuration
pg_users:
  - name: dbuser_app
    password: DBUser.App
    pgbouncer: true
    roles: [dbrole_readwrite]    # Prod account, read-write

  - name: dbuser_readonly
    password: DBUser.Readonly
    pgbouncer: true
    roles: [dbrole_readonly]     # Read-only account

  - name: dbuser_admin
    password: DBUser.Admin
    pgbouncer: true
    roles: [dbrole_admin]        # Admin, can execute DDL

  - name: dbuser_etl
    password: DBUser.ETL
    roles: [dbrole_offline]      # Offline analytics account
```

To redesign your own ACL system, customize:

- [**`pg_default_roles`**](/docs/pgsql/param#pg_default_roles): System-wide roles and global users
- [**`pg_default_privileges`**](/docs/pgsql/param#pg_default_privileges): Default privileges for new objects
- [**`pg-init-role.sql`**](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/pg-init-role.sql): Role creation SQL template
- [**`pg-init-template.sql`**](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql): Privilege SQL template


----------------

## Pgbouncer Users

Pgbouncer is enabled by default as connection pool middleware. Pigsty adds all users in [**`pg_users`**](/docs/pgsql/param#pg_users) with explicit `pgbouncer: true` flag to the pgbouncer user list.

Users in connection pool are listed in `/etc/pgbouncer/userlist.txt`:

```ini
"postgres" ""
"dbuser_wiki" "SCRAM-SHA-256$4096:+77dyhrPeFDT/TptHs7/7Q==$KeatuohpKIYzHPCt/tqBu85vI11o9mar/by0hHYM2W8=:X9gig4JtjoS8Y/o1vQsIX/gY1Fns8ynTXkbWOjUfbRQ="
"dbuser_view" "SCRAM-SHA-256$4096:DFoZHU/DXsHL8MJ8regdEw==$gx9sUGgpVpdSM4o6A2R9PKAUkAsRPLhLoBDLBUYtKS0=:MujSgKe6rxcIUMv4GnyXJmV0YNbf39uFRZv724+X1FE="
"dbuser_monitor" "SCRAM-SHA-256$4096:fwU97ZMO/KR0ScHO5+UuBg==$CrNsmGrx1DkIGrtrD1Wjexb/aygzqQdirTO1oBZROPY=:L8+dJ+fqlMQh7y4PmVR/gbAOvYWOr+KINjeMZ8LlFww="
"dbuser_meta" "SCRAM-SHA-256$4096:leB2RQPcw1OIiRnPnOMUEg==$eyC+NIMKeoTxshJu314+BmbMFpCcspzI3UFZ1RYfNyU=:fJgXcykVPvOfro2MWNkl5q38oz21nSl1dTtM65uYR1Q="
```

User-level pool params are maintained in `/etc/pgbouncer/useropts.txt`:

```ini
dbuser_dba      = pool_mode=session max_user_connections=16
dbuser_monitor  = pool_mode=session max_user_connections=8
```

When [**creating users**](/docs/pgsql/admin/user#create-user), Pgbouncer user list is refreshed via online reload - doesn't affect existing connections.

Pgbouncer runs as same `dbsu` as PostgreSQL (default `postgres` OS user). Use `pgb` alias to access pgbouncer admin functions.

[**`pgbouncer_auth_query`**](/docs/pgsql/param#pgbouncer_auth_query) param allows dynamic query for pool user auth - convenient when you prefer not to manually manage pool users.


----------------

## Related Resources

For user management operations, see [**User Management**](/docs/pgsql/admin/user).

For user access privileges, see [**ACL: Role Privileges**](/docs/concept/sec/ac/#default-roles).
