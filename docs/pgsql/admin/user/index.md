# Managing PostgreSQL Users

> User management - create, modify, delete users, manage role membership, connection pool config

---

LLMS index: [llms.txt](/llms.txt)

---

## Quick Start

Pigsty manages users declaratively.
First [**define users**](/docs/pgsql/config/user) in the [**inventory**](/docs/concept/iac/inventory).
Then run `bin/pgsql-user <cls> <username>` to create or modify them.

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

`pgsql-user.yml` uses `name` to find a user definition.
The playbook does not rename roles.
To rename a role, create a replacement role.
Migrate ownership, memberships, and client credentials, then validate the change before you remove the old role.
Deletion followed by creation is not a lossless rename.

| Action                          | Command                           | Description                              |
|:--------------------------------|:----------------------------------|:-----------------------------------------|
| [**Create User**](#create-user) | `bin/pgsql-user <cls> <user>`     | Create new business user or role         |
| [**Modify User**](#modify-user) | `bin/pgsql-user <cls> <user>`     | Modify existing user properties          |
| [**Delete User**](#delete-user) | `bin/pgsql-user <cls> <user>`     | Dependency-aware destructive deletion (`state: absent`) |
{.full-width}


[demo\/pgsql\-user\.cast](/demo/pgsql-user.cast)


----------------

## Create User

During PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster), the `pg_user` task automatically creates users defined in [**`pg_users`**](/docs/pgsql/param#pg_users).

To create a user on an existing cluster, add its [**definition**](/docs/pgsql/config/user) to `all.children.<cls>.pg_users`.
Then run:

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

**Result**: Pigsty creates `dbuser_app` on the primary, sets its password, and grants it the `dbrole_readwrite` role.
It adds the user to the Pgbouncer pool and reloads Pgbouncer configuration on all instances.

> [!NOTE] Recommendation: Use playbook
> For manual user creation, you must ensure Pgbouncer user list sync yourself.


----------------

## Modify User

Use the same command as for creation.
The playbook is idempotent.
If the target user exists, Pigsty changes its properties to match the configuration.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-user <cls> <user>   # Modify user <user> properties
```

```bash {tab="Playbook" value="playbook"}
./pgsql-user.yml -l <cls> -e username=<user>   # Idempotent, can repeat
```

```bash {tab="Example" value="example"}
bin/pgsql-user pg-meta dbuser_app    # Modify dbuser_app to match config
```


**Not directly mutable**: `name` is the identity key in the declarative definition.
The playbook does not rename an existing role.
Create a replacement role, then migrate ownership, privileges, and clients.
Validate the change before you remove the old role.

All other properties can be modified. Common examples:

**Modify password**: Change the `password` field.
Pigsty temporarily disables logging during the change to prevent password disclosure.

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

**Modify expiration**: Use `expire_in` for expiration after N days, or `expire_at` for a fixed date.
`expire_in` takes priority.
Each playbook run recalculates its expiration date.
Use it for temporary users that need periodic renewal.

```yaml
- name: temp_user
  expire_in: 30                   # Expires in 30 days (relative)

- name: contractor_user
  expire_at: '2024-12-31'         # Expires on date (absolute)

- name: permanent_user
  expire_at: 'infinity'           # Never expires
```

**Modify role membership**: Use the `roles` array with simple or extended definitions.
Membership changes are additive: Pigsty keeps existing memberships that the array does not declare.
To revoke a membership explicitly, use `state: absent`.

```yaml
- name: dbuser_app
  roles:
    - dbrole_readwrite                      # Simple form: grant role
    - { name: dbrole_admin, admin: true }   # With ADMIN OPTION
    - { name: pg_monitor, set: false }      # PG16+: disallow SET ROLE
    - { name: old_role, state: absent }     # Revoke role membership
```

**Manage user parameters**: Use the `parameters` dictionary for user-level parameters.
Pigsty generates `ALTER USER ... SET` commands.
Use `DEFAULT` to reset a parameter.

```yaml
- name: dbuser_analyst
  parameters:
    work_mem: '256MB'
    statement_timeout: '5min'
    search_path: 'analytics,public'
    log_statement: DEFAULT        # Reset to default
```

**Connection pool config**: Set `pgbouncer: true` to add the user to the pool.
You can also set `pool_mode` and `pool_connlimit`.

```yaml
- name: dbuser_app
  pgbouncer: true                 # Add to pool
  pool_mode: transaction          # Pool mode
  pool_connlimit: 50              # Max user connections
```


----------------

## Delete User

User deletion terminates sessions, transfers object ownership, revokes grants, and runs `DROP ROLE`.
This operation is irreversible.
Confirm the exact cluster, role, successor owner, and a recent backup.
Then set the user to `state: absent` and apply the change.

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

**Deletion process**: On the primary, the task runs `pg-drop-role <user> postgres --force`.
It disables login and terminates active sessions.
It transfers database and tablespace ownership, and objects in each connectable database, to `postgres`.
It runs `DROP OWNED` to remove grants, revokes role memberships, then runs `DROP ROLE`.
Before changes, it writes an audit snapshot to `/tmp/pg_drop_role_<user>_<timestamp>.log`.

**Protection**: The Ansible task skips `postgres` and the replication, administration, and monitoring usernames configured in the inventory.
Direct calls to `pg-drop-role` protect only the fixed default names: `postgres`, `replicator`, `dbuser_dba`, and `dbuser_monitor`.
The script does not recognize renamed system accounts automatically.

> [!WARNING] Dependency-aware, not transactional
> If `REASSIGN OWNED` fails in a database, `pg-drop-role` skips `DROP OWNED` in that database.
> However, the procedure across databases is not one transaction.
> A failure partway through can leave the role `NOLOGIN`, transfer only some ownership, or leave dependencies.
> The v4.5 Ansible task also uses `ignore_errors`.
> Thus, a successful playbook result does not prove complete deletion.
> Afterward, verify role absence, successor ownership, application migration, and the audit log.

In v4.5, `pgsql-user.yml` reloads Pgbouncer.
However, it does not reliably remove a deleted role from `/etc/pgbouncer/userlist.txt`.
Check every cluster instance after deletion:

```bash
sudo -iu postgres psql -AXtwc "SELECT 1 FROM pg_roles WHERE rolname = 'dbuser_old';"
grep -n '^"dbuser_old"[[:space:]]' /etc/pgbouncer/userlist.txt
```

If the exact Pgbouncer entry remains, remove only that line through the change control procedure.
Reload Pgbouncer and validate application connections.
Do not delete entries with a broad pattern.


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

Pigsty adds users with `pgbouncer: true` to `/etc/pgbouncer/userlist.txt`.
It sets user-level `pool_mode` and `pool_connlimit` in `/etc/pgbouncer/useropts.txt`.

As the `postgres` operating system user, use the `pgb` alias to access the Pgbouncer administration database.
For more operations, see [**Pgbouncer Management**](/docs/pgsql/admin/pgbouncer).


----------------

## Manage Default-User Passwords

For a business user, follow [**Modify User**](#modify-user).
Save the new `password` in its `pg_users` definition, preview the playbook for that user, then apply it.
The three default users need extra coordination because other services use their credentials.

| Parameter | Default | Role | Consumers |
|:----------|:--------|:-----|:----------|
| [**`pg_admin_password`**](/docs/pgsql/param#pg_admin_password) | `DBUser.DBA` | `dbuser_dba` | Admin clients, Pgbouncer, Infra service files, pgAdmin |
| [**`pg_monitor_password`**](/docs/pgsql/param#pg_monitor_password) | `DBUser.Monitor` | `dbuser_monitor` | Exporters, Pgbouncer, Grafana data sources |
| [**`pg_replication_password`**](/docs/pgsql/param#pg_replication_password) | `DBUser.Replicator` | `replicator` | Patroni replication and `.pgpass` files |
{.full-width}

These accounts belong to [**`pg_default_roles`**](/docs/pgsql/param#pg_default_roles), not `pg_users`.
`pgsql-user.yml` searches only `pg_users`.
Do not change a default password by overriding `pg_users` on the command line.
This changes the business-user list for that run and exposes plaintext passwords in shell history.

Rotate one account at a time:

1. Save the new parameter in `pigsty.yml` or the active inventory. Never put the plaintext password on the command line.
2. On the current primary, open interactive `psql` as a superuser. Run `\password <username>` to enter the secret interactively.
3. Verify the `-l` cluster or node scope, then run the corresponding refresh playbooks below.
4. Keep the current administration session open. Verify direct PostgreSQL, Pgbouncer, replication, exporters, and Grafana data sources before you change another account.

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

If replication credentials differ between the role and Patroni nodes, new replication connections fail.
Change this credential during a maintenance window and validate it promptly.
VIBE or another module may have generated an administration connection string in its workspace context.
If so, generate that module's files again.

> [!WARNING] Check for duplicate Infra .pgpass entries
> In v4.5, `env_pgpass` adds the new line with `lineinfile`; it does not remove older lines by username. Because libpq uses the first matching line, inspect every target Infra node after the refresh and remove obsolete entries through controlled editing without printing secrets:
>
> ```bash
> awk -F: '$4=="dbuser_dba" || $4=="dbuser_monitor" || $4=="replicator" {print NR, $4}' ~/.pgpass
> ```

[**`patroni_password`**](/docs/pgsql/param#patroni_password) protects the Patroni REST API.
It is not a PostgreSQL role password.
After you change it in the inventory, refresh the target PostgreSQL cluster and the Infra administration configuration separately:

```bash
./pgsql.yml -l <cls> -t pg_conf,patroni_reload -e pg_reload=true
./infra.yml -l infra -t env_patroni
```

Then validate authentication and cluster state with `patronictl` or `pig pg list <cls>`.
