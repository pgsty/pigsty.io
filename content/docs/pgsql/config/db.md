---
title: Database
weight: 1205
description: How to define and customize PostgreSQL databases through configuration?
icon: fa-solid fa-coins
module: [PGSQL]
categories: [Reference]
---


> In this document, "database" refers to a logical object within a database cluster created with `CREATE DATABASE`.

A PostgreSQL cluster can serve multiple **databases** simultaneously. In Pigsty, you can [**define**](#define-database) required databases in cluster configuration.

Pigsty customizes the `template1` template database - creating default schemas, installing default extensions, configuring default privileges. Newly created databases inherit these settings from `template1`.
You can also specify other template databases via [**`template`**](#template) for instant [**database cloning**](/docs/pgsql/admin/db#clone-database).

By default, all business databases are 1:1 added to [**Pgbouncer**](/docs/concept/arch/pgsql#pgbouncer) [**connection pool**](#connection-pool); [**`pg_exporter`**](/docs/concept/arch/pgsql#pg_exporter) auto-discovers all business databases for in-database object monitoring.
All databases are also registered as PostgreSQL datasources in [**Grafana**](/docs/concept/arch/infra#grafana) on all [**INFRA nodes**](/docs/concept/arch/node#infra-node) for PGCAT dashboards.

----------------

## Define Database

Business databases are defined in cluster param [**`pg_databases`**](/docs/pgsql/param#pg_databases), an array of database definition objects.
During cluster initialization, databases are created **in definition order**, so later databases can use earlier ones as **templates**.

Example from Pigsty demo `pg-meta` cluster:

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

Each database definition is a complex object with fields below. Only `name` is required:

```yaml
- name: meta                      # REQUIRED, `name` is the only mandatory field
  state: create                   # Optional, database state: create (default), absent, recreate
  baseline: cmdb.sql              # Optional, SQL baseline file path (relative to Ansible search path, e.g., files/)
  pgbouncer: true                 # Optional, add to pgbouncer database list? default true
  schemas: [pigsty]               # Optional, additional schemas to create, array of schema names
  extensions:                     # Optional, extensions to install: array of extension objects
    - { name: postgis , schema: public }  # Can specify schema, or omit (installs to first schema in search_path)
    - { name: timescaledb }               # Some extensions create and use fixed schemas
  comment: pigsty meta database   # Optional, database comment/description
  owner: postgres                 # Optional, database owner, defaults to current user
  template: template1             # Optional, template to use, default template1
  strategy: FILE_COPY             # Optional, clone strategy: FILE_COPY or WAL_LOG (PG15+)
  encoding: UTF8                  # Optional, inherits from template/cluster config (UTF8)
  locale: C                       # Optional, inherits from template/cluster config (C)
  lc_collate: C                   # Optional, inherits from template/cluster config (C)
  lc_ctype: C                     # Optional, inherits from template/cluster config (C)
  locale_provider: libc           # Optional, locale provider: libc, icu, builtin (PG15+)
  icu_locale: en-US               # Optional, ICU locale rules (PG15+)
  icu_rules: ''                   # Optional, ICU collation rules (PG16+)
  builtin_locale: C.UTF-8         # Optional, builtin locale provider rules (PG17+)
  tablespace: pg_default          # Optional, default tablespace
  is_template: false              # Optional, mark as template database
  allowconn: true                 # Optional, allow connections, default true
  revokeconn: false               # Optional, revoke public CONNECT privilege, default false
  register_datasource: true       # Optional, register to grafana datasource? default true
  connlimit: -1                   # Optional, connection limit, -1 means unlimited
  parameters:                     # Optional, database-level params via ALTER DATABASE SET
    work_mem: '64MB'
    statement_timeout: '30s'
  pool_auth_user: dbuser_meta     # Optional, auth user for pgbouncer auth_query
  pool_mode: transaction          # Optional, database-level pgbouncer pool mode
  pool_size: 64                   # Optional, database-level pgbouncer default pool size
  pool_reserve: 32                # Optional, database-level pgbouncer reserve pool
  pool_size_min: 0                # Optional, database-level pgbouncer min pool size
  pool_connlimit: 100             # Optional, database-level max database connections
```




----------------

## Parameter Overview

The only **required** field is `name` - a valid, unique database name within the cluster. All other params have sensible defaults.
Parameters marked "**Immutable**" only take effect at creation; changing them requires database recreation.

| Field                                               | Category | Type                 | Attr      | Description                                          |
|-----------------------------------------------------|----------|----------------------|-----------|------------------------------------------------------|
| [**`name`**](#name)                                 | Basic    | `string`             | Required  | Database name, must be valid and unique              |
| [**`state`**](#state)                               | Basic    | `enum`               | Optional  | State: `create` (default), `absent`, `recreate`      |
| [**`owner`**](#owner)                               | Basic    | `string`             | Mutable   | Database owner, defaults to `postgres`               |
| [**`comment`**](#comment)                           | Basic    | `string`             | Mutable   | Database comment                                     |
| [**`template`**](#template)                         | Template | `string`             | Immutable | Template database, default `template1`               |
| [**`strategy`**](#strategy)                         | Template | `enum`               | Immutable | Clone strategy: `FILE_COPY` or `WAL_LOG` (PG15+)     |
| [**`encoding`**](#encoding)                         | Encoding | `string`             | Immutable | Character encoding, default inherited (`UTF8`)       |
| [**`locale`**](#locale)                             | Encoding | `string`             | Immutable | Locale setting, default inherited (`C`)              |
| [**`lc_collate`**](#lc_collate)                     | Encoding | `string`             | Immutable | Collation rule, default inherited (`C`)              |
| [**`lc_ctype`**](#lc_ctype)                         | Encoding | `string`             | Immutable | Character classification, default inherited (`C`)    |
| [**`locale_provider`**](#locale_provider)           | Encoding | `enum`               | Immutable | Locale provider: `libc`, `icu`, `builtin` (PG15+)    |
| [**`icu_locale`**](#icu_locale)                     | Encoding | `string`             | Immutable | ICU locale rules (PG15+)                             |
| [**`icu_rules`**](#icu_rules)                       | Encoding | `string`             | Immutable | ICU collation customization (PG16+)                  |
| [**`builtin_locale`**](#builtin_locale)             | Encoding | `string`             | Immutable | Builtin locale rules (PG17+)                         |
| [**`tablespace`**](#tablespace)                     | Storage  | `string`             | Mutable   | Default tablespace, change triggers data migration   |
| [**`is_template`**](#is_template)                   | Privilege| `bool`               | Mutable   | Mark as template database                            |
| [**`allowconn`**](#allowconn)                       | Privilege| `bool`               | Mutable   | Allow connections, default `true`                    |
| [**`revokeconn`**](#revokeconn)                     | Privilege| `bool`               | Mutable   | Revoke PUBLIC CONNECT privilege                      |
| [**`connlimit`**](#connlimit)                       | Privilege| `int`                | Mutable   | Connection limit, `-1` for unlimited                 |
| [**`baseline`**](#baseline)                         | Init     | `string`             | Mutable   | SQL baseline file path, runs only on first create    |
| [**`schemas`**](#schemas)                           | Init     | `(string\|object)[]` | Mutable   | Schema definitions to create                         |
| [**`extensions`**](#extensions)                     | Init     | `(string\|object)[]` | Mutable   | Extension definitions to install                     |
| [**`parameters`**](#parameters)                     | Init     | `object`             | Mutable   | Database-level parameters                            |
| [**`pgbouncer`**](#pgbouncer)                       | Pool     | `bool`               | Mutable   | Add to connection pool, default `true`               |
| [**`pool_mode`**](#pool_mode)                       | Pool     | `enum`               | Mutable   | Pool mode: `transaction` (default)                   |
| [**`pool_size`**](#pool_size)                       | Pool     | `int`                | Mutable   | Default pool size, default `64`                      |
| [**`pool_size_min`**](#pool_size_min)               | Pool     | `int`                | Mutable   | Min pool size, default `0`                           |
| [**`pool_reserve`**](#pool_reserve)                 | Pool     | `int`                | Mutable   | Reserve pool size, default `32`                      |
| [**`pool_connlimit`**](#pool_connlimit)             | Pool     | `int`                | Mutable   | Max database connections, default `100`              |
| [**`pool_auth_user`**](#pool_auth_user)             | Pool     | `string`             | Mutable   | Auth query user                                      |
| [**`register_datasource`**](#register_datasource)   | Monitor  | `bool`               | Mutable   | Register to Grafana datasource, default `true`       |
{.full-width}


----------------

## Parameter Details

### `name`

String, required. Database name - must be unique within the cluster.

Must be a valid PostgreSQL identifier: max 63 chars, no SQL keywords, starts with letter or underscore, followed by letters, digits, or underscores. Must match: **`^[A-Za-z_][A-Za-z0-9_$]{0,62}$`**

```yaml
- name: myapp              # Simple naming
- name: my_application     # Underscore separated
- name: app_v2             # Version included
```

### `state`

Enum for database operation: `create`, `absent`, or `recreate`. Default `create`.

| State      | Description                                                          |
|------------|----------------------------------------------------------------------|
| `create`   | Default, create or modify database, adjust mutable params if exists  |
| `absent`   | Delete database with `DROP DATABASE WITH (FORCE)`                    |
| `recreate` | Drop then create, for database reset                                 |
{.full-width}

```yaml
- name: myapp                # state defaults to create
- name: olddb
  state: absent              # Delete database
- name: testdb
  state: recreate            # Rebuild database
```

### `owner`

String. Database owner, defaults to [**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu) (`postgres`) if not specified.

Target user must exist. Changing owner executes (old owner retains existing privileges):

Database owner has full control including creating schemas, tables, extensions - useful for multi-tenant scenarios.

```sql
ALTER DATABASE "myapp" OWNER TO "new_owner";
GRANT ALL PRIVILEGES ON DATABASE "myapp" TO "new_owner";
```

### `comment`

String. Database comment, defaults to `business database {name}`.

Set via `COMMENT ON DATABASE`, supports Chinese and special chars (Pigsty auto-escapes quotes). Stored in `pg_database.datacl`, viewable via `\l+`.

```sql
COMMENT ON DATABASE "myapp" IS 'my main application database';
```

```yaml
- name: myapp
  comment: my main application database
```

### `template`

String, **immutable**. Template database for creation, default `template1`.

PostgreSQL's `CREATE DATABASE` clones the template - new database inherits all objects, extensions, schemas, permissions. Pigsty customizes `template1` during cluster init, so new databases inherit these settings.

| Template        | Description                                                      |
|-----------------|------------------------------------------------------------------|
| `template1`     | Default, includes Pigsty pre-configured extensions/schemas/perms |
| `template0`     | Clean template, required for non-default locale providers        |
| Custom database | Use existing database as template for cloning                    |
{.full-width}

When using `icu` or `builtin` locale provider, must specify `template: template0` since `template1` locale settings can't be overridden.

```yaml
- name: myapp_icu
  template: template0        # Required for ICU
  locale_provider: icu
  icu_locale: zh-Hans
```

Using `template0` skips monitoring extensions/schemas and default privileges - allowing fully custom database.


### `strategy`

Enum, immutable. Clone strategy: `FILE_COPY` or `WAL_LOG`. Available PG15+.

| Strategy    | Description                  | Use Case                   |
|-------------|------------------------------|----------------------------|
| `FILE_COPY` | Direct file copy, PG15+ default | Large templates, general   |
| `WAL_LOG`   | Clone via WAL logging        | Small templates, non-blocking |
{.full-width}

`WAL_LOG` doesn't block template connections during clone but less efficient for large templates. Ignored on PG14 and earlier.

```yaml
- name: cloned_db
  template: source_db
  strategy: WAL_LOG          # WAL-based cloning
```

### `encoding`

String, immutable. Character encoding, inherits from template if unspecified (usually `UTF8`).

Strongly recommend `UTF8` unless special requirements. Cannot be changed after creation.

```yaml
- name: legacy_db
  template: template0        # Use template0 for non-default encoding
  encoding: LATIN1
```

### `locale`

String, immutable. Locale setting - sets both `lc_collate` and `lc_ctype`. Inherits from template (usually `C`).

Determines string sort order and character classification. Use `C` or `POSIX` for best performance and cross-platform consistency; use language-specific locales (e.g., `zh_CN.UTF-8`) for proper language sorting.

```yaml
- name: chinese_db
  template: template0
  locale: zh_CN.UTF-8        # Chinese locale
  encoding: UTF8
```

### `lc_collate`

String, immutable. String collation rule. Inherits from template (usually `C`).

Determines `ORDER BY` and comparison results. Common values: `C` (byte order, fastest), `C.UTF-8`, `en_US.UTF-8`, `zh_CN.UTF-8`. Cannot be changed after creation.

```yaml
- name: myapp
  template: template0
  lc_collate: en_US.UTF-8    # English collation
  lc_ctype: en_US.UTF-8
```

### `lc_ctype`

String, immutable. Character classification rule for upper/lower case, digits, letters. Inherits from template (usually `C`).

Affects `upper()`, `lower()`, regex `\w`, etc. Cannot be changed after creation.

### `locale_provider`

Enum, immutable. Locale implementation provider: `libc`, `icu`, or `builtin`. Available PG15+, default `libc`.

| Provider  | Version | Description                                          |
|-----------|---------|------------------------------------------------------|
| `libc`    | -       | OS C library, traditional default, varies by system  |
| `icu`     | PG15+   | ICU library, cross-platform consistent, more langs   |
| `builtin` | PG17+   | PostgreSQL builtin, most efficient, C/C.UTF-8 only   |
{.full-width}

Using `icu` or `builtin` requires `template: template0` with corresponding `icu_locale` or `builtin_locale`.

```yaml
- name: fast_db
  template: template0
  locale_provider: builtin   # Builtin provider, most efficient
  builtin_locale: C.UTF-8
```

### `icu_locale`

String, immutable. ICU locale identifier. Available PG15+ when `locale_provider: icu`.

ICU identifiers follow BCP 47. Common values:

| Value     | Description     |
|-----------|-----------------|
| `en-US`   | US English      |
| `en-GB`   | British English |
| `zh-Hans` | Simplified Chinese |
| `zh-Hant` | Traditional Chinese |
| `ja-JP`   | Japanese        |
| `ko-KR`   | Korean          |
{.full-width}

```yaml
- name: chinese_app
  template: template0
  locale_provider: icu
  icu_locale: zh-Hans        # Simplified Chinese ICU collation
  encoding: UTF8
```

### `icu_rules`

String, immutable. Custom ICU collation rules. Available PG16+.

Allows fine-tuning default sort behavior using [**ICU Collation Customization**](https://unicode-org.github.io/icu/userguide/collation/customization/).

```yaml
- name: custom_sort_db
  template: template0
  locale_provider: icu
  icu_locale: en-US
  icu_rules: '&V << w <<< W'  # Custom V/W sort order
```

### `builtin_locale`

String, immutable. Builtin locale provider rules. Available PG17+ when `locale_provider: builtin`. Values: `C` or `C.UTF-8`.

`builtin` provider is PG17's new builtin implementation - faster than `libc` with consistent cross-platform behavior. Suitable for C/C.UTF-8 collation only.

```yaml
- name: fast_db
  template: template0
  locale_provider: builtin
  builtin_locale: C.UTF-8    # Builtin UTF-8 support
  encoding: UTF8
```

### `tablespace`

String, mutable. Default tablespace, default `pg_default`.

Changing tablespace triggers physical data migration - PostgreSQL moves all objects to new tablespace. Can take long time for large databases, use cautiously.

```yaml
- name: archive_db
  tablespace: slow_hdd       # Archive data on slow storage
```

```sql
ALTER DATABASE "archive_db" SET TABLESPACE "slow_hdd";
```

### `is_template`

Boolean, mutable. Mark database as template, default `false`.

When `true`, any user with `CREATEDB` privilege can use this database as template for cloning. Template databases typically pre-install standard schemas, extensions, and data.

```yaml
- name: app_template
  is_template: true          # Mark as template, allow user cloning
  schemas: [core, api]
  extensions: [postgis, pg_trgm]
```

Deleting `is_template: true` databases: Pigsty first executes `ALTER DATABASE ... IS_TEMPLATE false` then drops.

### `allowconn`

Boolean, mutable. Allow connections, default `true`.

Setting `false` completely disables connections at database level - no user (including superuser) can connect. Used for maintenance or archival purposes.

```yaml
- name: archive_db
  allowconn: false           # Disallow all connections
```

```sql
ALTER DATABASE "archive_db" ALLOW_CONNECTIONS false;
```

### `revokeconn`

Boolean, mutable. Revoke PUBLIC `CONNECT` privilege, default `false`.

When `true`, Pigsty executes:

- Revoke PUBLIC CONNECT, regular users can't connect
- Grant connect to replication user (`replicator`) and monitor user (`dbuser_monitor`)
- Grant connect to admin user (`dbuser_dba`) and owner with `WITH GRANT OPTION`

Setting `false` restores PUBLIC CONNECT privilege.

```yaml
- name: secure_db
  owner: dbuser_secure
  revokeconn: true           # Revoke public connect, only specified users
```

### `connlimit`

Integer, mutable. Max concurrent connections, default `-1` (unlimited).

Positive integer limits max simultaneous sessions. Doesn't affect superusers.

```yaml
- name: limited_db
  connlimit: 50              # Max 50 concurrent connections
```

```sql
ALTER DATABASE "limited_db" CONNECTION LIMIT 50;
```

### `baseline`

String, one-time. SQL baseline file path executed after database creation.

Baseline files typically contain schema definitions, initial data, stored procedures. Path is relative to Ansible search path, usually in `files/`.

Baseline runs only on first creation; skipped if database exists. `state: recreate` re-runs baseline.

```yaml
- name: myapp
  baseline: myapp_schema.sql  # Looks for files/myapp_schema.sql
```

### `schemas`

Array, mutable (add/remove). Schema definitions to create or drop. Elements can be strings or objects.

Simple format - strings for schema names (create only):

```yaml
schemas:
  - app
  - api
  - core
```

Full format - objects for owner and drop operations:

```yaml
schemas:
  - name: app                # Schema name (required)
    owner: dbuser_app        # Schema owner (optional), generates AUTHORIZATION clause
  - name: deprecated
    state: absent            # Drop schema (CASCADE)
```

Create uses `IF NOT EXISTS`; drop uses `CASCADE` (deletes all objects in schema).

```sql
CREATE SCHEMA IF NOT EXISTS "app" AUTHORIZATION "dbuser_app";
DROP SCHEMA IF EXISTS "deprecated" CASCADE;
```

### `extensions`

Array, mutable (add/remove). Extension definitions to install or uninstall. Elements can be strings or objects.

Simple format - strings for extension names (install only):

```yaml
extensions:
  - postgis
  - pg_trgm
  - vector
```

Full format - objects for schema, version, and uninstall:

```yaml
extensions:
  - name: vector             # Extension name (required)
    schema: public           # Install to schema (optional)
    version: '0.5.1'         # Specific version (optional)
  - name: old_extension
    state: absent            # Uninstall extension (CASCADE)
```

Install uses `CASCADE` to auto-install dependencies; uninstall uses `CASCADE` (deletes dependent objects).

```sql
CREATE EXTENSION IF NOT EXISTS "vector" WITH SCHEMA "public" VERSION '0.5.1' CASCADE;
DROP EXTENSION IF EXISTS "old_extension" CASCADE;
```

### `parameters`

Object, mutable. Database-level config params via `ALTER DATABASE ... SET`. Applies to all sessions connecting to this database.

```yaml
- name: analytics
  parameters:
    work_mem: '256MB'
    maintenance_work_mem: '512MB'
    statement_timeout: '5min'
    search_path: 'analytics,public'
```

Use special value `DEFAULT` (case-insensitive) to reset to PostgreSQL default:

```yaml
parameters:
  work_mem: DEFAULT          # Reset to default
  statement_timeout: '30s'   # Set new value
```

```sql
ALTER DATABASE "myapp" SET "work_mem" = DEFAULT;
ALTER DATABASE "myapp" SET "statement_timeout" = '30s';
```

### `pgbouncer`

Boolean, mutable. Add database to Pgbouncer pool list, default `true`.

Setting `false` excludes database from Pgbouncer - clients can't access via connection pool. For internal management databases or direct-connect scenarios.

```yaml
- name: internal_db
  pgbouncer: false           # No connection pool access
```

### `pool_mode`

Enum, mutable. Pgbouncer pool mode: `transaction`, `session`, or `statement`. Default `transaction`.

| Mode          | Description                    | Use Case                |
|---------------|--------------------------------|-------------------------|
| `transaction` | Return connection after txn    | Most OLTP apps, default |
| `session`     | Return connection after session| Apps needing session state |
| `statement`   | Return after each statement    | Simple stateless queries |
{.full-width}

```yaml
- name: session_app
  pool_mode: session         # Session-level pooling
```

### `pool_size`

Integer, mutable. Pgbouncer default pool size, default `64`.

Pool size determines backend connections reserved for this database. Adjust based on workload.

```yaml
- name: high_load_db
  pool_size: 128             # Larger pool for high load
```

### `pool_size_min`

Integer, mutable. Pgbouncer minimum pool size, default `0`.

Values > 0 pre-create specified backend connections for connection warming, reducing first-request latency.

```yaml
- name: latency_sensitive
  pool_size_min: 10          # Pre-warm 10 connections
```

### `pool_reserve`

Integer, mutable. Pgbouncer reserve pool size, default `32`.

When default pool exhausted, Pgbouncer can allocate up to `pool_reserve` additional connections for burst traffic.

```yaml
- name: bursty_db
  pool_size: 64
  pool_reserve: 64           # Allow burst to 128 connections
```

### `pool_connlimit`

Integer, mutable. Max connections via Pgbouncer pool, default `100`.

This is Pgbouncer-level limit, independent of database's `connlimit` param.

```yaml
- name: limited_pool_db
  pool_connlimit: 50         # Pool max 50 connections
```

### `pool_auth_user`

String, mutable. User for Pgbouncer auth query.

Requires [**`pgbouncer_auth_query`**](/docs/pgsql/param#pgbouncer_auth_query) enabled. When set, all Pgbouncer connections to this database use specified user for auth query password verification.

```yaml
- name: myapp
  pool_auth_user: dbuser_monitor  # Use monitor user for auth query
```

### `register_datasource`

Boolean, mutable. Register database to Grafana as PostgreSQL datasource, default `true`.

Set `false` to skip Grafana registration. For temp databases, test databases, or internal databases not needed in monitoring.

```yaml
- name: temp_db
  register_datasource: false  # Don't register to Grafana
```


--------

## Template Inheritance

Many parameters inherit from template database if not explicitly specified. Default template is `template1`, whose encoding settings are determined by cluster init params:

| Cluster Param                                            | Default               | Description         |
|----------------------------------------------------------|-----------------------|---------------------|
| [**`pg_encoding`**](/docs/pgsql/param#pg_encoding)       | `UTF8`                | Cluster encoding    |
| [**`pg_locale`**](/docs/pgsql/param#pg_locale)           | `C` / `C-UTF-8` (if supported) | Cluster locale |
| [**`pg_lc_collate`**](/docs/pgsql/param#pg_lc_collate)   | `C` / `C-UTF-8` (if supported) | Cluster collation |
| [**`pg_lc_ctype`**](/docs/pgsql/param#pg_lc_ctype)       | `C` / `C-UTF-8` (if supported) | Cluster ctype |
{.full-width}

New databases fork from `template1`, which is customized during [**`PG_PROVISION`**](/docs/pgsql/param#pg_provision) with extensions, schemas, and default privileges. Unless you explicitly use another template.

--------

## Deep Customization

Pigsty provides rich customization params. To customize template database, refer to:

- [**`pg_default_roles`**](/docs/pgsql/param#pg_default_roles): Default predefined roles and system users
- [**`pg_default_privileges`**](/docs/pgsql/param#pg_default_privileges): Default privileges for objects created by admin user
- [**`pg_default_schemas`**](/docs/pgsql/param#pg_default_schemas): Default schemas to create
- [**`pg_default_extensions`**](/docs/pgsql/param#pg_default_extensions): Default extensions to create
- [**`pg_default_hba_rules`**](/docs/pgsql/param#pg_default_hba_rules): Default PostgreSQL HBA rules
- [**`pgb_default_hba_rules`**](/docs/pgsql/param#pgb_default_hba_rules): Default Pgbouncer HBA rules

If above configurations don't meet your needs, use [**`pg_init`**](/docs/pgsql/param#pg_init) to specify custom cluster init scripts:

- [**`pg-init`**](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init): Cluster init script
- [**`pg-init-template.sql`**](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql): Template customization SQL
- [**`pg-init-roles.sql`**](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-roles.sql): Default roles SQL



----------------

## Locale Providers

PostgreSQL 15+ introduced **`locale_provider`** for different locale implementations. These are immutable after creation.

Pigsty's [**`configure`**](/docs/concept/iac/configure) wizard selects builtin C.UTF-8/C locale provider based on PG and OS versions.
Databases inherit cluster locale by default. To specify different locale provider, you must use `template0`.

**Using ICU provider (PG15+)**:

```yaml
- name: myapp_icu
  template: template0        # ICU requires template0
  locale_provider: icu
  icu_locale: en-US          # ICU locale rules
  encoding: UTF8
```

**Using builtin provider (PG17+)**:

```yaml
- name: myapp_builtin
  template: template0
  locale_provider: builtin
  builtin_locale: C.UTF-8    # Builtin locale rules
  encoding: UTF8
```

**Provider comparison**: `libc` (traditional, OS-dependent), `icu` (PG15+, cross-platform, feature-rich), `builtin` (PG17+, most efficient C/C.UTF-8).




--------

## Connection Pool

[**Pgbouncer**](/docs/concept/arch/pgsql#pgbouncer) connection pool optimizes short-connection performance, reduces contention, prevents excessive connections from overwhelming database, and provides flexibility during migrations.

Pigsty configures 1:1 connection pool for each PostgreSQL instance, running as same [**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu) (default `postgres` OS user). Pool communicates with database via `/var/run/postgresql` Unix socket.

Pigsty adds all databases in [**`pg_databases`**](/docs/pgsql/param#pg_databases) to pgbouncer by default.
Set [**`pgbouncer: false`**](#pgbouncer) to exclude specific databases.
Pgbouncer database list and config params are defined in `/etc/pgbouncer/database.txt`:

```yaml
meta                        = host=/var/run/postgresql mode=session
grafana                     = host=/var/run/postgresql mode=transaction
bytebase                    = host=/var/run/postgresql auth_user=dbuser_meta
kong                        = host=/var/run/postgresql pool_size=32 reserve_pool=64
gitea                       = host=/var/run/postgresql min_pool_size=10
wiki                        = host=/var/run/postgresql
noco                        = host=/var/run/postgresql
mongo                       = host=/var/run/postgresql
```

When [**creating databases**](/docs/pgsql/admin/db#create-database), Pgbouncer database list is refreshed via online reload - doesn't affect existing connections.
