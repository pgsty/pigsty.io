---
title: "OLAP - Analytics"
linkTitle: "OLAP"
description: "DuckDB Integration with FDW & PG Lakehouse, Access Parquet from File/S3, Sharding with Citus/Partman/PlProxy, ..."
weight: 824
icon: fas fa-chart-line
---

## Extension List

There are **25** extensions in **17** packages.

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`citus`](/ext/e/citus) | [`citus`](https://github.com/citusdata/citus) | `14.1.0` | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Distributed PostgreSQL as an extension |
| [`citus_columnar`](/ext/e/citus_columnar) | [`citus`](https://github.com/citusdata/citus) | `14.1.0` | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Citus columnar storage engine |
| [`columnar`](/ext/e/columnar) | [`hydra`](https://github.com/hydradatabase/hydra) | `1.1.2` | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Hydra Columnar extension |
| [`pg_duckdb`](/ext/e/pg_duckdb) | [`pg_duckdb`](https://github.com/duckdb/pg_duckdb) | `1.1.1` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | DuckDB Embedded in Postgres |
| [`pg_mooncake`](/ext/e/pg_mooncake) | [`pg_mooncake`](https://github.com/Mooncake-Labs/pg_mooncake) | `0.2.0` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Columnstore Table in Postgres |
| [`storage_engine`](/ext/e/storage_engine) | [`storage_engine`](https://github.com/saulojb/storage_engine) | `2.4.0` | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | colcompress and rowcompress Table Access Methods with vectorized execution |
| [`pg_clickhouse`](/ext/e/pg_clickhouse) | [`pg_clickhouse`](https://github.com/ClickHouse/pg_clickhouse) | `0.3.2` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | Interfaces to query ClickHouse databases from PostgreSQL |
| [`duckdb_fdw`](/ext/e/duckdb_fdw) | [`duckdb_fdw`](https://github.com/alitrack/duckdb_fdw) | `1.4.3` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | DuckDB Foreign Data Wrapper |
| [`pg_parquet`](/ext/e/pg_parquet) | [`pg_parquet`](https://github.com/CrunchyData/pg_parquet/) | `0.5.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | copy data between Postgres and Parquet |
| [`pg_ducklake`](/ext/e/pg_ducklake) | [`pg_ducklake`](https://github.com/relytcloud/pg_ducklake) | `1.0.0` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | DuckLake lakehouse extension for PostgreSQL, backed by DuckDB and Parquet |
| [`pg_fkpart`](/ext/e/pg_fkpart) | [`pg_fkpart`](https://github.com/lemoineat/pg_fkpart) | `1.7.0` | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Table partitioning by foreign key utility |
| [`pg_partman`](/ext/e/pg_partman) | [`pg_partman`](https://github.com/pgpartman/pg_partman) | `5.4.3` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Extension to manage partitioned tables by time or ID |
| [`plproxy`](/ext/e/plproxy) | [`plproxy`](https://github.com/plproxy/plproxy) | `2.12.0` | <a class="ext-badge ext-badge--license 0bsd" href="/ext/license#0bsd">0BSD</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Database partitioning implemented as procedural language |
| [`pg_strom`](/ext/e/pg_strom) | [`pg_strom`](https://github.com/heterodb/pg-strom) | `6.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PG-Strom - big-data processing acceleration using GPU and NVME |
| [`pg_orca`](/ext/e/pg_orca) | [`pg_orca`](https://github.com/quantumiodb/pgorca) | `1.0.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | ORCA query optimizer as a PostgreSQL extension |
| [`pg_sorted_heap`](/ext/e/pg_sorted_heap) | [`pg_sorted_heap`](https://github.com/skuznetsov/pg_sorted_heap) | `0.14.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Sorted heap table AM with zone map scan pruning and built-in vector search |
| [`pg_lake`](/ext/e/pg_lake) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Data lake extension by Snowflake |
| [`pg_extension_base`](/ext/e/pg_extension_base) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_extension_base) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Extension development kit by Snowflake |
| [`pg_extension_updater`](/ext/e/pg_extension_updater) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_extension_updater) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Automatic extension updater |
| [`pg_map`](/ext/e/pg_map) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_map) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Map type for PostgreSQL, bundled as a required pg_lake component. |
| [`pg_lake_engine`](/ext/e/pg_lake_engine) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_engine) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Query engine for data lake queries |
| [`pg_lake_iceberg`](/ext/e/pg_lake_iceberg) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_iceberg) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Iceberg implementation in Postgres |
| [`pg_lake_table`](/ext/e/pg_lake_table) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_table) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Data lake tables and Iceberg tables |
| [`pg_lake_copy`](/ext/e/pg_lake_copy) | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_copy) | `3.4` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Copy to/from data lake files |
| [`tablefunc`](/ext/e/tablefunc) | [`tablefunc`](https://www.postgresql.org/docs/current/tablefunc.html) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | functions that manipulate whole tables, including crosstab |
{.ext-table}


---------

## citus {#citus}

[**`citus`**](/ext/e/citus) - `14.1.0` : Distributed PostgreSQL as an extension

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`citus`](/ext/e/citus) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`citus`](https://github.com/citusdata/citus) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `citus_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-citus` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## citus_columnar {#citus_columnar}

[**`citus`**](/ext/e/citus_columnar) - `14.1.0` : Citus columnar storage engine

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`citus_columnar`](/ext/e/citus_columnar) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`citus`](https://github.com/citusdata/citus) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `citus_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-citus` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## columnar {#columnar}

[**`hydra`**](/ext/e/columnar) - `1.1.2` : Hydra Columnar extension

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`columnar`](/ext/e/columnar) | **el8** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **Package** | [`hydra`](https://github.com/hydradatabase/hydra) | **el9** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **RPM** | `hydra_$v` | **el10** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **DEB** | `postgresql-$v-hydra` | **d12** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | **u24** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
| | | **u26** | {{< pgvers "16,15,14" >}} | {{< pgvers "16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_duckdb {#pg_duckdb}

[**`pg_duckdb`**](/ext/e/pg_duckdb) - `1.1.1` : DuckDB Embedded in Postgres

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_duckdb`](/ext/e/pg_duckdb) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_duckdb`](https://github.com/duckdb/pg_duckdb) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_duckdb_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-duckdb` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_mooncake {#pg_mooncake}

[**`pg_mooncake`**](/ext/e/pg_mooncake) - `0.2.0` : Columnstore Table in Postgres

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_mooncake`](/ext/e/pg_mooncake) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_mooncake`](https://github.com/Mooncake-Labs/pg_mooncake) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_mooncake_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-mooncake` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## storage_engine {#storage_engine}

[**`storage_engine`**](/ext/e/storage_engine) - `2.4.0` : colcompress and rowcompress Table Access Methods with vectorized execution

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`storage_engine`](/ext/e/storage_engine) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`storage_engine`](https://github.com/saulojb/storage_engine) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `storage_engine_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-storage-engine` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_clickhouse {#pg_clickhouse}

[**`pg_clickhouse`**](/ext/e/pg_clickhouse) - `0.3.2` : Interfaces to query ClickHouse databases from PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_clickhouse`](/ext/e/pg_clickhouse) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_clickhouse`](https://github.com/ClickHouse/pg_clickhouse) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_clickhouse_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-clickhouse` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## duckdb_fdw {#duckdb_fdw}

[**`duckdb_fdw`**](/ext/e/duckdb_fdw) - `1.4.3` : DuckDB Foreign Data Wrapper

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`duckdb_fdw`](/ext/e/duckdb_fdw) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`duckdb_fdw`](https://github.com/alitrack/duckdb_fdw) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `duckdb_fdw_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-duckdb-fdw` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_parquet {#pg_parquet}

[**`pg_parquet`**](/ext/e/pg_parquet) - `0.5.1` : copy data between Postgres and Parquet

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_parquet`](/ext/e/pg_parquet) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_parquet`](https://github.com/CrunchyData/pg_parquet/) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_parquet_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-parquet` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_ducklake {#pg_ducklake}

[**`pg_ducklake`**](/ext/e/pg_ducklake) - `1.0.0` : DuckLake lakehouse extension for PostgreSQL, backed by DuckDB and Parquet

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_ducklake`](/ext/e/pg_ducklake) | **el8** | - | - |
| **Package** | [`pg_ducklake`](https://github.com/relytcloud/pg_ducklake) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_ducklake_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-ducklake` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_fkpart {#pg_fkpart}

[**`pg_fkpart`**](/ext/e/pg_fkpart) - `1.7.0` : Table partitioning by foreign key utility

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_fkpart`](/ext/e/pg_fkpart) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_fkpart`](https://github.com/lemoineat/pg_fkpart) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_fkpart_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-fkpart` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_partman {#pg_partman}

[**`pg_partman`**](/ext/e/pg_partman) - `5.4.3` : Extension to manage partitioned tables by time or ID

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_partman`](/ext/e/pg_partman) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_partman`](https://github.com/pgpartman/pg_partman) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_partman_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-partman` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## plproxy {#plproxy}

[**`plproxy`**](/ext/e/plproxy) - `2.12.0` : Database partitioning implemented as procedural language

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`plproxy`](/ext/e/plproxy) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`plproxy`](https://github.com/plproxy/plproxy) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `plproxy_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-plproxy` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license 0bsd" href="/ext/license#0bsd">0BSD</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_strom {#pg_strom}

[**`pg_strom`**](/ext/e/pg_strom) - `6.1` : PG-Strom - big-data processing acceleration using GPU and NVME

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_strom`](/ext/e/pg_strom) | **el8** | {{< pgvers "18,17,16,15,14" >}} | - |
| **Package** | [`pg_strom`](https://github.com/heterodb/pg-strom) | **el9** | {{< pgvers "18,17,16,15,14" >}} | - |
| **RPM** | `pg_strom_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | - |
| **DEB** | - | **d12** | - | - |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | - | - |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | - | - |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | - | - |
| | | **u26** | - | - |
{.ext-table .ext-table--cate}


---------

## pg_orca {#pg_orca}

[**`pg_orca`**](/ext/e/pg_orca) - `1.0.0` : ORCA query optimizer as a PostgreSQL extension

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_orca`](/ext/e/pg_orca) | **el8** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Package** | [`pg_orca`](https://github.com/quantumiodb/pgorca) | **el9** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **RPM** | `pg_orca_$v` | **el10** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **DEB** | `postgresql-$v-pg-orca` | **d12** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Language** | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | **d13** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| | | **u26** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
{.ext-table .ext-table--cate}


---------

## pg_sorted_heap {#pg_sorted_heap}

[**`pg_sorted_heap`**](/ext/e/pg_sorted_heap) - `0.14.0` : Sorted heap table AM with zone map scan pruning and built-in vector search

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_sorted_heap`](/ext/e/pg_sorted_heap) | **el8** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Package** | [`pg_sorted_heap`](https://github.com/skuznetsov/pg_sorted_heap) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_sorted_heap_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-sorted-heap` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_lake {#pg_lake}

[**`pg_lake`**](/ext/e/pg_lake) - `3.4` : Data lake extension by Snowflake

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_lake`](/ext/e/pg_lake) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_extension_base {#pg_extension_base}

[**`pg_lake`**](/ext/e/pg_extension_base) - `3.4` : Extension development kit by Snowflake

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_extension_base`](/ext/e/pg_extension_base) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_extension_base) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_extension_updater {#pg_extension_updater}

[**`pg_lake`**](/ext/e/pg_extension_updater) - `3.4` : Automatic extension updater

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_extension_updater`](/ext/e/pg_extension_updater) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_extension_updater) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_map {#pg_map}

[**`pg_lake`**](/ext/e/pg_map) - `3.4` : Map type for PostgreSQL, bundled as a required pg_lake component.

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_map`](/ext/e/pg_map) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_map) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_lake_engine {#pg_lake_engine}

[**`pg_lake`**](/ext/e/pg_lake_engine) - `3.4` : Query engine for data lake queries

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_lake_engine`](/ext/e/pg_lake_engine) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_engine) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_lake_iceberg {#pg_lake_iceberg}

[**`pg_lake`**](/ext/e/pg_lake_iceberg) - `3.4` : Iceberg implementation in Postgres

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_lake_iceberg`](/ext/e/pg_lake_iceberg) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_iceberg) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_lake_table {#pg_lake_table}

[**`pg_lake`**](/ext/e/pg_lake_table) - `3.4` : Data lake tables and Iceberg tables

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_lake_table`](/ext/e/pg_lake_table) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_table) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_lake_copy {#pg_lake_copy}

[**`pg_lake`**](/ext/e/pg_lake_copy) - `3.4` : Copy to/from data lake files

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_lake_copy`](/ext/e/pg_lake_copy) | **el8** | - | - |
| **Package** | [`pg_lake`](https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_copy) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_lake_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-lake` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## tablefunc {#tablefunc}

[**`tablefunc`**](/ext/e/tablefunc) - `1.0` : functions that manipulate whole tables, including crosstab

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`tablefunc`](/ext/e/tablefunc) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`tablefunc`](https://www.postgresql.org/docs/current/tablefunc.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}

