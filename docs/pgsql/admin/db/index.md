# Managing PostgreSQL Databases

> Database management - create, modify, delete, rebuild, and clone databases using templates

---

LLMS index: [llms.txt](/llms.txt)

---

## Quick Start

Pigsty manages databases declaratively.
First [**define databases**](/docs/pgsql/config/db) in the [**inventory**](/docs/concept/iac/inventory).
Then run `bin/pgsql-db <cls> <dbname>` to create or modify them.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases: [{ name: some_db }]  # <--- Define database list here!
```


```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-db <cls> <dbname>    # Create/modify <dbname> database on <cls> cluster
```

```bash {tab="Playbook" value="playbook"}
./pgsql-db.yml -l pg-meta -e dbname=some_db    # Use playbook to create/modify database
```

```bash {tab="Example" value="example"}
bin/pgsql-db pg-meta some_db    # Create/modify some_db database on pg-meta cluster
```

For the complete database definition reference, see [**Database Configuration**](/docs/pgsql/config/db). For database access permissions, see [**Access Control: Database Isolation**](/docs/concept/sec/ac#database-isolation).

You can set some parameters only at **creation time**.
To change these parameters, recreate the database with `state: recreate`.

| Action                                    | Command                   | Description                                    |
|:------------------------------------------|:--------------------------|:-----------------------------------------------|
| [**Create Database**](#create-database)   | `bin/pgsql-db <cls> <db>` | Create new business database                   |
| [**Modify Database**](#modify-database)   | `bin/pgsql-db <cls> <db>` | Modify existing database properties            |
| [**Delete Database**](#delete-database)   | `bin/pgsql-db <cls> <db>` | Delete database (requires `state: absent`)     |
| [**Rebuild Database**](#rebuild-database) | `bin/pgsql-db <cls> <db>` | Drop and recreate (requires `state: recreate`) |
| [**Clone Database**](#clone-database)     | `bin/pgsql-db <cls> <db>` | Clone database using template                  |
{.full-width}


[demo\/pgsql\-db\.cast](/demo/pgsql-db.cast)


----------------

## Create Database

During PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster), the `pg_db` task automatically creates databases defined in [**`pg_databases`**](/docs/pgsql/param#pg_databases).

To create a database on an existing cluster, add its [**definition**](/docs/pgsql/config/db) to `all.children.<cls>.pg_databases`.
Then run:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-db <cls> <dbname>   # Create database <dbname>
```

```bash {tab="Playbook" value="playbook"}
./pgsql-db.yml -l <cls> -e dbname=<dbname>   # Use Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-db pg-meta myapp    # Create myapp database in pg-meta cluster
```

**Example: Create business database `myapp`**

```yaml
#all.children.pg-meta.vars.pg_databases:
  - name: myapp
    owner: dbuser_myapp
    schemas: [app]
    extensions:
      - { name: pg_trgm }
      - { name: btree_gin }
    comment: my application database
```

**Result**: Pigsty creates `myapp` on the primary with `dbuser_myapp` as its owner.
It creates the `app` schema and enables the `pg_trgm` and `btree_gin` extensions.
It also adds the database to the Pgbouncer pool and registers a Grafana data source.

> [!NOTE] Recommendation: Use playbook
> For manual database creation, you must ensure Pgbouncer pool and Grafana datasource sync yourself.


----------------

## Modify Database

Use the same command as for creation.
The playbook is idempotent when no `baseline` SQL is defined.

If the target database exists, Pigsty changes its properties to match the configuration.
However, you can set some properties only at creation.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-db <cls> <db>   # Modify database <db> properties
```

```bash {tab="Playbook" value="playbook"}
./pgsql-db.yml -l <cls> -e dbname=<db>   # Idempotent, can repeat
```

```bash {tab="Example" value="example"}
bin/pgsql-db pg-meta myapp    # Modify myapp database to match config
```


**Immutable properties**: To change these properties after creation, use `state: recreate`:

- `name` (database name), `template`, `strategy` (clone strategy)
- `encoding`, `locale`/`lc_collate`/`lc_ctype`, `locale_provider`/`icu_locale`/`icu_rules`/`builtin_locale`

All other properties can be modified. Common examples:

**Modify owner**: Change the `owner` field.
Pigsty runs `ALTER DATABASE ... OWNER TO` and grants permissions.

```yaml
- name: myapp
  owner: dbuser_new_owner     # New owner
```

**Modify connection limit**: Use `connlimit` to limit max connections.

```yaml
- name: myapp
  connlimit: 100              # Max 100 connections
```

**Revoke public connect**: Set `revokeconn: true` to revoke the PUBLIC CONNECT privilege.
Only the owner, DBA, monitor, and replication users can then connect.

```yaml
- name: myapp
  owner: dbuser_myapp
  revokeconn: true            # Revoke PUBLIC CONNECT
```

**Manage parameters**: Use the `parameters` dictionary to set database-level parameters.
Pigsty generates `ALTER DATABASE ... SET` commands.
Use the special value `DEFAULT` to reset a parameter.

```yaml
- name: myapp
  parameters:
    work_mem: '256MB'
    maintenance_work_mem: '512MB'
    statement_timeout: '30s'
    search_path: DEFAULT      # Reset to default
```

**Manage schemas**: Use the `schemas` array with simple or extended definitions.
To drop a schema with CASCADE, set `state: absent`.

```yaml
- name: myapp
  schemas:
    - app                                   # Simple form
    - { name: core, owner: dbuser_myapp }   # Specify owner
    - { name: deprecated, state: absent }   # Drop schema
```

**Manage extensions**: Use the `extensions` array with simple or extended definitions.
To uninstall an extension with CASCADE, set `state: absent`.

```yaml
- name: myapp
  extensions:
    - postgis                                 # Simple form
    - { name: vector, schema: public }        # Specify schema
    - { name: pg_trgm, state: absent }        # Uninstall extension
```

> [!WARNING] CASCADE Warning
> Schema deletion and extension removal use `CASCADE`.
> This deletes all dependent objects.
> Understand the effect before you run these operations.

**Connection pool config**: By default, Pigsty adds all databases to Pgbouncer.
Configure pooling with `pgbouncer`, `pool_mode`, `pool_size`, `pool_reserve`, `pool_size_min`, `pool_connlimit`, and `pool_auth_user`.

```yaml
- name: myapp
  pgbouncer: true              # Add to pool (default true)
  pool_mode: transaction       # Pool mode: transaction/session/statement
  pool_size: 50                # Default pool size
  pool_reserve: 30             # Reserve pool size
  pool_size_min: 0             # Minimum pool size
  pool_connlimit: 100          # Max database connections
  pool_auth_user: dbuser_meta  # Auth query user (with pgbouncer_auth_query)
```

> Since Pigsty `v4.1.0`, use `pool_reserve` and `pool_connlimit` for database pool fields.
> These names replace the legacy aliases `pool_size_reserve` and `pool_max_db_conn`.


----------------

## Delete Database

To delete a database, set `state` to `absent` and execute:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-db <cls> <db>   # Delete <db> (config must have state: absent)
```

```bash {tab="Playbook" value="playbook"}
./pgsql-db.yml -l <cls> -e dbname=<db>   # Use Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-db pg-meta olddb    # Delete olddb (config has state: absent)
```

**Config example**:

```yaml
pg_databases:
  - name: olddb
    state: absent
```

**Deletion process**: If `is_template: true`, Pigsty first runs `ALTER DATABASE ... IS_TEMPLATE false`.
It then uses `DROP DATABASE ... WITH (FORCE)` (PG13+) to delete the database and terminate all its connections.
It removes the database from the Pgbouncer pool and unregisters its Grafana data source.

**Protection**: Pigsty cannot delete the system databases `postgres`, `template0`, and `template1`.
Deletion runs only on the primary.
Streaming replication sends the change to replicas.

> [!CAUTION] Danger Warning
> Database deletion is **irreversible** and permanently deletes all data.
> Before deletion, verify that a recent backup exists.
> Confirm that no business uses the database, and notify stakeholders.
> Pigsty is not responsible for any data loss from database deletion. Use at your own risk.


----------------

## Rebuild Database

`recreate` state rebuilds database (drop then create):

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-db <cls> <db>   # Rebuild <db> (config must have state: recreate)
```

```bash {tab="Playbook" value="playbook"}
./pgsql-db.yml -l <cls> -e dbname=<db>   # Use Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-db pg-meta testdb    # Rebuild testdb (config has state: recreate)
```

**Config example**:

```yaml
pg_databases:
  - name: testdb
    state: recreate
    owner: dbuser_test
    baseline: test_init.sql    # Execute after rebuild
```

**Use cases**: Test environment reset, clear dev database, modify immutable properties (encoding, locale), restore to initial state.

**Difference from manual DROP + CREATE**: One command performs the operation.
It preserves Pgbouncer and Grafana configuration automatically.
It also loads the `baseline` initialization script automatically.


----------------

## Clone Database

Use the PostgreSQL template mechanism to clone a database.
The template database must have no active connections during cloning.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-db <cls> <db>   # Clone <db> (config must specify template)
```

```bash {tab="Playbook" value="playbook"}
./pgsql-db.yml -l <cls> -e dbname=<db>   # Use Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-db pg-meta meta_dev    # Clone meta_dev (config has template: meta)
```

**Config example**:

```yaml
pg_databases:
  - name: meta                   # Source database

  - name: meta_dev
    template: meta               # Use meta as template
    strategy: FILE_COPY          # PG15+ clone strategy, instant on PG18
```

**Instant Clone (PG18+)**: For PostgreSQL 18+, Pigsty configures [**`file_copy_method`**](https://www.postgresql.org/docs/current/runtime-config-resource.html#GUC-FILE-COPY-METHOD) by default.
With `strategy: FILE_COPY`, cloning takes about 200ms and does not copy data files.
For example, a 30GB database takes 18s with normal cloning and 200ms with instant cloning.

**Manual clone**: Ensure all connections to template are terminated:

```sql
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'meta';
CREATE DATABASE meta_dev TEMPLATE meta STRATEGY FILE_COPY;
```

**Limitations**: Instant cloning requires a supported filesystem: xfs, btrfs, zfs, or apfs.
Do not use the `postgres` database as a template.
In high-concurrency environments, clear all template connections within the cloning window of about 200ms.


----------------

## Connection Pool Management

[**Connection pool params**](/docs/pgsql/config/db#connection-pool) in database definitions are applied to Pgbouncer when creating/modifying databases.

By default, Pigsty adds all databases to the Pgbouncer pool (`pgbouncer: true`).
It adds their definitions to `/etc/pgbouncer/database.txt`.
This file also holds database-level pool parameters: `pool_auth_user`, `pool_mode`, `pool_size`, `pool_reserve`, `pool_size_min`, and `pool_connlimit`.

As the `postgres` operating system user, use the `pgb` alias to access the Pgbouncer administration database.
For more operations, see [**Pgbouncer Management**](/docs/pgsql/admin/pgbouncer).
