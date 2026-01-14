---
title: Managing PostgreSQL Users
linktitle: User Admin
weight: 20
description: User management - create, modify, delete users, manage role membership, connection pool config
icon: fa-solid fa-users
module: [PGSQL]
categories: [Task]
---

## Quick Start

Pigsty uses declarative management: first [**define users**](/docs/pgsql/config/user) in the [**inventory**](/docs/concept/iac/inventory), then use `bin/pgsql-user <cls> <username>` to create or modify.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_users: [{ name: dbuser_app, password: 'DBUser.App', pgbouncer: true }]  # <--- Define user list here!
```


{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-user <cls> <username>    # Create/modify <username> user on <cls> cluster
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-user.yml -l pg-meta -e username=dbuser_app    # Use playbook to create/modify user
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-user pg-meta dbuser_app    # Create/modify dbuser_app user on pg-meta cluster
```
{{% /tab %}}
{{< /tabpane >}}

For complete user definition reference, see [**User Configuration**](/docs/pgsql/config/user). For access permissions, see [**ACL: Role Privileges**](/docs/concept/sec/ac/#default-roles).

Note: User `name` cannot be modified after creation. To rename, delete the old user and create new one.

| Action                          | Command                           | Description                              |
|:--------------------------------|:----------------------------------|:-----------------------------------------|
| [**Create User**](#create-user) | `bin/pgsql-user <cls> <user>`     | Create new business user or role         |
| [**Modify User**](#modify-user) | `bin/pgsql-user <cls> <user>`     | Modify existing user properties          |
| [**Delete User**](#delete-user) | `bin/pgsql-user <cls> <user>`     | Safe delete user (requires `state: absent`) |
{.full-width}


{{< asciinema file="demo/pgsql-user.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Create User

Users defined in [**`pg_users`**](/docs/pgsql/param#pg_users) are auto-created during PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster) in the `pg_user` task.

To create a new user on an existing cluster, add [**user definition**](/docs/pgsql/config/user) to `all.children.<cls>.pg_users`, then execute:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-user <cls> <username>   # Create user <username>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-user.yml -l <cls> -e username=<username>   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-user pg-meta dbuser_app    # Create dbuser_app user in pg-meta cluster
```
{{% /tab %}}
{{< /tabpane >}}

**Example: Create business user `dbuser_app`**

```yaml
#all.children.pg-meta.vars.pg_users:
  - name: dbuser_app
    password: DBUser.App
    pgbouncer: true
    roles: [dbrole_readwrite]
    comment: application user for myapp
```

**Result**: Creates `dbuser_app` user on primary, sets password, grants `dbrole_readwrite` role, adds to Pgbouncer pool, reloads Pgbouncer config on all instances.

{{% alert title="Recommendation: Use playbook" color="secondary" %}}
For manual user creation, you must ensure Pgbouncer user list sync yourself.
{{% /alert %}}


----------------

## Modify User

Same command as create - playbook is idempotent. When target user exists, Pigsty modifies properties to match config.

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-user <cls> <user>   # Modify user <user> properties
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-user.yml -l <cls> -e username=<user>   # Idempotent, can repeat
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-user pg-meta dbuser_app    # Modify dbuser_app to match config
```
{{% /tab %}}
{{< /tabpane >}}


**Immutable properties**: User `name` can't be modified after creation - requires delete and recreate.

All other properties can be modified. Common examples:

**Modify password**: Update `password` field. Logging is temporarily disabled during password change to prevent leakage.

```yaml
- name: dbuser_app
  password: NewSecretPassword     # New password
```

**Modify privilege attributes**: Configure boolean flags for user privileges.

```yaml
- name: dbuser_app
  superuser: false           # Superuser (use carefully!)
  createdb: true             # Allow CREATE DATABASE
  createrole: false          # Allow CREATE ROLE
  inherit: true              # Auto-inherit role privileges
  replication: false         # Allow streaming replication
  bypassrls: false           # Bypass row-level security
  connlimit: 50              # Connection limit, -1 unlimited
```

**Modify expiration**: Use `expire_in` for relative expiry (N days), or `expire_at` for absolute date. `expire_in` takes priority and recalculates on each playbook run - good for temp users needing periodic renewal.

```yaml
- name: temp_user
  expire_in: 30                   # Expires in 30 days (relative)

- name: contractor_user
  expire_at: '2024-12-31'         # Expires on date (absolute)

- name: permanent_user
  expire_at: 'infinity'           # Never expires
```

**Modify role membership**: Use `roles` array with simple or extended format. Role membership is additive - won't remove undeclared existing roles. Use `state: absent` to explicitly revoke.

```yaml
- name: dbuser_app
  roles:
    - dbrole_readwrite                      # Simple form: grant role
    - { name: dbrole_admin, admin: true }   # With ADMIN OPTION
    - { name: pg_monitor, set: false }      # PG16+: disallow SET ROLE
    - { name: old_role, state: absent }     # Revoke role membership
```

**Manage user parameters**: Use `parameters` dict for user-level params, generates `ALTER USER ... SET`. Use `DEFAULT` to reset.

```yaml
- name: dbuser_analyst
  parameters:
    work_mem: '256MB'
    statement_timeout: '5min'
    search_path: 'analytics,public'
    log_statement: DEFAULT        # Reset to default
```

**Connection pool config**: Set `pgbouncer: true` to add user to pool. Optional `pool_mode` and `pool_connlimit`.

```yaml
- name: dbuser_app
  pgbouncer: true                 # Add to pool
  pool_mode: transaction          # Pool mode
  pool_connlimit: 50              # Max user connections
```


----------------

## Delete User

To delete a user, set `state` to `absent` and execute:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-user <cls> <user>   # Delete <user> (config must have state: absent)
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-user.yml -l <cls> -e username=<user>   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-user pg-meta dbuser_old    # Delete dbuser_old (config has state: absent)
```
{{% /tab %}}
{{< /tabpane >}}

**Config example**:

```yaml
pg_users:
  - name: dbuser_old
    state: absent
```

**Deletion process**: Uses `pg-drop-role` script for safe deletion; auto-disables login and terminates connections; transfers database/tablespace ownership to `postgres`; handles object ownership in all databases; revokes all role memberships; creates audit log; removes from Pgbouncer and reloads config.

**Protection**: These system users cannot be deleted and are auto-skipped: `postgres` (superuser), `replicator` (or [**`pg_replication_username`**](/docs/pgsql/param#pg_replication_username)), `dbuser_dba` (or [**`pg_admin_username`**](/docs/pgsql/param#pg_admin_username)), `dbuser_monitor` (or [**`pg_monitor_username`**](/docs/pgsql/param#pg_monitor_username)).

{{% alert title="Safe Deletion" color="primary" %}}
Pigsty uses `pg-drop-role` for safe deletion, auto-handling owned databases, tablespaces, schemas, tables, etc. Terminates active connections, transfers ownership to `postgres`, creates audit log at `/tmp/pg_drop_role_<user>_<timestamp>.log`. No manual dependency handling needed.
{{% /alert %}}


----------------

## Manual Deletion

For manual user deletion, use `pg-drop-role` script directly:

```bash
# Check dependencies (read-only)
pg-drop-role dbuser_old --check

# Preview deletion (don't execute)
pg-drop-role dbuser_old --dry-run -v

# Delete user, transfer objects to postgres
pg-drop-role dbuser_old

# Force delete (terminate connections)
pg-drop-role dbuser_old --force

# Delete user, transfer to specific user
pg-drop-role dbuser_old dbuser_new
```


----------------

## Common Use Cases

Common user configuration examples:

**Basic business user**

```yaml
- name: dbuser_app
  password: DBUser.App
  pgbouncer: true
  roles: [dbrole_readwrite]
  comment: application user
```

**Read-only user**

```yaml
- name: dbuser_readonly
  password: DBUser.Readonly
  pgbouncer: true
  roles: [dbrole_readonly]
```

**Admin user (can execute DDL)**

```yaml
- name: dbuser_admin
  password: DBUser.Admin
  pgbouncer: true
  pool_mode: session
  roles: [dbrole_admin]
  parameters:
    log_statement: 'all'
```

**Temp user (expires in 30 days)**

```yaml
- name: temp_contractor
  password: TempPassword
  expire_in: 30
  roles: [dbrole_readonly]
```

**Role (no login, for permission grouping)**

```yaml
- name: custom_role
  login: false
  comment: custom role for special permissions
```

**User with advanced role options (PG16+)**

```yaml
- name: dbuser_special
  password: DBUser.Special
  pgbouncer: true
  roles:
    - dbrole_readwrite
    - { name: dbrole_admin, admin: true }
    - { name: pg_monitor, set: false }
    - { name: pg_execute_server_program, inherit: false }
```


----------------

## Query Users

Common SQL queries for user info:

**List all users**

```sql
SELECT rolname, rolsuper, rolinherit, rolcreaterole, rolcreatedb,
       rolcanlogin, rolreplication, rolbypassrls, rolconnlimit, rolvaliduntil
FROM pg_roles WHERE rolname NOT LIKE 'pg_%' ORDER BY rolname;
```

**View user role membership**

```sql
SELECT r.rolname AS member, g.rolname AS role, m.admin_option, m.set_option, m.inherit_option
FROM pg_auth_members m
JOIN pg_roles r ON r.oid = m.member
JOIN pg_roles g ON g.oid = m.roleid
WHERE r.rolname = 'dbuser_app';
```

**View user-level parameters**

```sql
SELECT rolname, setconfig FROM pg_db_role_setting s
JOIN pg_roles r ON r.oid = s.setrole WHERE s.setdatabase = 0;
```

**View expiring users**

```sql
SELECT rolname, rolvaliduntil, rolvaliduntil - CURRENT_TIMESTAMP AS time_remaining
FROM pg_roles WHERE rolvaliduntil IS NOT NULL
  AND rolvaliduntil < CURRENT_TIMESTAMP + INTERVAL '30 days'
ORDER BY rolvaliduntil;
```


----------------

## Connection Pool Management

[**Connection pool params**](/docs/pgsql/config/user#pgbouncer) in user definitions are applied to Pgbouncer when creating/modifying users.

Users with `pgbouncer: true` are added to `/etc/pgbouncer/userlist.txt`. User-level pool params (`pool_mode`, `pool_connlimit`) are configured via `/etc/pgbouncer/useropts.txt`.

Use `postgres` OS user with `pgb` alias to access Pgbouncer admin database. For more pool management, see [**Pgbouncer Management**](/docs/pgsql/admin/pgbouncer).
