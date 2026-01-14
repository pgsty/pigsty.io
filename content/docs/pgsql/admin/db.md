---
title: Managing PostgreSQL Databases
linktitle: Database Admin
weight: 30
description: Database management - create, modify, delete, rebuild, and clone databases using templates
icon: fa-solid fa-coins
module: [PGSQL]
categories: [Task]
---

## Quick Start

Pigsty uses declarative management: first [**define databases**](/docs/pgsql/config/db) in the [**inventory**](/docs/concept/iac/inventory), then use `bin/pgsql-db <cls> <dbname>` to create or modify.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases: [{ name: some_db }]  # <--- Define database list here!
```


{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-db <cls> <dbname>    # Create/modify <dbname> database on <cls> cluster
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-db.yml -l pg-meta -e dbname=some_db    # Use playbook to create/modify database
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-db pg-meta some_db    # Create/modify some_db database on pg-meta cluster
```
{{% /tab %}}
{{< /tabpane >}}

For complete database definition reference, see [**Database Configuration**](/docs/pgsql/config/db). For access permissions, see [**ACL: Database Privileges**](/docs/concept/sec/ac/#database-privileges).

Note: Some parameters can only be specified at **creation time**. Modifying these requires recreating the database (use `state: recreate`).

| Action                            | Command                       | Description                              |
|:----------------------------------|:------------------------------|:-----------------------------------------|
| [**Create Database**](#create-database) | `bin/pgsql-db <cls> <db>` | Create new business database             |
| [**Modify Database**](#modify-database) | `bin/pgsql-db <cls> <db>` | Modify existing database properties      |
| [**Delete Database**](#delete-database) | `bin/pgsql-db <cls> <db>` | Delete database (requires `state: absent`) |
| [**Rebuild Database**](#rebuild-database) | `bin/pgsql-db <cls> <db>` | Drop and recreate (requires `state: recreate`) |
| [**Clone Database**](#clone-database) | `bin/pgsql-db <cls> <db>` | Clone database using template            |
{.full-width}


{{< asciinema file="demo/pgsql-db.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Create Database

Databases defined in [**`pg_databases`**](/docs/pgsql/param#pg_databases) are auto-created during PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster) in the `pg_db` task.

To create a new database on an existing cluster, add [**database definition**](/docs/pgsql/config/db) to `all.children.<cls>.pg_databases`, then execute:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-db <cls> <dbname>   # Create database <dbname>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-db.yml -l <cls> -e dbname=<dbname>   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-db pg-meta myapp    # Create myapp database in pg-meta cluster
```
{{% /tab %}}
{{< /tabpane >}}

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

**Result**: Creates `myapp` database on primary, sets owner to `dbuser_myapp`, creates `app` schema, enables `pg_trgm` and `btree_gin` extensions. Database is auto-added to Pgbouncer pool and registered as Grafana datasource.

{{% alert title="Recommendation: Use playbook" color="secondary" %}}
For manual database creation, you must ensure Pgbouncer pool and Grafana datasource sync yourself.
{{% /alert %}}


----------------

## Modify Database

Same command as create - playbook is idempotent when no `baseline` SQL is defined.

When target database exists, Pigsty modifies properties to match config. However, some properties can only be set at creation.

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-db <cls> <db>   # Modify database <db> properties
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-db.yml -l <cls> -e dbname=<db>   # Idempotent, can repeat
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-db pg-meta myapp    # Modify myapp database to match config
```
{{% /tab %}}
{{< /tabpane >}}


**Immutable properties**: These can't be modified after creation, require `state: recreate`:

- `name` (database name), `template`, `strategy` (clone strategy)
- `encoding`, `locale`/`lc_collate`/`lc_ctype`, `locale_provider`/`icu_locale`/`icu_rules`/`builtin_locale`

All other properties can be modified. Common examples:

**Modify owner**: Update `owner` field, executes `ALTER DATABASE ... OWNER TO` and grants permissions.

```yaml
- name: myapp
  owner: dbuser_new_owner     # New owner
```

**Modify connection limit**: Use `connlimit` to limit max connections.

```yaml
- name: myapp
  connlimit: 100              # Max 100 connections
```

**Revoke public connect**: Setting `revokeconn: true` revokes PUBLIC CONNECT privilege, allowing only owner, DBA, monitor, and replication users.

```yaml
- name: myapp
  owner: dbuser_myapp
  revokeconn: true            # Revoke PUBLIC CONNECT
```

**Manage parameters**: Use `parameters` dict for database-level params, generates `ALTER DATABASE ... SET`. Use special value `DEFAULT` to reset.

```yaml
- name: myapp
  parameters:
    work_mem: '256MB'
    maintenance_work_mem: '512MB'
    statement_timeout: '30s'
    search_path: DEFAULT      # Reset to default
```

**Manage schemas**: Use `schemas` array with simple or extended format. Use `state: absent` to drop (CASCADE).

```yaml
- name: myapp
  schemas:
    - app                                   # Simple form
    - { name: core, owner: dbuser_myapp }   # Specify owner
    - { name: deprecated, state: absent }   # Drop schema
```

**Manage extensions**: Use `extensions` array with simple or extended format. Use `state: absent` to uninstall (CASCADE).

```yaml
- name: myapp
  extensions:
    - postgis                                 # Simple form
    - { name: vector, schema: public }        # Specify schema
    - { name: pg_trgm, state: absent }        # Uninstall extension
```

{{% alert title="CASCADE Warning" color="warning" %}}
Dropping schemas or uninstalling extensions uses `CASCADE`, deleting all dependent objects. Understand impact before executing.
{{% /alert %}}

**Connection pool config**: By default all databases are added to Pgbouncer. Configure `pgbouncer`, `pool_mode`, `pool_size`, `pool_reserve`, `pool_connlimit`.

```yaml
- name: myapp
  pgbouncer: true              # Add to pool (default true)
  pool_mode: transaction       # Pool mode: transaction/session/statement
  pool_size: 64                # Default pool size
  pool_connlimit: 100          # Max database connections
```


----------------

## Delete Database

To delete a database, set `state` to `absent` and execute:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-db <cls> <db>   # Delete <db> (config must have state: absent)
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-db.yml -l <cls> -e dbname=<db>   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-db pg-meta olddb    # Delete olddb (config has state: absent)
```
{{% /tab %}}
{{< /tabpane >}}

**Config example**:

```yaml
pg_databases:
  - name: olddb
    state: absent
```

**Deletion process**: If `is_template: true`, first executes `ALTER DATABASE ... IS_TEMPLATE false`; uses `DROP DATABASE ... WITH (FORCE)` (PG13+) to force drop and terminate all connections; removes from Pgbouncer pool; unregisters from Grafana datasource.

**Protection**: System databases `postgres`, `template0`, `template1` cannot be deleted. Deletion only runs on primary - streaming replication syncs to replicas.

{{% alert title="Danger Warning" color="danger" %}}
Database deletion is **irreversible** - permanently deletes all data. Before executing: ensure recent backup exists, confirm no business uses the database, notify stakeholders.
Pigsty is not responsible for any data loss from database deletion. Use at your own risk.
{{% /alert %}}


----------------

## Rebuild Database

`recreate` state rebuilds database (drop then create):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-db <cls> <db>   # Rebuild <db> (config must have state: recreate)
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-db.yml -l <cls> -e dbname=<db>   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-db pg-meta testdb    # Rebuild testdb (config has state: recreate)
```
{{% /tab %}}
{{< /tabpane >}}

**Config example**:

```yaml
pg_databases:
  - name: testdb
    state: recreate
    owner: dbuser_test
    baseline: test_init.sql    # Execute after rebuild
```

**Use cases**: Test environment reset, clear dev database, modify immutable properties (encoding, locale), restore to initial state.

**Difference from manual DROP + CREATE**: Single command; auto-preserves Pgbouncer and Grafana config; auto-loads `baseline` init script.


----------------

## Clone Database

Clone PostgreSQL databases using PG template mechanism. During cloning, no active connections to template database are allowed.

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-db <cls> <db>   # Clone <db> (config must specify template)
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-db.yml -l <cls> -e dbname=<db>   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-db pg-meta meta_dev    # Clone meta_dev (config has template: meta)
```
{{% /tab %}}
{{< /tabpane >}}

**Config example**:

```yaml
pg_databases:
  - name: meta                   # Source database

  - name: meta_dev
    template: meta               # Use meta as template
    strategy: FILE_COPY          # PG15+ clone strategy, instant on PG18
```

**Instant Clone (PG18+)**: If using PostgreSQL 18+, Pigsty defaults [**`file_copy_method`**](https://www.postgresql.org/docs/current/runtime-config-resource.html#GUC-FILE-COPY-METHOD). With `strategy: FILE_COPY`, database clone completes in ~200ms without copying data files. E.g., cloning 30GB database: normal takes 18s, instant takes 200ms.

**Manual clone**: Ensure all connections to template are terminated:

```sql
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'meta';
CREATE DATABASE meta_dev TEMPLATE meta STRATEGY FILE_COPY;
```

**Limitations**: Instant clone only available on supported filesystems (xfs, brtfs, zfs, apfs); don't use `postgres` database as template; in high-concurrency environments, all template connections must be cleared within clone window (~200ms).


----------------

## Connection Pool Management

[**Connection pool params**](/docs/pgsql/config/db#connection-pool) in database definitions are applied to Pgbouncer when creating/modifying databases.

By default all databases are added to Pgbouncer pool (`pgbouncer: true`). Databases are added to `/etc/pgbouncer/database.txt`. Database-level pool params (`pool_mode`, `pool_size`, etc.) are configured via this file.

Use `postgres` OS user with `pgb` alias to access Pgbouncer admin database. For more pool management, see [**Pgbouncer Management**](/docs/pgsql/admin/pgbouncer).
