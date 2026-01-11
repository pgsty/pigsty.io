---
title: Database
weight: 1205
description: Database refers to logical objects created by the SQL command `CREATE
  DATABASE` within a database cluster.
icon: fa-solid fa-coins
module: [PGSQL]
categories: [Reference]
---


> In this context, database refers to logical objects created by the SQL command `CREATE DATABASE` within a database cluster.

A PostgreSQL server can serve multiple **databases** simultaneously. In Pigsty, you can [define](#define-database) the required databases in the cluster config.

Pigsty modifies and customizes the default template database `template1`, creating default schemas, installing default extensions, and configuring default privileges. Newly created databases will inherit these settings from `template1` by default.

By default, all business databases are added 1:1 to the Pgbouncer connection pool; `pg_exporter` will automatically discover all business databases through an **auto-discovery** mechanism and monitor objects within them.


----------------

## Define Database

Business databases are defined in the cluster parameter [`pg_databases`](/docs/pgsql/param#pg_databases), which is an array of database definition objects.
Databases in the array are created sequentially in **definition order**, so databases defined later can use previously defined databases as **templates**.

Here is the database definition in the default `pg-meta` cluster in the Pigsty demo env:

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

Each database definition is an object that may include the following fields, using the `meta` database as an example:

```yaml
- name: meta                      # Required, `name` is the only mandatory field
  state: create                   # Optional, database state: create (default), absent (delete), recreate (rebuild)
  baseline: cmdb.sql              # Optional, SQL baseline file path (relative to ansible search path, e.g., files/)
  pgbouncer: true                 # Optional, add to pgbouncer database list? Default true
  schemas: [pigsty]               # Optional, schemas to create, array of schema names
  extensions:                     # Optional, extensions to install: array of extension objects
    - { name: postgis , schema: public }  # can specify schema for extension
    - { name: timescaledb }               # some extensions create their own fixed schemas
  comment: pigsty meta database   # Optional, database comment
  owner: postgres                 # Optional, database owner, default postgres
  template: template1             # Optional, template to use, default template1
  strategy: FILE_COPY             # Optional, clone strategy: FILE_COPY or WAL_LOG (PG15+)
  encoding: UTF8                  # Optional, inherits from template/cluster config (UTF8)
  locale: C                       # Optional, inherits from template/cluster config (C)
  lc_collate: C                   # Optional, inherits from template/cluster config (C)
  lc_ctype: C                     # Optional, inherits from template/cluster config (C)
  locale_provider: libc           # Optional, locale provider: libc, icu, builtin (PG15+)
  icu_locale: en-US               # Optional, ICU locale rule (PG15+)
  icu_rules: ''                   # Optional, ICU collation rule (PG16+)
  builtin_locale: C.UTF-8         # Optional, builtin locale provider rule (PG17+)
  tablespace: pg_default          # Optional, default tablespace, default 'pg_default'
  is_template: false              # Optional, mark as template database, allows any user with CREATEDB to clone
  allowconn: true                 # Optional, allow connections, default true. Explicit false prohibits all connections
  revokeconn: false               # Optional, revoke public connect privilege. Default false, true revokes CONNECT from non-owner/admin
  register_datasource: true       # Optional, register as grafana datasource? Default true, false skips registration
  connlimit: -1                   # Optional, connection limit, default -1 (no limit)
  parameters:                     # Optional, database-level params via ALTER DATABASE SET
    work_mem: '64MB'
    statement_timeout: '30s'
  pool_auth_user: dbuser_meta     # Optional, auth user for this pgbouncer database (requires pgbouncer_auth_query)
  pool_mode: transaction          # Optional, database-level pgbouncer pool mode, default transaction
  pool_size: 64                   # Optional, database-level pool size, default 64
  pool_reserve: 32                # Optional, database-level pool reserve, default 32
  pool_size_min: 0                # Optional, database-level min pool size, default 0
  pool_connlimit: 100             # Optional, database-level max connections, default 100
```

The only required field is `name`, which should be a valid and unique database name in the current PostgreSQL cluster.


----------------

## Parameter Overview

| Field                 | Category   | Type             | Mutability | Description                                              |
|-----------------------|------------|------------------|------------|----------------------------------------------------------|
| `name`                | Basic      | `string`         | Required   | Database name, must be valid and unique identifier       |
| `state`               | Basic      | `enum`           | Optional   | Database state: `create` (default), `absent`, `recreate` |
| `owner`               | Basic      | `string`         | Mutable    | Database owner, default `postgres`                       |
| `comment`             | Basic      | `string`         | Mutable    | Database comment                                         |
| `template`            | Template   | `string`         | Immutable  | Template database to clone from, default `template1`     |
| `strategy`            | Template   | `enum`           | Immutable  | Clone strategy: `FILE_COPY` or `WAL_LOG` (PG15+)         |
| `encoding`            | Encoding   | `string`         | Immutable  | Character encoding, inherits from template (`UTF8`)      |
| `locale`              | Encoding   | `string`         | Immutable  | Locale rule, inherits from template (`C`)                |
| `lc_collate`          | Encoding   | `string`         | Immutable  | Collation rule, inherits from template (`C`)             |
| `lc_ctype`            | Encoding   | `string`         | Immutable  | Character classification, inherits from template (`C`)   |
| `locale_provider`     | Encoding   | `enum`           | Immutable  | Locale provider: `libc`, `icu`, `builtin` (PG15+)        |
| `icu_locale`          | Encoding   | `string`         | Immutable  | ICU locale rule (PG15+)                                  |
| `icu_rules`           | Encoding   | `string`         | Immutable  | ICU collation custom rule (PG16+)                        |
| `builtin_locale`      | Encoding   | `string`         | Immutable  | Builtin locale provider rule (PG17+)                     |
| `tablespace`          | Storage    | `string`         | Mutable    | Default tablespace, may trigger data migration           |
| `is_template`         | Privilege  | `bool`           | Mutable    | Mark as template database                                |
| `allowconn`           | Privilege  | `bool`           | Mutable    | Allow connections, default `true`                        |
| `revokeconn`          | Privilege  | `bool`           | Mutable    | Revoke PUBLIC CONNECT privilege                          |
| `connlimit`           | Privilege  | `int`            | Mutable    | Connection limit, `-1` means no limit                    |
| `baseline`            | Init       | `string`         | One-time   | SQL baseline file path, runs only on first creation      |
| `schemas`             | Init       | `(string\|object)[]` | Incremental| Schema definitions to create                         |
| `extensions`          | Init       | `object[]`       | Incremental| Extension definitions to install                         |
| `parameters`          | Init       | `object`         | Mutable    | Database-level parameters                                |
| `pgbouncer`           | Pool       | `bool`           | Mutable    | Add to connection pool, default `true`                   |
| `pool_mode`           | Pool       | `enum`           | Mutable    | Pool mode: `transaction` (default)                       |
| `pool_size`           | Pool       | `int`            | Mutable    | Default pool size, default `64`                          |
| `pool_size_min`       | Pool       | `int`            | Mutable    | Min pool size, default `0`                               |
| `pool_reserve`        | Pool       | `int`            | Mutable    | Reserve pool size, default `32`                          |
| `pool_connlimit`      | Pool       | `int`            | Mutable    | Max database connections, default `100`                  |
| `pool_auth_user`      | Pool       | `string`         | Mutable    | Auth query user                                          |
| `register_datasource` | Monitor    | `bool`           | Mutable    | Register to Grafana datasource, default `true`           |


### Mutability Notes

| Mutability  | Meaning                                                |
|-------------|--------------------------------------------------------|
| Required    | Must be specified                                      |
| Optional    | Optional field with default value                      |
| Immutable   | Only effective at creation, requires rebuild to change |
| Mutable     | Can be modified by re-running playbook                 |
| One-time    | Only runs on first creation, skipped if db exists      |
| Incremental | Only adds new content, doesn't remove existing         |


----------------

## Basic Parameters

### `name`

- **Type**: `string`
- **Mutability**: Required
- **Description**: Database name, unique identifier within cluster

Database name should be a valid PostgreSQL identifier. Recommend lowercase letters, digits, and underscores.

```yaml
- name: myapp              # simple naming
- name: my_application     # underscore separated
- name: app_v2             # with version number
```

### `state`

- **Type**: `enum`
- **Mutability**: Optional
- **Default**: `create`
- **Values**: `create`, `absent`, `recreate`
- **Description**: Target database state

| State      | Description                                        |
|------------|----------------------------------------------------|
| `create`   | Create database (default), skip if exists          |
| `absent`   | Delete database via `DROP DATABASE WITH (FORCE)`   |
| `recreate` | Delete then create, used to reset database         |

```yaml
- name: myapp                # state defaults to create
- name: olddb
  state: absent              # delete database
- name: testdb
  state: recreate            # rebuild database
```

### `owner`

- **Type**: `string`
- **Mutability**: Mutable
- **Default**: `postgres` (current user)
- **Description**: Database owner

Specified user must already exist. Changing owner executes:

```sql
ALTER DATABASE "myapp" OWNER TO "new_owner";
GRANT ALL PRIVILEGES ON DATABASE "myapp" TO "new_owner";
```

### `comment`

- **Type**: `string`
- **Mutability**: Mutable
- **Default**: `business database {name}`
- **Description**: Database comment

Executes `COMMENT ON DATABASE` statement. Supports special chars (single quotes auto-escaped).


----------------

## Template & Clone Parameters

### `template`

- **Type**: `string`
- **Mutability**: Immutable
- **Default**: `template1`
- **Description**: Template database for creation

Common templates:

| Template    | Description                                              |
|-------------|----------------------------------------------------------|
| `template1` | Default template, includes Pigsty preconfigured extensions and privileges |
| `template0` | Clean template, required when specifying different encoding/locale |
| Custom DB   | Can use existing database as template to clone           |

**Important**: When using `icu` or `builtin` locale provider, you must specify `template: template0`.

```yaml
- name: myapp_icu
  template: template0        # required when using ICU
  locale_provider: icu
  icu_locale: en-US
```

### `strategy`

- **Type**: `enum`
- **Mutability**: Immutable
- **Version**: PostgreSQL 15+
- **Values**: `FILE_COPY`, `WAL_LOG`
- **Description**: Strategy for cloning from template

| Strategy    | Description                          | Use Case              |
|-------------|--------------------------------------|-----------------------|
| `FILE_COPY` | Direct file copy (PG15+ default)     | Large templates, general use |
| `WAL_LOG`   | Copy via WAL logs                    | Small templates, non-blocking |

Ignored on PostgreSQL 14 and earlier versions.


----------------

## Encoding & Locale Parameters

### `encoding`

- **Type**: `string`
- **Mutability**: Immutable
- **Default**: Inherits from template (usually `UTF8`)
- **Description**: Database character encoding

Common encodings: `UTF8`, `LATIN1`, `SQL_ASCII`

### `locale`

- **Type**: `string`
- **Mutability**: Immutable
- **Default**: Inherits from template (usually `C`)
- **Description**: Database locale rule, sets both `lc_collate` and `lc_ctype`

### `lc_collate`

- **Type**: `string`
- **Mutability**: Immutable
- **Default**: Inherits from template (usually `C`)
- **Description**: String collation rule

Common values: `C`, `C.UTF-8`, `en_US.UTF-8`, `zh_CN.UTF-8`

### `lc_ctype`

- **Type**: `string`
- **Mutability**: Immutable
- **Default**: Inherits from template (usually `C`)
- **Description**: Character classification rule (upper/lower case, digits, etc.)

### `locale_provider`

- **Type**: `enum`
- **Mutability**: Immutable
- **Version**: PostgreSQL 15+
- **Values**: `libc`, `icu`, `builtin`
- **Default**: `libc`
- **Description**: Locale implementation provider

| Provider  | Version | Description                                      |
|-----------|---------|--------------------------------------------------|
| `libc`    | -       | Uses OS C library, traditional default           |
| `icu`     | PG15+   | Uses ICU library, cross-platform consistent      |
| `builtin` | PG17+   | PostgreSQL built-in, most efficient for C/C.UTF-8|

**Note**: When using `icu` or `builtin`, you must specify `template: template0`.

### `icu_locale`

- **Type**: `string`
- **Mutability**: Immutable
- **Version**: PostgreSQL 15+
- **Description**: ICU locale identifier

Common values:

| Value      | Description    |
|------------|----------------|
| `en-US`    | American English |
| `en-GB`    | British English |
| `zh-Hans`  | Simplified Chinese |
| `zh-Hant`  | Traditional Chinese |
| `ja-JP`    | Japanese       |
| `ko-KR`    | Korean         |

```yaml
- name: chinese_db
  template: template0
  locale_provider: icu
  icu_locale: zh-Hans
  encoding: UTF8
```

### `icu_rules`

- **Type**: `string`
- **Mutability**: Immutable
- **Version**: PostgreSQL 16+
- **Description**: ICU collation custom rule

Used to customize sorting behavior with ICU rule syntax.

```yaml
- name: custom_sort_db
  template: template0
  locale_provider: icu
  icu_locale: en-US
  icu_rules: '&V << w <<< W'  # customize V/W sorting
```

### `builtin_locale`

- **Type**: `string`
- **Mutability**: Immutable
- **Version**: PostgreSQL 17+
- **Values**: `C`, `C.UTF-8`
- **Description**: Builtin locale provider rule

`builtin` provider is faster than `libc`, especially suitable when only `C` or `C.UTF-8` collation is needed.

```yaml
- name: fast_db
  template: template0
  locale_provider: builtin
  builtin_locale: C.UTF-8
  encoding: UTF8
```


----------------

## Storage & Privilege Parameters

### `tablespace`

- **Type**: `string`
- **Mutability**: Mutable
- **Default**: `pg_default`
- **Description**: Database default tablespace

Changing tablespace triggers physical data migration, may take long time for large databases.

```yaml
- name: archive_db
  tablespace: slow_hdd       # use slow storage for archive data
```

### `is_template`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Mark as template database

When set to `true`, any user with `CREATEDB` privilege can use this database as template to clone new databases.

```yaml
- name: app_template
  is_template: true          # allow normal users to clone
  schemas: [core, api]
  extensions: [postgis]
```

**Note**: Databases marked `is_template: true` will first execute `ALTER DATABASE ... IS_TEMPLATE false` when deleted.

### `allowconn`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `true`
- **Description**: Allow connections to this database

Setting to `false` completely prohibits any user from connecting (including superusers).

```yaml
- name: archive_db
  allowconn: false           # prohibit connections
```

### `revokeconn`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `false`
- **Description**: Revoke PUBLIC CONNECT privilege

When set to `true`:
- Revokes PUBLIC CONNECT privilege
- Grants replicator, monitor connection privilege
- Grants admin, owner connection privilege (WITH GRANT OPTION)

When set to `false`:
- Restores PUBLIC CONNECT privilege

```yaml
- name: secure_db
  owner: dbuser_secure
  revokeconn: true           # only specified users can connect
```

### `connlimit`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `-1` (no limit)
- **Description**: Database max connection limit

```yaml
- name: limited_db
  connlimit: 50              # max 50 concurrent connections
```


----------------

## Initialization Parameters

### `baseline`

- **Type**: `string`
- **Mutability**: One-time
- **Description**: SQL baseline file path

Specifies SQL file to execute after database creation for initializing table structure, data, etc.

- Path is relative to Ansible search path (usually `files/` directory)
- Only executes on first database creation
- Re-executes when using `state: recreate`

```yaml
- name: myapp
  baseline: myapp_init.sql   # will search files/myapp_init.sql
```

### `schemas`

- **Type**: `(string | object)[]`
- **Mutability**: Incremental
- **Description**: Schema definitions to create

Supports two formats:

```yaml
schemas:
  # Simple format: schema name only
  - app
  - api

  # Full format: object definition
  - name: core               # schema name (required)
    owner: dbuser_app        # schema owner (optional)
  - name: old_schema
    state: absent            # delete schema
```

**Schema owner**: Use `owner` to specify schema owner, generates `AUTHORIZATION` clause:

```yaml
- name: myapp
  owner: dbuser_myapp
  schemas:
    - name: app
      owner: dbuser_myapp    # schema owner same as database owner
    - name: audit
      owner: dbuser_audit    # schema owner is different user
```

Generated SQL:
```sql
CREATE SCHEMA IF NOT EXISTS "app" AUTHORIZATION "dbuser_myapp";
CREATE SCHEMA IF NOT EXISTS "audit" AUTHORIZATION "dbuser_audit";
```

**Delete schema**: Use `state: absent` to delete schema:

```yaml
schemas:
  - { name: deprecated_schema, state: absent }
```

Generated SQL:
```sql
DROP SCHEMA IF EXISTS "deprecated_schema" CASCADE;
```

**Note**:
- Create operations are incremental, uses `IF NOT EXISTS`
- Delete operations use `CASCADE`, deletes all objects in schema

### `extensions`

- **Type**: `object[]`
- **Mutability**: Incremental
- **Description**: Extension definitions to install

Supports two formats:

```yaml
extensions:
  # Simple format: extension name only
  - postgis
  - pg_trgm

  # Full format: object definition
  - name: vector             # extension name (required)
    schema: public           # install to specified schema (optional)
    version: '0.5.1'         # specify version (optional)
    state: absent            # set absent to uninstall extension (optional)
```

**Uninstall extension**: Use `state: absent` to uninstall:

```yaml
extensions:
  - { name: pg_trgm, state: absent }  # uninstall pg_trgm
```

Uninstall executes `DROP EXTENSION IF EXISTS "name" CASCADE`. Note `CASCADE` deletes dependent objects.

### `parameters`

- **Type**: `object`
- **Mutability**: Mutable
- **Description**: Database-level config parameters

Set via `ALTER DATABASE ... SET`, params apply to all sessions connecting to this database.

```yaml
- name: analytics
  parameters:
    work_mem: '256MB'
    maintenance_work_mem: '512MB'
    statement_timeout: '5min'
    search_path: 'analytics,public'
```

**Reset parameter**: Use special value `DEFAULT` (case-insensitive) to reset to PostgreSQL default:

```yaml
- name: myapp
  parameters:
    work_mem: DEFAULT        # reset to default
    statement_timeout: '30s' # set new value
```

Generated SQL:
```sql
ALTER DATABASE "myapp" SET "work_mem" = DEFAULT;
ALTER DATABASE "myapp" SET "statement_timeout" = '30s';
```


----------------

## Connection Pool Parameters

These params control database behavior in Pgbouncer connection pool.

### `pgbouncer`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `true`
- **Description**: Add database to Pgbouncer connection pool

```yaml
- name: internal_db
  pgbouncer: false           # not accessed via connection pool
```

### `pool_mode`

- **Type**: `enum`
- **Mutability**: Mutable
- **Values**: `transaction`, `session`, `statement`
- **Default**: `transaction`
- **Description**: Database-level pool mode

| Mode          | Description                        | Use Case                |
|---------------|------------------------------------|-------------------------|
| `transaction` | Return connection after txn        | Most OLTP apps          |
| `session`     | Return connection after session    | Apps needing session state |
| `statement`   | Return connection after statement  | Simple stateless queries |

### `pool_size`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `64`
- **Description**: Database default pool size

### `pool_size_min`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `0`
- **Description**: Minimum pool size, pre-warmed connections

### `pool_reserve`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `32`
- **Description**: Reserve connections, extra burst connections available when default pool exhausted

### `pool_connlimit`

- **Type**: `int`
- **Mutability**: Mutable
- **Default**: `100`
- **Description**: Max connections accessing this database via pool

### `pool_auth_user`

- **Type**: `string`
- **Mutability**: Mutable
- **Description**: Auth query user

Requires [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) enabled.
When specified, all connections to this database use this user to query passwords.


----------------

## Monitoring Parameter

### `register_datasource`

- **Type**: `bool`
- **Mutability**: Mutable
- **Default**: `true`
- **Description**: Register to Grafana datasource

Set to `false` to skip Grafana datasource registration, suitable for temporary databases not needing monitoring.


----------------

## Template Inheritance

Many params inherit from template database if not explicitly specified. Default template is `template1`, whose encoding settings are determined by cluster init params:

| Cluster Parameter                                     | Default  | Description          |
|-------------------------------------------------------|----------|----------------------|
| [`pg_encoding`](/docs/pgsql/param#pg_encoding)        | `UTF8`   | Cluster default encoding |
| [`pg_locale`](/docs/pgsql/param#pg_locale)            | `C`      | Cluster default locale |
| [`pg_lc_collate`](/docs/pgsql/param#pg_lc_collate)    | `C`      | Cluster default collation |
| [`pg_lc_ctype`](/docs/pgsql/param#pg_lc_ctype)        | `C`      | Cluster default ctype |

Newly created databases are forked from `template1` by default. This template database is customized during [`PG_PROVISION`](/docs/pgsql/param#pg_provision) phase:
configured with extensions, schemas, and default privileges, so newly created databases also inherit these configs, unless you explicitly use another database as template.

For database management operations, see [Database Management](/docs/pgsql/admin/db).

For database access privileges, see [ACL: Database Privileges](/docs/concept/sec/ac/#database-privileges).
