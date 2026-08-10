---
title: "duckdb_fdw"
linkTitle: "duckdb_fdw"
description: "DuckDB Foreign Data Wrapper"
weight: 2470
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/alitrack/duckdb_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">alitrack/duckdb_fdw</div>
    <div class="ext-card__desc">https://github.com/alitrack/duckdb_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/duckdb_fdw-1.4.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">duckdb_fdw-1.4.3.tar.gz</div>
    <div class="ext-card__desc">duckdb_fdw-1.4.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`duckdb_fdw`**](/ext/e/duckdb_fdw) | `1.4.3` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2470  | [**`duckdb_fdw`**](/ext/e/duckdb_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_clickhouse`](/ext/e/pg_clickhouse) [`pg_parquet`](/ext/e/pg_parquet) [`pg_lake`](/ext/e/pg_lake) [`aws_s3`](/ext/e/aws_s3) [`file_fdw`](/ext/e/file_fdw) [`pg_bulkload`](/ext/e/pg_bulkload) [`pg_stat_ch`](/ext/e/pg_stat_ch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> depend on pg_duckdb's libduckdb, memory mode is break


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.3` | {{< pgvers "18,17,16,15,14" >}} | `duckdb_fdw` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.3` | {{< pgvers "18,17,16,15,14" >}} | `duckdb_fdw_$v` | `pg_duckdb_$v` |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-duckdb-fdw` | `postgresql-$v-pg-duckdb` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 | AVAIL PIGSTY 1.4.3 1 |
@ el8.x86_64 18 duckdb_fdw_18 duckdb_fdw_18-1.4.3-1PIGSTY.el8.x86_64.rpm pigsty 1.4.3 88.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_18-1.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 duckdb_fdw_18 duckdb_fdw_18-1.4.3-1PIGSTY.el8.aarch64.rpm pigsty 1.4.3 82.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_18-1.4.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 duckdb_fdw_18 duckdb_fdw_18-1.4.3-1PIGSTY.el9.x86_64.rpm pigsty 1.4.3 85.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_18-1.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 duckdb_fdw_18 duckdb_fdw_18-1.4.3-1PIGSTY.el9.aarch64.rpm pigsty 1.4.3 82.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_18-1.4.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 duckdb_fdw_18 duckdb_fdw_18-1.4.3-1PIGSTY.el10.x86_64.rpm pigsty 1.4.3 80.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_18-1.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 duckdb_fdw_18 duckdb_fdw_18-1.4.3-1PIGSTY.el10.aarch64.rpm pigsty 1.4.3 76.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_18-1.4.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb pigsty 1.4.3 210.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb pigsty 1.4.3 203.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb pigsty 1.4.3 211.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb pigsty 1.4.3 205.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb pigsty 1.4.3 225.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb pigsty 1.4.3 221.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb pigsty 1.4.3 214.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb pigsty 1.4.3 210.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb pigsty 1.4.3 212.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb pigsty 1.4.3 209.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 duckdb_fdw_17 duckdb_fdw_17-1.4.3-1PIGSTY.el8.x86_64.rpm pigsty 1.4.3 88.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_17-1.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 duckdb_fdw_17 duckdb_fdw_17-1.4.3-1PIGSTY.el8.aarch64.rpm pigsty 1.4.3 82.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_17-1.4.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 duckdb_fdw_17 duckdb_fdw_17-1.4.3-1PIGSTY.el9.x86_64.rpm pigsty 1.4.3 85.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_17-1.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 duckdb_fdw_17 duckdb_fdw_17-1.4.3-1PIGSTY.el9.aarch64.rpm pigsty 1.4.3 82.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_17-1.4.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 duckdb_fdw_17 duckdb_fdw_17-1.4.3-1PIGSTY.el10.x86_64.rpm pigsty 1.4.3 80.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_17-1.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 duckdb_fdw_17 duckdb_fdw_17-1.4.3-1PIGSTY.el10.aarch64.rpm pigsty 1.4.3 76.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_17-1.4.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb pigsty 1.4.3 209.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb pigsty 1.4.3 203.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb pigsty 1.4.3 211.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb pigsty 1.4.3 204.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb pigsty 1.4.3 273.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb pigsty 1.4.3 268.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb pigsty 1.4.3 213.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb pigsty 1.4.3 210.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb pigsty 1.4.3 212.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb pigsty 1.4.3 209.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 duckdb_fdw_16 duckdb_fdw_16-1.4.3-1PIGSTY.el8.x86_64.rpm pigsty 1.4.3 89.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_16-1.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 duckdb_fdw_16 duckdb_fdw_16-1.4.3-1PIGSTY.el8.aarch64.rpm pigsty 1.4.3 82.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_16-1.4.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 duckdb_fdw_16 duckdb_fdw_16-1.4.3-1PIGSTY.el9.x86_64.rpm pigsty 1.4.3 85.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_16-1.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 duckdb_fdw_16 duckdb_fdw_16-1.4.3-1PIGSTY.el9.aarch64.rpm pigsty 1.4.3 82.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_16-1.4.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 duckdb_fdw_16 duckdb_fdw_16-1.4.3-1PIGSTY.el10.x86_64.rpm pigsty 1.4.3 79.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_16-1.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 duckdb_fdw_16 duckdb_fdw_16-1.4.3-1PIGSTY.el10.aarch64.rpm pigsty 1.4.3 76.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_16-1.4.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb pigsty 1.4.3 209.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb pigsty 1.4.3 203.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb pigsty 1.4.3 211.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb pigsty 1.4.3 204.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb pigsty 1.4.3 272.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb pigsty 1.4.3 267.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb pigsty 1.4.3 213.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb pigsty 1.4.3 210.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb pigsty 1.4.3 212.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb pigsty 1.4.3 208.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 duckdb_fdw_15 duckdb_fdw_15-1.4.3-1PIGSTY.el8.x86_64.rpm pigsty 1.4.3 93.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_15-1.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 duckdb_fdw_15 duckdb_fdw_15-1.4.3-1PIGSTY.el8.aarch64.rpm pigsty 1.4.3 86.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_15-1.4.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 duckdb_fdw_15 duckdb_fdw_15-1.4.3-1PIGSTY.el9.x86_64.rpm pigsty 1.4.3 90.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_15-1.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 duckdb_fdw_15 duckdb_fdw_15-1.4.3-1PIGSTY.el9.aarch64.rpm pigsty 1.4.3 87.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_15-1.4.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 duckdb_fdw_15 duckdb_fdw_15-1.4.3-1PIGSTY.el10.x86_64.rpm pigsty 1.4.3 93.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_15-1.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 duckdb_fdw_15 duckdb_fdw_15-1.4.3-1PIGSTY.el10.aarch64.rpm pigsty 1.4.3 89.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_15-1.4.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb pigsty 1.4.3 213.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb pigsty 1.4.3 207.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb pigsty 1.4.3 215.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb pigsty 1.4.3 208.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb pigsty 1.4.3 283.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb pigsty 1.4.3 279.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb pigsty 1.4.3 225.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb pigsty 1.4.3 222.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb pigsty 1.4.3 224.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb pigsty 1.4.3 220.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 duckdb_fdw_14 duckdb_fdw_14-1.4.3-1PIGSTY.el8.x86_64.rpm pigsty 1.4.3 93.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_14-1.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 duckdb_fdw_14 duckdb_fdw_14-1.4.3-1PIGSTY.el8.aarch64.rpm pigsty 1.4.3 86.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_14-1.4.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 duckdb_fdw_14 duckdb_fdw_14-1.4.3-1PIGSTY.el9.x86_64.rpm pigsty 1.4.3 90.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_14-1.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 duckdb_fdw_14 duckdb_fdw_14-1.4.3-1PIGSTY.el9.aarch64.rpm pigsty 1.4.3 87.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_14-1.4.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 duckdb_fdw_14 duckdb_fdw_14-1.4.3-1PIGSTY.el10.x86_64.rpm pigsty 1.4.3 93.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_14-1.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 duckdb_fdw_14 duckdb_fdw_14-1.4.3-1PIGSTY.el10.aarch64.rpm pigsty 1.4.3 89.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_14-1.4.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb pigsty 1.4.3 213.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb pigsty 1.4.3 207.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb pigsty 1.4.3 215.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb pigsty 1.4.3 208.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb pigsty 1.4.3 283.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb pigsty 1.4.3 279.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb pigsty 1.4.3 225.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb pigsty 1.4.3 222.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb pigsty 1.4.3 224.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-duckdb-fdw postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb pigsty 1.4.3 220.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-14-duckdb-fdw_1.4.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `duckdb_fdw` using `pig build`:

```bash
pig build pkg duckdb_fdw         # build RPM / DEB packages
```


## Install

You can install `duckdb_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install duckdb_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y duckdb_fdw -v 18  # PG 18
pig ext install -y duckdb_fdw -v 17  # PG 17
pig ext install -y duckdb_fdw -v 16  # PG 16
pig ext install -y duckdb_fdw -v 15  # PG 15
pig ext install -y duckdb_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y duckdb_fdw_18       # PG 18
dnf install -y duckdb_fdw_17       # PG 17
dnf install -y duckdb_fdw_16       # PG 16
dnf install -y duckdb_fdw_15       # PG 15
dnf install -y duckdb_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-duckdb-fdw   # PG 18
apt install -y postgresql-17-duckdb-fdw   # PG 17
apt install -y postgresql-16-duckdb-fdw   # PG 16
apt install -y postgresql-15-duckdb-fdw   # PG 15
apt install -y postgresql-14-duckdb-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION duckdb_fdw;
```




## Usage

> [!WARNING] This extension is currently broken and conflict with pg_duckdb & pg_mooncake

### Create Extension

After install the `duckdb_fdw` yum package, you can create the extension inside PostgreSQL database:

```sql
-- create extension
CREATE EXTENSION duckdb_fdw;

-- create duckdb_fdw server
CREATE SERVER duckdb_server FOREIGN DATA WRAPPER duckdb_fdw OPTIONS (database '/tmp/duck.db');

-- create user mapping [OPTIONAL]
-- GRANT USAGE ON FOREIGN SERVER duckdb_server TO PUBLIC;

SELECT duckdb_fdw_version();

-- You can execute duckdb command with `duckdb_execute`, for example, to create a table inside duckdb:
-- create a table in duckdb
SELECT duckdb_execute('duckdb_server', 'CREATE TABLE t1 (a integer,b varchar);');

-- create duckdb foreign table mapping that duckdb table
CREATE FOREIGN TABLE t1 (
    a integer,
    b text
) SERVER duckdb_server OPTIONS (
    table 't1'
);

-- write some data and read it back
INSERT INTO t1 SELECT i AS a,i::text AS b FROM generate_series(1,10) i;
SELECT * FROM t1;
```


You can also import foreign schema from duckdb server, for example, create a table with duckdb cli:

```bash
duckdb /tmp/duck.db

CREATE TABLE t1 (
  a integer,
  b text
);
  
INSERT INTO t1 VALUES (1, 'a'), (2 , 'b'), (3, 'c');
SELECT * FROM t1;
```

Then import the schema into PostgreSQL:

```sql
IMPORT FOREIGN SCHEMA public FROM SERVER duckdb_server INTO public;
```

### Other Resource

- [DuckDB Website](https://duckdb.org/)
- [GitHub: duckdb_fdw](https://github.com/alitrack/duckdb_fdw/)
- [Building libduckdb](https://github.com/digoal/blog/blob/master/202401/20240124_01.md)

