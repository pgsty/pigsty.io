---
title: "pg_duckdb"
linkTitle: "pg_duckdb"
description: "DuckDB Embedded in Postgres"
weight: 2430
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/duckdb/pg_duckdb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">duckdb/pg_duckdb</div>
    <div class="ext-card__desc">https://github.com/duckdb/pg_duckdb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_duckdb-1.2.1.tar.gz curl-8.23.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_duckdb-1.2.1.tar.gz curl-8.23.0.tar.gz</div>
    <div class="ext-card__desc">pg_duckdb-1.2.1.tar.gz curl-8.23.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_duckdb`**](/ext/e/pg_duckdb) | `1.2.1` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2430  | [**`pg_duckdb`**](/ext/e/pg_duckdb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `duckdb` |
{.ext-table .wide .expand}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_ducklake`](/ext/e/pg_ducklake) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_parquet`](/ext/e/pg_parquet) [`pg_lake`](/ext/e/pg_lake) [`pg_clickhouse`](/ext/e/pg_clickhouse) [`aws_s3`](/ext/e/aws_s3) [`file_fdw`](/ext/e/file_fdw) [`pg_bulkload`](/ext/e/pg_bulkload) [`columnar`](/ext/e/columnar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_mooncake`](/ext/e/pg_mooncake) |
{.ext-table .ext-table--rel}


> DuckDB 2.0.0; preload required; conflicts with duckdb_fdw. pg_mooncake 0.3.0 from the PGSTY fork is compatible; the old 0.2.0 community plugin is not.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_duckdb` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_duckdb_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-duckdb` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 | AVAIL PIGSTY 1.2.1 1 |
@ el9.x86_64 19 pg_duckdb_19 pg_duckdb_19-1.2.1-1PGSTY.el9.x86_64.rpm pigsty 1.2.1 25.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duckdb_19-1.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_duckdb_19 pg_duckdb_19-1.2.1-1PGSTY.el9.aarch64.rpm pigsty 1.2.1 23.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duckdb_19-1.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_duckdb_19 pg_duckdb_19-1.2.1-1PGSTY.el10.x86_64.rpm pigsty 1.2.1 26.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duckdb_19-1.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_duckdb_19 pg_duckdb_19-1.2.1-1PGSTY.el10.aarch64.rpm pigsty 1.2.1 24.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duckdb_19-1.2.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb pigsty 1.2.1 20.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb pigsty 1.2.1 17.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb pigsty 1.2.1 21.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb pigsty 1.2.1 18.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb pigsty 1.2.1 22.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb pigsty 1.2.1 20.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb pigsty 1.2.1 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb pigsty 1.2.1 23.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-duckdb postgresql-19-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb pigsty 1.2.1 21.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-19-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_duckdb_18 pg_duckdb_18-1.2.0-1PGSTY.el8.x86_64.rpm pigsty 1.2.0 24.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duckdb_18-1.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_duckdb_18 pg_duckdb_18-1.2.0-1PGSTY.el8.aarch64.rpm pigsty 1.2.0 21.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duckdb_18-1.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_duckdb_18 pg_duckdb_18-1.2.1-1PGSTY.el9.x86_64.rpm pigsty 1.2.1 25.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duckdb_18-1.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_duckdb_18 pg_duckdb_18-1.2.1-1PGSTY.el9.aarch64.rpm pigsty 1.2.1 23.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duckdb_18-1.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_duckdb_18 pg_duckdb_18-1.2.1-1PGSTY.el10.x86_64.rpm pigsty 1.2.1 26.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duckdb_18-1.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_duckdb_18 pg_duckdb_18-1.2.1-1PGSTY.el10.aarch64.rpm pigsty 1.2.1 24.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duckdb_18-1.2.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb pigsty 1.2.1 20.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb pigsty 1.2.1 17.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb pigsty 1.2.1 21.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb pigsty 1.2.1 18.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb pigsty 1.2.1 22.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb pigsty 1.2.1 20.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb pigsty 1.2.1 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb pigsty 1.2.1 23.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-duckdb postgresql-18-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb pigsty 1.2.1 21.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-18-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_duckdb_17 pg_duckdb_17-1.2.0-1PGSTY.el8.x86_64.rpm pigsty 1.2.0 24.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duckdb_17-1.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_duckdb_17 pg_duckdb_17-1.2.0-1PGSTY.el8.aarch64.rpm pigsty 1.2.0 21.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duckdb_17-1.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_duckdb_17 pg_duckdb_17-1.2.1-1PGSTY.el9.x86_64.rpm pigsty 1.2.1 25.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duckdb_17-1.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_duckdb_17 pg_duckdb_17-1.2.1-1PGSTY.el9.aarch64.rpm pigsty 1.2.1 23.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duckdb_17-1.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_duckdb_17 pg_duckdb_17-1.2.1-1PGSTY.el10.x86_64.rpm pigsty 1.2.1 26.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duckdb_17-1.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_duckdb_17 pg_duckdb_17-1.2.1-1PGSTY.el10.aarch64.rpm pigsty 1.2.1 24.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duckdb_17-1.2.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb pigsty 1.2.1 20.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb pigsty 1.2.1 17.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb pigsty 1.2.1 21.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb pigsty 1.2.1 18.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb pigsty 1.2.1 22.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb pigsty 1.2.1 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb pigsty 1.2.1 23.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-duckdb postgresql-17-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb pigsty 1.2.1 21.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-17-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_duckdb_16 pg_duckdb_16-1.2.0-1PGSTY.el8.x86_64.rpm pigsty 1.2.0 24.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duckdb_16-1.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_duckdb_16 pg_duckdb_16-1.2.0-1PGSTY.el8.aarch64.rpm pigsty 1.2.0 21.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duckdb_16-1.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_duckdb_16 pg_duckdb_16-1.2.1-1PGSTY.el9.x86_64.rpm pigsty 1.2.1 25.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duckdb_16-1.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_duckdb_16 pg_duckdb_16-1.2.1-1PGSTY.el9.aarch64.rpm pigsty 1.2.1 23.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duckdb_16-1.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_duckdb_16 pg_duckdb_16-1.2.1-1PGSTY.el10.x86_64.rpm pigsty 1.2.1 26.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duckdb_16-1.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_duckdb_16 pg_duckdb_16-1.2.1-1PGSTY.el10.aarch64.rpm pigsty 1.2.1 24.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duckdb_16-1.2.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb pigsty 1.2.1 20.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb pigsty 1.2.1 17.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb pigsty 1.2.1 21.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb pigsty 1.2.1 18.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb pigsty 1.2.1 22.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb pigsty 1.2.1 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb pigsty 1.2.1 23.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-duckdb postgresql-16-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb pigsty 1.2.1 21.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-16-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_duckdb_15 pg_duckdb_15-1.2.0-1PGSTY.el8.x86_64.rpm pigsty 1.2.0 24.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duckdb_15-1.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_duckdb_15 pg_duckdb_15-1.2.0-1PGSTY.el8.aarch64.rpm pigsty 1.2.0 21.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duckdb_15-1.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_duckdb_15 pg_duckdb_15-1.2.1-1PGSTY.el9.x86_64.rpm pigsty 1.2.1 25.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duckdb_15-1.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_duckdb_15 pg_duckdb_15-1.2.1-1PGSTY.el9.aarch64.rpm pigsty 1.2.1 23.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duckdb_15-1.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_duckdb_15 pg_duckdb_15-1.2.1-1PGSTY.el10.x86_64.rpm pigsty 1.2.1 26.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duckdb_15-1.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_duckdb_15 pg_duckdb_15-1.2.1-1PGSTY.el10.aarch64.rpm pigsty 1.2.1 24.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duckdb_15-1.2.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb pigsty 1.2.1 20.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb pigsty 1.2.1 17.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb pigsty 1.2.1 21.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb pigsty 1.2.1 18.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb pigsty 1.2.1 22.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb pigsty 1.2.1 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb pigsty 1.2.1 20.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb pigsty 1.2.1 23.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-duckdb postgresql-15-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb pigsty 1.2.1 21.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duckdb/postgresql-15-pg-duckdb_1.2.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_duckdb` using `pig build`:

```bash
pig build pkg pg_duckdb         # build RPM / DEB packages
```


## Install

You can install `pg_duckdb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_duckdb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_duckdb -v 19  # PG 19
pig ext install -y pg_duckdb -v 18  # PG 18
pig ext install -y pg_duckdb -v 17  # PG 17
pig ext install -y pg_duckdb -v 16  # PG 16
pig ext install -y pg_duckdb -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_duckdb_19       # PG 19
dnf install -y pg_duckdb_18       # PG 18
dnf install -y pg_duckdb_17       # PG 17
dnf install -y pg_duckdb_16       # PG 16
dnf install -y pg_duckdb_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-duckdb   # PG 19
apt install -y postgresql-18-pg-duckdb   # PG 18
apt install -y postgresql-17-pg-duckdb   # PG 17
apt install -y postgresql-16-pg-duckdb   # PG 16
apt install -y postgresql-15-pg-duckdb   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_duckdb';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_duckdb;
```

## Usage

Sources:

- [README.md](https://github.com/duckdb/pg_duckdb/blob/v1.2.1/README.md)
- [pg_duckdb.control](https://github.com/duckdb/pg_duckdb/blob/v1.2.1/pg_duckdb.control)
- [settings.md](https://github.com/duckdb/pg_duckdb/blob/v1.2.1/docs/settings.md)
- [functions.md](https://github.com/duckdb/pg_duckdb/blob/v1.2.1/docs/functions.md)
- [transactions.md](https://github.com/duckdb/pg_duckdb/blob/v1.2.1/docs/transactions.md)
- [gotchas_and_syntax.md](https://github.com/duckdb/pg_duckdb/blob/v1.2.1/docs/gotchas_and_syntax.md)
- [v1.2.1](https://github.com/duckdb/pg_duckdb/releases/tag/v1.2.1)

`pg_duckdb` embeds DuckDB's analytical engine in PostgreSQL and can query ordinary PostgreSQL tables and external files. Release 1.2.1 embeds DuckDB 2.0.1; upstream lists PostgreSQL 14–18. It is not relocatable and needs cluster preload.

### Enable and Compare a Query

Add the library to the existing setting, then restart PostgreSQL:

```ini
shared_preload_libraries = 'pg_duckdb'
```

As a superuser, install it and inspect an analytical query:

```sql
CREATE EXTENSION pg_duckdb;
CREATE TABLE orders (category text, amount numeric);
INSERT INTO orders VALUES ('a', 10), ('a', 20), ('b', 5);
SET duckdb.force_execution = true;
EXPLAIN SELECT category, sum(amount) FROM orders GROUP BY category;
SELECT category, sum(amount) FROM orders GROUP BY category;
SET duckdb.force_execution = false;
```

Ordinary queries use PostgreSQL unless forced; DuckDB-only functions or remote storage operations choose DuckDB automatically. Inspect the plan and benchmark representative data. `read_parquet`, `read_csv` and `read_json` read external data, while `duckdb.create_simple_secret` configures storage credentials. Keep secrets out of shared SQL history and verify the access boundary before granting execution.

### Privileges and Configuration

`duckdb.postgres_role` selects the role allowed to execute DuckDB, manage secrets and use MotherDuck data; by default only superusers may do so. A configured role can be created during installation. Grant membership deliberately because it exposes shared DuckDB secrets and data. Local filesystem access is restricted separately through PostgreSQL server-file roles and DuckDB filesystem settings. Community extension loading is an explicit administrator choice.

### Transaction and Compatibility Limits

A transaction may not write both PostgreSQL and DuckDB tables, or mix DDL for both engines. Keep `duckdb.unsafe_allow_mixed_transactions` disabled: bypassing the rule can commit one side only and lose consistency. Execution inside PostgreSQL functions is also disabled by default; the unsafe setting for it has known crash risks.

Version 1.2.1 supports nested fixed-length arrays and improves numeric and floating conversions. It fixes parallel-worker memory reads, cancellation cleanup and secret-bearing log/statistics handling. These fixes do not remove the need to restrict credentials and review type/query compatibility. Install matching libraries, follow preload restart requirements, and update the SQL extension in each database before relying on new behavior.
