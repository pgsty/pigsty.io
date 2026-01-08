---
title: Create
weight: 2207
description: Create and enable extensions in databases
icon: fas fa-plus-circle
module: [PGSQL]
tags: [Extension]
categories: [Reference]
---

After installing extension packages, you need to execute `CREATE EXTENSION` in the database to use extension features.


--------

## View Available Extensions

After installing extension packages, you can view available extensions:

```sql
-- View all available extensions
SELECT * FROM pg_available_extensions;

-- View specific extension
SELECT * FROM pg_available_extensions WHERE name = 'vector';

-- View enabled extensions
SELECT * FROM pg_extension;
```


--------

## Create Extensions

Use `CREATE EXTENSION` to enable extensions in the database:

```sql
-- Create extension
CREATE EXTENSION vector;

-- Create extension in specific schema
CREATE EXTENSION postgis SCHEMA public;

-- Automatically install dependent extensions
CREATE EXTENSION postgis_topology CASCADE;

-- Create if not exists
CREATE EXTENSION IF NOT EXISTS vector;
```

> Note: `CREATE EXTENSION` uses the **extension name** (e.g., `vector`), not the package alias (`pgvector`).


--------

## Create During Cluster Initialization

Declare extensions in [`pg_databases`](/docs/pgsql/param#pg_databases), and they will be automatically created during cluster initialization:

```yaml
pg-meta:
  vars:
    pg_cluster: pg-meta
    pg_databases:
      - name: meta
        extensions:
          - { name: vector }                         # Use default schema
          - { name: postgis, schema: public }        # Specify schema
          - { name: pg_stat_statements, schema: monitor }
```

Pigsty will automatically execute `CREATE EXTENSION` after database creation.


--------

## Extensions Requiring Preload

Some extensions must be added to `shared_preload_libraries` and restarted before creation:

```yaml
pg-meta:
  vars:
    pg_cluster: pg-meta
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'
    pg_databases:
      - name: meta
        extensions:
          - { name: timescaledb }  # Requires preload
```

If you try to create without preloading, you will receive an error message.

Common extensions requiring preload: `timescaledb`, `citus`, `pg_cron`, `pg_net`, `pgaudit`, etc. See [Configure Extensions](config).


--------

## Extension Dependencies

Some extensions depend on other extensions and need to be created in order:

```sql
-- postgis_topology depends on postgis
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

-- Or use CASCADE to automatically install dependencies
CREATE EXTENSION postgis_topology CASCADE;
```


--------

## Extensions Not Requiring Creation

A few extensions don't provide SQL interfaces and don't need `CREATE EXTENSION`:

| Extension | Description |
|:-----|:-----|
| `wal2json` | Logical decoding plugin, used directly in replication slots |
| `decoderbufs` | Logical decoding plugin |
| `decoder_raw` | Logical decoding plugin |

These extensions can be used immediately after installation, for example:

```sql
-- Create logical replication slot using wal2json
SELECT * FROM pg_create_logical_replication_slot('test_slot', 'wal2json');
```


--------

## View Extension Information

```sql
-- View extension details
\dx+ vector

-- View objects contained in extension
SELECT * FROM pg_extension_config_dump('vector');

-- View extension version
SELECT extversion FROM pg_extension WHERE extname = 'vector';
```

