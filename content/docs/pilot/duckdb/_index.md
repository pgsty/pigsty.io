---
title: 'Module: DuckDB'
weight: 5050
description: Install DuckDB, a high-performance embedded analytical database component.
icon: fas fa-crow
module: [PILOT]
categories: [Reference]
---

[DuckDB](https://github.com/duckdb/duckdb/) is a high-performance embedded analytical database.

DuckDB is embedded, so it does not require deployment or service management. Install the DuckDB package on the node and use it directly.


--------

## Installation

The current Pigsty node platform mapping includes the `duckdb` package, which can be installed directly from the Infra repository:

```bash
./node.yml -t node_install  -e '{"node_repo_modules":"infra","node_packages":["duckdb"]}'
```

Install with pig:

```bash
pig repo add infra -u      # add Infra repo
pig install duckdb         # install DuckDB package
```

--------

## Resources

Pigsty provides DuckDB-related PostgreSQL extensions:

- [**`pg_duckdb`**](/ext/e/pg_duckdb), the official DuckDB PostgreSQL extension
- [**`pg_mooncake`**](/ext/e/pg_mooncake), builds on `pg_duckdb` with columnar engine and sync
- [`pg_analytics`](https://github.com/paradedb/pg_analytics), high-performance OLAP built on DuckDB; the project is archived and has been removed from the current Pigsty extension catalog
- [**`duckdb_fdw`**](/ext/e/duckdb_fdw), a DuckDB foreign data wrapper for reading and writing DuckDB files from PostgreSQL
