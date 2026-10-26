---
title: Introduction
weight: 2202
description: Core concepts of PostgreSQL extensions and the Pigsty extension ecosystem
icon: fas fa-info-circle
module: [PGSQL]
categories: [Reference]
---

Pigsty includes {{< param pgext_count >}} packaged PostgreSQL extensions that are ready to use.


--------

## What are Extensions

PostgreSQL extensions add database functionality without changes to the core code.
An extension typically consists of three parts:

- **Control file** (`.control`): Required, contains extension metadata
- **SQL scripts** (`.sql`): Optional, defines functions, types, operators, and other database objects
- **Dynamic library** (`.so`): Optional, provides high-performance functionality implemented in C

Extensions can add data types, index methods, functions, and operators to PostgreSQL.
They can also add foreign data access, procedural languages, performance monitoring, security auditing, and other features.


--------

## Core Extensions

The following table shows representative extensions that Pigsty includes:

| Extension                                                                | Description                                                                         |
|:-------------------------------------------------------------------------|:------------------------------------------------------------------------------------|
| [**PostGIS**](https://postgis.net/)                                      | Geospatial data types and indexes, de facto GIS standard                            |
| [**TimescaleDB**](https://www.timescale.com/)                            | Time-series database with continuous aggregates, columnar storage, auto-compression |
| [**PGVector**](https://github.com/pgvector/pgvector)                     | Vector data type with HNSW/IVFFlat indexes, essential for AI applications           |
| [**Citus**](https://www.citusdata.com/)                                  | Distributed database with horizontal sharding capabilities                          |
| [**pg_duckdb**](https://github.com/duckdb/pg_duckdb)                     | Embedded DuckDB analytical engine for OLAP acceleration                             |
| [**pg_search**](https://github.com/paradedb/paradedb/tree/dev/pg_search) | ParadeDB search extension, providing BM25 and full-text search capabilities         |
| [**Apache AGE**](https://age.apache.org/)                                | Graph database supporting OpenCypher query language                                 |
| [**pg_graphql**](https://github.com/supabase/pg_graphql)                 | Native GraphQL query support                                                        |

Most extensions can coexist.
You can combine their features to perform tasks that one extension cannot perform alone.


--------

## Extension Categories

Pigsty organizes extensions into 16 categories:

|   Category    | Alias   | Description                 | Typical Extensions                             |
|:-------------:|:--------|:----------------------------|:-----------------------------------------------|
|  Time-series  | `time`  | Time-series data processing | timescaledb, pg_cron, periods                  |
|  Geospatial   | `gis`   | Geospatial data             | postgis, h3, pgrouting                         |
|    Vector     | `rag`   | Vector retrieval and AI     | pgvector, vchord, pg_vectorize                 |
|    Search     | `fts`   | Full-text search            | pgroonga, zhparser, pg_bigm                    |
|   Analytics   | `olap`  | OLAP and analytics          | pg_duckdb, pg_mooncake, citus                  |
|    Feature    | `feat`  | Feature enhancements        | age, pg_graphql, hll, rum                      |
|   Language    | `lang`  | Procedural languages        | plpython3u, pljava, plv8                       |
|     Type      | `type`  | Data types                  | hstore, ltree, ip4r                            |
|    Utility    | `util`  | Utility tools               | http, pg_net, pgjwt                            |
|   Function    | `func`  | Function libraries          | pg_uuidv7, topn, tdigest                       |
|     Admin     | `admin` | Operations management       | pg_repack, pg_squeeze, pgagent                 |
|     Stat      | `stat`  | Monitoring statistics       | pg_stat_statements, pg_qualstats, auto_explain |
|   Security    | `sec`   | Security auditing           | pgaudit, pgsodium, pg_tde                      |
|      FDW      | `fdw`   | Foreign data access         | postgres_fdw, mysql_fdw, oracle_fdw            |
| Compatibility | `sim`   | Database compatibility      | orafce, babelfish                              |
|      ETL      | `etl`   | Data synchronization        | pglogical, wal2json, decoderbufs               |

Use category aliases to install all extensions in a category together.
For example: `pg_extensions: [ pgsql-gis, pgsql-rag ]`.


--------

## Predefined Extension Stacks

Pigsty provides predefined extension stacks for different uses:

| Stack        | Included Extensions                                            |
|:-------------|:---------------------------------------------------------------|
| `gis-stack`  | postgis, pgrouting, pointcloud, h3, q3c, ogr_fdw               |
| `rag-stack`  | pgvector, vchord, pgvectorscale, pg_similarity, pg_tiktoken    |
| `fts-stack`  | pgroonga, pg_bigm, zhparser, hunspell                          |
| `olap-stack` | pg_duckdb, pg_mooncake, timescaledb, pg_partman, plproxy       |
| `feat-stack` | age, hll, rum, pg_graphql, pg_jsonschema, jsquery              |
| `stat-stack` | pg_show_plans, pg_stat_kcache, pg_qualstats, pg_wait_sampling  |
| `supa-stack` | pg_graphql, pg_jsonschema, wrappers, pgvector, pgsodium, vault |

To install an entire stack, add its name to `pg_extensions`.


--------

## Extension Resources

- [**Extension Catalog**](/ext/list): Browse detailed information about all available extensions
- [**Extension Repository**](/ext/repo/): Pigsty extension software repository
- [**pig Package Manager**](/docs/pig/): Command-line extension management tool
- [**GitHub Pigsty**](https://github.com/pgsty/pigsty): Pigsty source code repository
