---
title: Introduction
weight: 2202
description: Core concepts of PostgreSQL extensions and the Pigsty extension ecosystem
icon: fas fa-info-circle
module: [PGSQL]
tags: [Extension]
categories: [Reference]
---

Extensions are the soul of PostgreSQL. Pigsty includes 440+ pre-compiled, out-of-the-box extension plugins, fully unleashing PostgreSQL's potential.


--------

## What are Extensions

PostgreSQL extensions are a modular mechanism that allows enhancing database functionality without modifying the core code.
An extension typically consists of three parts:

- **Control file** (`.control`): Required, contains extension metadata
- **SQL scripts** (`.sql`): Optional, defines functions, types, operators, and other database objects
- **Dynamic library** (`.so`): Optional, provides high-performance functionality implemented in C

Extensions can add to PostgreSQL: new data types, index methods, functions and operators, foreign data access, procedural languages, performance monitoring, security auditing, and more.


--------

## Core Extensions

Among the extensions included in Pigsty, the following are most representative:

| Extension | Description |
|:-----|:-----|
| [**PostGIS**](https://postgis.net/) | Geospatial data types and indexes, de facto GIS standard |
| [**TimescaleDB**](https://www.timescale.com/) | Time-series database with continuous aggregates, columnar storage, auto-compression |
| [**PGVector**](https://github.com/pgvector/pgvector) | Vector data type with HNSW/IVFFlat indexes, essential for AI applications |
| [**Citus**](https://www.citusdata.com/) | Distributed database with horizontal sharding capabilities |
| [**pg_duckdb**](https://github.com/duckdb/pg_duckdb) | Embedded DuckDB analytical engine for OLAP acceleration |
| [**ParadeDB**](https://www.paradedb.com/) | ElasticSearch-level full-text search capabilities |
| [**Apache AGE**](https://age.apache.org/) | Graph database supporting OpenCypher query language |
| [**pg_graphql**](https://github.com/supabase/pg_graphql) | Native GraphQL query support |

Most extensions can coexist and even be combined, creating synergistic effects far greater than the sum of their parts.


--------

## Extension Categories

Pigsty organizes extensions into 16 categories:

| Category | Alias | Description | Typical Extensions |
|:----:|:-----|:-----|:--------|
| Time-series | `time` | Time-series data processing | timescaledb, pg_cron, periods |
| Geospatial | `gis` | Geospatial data | postgis, h3, pgrouting |
| Vector | `rag` | Vector retrieval and AI | pgvector, vchord, pg_vectorize |
| Search | `fts` | Full-text search | pgroonga, zhparser, pg_bigm |
| Analytics | `olap` | OLAP and analytics | pg_duckdb, pg_mooncake, citus |
| Feature | `feat` | Feature enhancements | age, pg_graphql, hll, rum |
| Language | `lang` | Procedural languages | plpython3u, pljava, plv8 |
| Type | `type` | Data types | hstore, ltree, ip4r |
| Utility | `util` | Utility tools | http, pg_net, pgjwt |
| Function | `func` | Function libraries | pg_uuidv7, topn, tdigest |
| Admin | `admin` | Operations management | pg_repack, pg_squeeze, pgagent |
| Stat | `stat` | Monitoring statistics | pg_stat_statements, pg_qualstats, auto_explain |
| Security | `sec` | Security auditing | pgaudit, pgsodium, pg_tde |
| FDW | `fdw` | Foreign data access | postgres_fdw, mysql_fdw, oracle_fdw |
| Compatibility | `sim` | Database compatibility | orafce, babelfish |
| ETL | `etl` | Data synchronization | pglogical, wal2json, decoderbufs |

You can batch install an entire category of extensions using category aliases, for example: `pg_extensions: [ pgsql-gis, pgsql-rag ]`.


--------

## Predefined Extension Stacks

Pigsty provides several predefined extension stacks for convenient scenario-based selection:

| Stack | Included Extensions |
|:-------|:---------|
| `gis-stack` | postgis, pgrouting, pointcloud, h3, q3c, ogr_fdw |
| `rag-stack` | pgvector, vchord, pgvectorscale, pg_similarity, pg_tiktoken |
| `fts-stack` | pgroonga, pg_bigm, zhparser, hunspell |
| `olap-stack` | pg_duckdb, pg_mooncake, timescaledb, pg_partman, plproxy |
| `feat-stack` | age, hll, rum, pg_graphql, pg_jsonschema, jsquery |
| `stat-stack` | pg_show_plans, pg_stat_kcache, pg_qualstats, pg_wait_sampling |
| `supa-stack` | pg_graphql, pg_jsonschema, wrappers, pgvector, pgsodium, vault |

Simply use these names in `pg_extensions` to install the entire stack.


--------

## Extension Resources

- [**Extension Catalog**](https://pgext.cloud/list): Browse detailed information about all available extensions
- [**Extension Repository**](https://pgext.cloud/repo/): Pigsty extension software repository
- [**pig Package Manager**](https://pgext.cloud/pig): Command-line extension management tool
- [**GitHub Pigsty**](https://github.com/pgsty/pigsty): Pigsty source code repository

