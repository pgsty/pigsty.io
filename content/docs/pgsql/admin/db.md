---
title: Database Management
weight: 2001
description: "Database management: create, modify, delete, rebuild databases, and clone databases using templates"
icon: fa-solid fa-coins
module: [PGSQL]
categories: [Task]
---

In Pigsty, database management follows an IaC (Infrastructure as Code) approach—define in the configuration inventory, then execute playbooks.

When no `baseline` SQL is defined, executing the `pgsql-db.yml` playbook is idempotent. It adjusts the specified database in the specified cluster to match the target state in the configuration inventory.

- [Define Database](#define-database)
- [Create Database](#create-database)
- [Modify Database](#modify-database)
- [Delete Database](#delete-database)
- [Rebuild Database](#rebuild-database)
- [Clone Database](#clone-database)
- [Manage Parameters](#manage-parameters)
- [Manage Schemas](#manage-schemas)
- [Manage Extensions](#manage-extensions)
- [Connection Pool Config](#connection-pool-config)
- [Quick Reference](#quick-reference)

Note that some parameters can only be specified at creation time. Modifying these parameters requires deleting and recreating the database (using `state: recreate` to rebuild).


----------------

## TL;DR

First [**define databases**](/docs/pgsql/config/db) in the [**configuration inventory**](/docs/concept/iac/inventory), then use `bin/pgsql-db <cls> <dbname>` to create or modify.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases: [{ name: some_db }]
```

```bash
bin/pgsql-db pg-meta some_db    # Equivalent to: ./pgsql-db.yml -l pg-meta -e dbname=some_db
```


----------------

## Define Database

Business databases are defined in the cluster parameter [`pg_databases`](/docs/pgsql/param#pg_databases), which is an array of database definition objects. Databases in the array are created in **definition order**, so later-defined databases can use previously-defined databases as **templates**.

Here's the database definition from the default cluster `pg-meta` in Pigsty's demo environment:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases:
      - { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [{name: postgis, schema: public}, {name: timescaledb}]}
      - { name: grafana  ,owner: dbuser_grafana  ,revokeconn: true ,comment: grafana primary database }
      - { name: bytebase ,owner: dbuser_bytebase ,revokeconn: true ,comment: bytebase primary database }
      - { name: kong     ,owner: dbuser_kong     ,revokeconn: true ,comment: kong the api gateway database }
      - { name: gitea    ,owner: dbuser_gitea    ,revokeconn: true ,comment: gitea meta database }
      - { name: wiki     ,owner: dbuser_wiki     ,revokeconn: true ,comment: wiki meta database }
      - { name: noco     ,owner: dbuser_noco     ,revokeconn: true ,comment: nocodb database }
```

The only required field is `name`, which should be a valid and unique database name within the current PostgreSQL cluster—all other parameters have sensible defaults. For complete database definition parameter reference, see [Database Configuration Reference](/docs/pgsql/config/db).


----------------

## Create Database

To create a new business database on an existing PostgreSQL cluster, add the database definition to `all.children.<cls>.pg_databases`, then execute:

```bash
bin/pgsql-db <cls> <dbname>    # Equivalent to: pgsql-db.yml -l <cls> -e dbname=<dbname>
```

**Example: Create a business database named `myapp`**

1. Add the database definition to the configuration file:

```yaml
pg-meta:
  vars:
    pg_databases:
      - name: myapp
        owner: dbuser_myapp
        schemas: [app]
        extensions:
          - { name: pg_trgm }
          - { name: btree_gin }
        comment: my application database
```

2. Execute the create command:

```bash
bin/pgsql-db pg-meta myapp
```

**Execution effects:**

- Creates database `myapp` on the primary
- Sets database owner to `dbuser_myapp`
- Creates schema `app`
- Installs extensions `pg_trgm` and `btree_gin`
- Configures default privileges (dbrole_readonly/readwrite/admin)
- Adds database to Pgbouncer connection pool
- Registers database as a Grafana data source


{{% alert title="Use Playbooks to Create Databases" color="secondary" %}}

We don't recommend creating business databases manually with SQL, especially when using Pgbouncer connection pooling.
Using **`bin/pgsql-db`** automatically handles connection pool configuration and monitoring registration.

{{% /alert %}}


----------------

## Modify Database

Modify database properties by updating the configuration and re-executing the playbook:

```bash
bin/pgsql-db <cls> <dbname>    # Idempotent operation, can be executed repeatedly
```

### Modifiable Properties

| Property | Description | Example |
|----------|-------------|---------|
| `owner` | Database owner | `owner: dbuser_new` |
| `tablespace` | Default tablespace (triggers data migration) | `tablespace: fast_ssd` |
| `is_template` | Mark as template database | `is_template: true` |
| `allowconn` | Allow connections | `allowconn: false` |
| `connlimit` | Connection limit | `connlimit: 100` |
| `revokeconn` | Revoke PUBLIC CONNECT privilege | `revokeconn: true` |
| `comment` | Comment | `comment: new comment` |
| `parameters` | Database-level parameters | See examples below |
| `schemas` | Add/remove schemas (incremental) | See [Manage Schemas](#manage-schemas) |
| `extensions` | Add/remove extensions (incremental) | See [Manage Extensions](#manage-extensions) |
| `pgbouncer` | Include in connection pool | `pgbouncer: false` |
| `pool_*` | Connection pool parameters | See [Connection Pool Config](#connection-pool-config) |

### Non-modifiable Properties

The following properties cannot be modified after database creation—use `state: recreate` to rebuild the database:

- `template` - Template database
- `encoding` - Character encoding
- `locale` / `lc_collate` / `lc_ctype` - Locale settings
- `locale_provider` / `icu_locale` / `icu_rules` / `builtin_locale` - Locale provider settings
- `strategy` - Clone strategy

### Change Owner

```yaml
- name: myapp
  owner: dbuser_new_owner     # Change to new owner
```

```bash
bin/pgsql-db pg-meta myapp
```

Executed SQL:
```sql
ALTER DATABASE "myapp" OWNER TO "dbuser_new_owner";
GRANT ALL PRIVILEGES ON DATABASE "myapp" TO "dbuser_new_owner";
```

### Change Connection Limit

```yaml
- name: myapp
  connlimit: 100              # Limit to max 100 connections
```

Executed SQL:
```sql
ALTER DATABASE "myapp" CONNECTION LIMIT 100;
```

### Revoke Public Connection Privilege

```yaml
- name: myapp
  owner: dbuser_myapp
  revokeconn: true            # Revoke PUBLIC CONNECT privilege
```

Executed SQL:
```sql
REVOKE CONNECT ON DATABASE "myapp" FROM PUBLIC;
GRANT CONNECT ON DATABASE "myapp" TO "replicator";
GRANT CONNECT ON DATABASE "myapp" TO "dbuser_monitor";
GRANT CONNECT ON DATABASE "myapp" TO "dbuser_dba" WITH GRANT OPTION;
GRANT CONNECT ON DATABASE "myapp" TO "dbuser_myapp" WITH GRANT OPTION;
```

To restore public connection privilege, set `revokeconn: false`:

```yaml
- name: myapp
  revokeconn: false           # Restore PUBLIC CONNECT privilege
```

Executed SQL:
```sql
GRANT CONNECT ON DATABASE "myapp" TO PUBLIC;
```

### Mark as Template Database

```yaml
- name: app_template
  is_template: true           # Allow any user with CREATEDB privilege to clone
```

Executed SQL:
```sql
ALTER DATABASE "app_template" IS_TEMPLATE true;
```

----------------

## Manage Parameters

Database-level parameters are configured via the `parameters` dictionary, generating `ALTER DATABASE ... SET` statements.

### Set Parameters

```yaml
- name: myapp
  parameters:
    work_mem: '256MB'
    maintenance_work_mem: '512MB'
    statement_timeout: '30s'
    search_path: 'app,public'
```

Executed SQL:
```sql
ALTER DATABASE "myapp" SET "work_mem" = '256MB';
ALTER DATABASE "myapp" SET "maintenance_work_mem" = '512MB';
ALTER DATABASE "myapp" SET "statement_timeout" = '30s';
ALTER DATABASE "myapp" SET "search_path" = 'app,public';
```

### Reset Parameters to Default

Use the special value `DEFAULT` (case-insensitive) to reset parameters to PostgreSQL defaults:

```yaml
- name: myapp
  parameters:
    work_mem: DEFAULT         # Reset to PostgreSQL default
    statement_timeout: DEFAULT
```

Executed SQL:
```sql
ALTER DATABASE "myapp" SET "work_mem" = DEFAULT;
ALTER DATABASE "myapp" SET "statement_timeout" = DEFAULT;
```

### Common Database-Level Parameters

| Parameter | Description | Example Value |
|-----------|-------------|---------------|
| `work_mem` | Query work memory | `'64MB'` |
| `maintenance_work_mem` | Maintenance operation memory | `'256MB'` |
| `statement_timeout` | Statement timeout | `'30s'` |
| `lock_timeout` | Lock wait timeout | `'10s'` |
| `idle_in_transaction_session_timeout` | Idle transaction timeout | `'10min'` |
| `search_path` | Schema search path | `'app,public'` |
| `default_tablespace` | Default tablespace | `'fast_ssd'` |
| `temp_tablespaces` | Temporary tablespaces | `'temp_ssd'` |
| `log_statement` | Statement logging level | `'ddl'` |


----------------

## Manage Schemas

Schemas are configured via the `schemas` array, supporting create, assign owner, and delete operations.

### Create Schemas

```yaml
- name: myapp
  schemas:
    # Simple form: schema name only
    - app
    - api

    # Full form: specify owner
    - { name: core, owner: dbuser_myapp }
```

Executed SQL:
```sql
CREATE SCHEMA IF NOT EXISTS "app";
CREATE SCHEMA IF NOT EXISTS "api";
CREATE SCHEMA IF NOT EXISTS "core" AUTHORIZATION "dbuser_myapp";
```

### Specify Schema Owner

Use the `owner` field to assign a schema owner—useful for multi-tenant or permission isolation scenarios:

```yaml
- name: multi_tenant_db
  owner: dbuser_admin
  schemas:
    - { name: tenant_a, owner: dbuser_tenant_a }
    - { name: tenant_b, owner: dbuser_tenant_b }
    - { name: shared, owner: dbuser_admin }
```

### Delete Schemas

Use `state: absent` to mark schemas for deletion:

```yaml
- name: myapp
  schemas:
    - { name: deprecated_schema, state: absent }
```

Executed SQL:
```sql
DROP SCHEMA IF EXISTS "deprecated_schema" CASCADE;
```

{{% alert title="CASCADE Warning" color="warning" %}}

Schema deletion uses the `CASCADE` option, which also deletes all objects within the schema (tables, views, functions, etc.).
Ensure you understand the impact before executing delete operations.

{{% /alert %}}


----------------

## Manage Extensions

Extensions are configured via the `extensions` array, supporting install and uninstall operations.

### Install Extensions

```yaml
- name: myapp
  extensions:
    # Simple form: extension name only
    - postgis
    - pg_trgm

    # Full form: specify schema and version
    - { name: vector, schema: public }
    - { name: pg_stat_statements, schema: monitor, version: '1.10' }
```

Executed SQL:
```sql
CREATE EXTENSION IF NOT EXISTS "postgis" CASCADE;
CREATE EXTENSION IF NOT EXISTS "pg_trgm" CASCADE;
CREATE EXTENSION IF NOT EXISTS "vector" WITH SCHEMA "public" CASCADE;
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "monitor" VERSION '1.10' CASCADE;
```

### Uninstall Extensions

Use `state: absent` to mark extensions for uninstall:

```yaml
- name: myapp
  extensions:
    - { name: pg_trgm, state: absent }    # Uninstall extension
    - { name: postgis }                    # Keep extension
```

Executed SQL:
```sql
DROP EXTENSION IF EXISTS "pg_trgm" CASCADE;
CREATE EXTENSION IF NOT EXISTS "postgis" CASCADE;
```

{{% alert title="CASCADE Warning" color="warning" %}}

Extension uninstall uses the `CASCADE` option, which also drops all objects depending on that extension (views, functions, etc.).
Ensure you understand the impact before executing uninstall operations.

{{% /alert %}}


----------------

## Delete Database

To delete a database, set its `state` to `absent` and execute the playbook:

```yaml
pg_databases:
  - name: olddb
    state: absent
```

```bash
bin/pgsql-db <cls> olddb
```

**Delete operation will:**

1. If database is marked `is_template: true`, first execute `ALTER DATABASE ... IS_TEMPLATE false`
2. Force drop database with `DROP DATABASE ... WITH (FORCE)` (PG13+)
3. Terminate all active connections to the database
4. Remove database from Pgbouncer connection pool
5. Unregister from Grafana data sources

**Protection mechanisms:**

- System databases `postgres`, `template0`, `template1` cannot be deleted
- Delete operations only execute on the primary—streaming replication syncs to replicas automatically


{{% alert title="Dangerous Operation Warning" color="danger" %}}

Deleting a database is an **irreversible** operation that permanently removes all data in that database.
Before executing, ensure:
- You have the latest database backup
- No applications are using the database
- Relevant stakeholders have been notified

{{% /alert %}}


----------------

## Rebuild Database

The `recreate` state rebuilds a database, equivalent to delete then create:

```yaml
pg_databases:
  - name: testdb
    state: recreate
    owner: dbuser_test
    baseline: test_init.sql    # Execute initialization after rebuild
```

```bash
bin/pgsql-db <cls> testdb
```

**Use cases:**

- Test environment reset
- Clear development database
- Modify immutable properties (encoding, locale, etc.)
- Restore database to initial state

**Difference from manual DROP + CREATE:**

- Single command, no need for two operations
- Automatically preserves Pgbouncer and Grafana configuration
- Automatically loads `baseline` initialization script after execution


----------------

## Clone Database

You can clone a PostgreSQL database via the template mechanism, but no active connections to the template database are allowed during cloning.

To clone the `postgres` database, you must execute these two statements together, ensuring all connections to `postgres` are terminated first:

```sql
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'postgres';
CREATE DATABASE pgcopy TEMPLATE postgres STRATEGY FILE_COPY;
```


### Instant Clone

If you're using PostgreSQL 18+, Pigsty sets [`file_copy_method`](https://www.postgresql.org/docs/current/runtime-config-resource.html#GUC-FILE-COPY-METHOD) by default.
This allows O(1) (~200ms) database cloning without copying data files.

You must explicitly use the [`FILE_COPY`](https://www.postgresql.org/docs/current/sql-createdatabase.html#CREATE-DATABASE-STRATEGY) strategy.
Since PostgreSQL 15, `CREATE DATABASE` defaults to `WAL_LOG`—specify `FILE_COPY` explicitly for instant cloning:

```sql
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'meta';
CREATE DATABASE pgcopy TEMPLATE meta STRATEGY FILE_COPY;
```

For example, cloning a 30GB database: normal clone (`WAL_LOG`) takes 18 seconds, while instant clone (`FILE_COPY`) takes only ~200ms constant time.

You still need to ensure no active connections to the template database during cloning, but this window can be very brief, making it practical for production.
Instant clone is excellent for test/dev database copies—it incurs no extra storage overhead due to filesystem CoW (Copy on Write).

Since Pigsty v4.0, use `strategy: FILE_COPY` in [`pg_databases`](/docs/pgsql/param#pg_databases/) for instant cloning:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta
    pg_version: 18
    pg_databases:
      - name: meta

      - name: meta_dev
        template: meta
        strategy: FILE_COPY         # <---- Introduced PG15, instant on PG18
        #comment: "meta clone"      # <---- Database comment
        #pgbouncer: false           # <---- Exclude from connection pool?
        #register_datasource: false # <---- Exclude from Grafana datasource?
```

After configuration, use the standard database creation SOP:

```bash
bin/pgsql-db pg-meta meta_dev
```


### Limitations & Notes

This feature only works on supported filesystems (xfs, btrfs, zfs, apfs). PostgreSQL will error if unsupported.
By default, mainstream Linux distributions have xfs with `reflink=1` enabled, so this usually works.
OpenZFS requires explicit configuration for CoW, but due to data corruption precedents, not recommended for production.

If using PostgreSQL < 15, specifying `strategy` has no effect.

Avoid using `postgres` database as a template—management connections typically connect to `postgres`, blocking clone operations.
If you must clone `postgres`, connect to another database and execute the SQL manually.

In high-concurrency production environments, use instant clone cautiously—it requires clearing all template database connections within the clone window (~200ms), or cloning fails.


----------------

## Connection Pool Config

By default, all business databases are added to the Pgbouncer connection pool.

### Database-Level Connection Pool Parameters

```yaml
- name: myapp
  pgbouncer: true              # Include in connection pool (default true)
  pool_mode: transaction       # Pool mode: transaction/session/statement
  pool_size: 64                # Default pool size
  pool_size_min: 0             # Minimum pool size
  pool_reserve: 32             # Reserved connections
  pool_connlimit: 100          # Maximum database connections
  pool_auth_user: dbuser_meta  # Auth query user
```

### Generated Configuration

Configuration file located at `/etc/pgbouncer/database.txt`:

```ini
myapp                       = host=/var/run/postgresql pool_mode=transaction pool_size=64
```

### Hide Databases

Some internal databases may not need connection pool access:

```yaml
- name: internal_db
  pgbouncer: false           # Don't add to connection pool
```

### Pool Mode Explanation

| Mode | Description | Use Case |
|------|-------------|----------|
| `transaction` | Return connection after transaction ends (default) | Most OLTP applications |
| `session` | Return connection after session ends | Applications requiring session state |
| `statement` | Return connection after statement ends | Stateless queries |


----------------

## Locale Provider

PostgreSQL 15+ introduced the `locale_provider` parameter, supporting different locale implementations.

### Use ICU Provider (PG15+)

```yaml
- name: myapp_icu
  template: template0        # ICU must use template0
  locale_provider: icu
  icu_locale: en-US          # ICU locale rules
  encoding: UTF8
```

### Use Builtin Provider (PG17+)

```yaml
- name: myapp_builtin
  template: template0
  locale_provider: builtin
  builtin_locale: C.UTF-8    # Builtin locale rules
  encoding: UTF8
```

### ICU Collation Rules (PG16+)

```yaml
- name: myapp_custom_icu
  template: template0
  locale_provider: icu
  icu_locale: en-US
  icu_rules: '&V << w <<< W'  # Custom ICU collation rules
```

### Provider Comparison

| Provider | Version Requirement | Features |
|----------|---------------------|----------|
| `libc` | - | Traditional, depends on OS |
| `icu` | PG15+ | Cross-platform consistent, feature-rich |
| `builtin` | PG17+ | Most efficient C/C.UTF-8 collation |


----------------

## Quick Reference

### Common Commands

| Operation | Command |
|-----------|---------|
| Create database | `bin/pgsql-db <cls> <dbname>` |
| Modify database | `bin/pgsql-db <cls> <dbname>` |
| Delete database | Set `state: absent` then run `bin/pgsql-db <cls> <dbname>` |
| Rebuild database | Set `state: recreate` then run `bin/pgsql-db <cls> <dbname>` |
| List databases | `psql -c '\l'` |
| View connection pool databases | `cat /etc/pgbouncer/database.txt` |

### Common Operation Examples

```yaml
# Create basic database
- name: myapp
  owner: dbuser_myapp
  comment: my application database

# Create database with extensions
- name: geodata
  owner: dbuser_geo
  extensions: [postgis, postgis_topology]

# Private database with limited connections
- name: secure_db
  owner: dbuser_secure
  revokeconn: true
  connlimit: 10

# Set database-level parameters
- name: analytics
  owner: dbuser_analyst
  parameters:
    work_mem: '512MB'
    statement_timeout: '5min'

# Use ICU locale
- name: i18n_db
  template: template0
  locale_provider: icu
  icu_locale: zh-Hans
  encoding: UTF8

# Delete database
- name: old_db
  state: absent

# Rebuild database
- name: test_db
  state: recreate
  baseline: test_init.sql
```

### Execution Flow

`bin/pgsql-db` executes these steps in order:

1. **Validate** - Check dbname parameter and database definition
2. **Delete** (if state=absent/recreate) - Execute DROP DATABASE
3. **Create** (if state=create/recreate) - Execute CREATE DATABASE
4. **Configure** - Execute ALTER DATABASE to set properties
5. **Initialize** - Create schemas, install extensions, execute baseline
6. **Register** - Update Pgbouncer and Grafana data sources

For database access permissions, refer to [ACL: Database Privileges](/docs/concept/sec/ac/#database-privileges).
