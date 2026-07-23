---
title: "pg_lake"
linkTitle: "pg_lake"
description: "Data lake extension by Snowflake"
weight: 2560
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Snowflake-Labs/pg_lake">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Snowflake-Labs/pg_lake</div>
    <div class="ext-card__desc">https://github.com/Snowflake-Labs/pg_lake</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_lake-3.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_lake-3.4.0.tar.gz</div>
    <div class="ext-card__desc">pg_lake-3.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_lake`**](/ext/e/pg_lake) | `3.4` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2560  | [**`pg_lake`**](/ext/e/pg_lake) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `lake` |
| 2561  | [**`pg_extension_base`**](/ext/e/pg_extension_base) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `extension_base` |
| 2562  | [**`pg_extension_updater`**](/ext/e/pg_extension_updater) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `extension_updater` |
| 2563  | [**`pg_map`**](/ext/e/pg_map) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `map_type` |
| 2564  | [**`pg_lake_engine`**](/ext/e/pg_lake_engine) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `__lake__internal__nsp__` |
| 2565  | [**`pg_lake_iceberg`**](/ext/e/pg_lake_iceberg) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `lake_iceberg` |
| 2566  | [**`pg_lake_table`**](/ext/e/pg_lake_table) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `__pg_lake_table_writes` |
| 2567  | [**`pg_lake_copy`**](/ext/e/pg_lake_copy) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pg_lake_copy`](/ext/e/pg_lake_copy) [`pg_lake_table`](/ext/e/pg_lake_table) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_parquet`](/ext/e/pg_parquet) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Pigsty packages this release for PG16-18. Configure shared_preload_libraries=pg_extension_base and run the matching PG-major pgduck_server process. RPM supports EL9/EL10 only; EL8 is rejected because OpenSSL 3 is required. DEB supports Debian 12/13 and Ubuntu 22.04/24.04/26.04 on amd64/arm64. DuckDB and Avro are private per PG major. Co-installation with pg_duckdb, pg_mooncake, and duckdb_fdw is file-safe, but overlapping hooks and COPY behavior can be preload-order-sensitive.
Extension SQL/control version is 3.4; source and DEB/RPM package version is 3.4.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16" >}} | `pg_lake` | `pg_lake_copy`, `pg_lake_table` |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4.0` | {{< pgvers "18,17,16" >}} | `pg_lake_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-lake` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el9.x86_64 18 pg_lake_18 pg_lake_18-3.4.0-2PIGSTY.el9.x86_64.rpm pigsty 3.4.0 19.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lake_18-3.4.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_lake_18 pg_lake_18-3.4.0-2PIGSTY.el9.aarch64.rpm pigsty 3.4.0 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lake_18-3.4.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_lake_18 pg_lake_18-3.4.0-2PIGSTY.el10.x86_64.rpm pigsty 3.4.0 19.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lake_18-3.4.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_lake_18 pg_lake_18-3.4.0-2PIGSTY.el10.aarch64.rpm pigsty 3.4.0 17.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lake_18-3.4.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~bookworm_amd64.deb pigsty 3.4.0 19.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~bookworm_arm64.deb pigsty 3.4.0 16.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~trixie_amd64.deb pigsty 3.4.0 20.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~trixie_arm64.deb pigsty 3.4.0 17.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~jammy_amd64.deb pigsty 3.4.0 19.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~jammy_arm64.deb pigsty 3.4.0 18.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~noble_amd64.deb pigsty 3.4.0 19.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~noble_arm64.deb pigsty 3.4.0 18.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~resolute_amd64.deb pigsty 3.4.0 20.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-lake postgresql-18-pg-lake_3.4.0-2PIGSTY~resolute_arm64.deb pigsty 3.4.0 18.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lake/postgresql-18-pg-lake_3.4.0-2PIGSTY~resolute_arm64.deb
@ el9.x86_64 17 pg_lake_17 pg_lake_17-3.4.0-2PIGSTY.el9.x86_64.rpm pigsty 3.4.0 19.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lake_17-3.4.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_lake_17 pg_lake_17-3.4.0-2PIGSTY.el9.aarch64.rpm pigsty 3.4.0 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lake_17-3.4.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_lake_17 pg_lake_17-3.4.0-2PIGSTY.el10.x86_64.rpm pigsty 3.4.0 19.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lake_17-3.4.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_lake_17 pg_lake_17-3.4.0-2PIGSTY.el10.aarch64.rpm pigsty 3.4.0 17.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lake_17-3.4.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~bookworm_amd64.deb pigsty 3.4.0 19.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~bookworm_arm64.deb pigsty 3.4.0 16.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~trixie_amd64.deb pigsty 3.4.0 20.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~trixie_arm64.deb pigsty 3.4.0 17.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~jammy_amd64.deb pigsty 3.4.0 19.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~jammy_arm64.deb pigsty 3.4.0 18.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~noble_amd64.deb pigsty 3.4.0 19.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~noble_arm64.deb pigsty 3.4.0 18.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~resolute_amd64.deb pigsty 3.4.0 20.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-lake postgresql-17-pg-lake_3.4.0-2PIGSTY~resolute_arm64.deb pigsty 3.4.0 18.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lake/postgresql-17-pg-lake_3.4.0-2PIGSTY~resolute_arm64.deb
@ el9.x86_64 16 pg_lake_16 pg_lake_16-3.4.0-2PIGSTY.el9.x86_64.rpm pigsty 3.4.0 19.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lake_16-3.4.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_lake_16 pg_lake_16-3.4.0-2PIGSTY.el9.aarch64.rpm pigsty 3.4.0 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lake_16-3.4.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_lake_16 pg_lake_16-3.4.0-2PIGSTY.el10.x86_64.rpm pigsty 3.4.0 19.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lake_16-3.4.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_lake_16 pg_lake_16-3.4.0-2PIGSTY.el10.aarch64.rpm pigsty 3.4.0 17.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lake_16-3.4.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~bookworm_amd64.deb pigsty 3.4.0 19.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~bookworm_arm64.deb pigsty 3.4.0 16.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~trixie_amd64.deb pigsty 3.4.0 19.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~trixie_arm64.deb pigsty 3.4.0 17.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~jammy_amd64.deb pigsty 3.4.0 19.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~jammy_arm64.deb pigsty 3.4.0 18.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~noble_amd64.deb pigsty 3.4.0 19.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~noble_arm64.deb pigsty 3.4.0 18.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~resolute_amd64.deb pigsty 3.4.0 20.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-lake postgresql-16-pg-lake_3.4.0-2PIGSTY~resolute_arm64.deb pigsty 3.4.0 18.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lake/postgresql-16-pg-lake_3.4.0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_lake` using `pig build`:

```bash
pig build pkg pg_lake         # build RPM / DEB packages
```


## Install

You can install `pg_lake` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_lake;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_lake -v 18  # PG 18
pig ext install -y pg_lake -v 17  # PG 17
pig ext install -y pg_lake -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_lake_18       # PG 18
dnf install -y pg_lake_17       # PG 17
dnf install -y pg_lake_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-lake   # PG 18
apt install -y postgresql-17-pg-lake   # PG 17
apt install -y postgresql-16-pg-lake   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_extension_base';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_lake CASCADE;  -- requires: pg_lake_copy, pg_lake_table
```

## Usage

Sources:

- [Official pg_lake README](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/README.md)
- [Version 3.4 control file](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_lake/pg_lake.control)
- [Official build and startup guide](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/docs/building-from-source.md)
- [Official project documentation index](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/docs/README.md)

`pg_lake` is the top-level extension for Snowflake's PostgreSQL lakehouse stack. It installs the table, Iceberg, copy, query-engine, extension-base, and map components needed to query object-store files and create transactional Iceberg tables. The PostgreSQL extensions orchestrate planning and transactions while a separate local `pgduck_server` process executes vectorized work with DuckDB.

### Start the Stack

Version `3.4` supports PostgreSQL 16 through 18. Preload the common extension infrastructure, restart PostgreSQL, and start `pgduck_server` on the database host:

```conf
shared_preload_libraries = 'pg_extension_base'
```

```shell
pgduck_server --cache_dir /var/cache/pg_lake
```

Create the complete dependency tree in the target database:

```sql
CREATE EXTENSION pg_lake CASCADE;
SELECT lake.version();
```

Configure object-store credentials for `pgduck_server`, then choose the managed Iceberg location:

```sql
SET pg_lake_iceberg.default_location_prefix =
    's3://analytics-bucket/warehouse';
```

### Core Workflows

Create and modify a transactional Iceberg table:

```sql
CREATE TABLE measurements (
    station_name text NOT NULL,
    measured_at timestamptz NOT NULL,
    value double precision
) USING iceberg;

INSERT INTO measurements VALUES
    ('Istanbul', now(), 18.5),
    ('Haarlem', now(), 9.3);
```

Import or export Parquet, CSV, or newline-delimited JSON through `COPY`:

```sql
COPY (SELECT * FROM measurements)
TO 's3://analytics-bucket/export/measurements.parquet';

COPY measurements
FROM 's3://analytics-bucket/import/measurements.parquet';
```

Query files without loading them into PostgreSQL:

```sql
CREATE FOREIGN TABLE external_events ()
SERVER pg_lake
OPTIONS (path 's3://analytics-bucket/events/*.parquet');

SELECT count(*) FROM external_events;
```

### Component Index

- `pg_lake`: meta-extension and `lake.version()`.
- `pg_lake_table`: data-lake FDW, Iceberg table syntax, file utilities, and table catalogs.
- `pg_lake_iceberg`: Iceberg metadata, snapshots, manifests, and catalog integration.
- `pg_lake_copy`: `COPY` interception for object-store files and lake formats.
- `pg_lake_engine`: shared query rewrite, type conversion, cleanup, and `pgduck_server` client layer.
- `pg_extension_base`: preload and lifecycle-worker infrastructure.
- `pg_map`: generated PostgreSQL map types used for nested lake data.

### Operational Caveats

- `pgduck_server` is required for lake queries and must have working object-store credentials and local socket connectivity from PostgreSQL.
- S3 and compatible credentials are resolved by the DuckDB secrets/credential chain. Grant only the bucket permissions required by the workload.
- Iceberg writes create Parquet files per statement. Batch inserts and run regular `VACUUM` to avoid many small files.
- The PostgreSQL extensions, `pgduck_server`, object-store data, and Iceberg catalog form one deployment unit. Back up and upgrade them as separate evidence layers; creating the extension alone does not prove the external services are usable.
