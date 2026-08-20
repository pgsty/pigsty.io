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


```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-user <cls> <username>    # Create/modify <username> user on <cls> cluster
```

```bash {tab="Playbook" value="playbook"}
./pgsql-user.yml -l pg-meta -e username=dbuser_app    # Use playbook to create/modify user
```

```bash {tab="Example" value="example"}
bin/pgsql-user pg-meta dbuser_app    # Create/modify dbuser_app user on pg-meta cluster
```

For the complete user definition reference, see [**User Configuration**](/docs/pgsql/config/user). See [**Access Control**](/docs/concept/sec/ac#role-system) for roles and privileges, and [**Authentication**](/docs/concept/sec/auth) for credential management.

`name` is the key used by `pgsql-user.yml` to look up a user definition; the playbook does not rename roles. For a rename, create the replacement role, migrate ownership, memberships, and client credentials, validate the cutover, and only then remove the old role. Do not treat delete-and-create as a lossless rename.

| Action                          | Command                           | Description                              |
|:--------------------------------|:----------------------------------|:-----------------------------------------|
| [**Create User**](#create-user) | `bin/pgsql-user <cls> <user>`     | Create new business user or role         |
| [**Modify User**](#modify-user) | `bin/pgsql-user <cls> <user>`     | Modify existing user properties          |
| [**Delete User**](#delete-user) | `bin/pgsql-user <cls> <user>`     | Dependency-aware destructive deletion (`state: absent`) |
{.full-width}


{{< asciinema file="demo/pgsql-user.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Create User

Users defined in [**`pg_users`**](/docs/pgsql/param#pg_users) are auto-created during PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster) in the `pg_user` task.

To create a new user on an existing cluster, add [**user definition**](/docs/pgsql/config/user) to `all.children.<cls>.pg_users`, then execute:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-user <cls> <username>   # Create user <username>
```

```bash {tab="Playbook" value="playbook"}
./pgsql-user.yml -l <cls> -e username=<username>   # Use Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-user pg-meta dbuser_app    # Create dbuser_app user in pg-meta cluster
```

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

> [!NOTE] Recommendation: Use playbook
> For manual user creation, you must ensure Pgbouncer user list sync yourself.


----------------

## Modify User

Same command as create - playbook is idempotent. When target user exists, Pigsty modifies properties to match config.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-user <cls> <user>   # Modify user <user> properties
```

```bash {tab="Playbook" value="playbook"}
./pgsql-user.yml -l <cls> -e username=<user>   # Idempotent, can repeat
```

```bash {tab="Example" value="example"}
bin/pgsql-user pg-meta dbuser_app    # Modify dbuser_app to match config
```


**Not directly mutable**: `name` is the identity key in the declarative definition. The playbook does not rename an existing role. Use a controlled create, ownership/privilege and client migration, validation, and old-role removal sequence.

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

Deleting a user terminates sessions, transfers object ownership, revokes grants, and runs `DROP ROLE`; it is irreversible. Confirm the exact cluster, role, successor owner, and a recent backup before setting the user to `state: absent` and applying the change.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-user <cls> <user>   # Actual deletion after confirmation; config must say state: absent
```

```bash {tab="Playbook" value="playbook"}
./pgsql-user.yml -l <cls> -e username=<user>   # Apply the user definition with state: absent
```

```bash {tab="Example" value="example"}
bin/pgsql-user pg-meta dbuser_old    # Delete dbuser_old (config has state: absent)
```

**Config example**:

```yaml
pg_users:
  - name: dbuser_old
    state: absent
```

**Deletion process**: On the primary, the task runs `pg-drop-role <user> postgres --force`. It disables login, terminates active sessions, transfers database and tablespace ownership plus objects in each connectable database to `postgres`, runs `DROP OWNED` to remove grants, revokes role memberships, and finally runs `DROP ROLE`. A pre-change audit snapshot is written to `/tmp/pg_drop_role_<user>_<timestamp>.log`.

**Protection**: The Ansible task skips `postgres` and the replication, admin, and monitor usernames configured in inventory. When invoked directly, `pg-drop-role` protects only the hard-coded default names `postgres`, `replicator`, `dbuser_dba`, and `dbuser_monitor`; renamed system accounts are not recognized automatically.

> [!WARNING] Dependency-aware, not transactional
> `pg-drop-role` skips `DROP OWNED` in a database if its preceding `REASSIGN OWNED` fails, but the cross-database procedure is not one transaction. A mid-run failure can leave the role `NOLOGIN`, some ownership already transferred, or dependencies still present. The v4.5 Ansible task also uses `ignore_errors`, so a playbook result is not sufficient evidence. Verify role absence, successor ownership, application cutover, and the audit log afterward.

In v4.5, `pgsql-user.yml` reloads Pgbouncer but does not reliably prune a deleted role from `/etc/pgbouncer/userlist.txt`. Check every cluster instance after deletion:

```bash
sudo -iu postgres psql -AXtwc "SELECT 1 FROM pg_roles WHERE rolname = 'dbuser_old';"
grep -n '^"dbuser_old"[[:space:]]' /etc/pgbouncer/userlist.txt
```

If an exact Pgbouncer entry remains, remove that single line under change control, reload Pgbouncer, and validate application connections. Do not use a broad pattern to delete entries.


----------------

## Manual Deletion

For manual user deletion, use `pg-drop-role` script directly:

```bash
# Check dependencies (read-only)
pg-drop-role dbuser_old --check

# Preview deletion (don't execute)
pg-drop-role dbuser_old --dry-run -v

# Only after confirming a recent backup, exact role, and successor owner
pg-drop-role dbuser_old dbuser_new

# Use --force only after explicitly approving session termination
pg-drop-role dbuser_old dbuser_new --force
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


----------------

## Manage Default-User Passwords

For a business user, follow [**Modify User**](#modify-user): persist the new `password` in its `pg_users` definition, preview the scoped playbook, and then apply it. The three default users require extra coordination because other services consume their credentials.

| Parameter | Default | Role | Consumers |
|:----------|:--------|:-----|:----------|
| [**`pg_admin_password`**](/docs/pgsql/param#pg_admin_password) | `DBUser.DBA` | `dbuser_dba` | Admin clients, Pgbouncer, Infra service files, pgAdmin |
| [**`pg_monitor_password`**](/docs/pgsql/param#pg_monitor_password) | `DBUser.Monitor` | `dbuser_monitor` | Exporters, Pgbouncer, Grafana data sources |
| [**`pg_replication_password`**](/docs/pgsql/param#pg_replication_password) | `DBUser.Replicator` | `replicator` | Patroni replication and `.pgpass` files |
{.full-width}

These accounts belong to [**`pg_default_roles`**](/docs/pgsql/param#pg_default_roles), not `pg_users`. `pgsql-user.yml` looks up only `pg_users`, so do not rotate a default password by overriding `pg_users` on the command line: that changes the business-user list visible to that run and exposes plaintext in shell history.

Rotate one account at a time:

1. Persist the new parameter in `pigsty.yml` or the inventory actually in use; never put the plaintext password on the command line.
2. On the current primary, open interactive `psql` as a superuser and run `\password <username>`; the meta-command reads the secret interactively.
3. Run the corresponding refresh playbooks below after verifying the `-l` cluster/node scope.
4. Keep the current administration session open and verify direct PostgreSQL, Pgbouncer, replication, exporters, and Grafana data sources before rotating another account.

```bash
# On the current primary of the target cluster
sudo -iu postgres psql -d postgres
\password dbuser_dba       # or dbuser_monitor / replicator
```

Refresh every consumer for the account. Replace `<cls>` and constrain `infra` to the actual targets:

```bash
# dbuser_dba: PG-node .pgpass, Pgbouncer, Infra admin files, and pgAdmin files
./pgsql.yml -l <cls> -t pg_pass,pgbouncer_user,pgbouncer_reload -e pg_reload=true
./infra.yml -l infra -t env_pgpass,env_pgscv,env_pgadmin

# dbuser_monitor: PG-node .pgpass, Pgbouncer, exporters, and Grafana data sources
./pgsql.yml -l <cls> -t pg_pass,pgbouncer_user,pgbouncer_reload,pg_exporter,pgbouncer_exporter,add_ds -e pg_reload=true
./infra.yml -l infra -t env_pgpass

# replicator: Patroni configuration plus PostgreSQL-node and Infra .pgpass files
./pgsql.yml -l <cls> -t pg_conf,pg_pass,patroni_reload -e pg_reload=true
./infra.yml -l infra -t env_pgpass
```

A mismatch between the replication role and Patroni nodes prevents new replication connections, so rotate that credential in a maintenance window and validate promptly. If VIBE or another module has rendered an admin connection string into its workspace context, rerender that module's files as well.

> [!WARNING] Check for duplicate Infra .pgpass entries
> In v4.5, `env_pgpass` adds the new line with `lineinfile`; it does not remove older lines by username. Because libpq uses the first matching line, inspect every target Infra node after the refresh and remove obsolete entries through controlled editing without printing secrets:
>
> ```bash
> awk -F: '$4=="dbuser_dba" || $4=="dbuser_monitor" || $4=="replicator" {print NR, $4}' ~/.pgpass
> ```

[**`patroni_password`**](/docs/pgsql/param#patroni_password) protects the Patroni REST API; it is not a PostgreSQL role password. After changing it in inventory, refresh the target PostgreSQL cluster and Infra management side separately:

```bash
./pgsql.yml -l <cls> -t pg_conf,patroni_reload -e pg_reload=true
./infra.yml -l infra -t env_patroni
```

Then validate authentication and cluster state with `patronictl` or `pig pg list <cls>`.
