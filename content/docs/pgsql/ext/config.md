---
title: Config
weight: 2206
description: Preload extension libraries and configure extension parameters
icon: fa-solid fa-gears
module: [PGSQL]
categories: [Reference]
tags: [Extension]
---

Some extensions require preloading dynamic libraries or configuring parameters before use. This section describes how to configure extensions.


--------

## Preload Extensions

Most extensions can be enabled directly with `CREATE EXTENSION` after installation, but some extensions using PostgreSQL's Hook mechanism require **preloading**.

Preloading is specified via the `shared_preload_libraries` parameter and requires a **database restart** to take effect.

### Extensions Requiring Preload

Common extensions that require preloading:

| Extension | Description |
|:-----|:-----|
| `timescaledb` | Time-series database extension, must be placed first |
| `citus` | Distributed database extension, must be placed first |
| `pg_stat_statements` | SQL statement statistics, enabled by default in Pigsty |
| `auto_explain` | Automatically log slow query execution plans, enabled by default in Pigsty |
| `pg_cron` | Scheduled task scheduling |
| `pg_net` | Asynchronous HTTP requests |
| `pg_tle` | Trusted language extensions |
| `pgaudit` | Audit logging |
| `pg_stat_kcache` | Kernel statistics |
| `pg_squeeze` | Online table space reclamation |
| `pgml` | PostgresML machine learning |

For the complete list, see the [Extension Catalog](https://pgext.cloud/list) (marked with `LOAD`).

### Preload Order

The loading order of extensions in `shared_preload_libraries` is important:

- `timescaledb` and `citus` must be placed **first**
- If using both, `citus` should come before `timescaledb`
- Statistics extensions should come after `pg_stat_statements` to use the same query_id

```yaml
pg_libs: 'citus, timescaledb, pg_stat_statements, auto_explain'
```


--------

## Configure During Cluster Initialization

When creating a new cluster, use the [`pg_libs`](/docs/pgsql/param#pg_libs) parameter to specify preloaded extensions:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'
    pg_extensions: [ timescaledb, postgis, pgvector ]
```

The value of `pg_libs` will be written to `shared_preload_libraries` during cluster initialization.

### Default Value

The default value of [`pg_libs`](/docs/pgsql/param#pg_libs) is `pg_stat_statements, auto_explain`. These two Contrib extensions provide basic observability:

- `pg_stat_statements`: Track execution statistics of all SQL statements
- `auto_explain`: Automatically log execution plans for slow queries


--------

## Modify Configuration on Existing Cluster

For initialized clusters, use `patronictl` to modify `shared_preload_libraries`:

```bash
# Add timescaledb to preload libraries
pg edit-config pg-meta --force -p shared_preload_libraries='timescaledb, pg_stat_statements, auto_explain'

# Restart cluster to apply configuration
pg restart pg-meta
```

You can also directly modify `postgresql.conf` or use `ALTER SYSTEM`:

```sql
ALTER SYSTEM SET shared_preload_libraries = 'timescaledb, pg_stat_statements, auto_explain';
```

A PostgreSQL service restart is required after modification.


--------

## Extension Parameter Configuration

Many extensions have configurable parameters that can be set in the following locations:

### During Cluster Initialization

Use the [`pg_parameters`](/docs/pgsql/param#pg_parameters) parameter to specify:

```yaml
pg-meta:
  vars:
    pg_cluster: pg-meta
    pg_libs: 'pg_cron, pg_stat_statements, auto_explain'
    pg_parameters:
      cron.database_name: postgres           # Database used by pg_cron
      pg_stat_statements.track: all          # Track all statements
      auto_explain.log_min_duration: 1000    # Log queries exceeding 1 second
```

### Runtime Modification

Use `ALTER SYSTEM` or `patronictl`:

```sql
-- Modify parameter
ALTER SYSTEM SET pg_stat_statements.track = 'all';

-- Reload configuration
SELECT pg_reload_conf();
```

```bash
# Modify using patronictl
pg edit-config pg-meta --force -p 'pg_stat_statements.track=all'
```


--------

## Important Notes

1. **Preload errors prevent startup**: If an extension in `shared_preload_libraries` doesn't exist or fails to load, PostgreSQL will not start. Ensure extensions are properly installed before adding to preload.

2. **Modification requires restart**: Changes to `shared_preload_libraries` require restarting the PostgreSQL service to take effect.

3. **Partial functionality available**: Some extensions can be partially used without preloading, but full functionality requires preloading.

4. **View current configuration**: Use the following command to view current preload libraries:

```sql
SHOW shared_preload_libraries;
```

