---
title: 'Module: DuckDB'
weight: 5060
description: Install DuckDB, a high-performance embedded analytical database component.
icon: fas fa-crow
module: [DUCKDB]
categories: [Reference]
---


> [DuckDB](https://duckdb.org/) is a fast in-process analytical database: [Installation](#installation) | [Resources](#resources)

--------

## Overview

DuckDB is an embedded database, so it does not require deployment or service management. You only need to install the DuckDB package on the node to use it.


--------

## Installation

Pigsty already provides DuckDB software package (RPM / DEB) in the Infra software repository, you can install it with the following command:

```bash
./node.yml -t node_install  -e '{"node_repo_modules":"infra","node_packages":["duckdb"]}'
```


--------

## Resources

There are some DuckDB-related extension plugins provided by Pigsty for PostgreSQL:

- [**`pg_analytics`**](/docs/pgsql/ext/): Add OLAP capabilities to PostgreSQL based on DuckDB
- [**`pg_lakehouse`**](/docs/pgsql/ext/): Data lakehouse plugin by ParadeDB, wrapping DuckDB. (Currently planned to be renamed back to `pg_analytics`)
- [**`duckdb_fdw`**](/docs/pgsql/ext/): Foreign data wrapper for DuckDB, read/write DuckDB data files from PG
- [**`pg_duckdb`**](/docs/pgsql/ext/): WIP extension plugin by DuckDB official MotherDuck and Hydra (only available on EL systems as a pilot)
