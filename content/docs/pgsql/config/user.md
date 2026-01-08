---
title: User/Role
weight: 1204
description: User/Role refers to logical objects created by the SQL command `CREATE
  USER/ROLE` within a database cluster.
icon: fa-solid fa-users
module: [PGSQL]
categories: [Reference]
---


> In this context, user refers to logical objects created by the SQL command `CREATE USER/ROLE` within a database cluster.

In PostgreSQL, users belong directly to the database cluster rather than a specific database. Therefore, when creating business databases and business users, the principle of "users first, databases later" should be followed.


----------------

## Define Users

Pigsty defines roles and users in database clusters through two config parameters:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): Define globally shared roles and users
- [`pg_users`](/docs/pgsql/param#pg_users): Define business users and roles at the database cluster level

The former defines roles and users shared across the entire env, while the latter defines business roles and users specific to a single cluster. Both have the same format as arrays of user definition objects.

You can define multiple users/roles. They will be created sequentially: first global, then cluster, and finally by array order. So later users can belong to roles defined earlier.

Here is the business user definition in the default `pg-meta` cluster in the Pigsty demo env:

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

Each user/role definition is an object that may include the following fields, using `dbuser_meta` user as an example:

```yaml
- name: dbuser_meta               # Required, `name` is the only mandatory field
  state: create                   # Optional, user state: create (default), absent (delete)
  password: DBUser.Meta           # Optional, password, can be scram-sha-256 hash or plaintext
  login: true                     # Optional, can login by default
  superuser: false                # Optional, default false, is it a superuser?
  createdb: false                 # Optional, default false, can create databases?
  createrole: false               # Optional, default false, can create roles?
  inherit: true                   # Optional, can this role use inherited privileges by default?
  replication: false              # Optional, default false, can this role perform replication?
  bypassrls: false                # Optional, default false, can bypass row-level security?
  pgbouncer: true                 # Optional, default false, add to pgbouncer user list? (prod users should set to true)
  connlimit: -1                   # Optional, user connection limit, default -1 disables limit
  expire_in: 3650                 # Optional, expire after n days from creation (higher priority than expire_at)
  expire_at: '2030-12-31'         # Optional, expiration date in YYYY-MM-DD format (lower priority than expire_in)
  comment: pigsty admin user      # Optional, description and comment string
  roles: [dbrole_admin]           # Optional, default roles: dbrole_{admin,readonly,readwrite,offline}
  parameters:                     # Optional, role-level params via `ALTER ROLE SET`
    search_path: public           # e.g., set default search_path
  pool_mode: transaction          # Optional, pgbouncer pool mode, default transaction
  pool_connlimit: -1              # Optional, user-level max pool connections, -1 disables limit
```

- The only **required** field is `name`, which should be a valid and unique username in the PostgreSQL cluster.
- Username must match regex `^[a-z_][a-z0-9_]{0,62}$` (lowercase letters, digits, underscores, starts with letter or underscore, max 63 chars).
- Roles don't need `password`, but for login-able business users, a password is usually needed.
- `password` can be plaintext or scram-sha-256 / md5 hash string. Please avoid using plaintext passwords.
- Users/roles are created sequentially in array order, so ensure role/group definitions come before their members.
- `login`, `superuser`, `createdb`, `createrole`, `inherit`, `replication`, `bypassrls` are boolean flags.
- `pgbouncer` is disabled by default: to add business users to the pgbouncer user list, you should explicitly set it to `true`.


----------------

## Parameter Overview

| Field           | Category   | Type       | Mutability | Description                                              |
|-----------------|------------|------------|------------|----------------------------------------------------------|
| `name`          | Basic      | `string`   | Required   | Username, must be valid and unique identifier            |
| `state`         | Basic      | `enum`     | Optional   | User state: `create` (default), `absent`                 |
| `password`      | Basic      | `string`   | Mutable    | User password, plaintext or hash                         |
| `comment`       | Basic      | `string`   | Mutable    | User comment/description                                 |
| `login`         | Privilege  | `bool`     | Mutable    | Can login, default `true`                                |
| `superuser`     | Privilege  | `bool`     | Mutable    | Is superuser, default `false`                            |
| `createdb`      | Privilege  | `bool`     | Mutable    | Can create database, default `false`                     |
| `createrole`    | Privilege  | `bool`     | Mutable    | Can create role, default `false`                         |
| `inherit`       | Privilege  | `bool`     | Mutable    | Inherit role privileges, default `true`                  |
| `replication`   | Privilege  | `bool`     | Mutable    | Can replicate, default `false`                           |
| `bypassrls`     | Privilege  | `bool`     | Mutable    | Can bypass RLS, default `false`                          |
| `connlimit`     | Privilege  | `int`      | Mutable    | Connection limit, `-1` means no limit                    |
| `expire_in`     | Validity   | `int`      | Mutable    | Expire N days from now (higher priority than `expire_at`)|
| `expire_at`     | Validity   | `string`   | Mutable    | Expiration date, `YYYY-MM-DD` format                     |
| `roles`         | Role       | `array`    | Incremental| Roles array, supports string or object format            |
| `parameters`    | Params     | `object`   | Mutable    | Role-level parameters                                    |
| `pgbouncer`     | Pool       | `bool`     | Mutable    | Add to connection pool, default `false`                  |
| `pool_mode`     | Pool       | `enum`     | Mutable    | Pool mode: `transaction` (default)                       |
| `pool_connlimit`| Pool       | `int`      | Mutable    | Pool user max connections                                |


### Mutability Notes

| Mutability  | Meaning                                          |
|-------------|--------------------------------------------------|
| Required    | Must be specified                                |
| Optional    | Optional field with default value                |
| Mutable     | Can be modified by re-running playbook           |
| Incremental | Only adds new content, doesn't remove existing   |


----------------

## Basic Parameters

### `name`

- **Type**: `string`
- **Mutability**: Required
- **Description**: Username, unique identifier within cluster

Username must be a valid PostgreSQL identifier matching regex `^[a-z_][a-z0-9_]{0,62}$`:
- Starts with lowercase letter or underscore
- Contains only lowercase letters, digits, underscores
- Max 63 characters

```yaml
- name: dbuser_app         # standard naming
- name: app_readonly       # underscore separated
- name: _internal          # underscore prefix (for internal roles)
```

### `state`

- **Type**: `enum`
- **Mutability**: Optional
- **Default**: `create`
- **Values**: `create`, `absent`
- **Description**: Target user state

| State    | Description                                |
|----------|--------------------------------------------|
| `create` | Create user (default), update if exists    |
| `absent` | Delete user via `DROP ROLE`                |

```yaml
- name: dbuser_app             # state defaults to create
- name: dbuser_old
  state: absent                # delete user
```

**Note**: These system users cannot be deleted via `state: absent`:
- `postgres` (superuser)
- `replicator` (or `pg_replication_username` configured user)
- `dbuser_dba` (or `pg_admin_username` configured user)
- `dbuser_monitor` (or `pg_monitor_username` configured user)

### `password`

- **Type**: `string`
- **Mutability**: Mutable
- **Default**: None
- **Description**: User password

Password can be one of:
- **Plaintext**: `DBUser.Meta` (not recommended for prod)
- **SCRAM-SHA-256 hash**: `SCRAM-SHA-256$4096:...` (recommended)
- **MD5 hash**: `md5...` (legacy compatibility)

```yaml
# Plaintext (logged to config file, not recommended)
- name: dbuser_app
  password: MySecretPassword

# SCRAM-SHA-256 hash (recommended)
- name: dbuser_app
  password: 'SCRAM-SHA-256$4096:xxx$yyy:zzz'
```

### `comment`

- **Type**: `string`
- **Mutability**: Mutable
- **Default**: `business user {name}`
- **Description**: User comment/description

Executes `COMMENT ON ROLE` statement. Supports special chars (single quotes auto-escaped).

```yaml
- name: dbuser_app
  comment: 'Main business application account'
```


----------------

## Privilege Parameters

### `login`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `true`
- **Description**: Can login

Set to `false` creates a **Role** rather than User, typically used for permission grouping.

```yaml
# Create login-able user
- name: dbuser_app
  login: true

# Create role (no login)
- name: dbrole_custom
  login: false
```

### `superuser`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Is superuser

{{% alert title="Security Warning" color="warning" %}}
Superusers have full database privileges and can bypass all permission checks.
Don't create additional superusers unless absolutely necessary.
{{% /alert %}}

### `createdb`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Can create databases

### `createrole`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Can create roles

### `inherit`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `true`
- **Description**: Auto-inherit privileges from member roles

Set to `false` requires explicit `SET ROLE` to use inherited privileges.

### `replication`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Can initiate streaming replication

Usually only replication users (like `replicator`) need this privilege.

### `bypassrls`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Can bypass row-level security (RLS) policies

### `connlimit`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `-1` (no limit)
- **Description**: Max concurrent connections for user

```yaml
- name: dbuser_app
  connlimit: 100           # max 100 concurrent connections

- name: dbuser_batch
  connlimit: 10            # limit batch user connections
```


----------------

## Validity Parameters

### `expire_in`

- **Type**: `int`
- **Mutability**: Mutable
- **Description**: Expire N days from current date

This param has higher priority than `expire_at`. Expiration time recalculated on each playbook run.

```yaml
- name: temp_user
  expire_in: 30            # expire in 30 days

- name: long_term_user
  expire_in: 3650          # expire in ~10 years
```

### `expire_at`

- **Type**: `string`
- **Mutability**: Mutable
- **Description**: Specify expiration date

Format `YYYY-MM-DD` or special value `infinity` (never expires).

```yaml
- name: contractor_user
  expire_at: '2024-12-31'  # expire on specific date

- name: permanent_user
  expire_at: 'infinity'    # never expires
```

**Note**: `expire_in` has higher priority than `expire_at`. If both specified, only `expire_in` takes effect.


----------------

## Role Membership Parameter

### `roles`

- **Type**: `array`
- **Mutability**: Incremental
- **Description**: Roles this user belongs to

`roles` array supports two formats:

#### Simple Format (String)

```yaml
- name: dbuser_app
  roles:
    - dbrole_readwrite
    - pg_read_all_data
```

Generated SQL:
```sql
GRANT "dbrole_readwrite" TO "dbuser_app";
GRANT "pg_read_all_data" TO "dbuser_app";
```

#### Extended Format (Object)

Object format supports finer-grained role membership control:

```yaml
- name: dbuser_app
  roles:
    - dbrole_readwrite                              # simple string: GRANT role
    - { name: dbrole_admin, admin: true }           # GRANT WITH ADMIN OPTION
    - { name: pg_monitor, set: false }              # PG16+: REVOKE SET OPTION
    - { name: pg_signal_backend, inherit: false }   # PG16+: REVOKE INHERIT OPTION
    - { name: old_role, state: absent }             # REVOKE role membership
```

#### Object Format Parameters

| Param     | Type   | Description                                              |
|-----------|--------|----------------------------------------------------------|
| `name`    | string | Role name (required)                                     |
| `state`   | enum   | `grant` (default) or `absent`/`revoke`: control membership|
| `admin`   | bool   | `true`: WITH ADMIN OPTION / `false`: REVOKE ADMIN        |
| `set`     | bool   | PG16+: `true`: WITH SET TRUE / `false`: REVOKE SET       |
| `inherit` | bool   | PG16+: `true`: WITH INHERIT TRUE / `false`: REVOKE INHERIT|

#### PostgreSQL 16+ New Features

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

    # Cannot SET ROLE to pg_monitor (can only inherit privileges)
    - { name: pg_monitor, set: false }

    # Don't auto-inherit pg_execute_server_program privileges (need explicit SET ROLE)
    - { name: pg_execute_server_program, inherit: false }

    # Revoke old_role membership
    - { name: old_role, state: absent }
```

**Note**: `set` and `inherit` options only work in PostgreSQL 16+. On earlier versions they're ignored with warning comments.


----------------

## Role-Level Parameters

### `parameters`

- **Type**: `object`
- **Mutability**: Mutable
- **Description**: Role-level config parameters

Set via `ALTER ROLE ... SET`, params apply to all sessions for this user.

```yaml
- name: dbuser_analyst
  parameters:
    work_mem: '256MB'
    statement_timeout: '5min'
    search_path: 'analytics,public'
    log_statement: 'all'
```

Generated SQL:
```sql
ALTER USER "dbuser_analyst" SET "work_mem" = '256MB';
ALTER USER "dbuser_analyst" SET "statement_timeout" = '5min';
ALTER USER "dbuser_analyst" SET "search_path" = 'analytics,public';
ALTER USER "dbuser_analyst" SET "log_statement" = 'all';
```

#### Reset Parameter to Default

Use special value `DEFAULT` (case-insensitive) to reset param to PostgreSQL default:

```yaml
- name: dbuser_app
  parameters:
    work_mem: DEFAULT         # reset to PostgreSQL default
    statement_timeout: '30s'  # set new value
```

#### Common Role-Level Parameters

| Parameter | Description | Example |
|-----------|-------------|---------|
| `work_mem` | Query work memory | `'64MB'` |
| `statement_timeout` | Statement timeout | `'30s'` |
| `lock_timeout` | Lock wait timeout | `'10s'` |
| `idle_in_transaction_session_timeout` | Idle transaction timeout | `'10min'` |
| `search_path` | Schema search path | `'app,public'` |
| `log_statement` | Log level | `'ddl'` |
| `temp_file_limit` | Temp file size limit | `'10GB'` |


----------------

## Connection Pool Parameters

These params control user behavior in Pgbouncer connection pool.

### `pgbouncer`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Add user to Pgbouncer user list

{{% alert title="Important" color="primary" %}}
For prod users needing connection pool access, you must explicitly set `pgbouncer: true`.
Default `false` prevents accidentally exposing internal users to the connection pool.
{{% /alert %}}

```yaml
# Prod user: needs connection pool
- name: dbuser_app
  password: DBUser.App
  pgbouncer: true

# Internal user: no connection pool needed
- name: dbuser_internal
  password: DBUser.Internal
  pgbouncer: false           # default, can be omitted
```

### `pool_mode`

- **Type**: `enum`
- **Mutability**: Mutable
- **Values**: `transaction`, `session`, `statement`
- **Default**: `transaction`
- **Description**: User-level pool mode

| Mode          | Description                        | Use Case                |
|---------------|------------------------------------|-------------------------|
| `transaction` | Return connection after txn (default) | Most OLTP apps       |
| `session`     | Return connection after session    | Apps needing session state |
| `statement`   | Return connection after statement  | Simple stateless queries |

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

### `pool_connlimit`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `-1` (no limit)
- **Description**: User-level max pool connections

```yaml
- name: dbuser_app
  pgbouncer: true
  pool_connlimit: 50         # max 50 pool connections for this user
```


----------------

## ACL System

Pigsty has a built-in, out-of-the-box access control / [ACL](/docs/pgsql/security/#default-roles) system. You only need to assign these four default roles to business users:

- `dbrole_readwrite`: Global read-write access role (primary business prod accounts should have this)
- `dbrole_readonly`: Global read-only access role (for other businesses needing read-only access)
- `dbrole_admin`: DDL privileges role (business admins, scenarios requiring table creation in apps)
- `dbrole_offline`: Restricted read-only role (can only access [offline](/docs/pgsql/config/cluster#offline) instances, typically for individual users)

If you want to redesign your own ACL system, consider customizing:

- [`pg_default_roles`](/docs/pgsql/param#pg_default_roles): System-wide roles and global users
- [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges): Default privileges for newly created objects
- [`roles/pgsql/templates/pg-init-role.sql`](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/pg-init-role.sql): Role creation SQL template
- [`roles/pgsql/templates/pg-init-template.sql`](https://github.com/Vonng/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql): Privilege SQL template


----------------

## Pgbouncer Users

Pgbouncer is enabled by default as connection pool middleware, with users managed automatically.

Pigsty adds all users in [`pg_users`](/docs/pgsql/param#pg_users) with explicit `pgbouncer: true` flag to the pgbouncer user list.

Users in Pgbouncer connection pool are listed in `/etc/pgbouncer/userlist.txt`:

```ini
"postgres" ""
"dbuser_wiki" "SCRAM-SHA-256$4096:+77dyhrPeFDT/TptHs7/7Q==$KeatuohpKIYzHPCt/tqBu85vI11o9mar/by0hHYM2W8=:X9gig4JtjoS8Y/o1vQsIX/gY1Fns8ynTXkbWOjUfbRQ="
"dbuser_view" "SCRAM-SHA-256$4096:DFoZHU/DXsHL8MJ8regdEw==$gx9sUGgpVpdSM4o6A2R9PKAUkAsRPLhLoBDLBUYtKS0=:MujSgKe6rxcIUMv4GnyXJmV0YNbf39uFRZv724+X1FE="
"dbuser_monitor" "SCRAM-SHA-256$4096:fwU97ZMO/KR0ScHO5+UuBg==$CrNsmGrx1DkIGrtrD1Wjexb/aygzqQdirTO1oBZROPY=:L8+dJ+fqlMQh7y4PmVR/gbAOvYWOr+KINjeMZ8LlFww="
"dbuser_meta" "SCRAM-SHA-256$4096:leB2RQPcw1OIiRnPnOMUEg==$eyC+NIMKeoTxshJu314+BmbMFpCcspzI3UFZ1RYfNyU=:fJgXcykVPvOfro2MWNkl5q38oz21nSl1dTtM65uYR1Q="
```

User-level connection pool params are maintained in `/etc/pgbouncer/useropts.txt`:

```ini
dbuser_dba                  = pool_mode=session max_user_connections=16
dbuser_monitor              = pool_mode=session max_user_connections=8
```

When you [create users](/docs/pgsql/admin/user#create-user), Pgbouncer's user list definition file will be refreshed and take effect via online config reload, without affecting existing connections.

Pgbouncer runs with the same `dbsu` as PostgreSQL, defaulting to the `postgres` OS user. You can use the `pgb` alias to access pgbouncer admin functions using dbsu.

Note that the [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) param allows dynamic query for connection pool user auth—a compromise when you're lazy about managing pool users.

For user management operations, see [User Management](/docs/pgsql/admin/user).

For user access privileges, see [ACL: Role Privileges](/docs/pgsql/security/#default-roles).
