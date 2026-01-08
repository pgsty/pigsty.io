---
title: Packages
weight: 2203
description: Extension package aliases and category naming conventions
icon: fa-solid fa-box
module: [PGSQL]
categories: [Reference]
tags: [Extension]
---

Pigsty uses a **package alias** mechanism to simplify extension installation and management.


--------

## Package Alias Mechanism

Managing extensions involves multiple layers of name mapping:

| Layer | Example `pgvector` | Example `postgis` |
|:-----|:----------------|:---------------|
| Extension Name | `vector` | `postgis`, `postgis_topology`, ... |
| Package Alias | `pgvector` | `postgis` |
| RPM Package Name | `pgvector_18` | `postgis36_18*` |
| DEB Package Name | `postgresql-18-pgvector` | `postgresql-18-postgis-3*` |

Pigsty provides a **package alias** abstraction layer, so users don't need to worry about specific RPM/DEB package names:

```yaml
pg_extensions: [ pgvector, postgis, timescaledb ]  # Use package aliases
```

Pigsty automatically translates to the correct package names based on the operating system and PostgreSQL version.

> Note: When using `CREATE EXTENSION`, you use the **extension name** (e.g., `vector`), not the package alias (`pgvector`).


--------

## Category Aliases

All extensions are organized into 16 categories, which can be batch installed using category aliases:

```yaml
# Use generic category aliases (auto-adapt to current PG version)
pg_extensions: [ pgsql-gis, pgsql-rag, pgsql-fts ]

# Or use version-specific category aliases
pg_extensions: [ pg18-gis, pg18-rag, pg18-fts ]
```

Except for the `olap` category, all category extensions can be installed simultaneously. Within the `olap` category, there are conflicts: `pg_duckdb` and `pg_mooncake` are mutually exclusive.


--------

## Category List

| Category | Description | Typical Extensions |
|:----:|:-----|:--------|
| `time` | Time-series | timescaledb, pg_cron, periods |
| `gis` | Geospatial | postgis, h3, pgrouting |
| `rag` | Vector/RAG | pgvector, pgml, vchord |
| `fts` | Full-text Search | pg_trgm, zhparser, pgroonga |
| `olap` | Analytics | citus, pg_duckdb, pg_analytics |
| `feat` | Feature | age, pg_graphql, rum |
| `lang` | Language | plpython3u, pljava, plv8 |
| `type` | Data Type | hstore, ltree, citext |
| `util` | Utility | http, pg_net, pgjwt |
| `func` | Function | pgcrypto, uuid-ossp, pg_uuidv7 |
| `admin` | Admin | pg_repack, pgagent, pg_squeeze |
| `stat` | Statistics | pg_stat_statements, pg_qualstats, auto_explain |
| `sec` | Security | pgaudit, pgcrypto, pgsodium |
| `fdw` | Foreign Data Wrapper | postgres_fdw, mysql_fdw, oracle_fdw |
| `sim` | Compatibility | orafce, babelfishpg_tds |
| `etl` | Data/ETL | pglogical, wal2json, decoderbufs |


--------

## Browse Extension Catalog

You can browse detailed information about all available extensions on the [Pigsty Extension Catalog](https://pgext.cloud/list) website, including:

- Extension name, description, version
- Supported PostgreSQL versions
- Supported OS distributions
- Installation methods, preloading requirements
- License, source repository

