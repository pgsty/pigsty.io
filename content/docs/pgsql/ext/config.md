---
title: Config
weight: 2206
description: Preload extension libraries and configure extension parameters
icon: fa-solid fa-gears
module: [PGSQL]
categories: [Reference]
---

Some extensions require you to preload dynamic libraries or configure parameters before use.
This section gives the configuration procedures.


--------

## Preload Extensions

After installation, you can enable most extensions with `CREATE EXTENSION`.
Some extensions use PostgreSQL's Hook mechanism and require **preloading**.

Set `shared_preload_libraries` to specify the libraries to preload.
A **database restart** is required to apply the change.

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

For the complete list, see the [Extension Catalog](/ext/list) (marked with `LOAD`).

### Preload Order

Use the required loading order in `shared_preload_libraries`:

- Put `timescaledb` and `citus` **first**.
- If you use both, `citus` should come before `timescaledb`.
- Statistics extensions should come after `pg_stat_statements` to use the same query_id.

```yaml
pg_libs: 'citus, timescaledb, pg_stat_statements, auto_explain'
```


--------

## Configure During Cluster Initialization

For a new cluster, use [`pg_libs`](/docs/pgsql/param#pg_libs) to specify the extensions to preload:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'
    pg_extensions: [ timescaledb, postgis, pgvector ]
```

During cluster initialization, Pigsty writes the value of `pg_libs` to `shared_preload_libraries`.

### Default Value

The default value of [`pg_libs`](/docs/pgsql/param#pg_libs) is `pg_stat_statements, auto_explain`.
These two Contrib extensions provide basic observability:

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

After the change, restart the PostgreSQL service.


--------

## Extension Parameter Configuration

Many extensions have parameters that you can configure in the following locations:

### During Cluster Initialization

Use [`pg_parameters`](/docs/pgsql/param#pg_parameters) to set extension parameters:

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

1. **Preload errors prevent startup**: If an extension in `shared_preload_libraries` does not exist or fails to load, PostgreSQL will not start. Install each extension correctly before you add it to the preload list.

2. **Modification requires restart**: After you change `shared_preload_libraries`, restart the PostgreSQL service to apply the change.

3. **Partial functionality available**: Some extensions provide limited functionality without preloading. Full functionality requires preloading.

4. **View current configuration**: Run this command to show the current preload libraries:

```sql
SHOW shared_preload_libraries;
```
