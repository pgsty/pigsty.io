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

[**Pigsty Infra repo**](/docs/repo/infra/list) provides latest DuckDB RPM/DEB packages, install directly:

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

- [**`pg_duckdb`**](https://pgext.cloud/e/pg_analytics), an extension by DuckDB official MotherDuck and Hydra
- [**`pg_mooncake`**](https://pgext.cloud/e/pg_mooncake), builds on `pg_duckdb` with columnar engine and sync
- [**`pg_analytics`**](https://pgext.cloud/e/pg_analytics), OLAP on DuckDB, archived
- [**`duckdb_fdw`**](/docs/pgsql/ext/), DuckDB FDW to read/write DuckDB files from PG, not updated yet
