---
title: Default Extensions
weight: 2210
description: PostgreSQL extensions installed by default in Pigsty
icon: fa-brands fa-usb
module: [PGSQL]
categories: [Reference]
tags: [Extension]
---

Pigsty installs and enables some core extensions by default when initializing PostgreSQL clusters.


--------

## Default Installed Extensions

Extensions installed by default via [`pg_packages`](/docs/pgsql/param#pg_packages):

| Extension | Description |
|:-----|:-----|
| `pg_repack` | Handle table bloat online, important maintenance tool |
| `wal2json` | Logical decoding outputs JSON format changes, commonly used in CDC scenarios |

Extensions optionally installed via [`pg_extensions`](/docs/pgsql/param#pg_extensions) (commented by default):

| Extension | Description |
|:-----|:-----|
| `postgis` | Geospatial database extension |
| `timescaledb` | Time-series database extension |
| `pgvector` | Vector data type and indexes |


--------

## Default Enabled Extensions

Extensions enabled by default in all databases via [`pg_default_extensions`](/docs/pgsql/param#pg_default_extensions):

| Extension | Schema | Description |
|:-----|:-------|:-----|
| `pg_stat_statements` | monitor | SQL statement execution statistics |
| `pgstattuple` | monitor | Tuple-level statistics |
| `pg_buffercache` | monitor | Buffer cache inspection |
| `pageinspect` | monitor | Page-level inspection |
| `pg_prewarm` | monitor | Relation prewarming |
| `pg_visibility` | monitor | Visibility map inspection |
| `pg_freespacemap` | monitor | Free space map inspection |
| `postgres_fdw` | public | PostgreSQL foreign data wrapper |
| `file_fdw` | public | File foreign data wrapper |
| `btree_gist` | public | B-tree GiST operator classes |
| `btree_gin` | public | B-tree GIN operator classes |
| `pg_trgm` | public | Trigram matching |
| `intagg` | public | Integer aggregator |
| `intarray` | public | Integer array functions |
| `pg_repack` | - | Online table reorganization |

These extensions provide basic monitoring, operations, and feature enhancement capabilities.


--------

## Default Preloaded Extensions

Extensions preloaded by default into `shared_preload_libraries` via [`pg_libs`](/docs/pgsql/param#pg_libs):

| Extension | Description |
|:-----|:-----|
| `pg_stat_statements` | Track execution statistics of all SQL statements |
| `auto_explain` | Automatically log execution plans for slow queries |

These two extensions provide basic observability and are strongly recommended to keep.


--------

## Customize Default Extensions

You can customize default installed and enabled extensions by modifying configuration parameters:

```yaml
all:
  vars:
    # Modify default extension packages
    pg_packages:
      - pgsql-main pgsql-common
      - pg_repack_$v* wal2json_$v*

    # Modify default installed extensions
    pg_extensions: [ postgis, timescaledb, pgvector ]

    # Modify default preloaded extensions
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'

    # Modify default enabled extensions
    pg_default_extensions:
      - { name: pg_stat_statements, schema: monitor }
      - { name: pg_repack }
      # ... add more
```

For detailed extension usage, please refer to:

- [Quick Start](start): Overview of the extension usage process
- [Extension Introduction](intro): Core concepts of extensions
- [Install Extensions](install): How to install extensions
- [Configure Extensions](config): Preloading and parameter configuration
- [Create Extensions](create): Creating extensions in databases

