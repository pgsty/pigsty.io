---
title: "pg_clickhouse"
linkTitle: "pg_clickhouse"
description: "Interfaces to query ClickHouse databases from PostgreSQL"
weight: 2460
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ClickHouse/pg_clickhouse">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ClickHouse/pg_clickhouse</div>
    <div class="ext-card__desc">https://github.com/ClickHouse/pg_clickhouse</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_clickhouse-0.10.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_clickhouse-0.10.0.tar.gz</div>
    <div class="ext-card__desc">pg_clickhouse-0.10.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_clickhouse`**](/ext/e/pg_clickhouse) | `0.10.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2460  | [**`pg_clickhouse`**](/ext/e/pg_clickhouse) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_stat_ch`](/ext/e/pg_stat_ch) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_lake`](/ext/e/pg_lake) [`hdfs_fdw`](/ext/e/hdfs_fdw) [`kafka_fdw`](/ext/e/kafka_fdw) [`aws_s3`](/ext/e/aws_s3) [`pg_parquet`](/ext/e/pg_parquet) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release v0.10.0, control SQL version 0.10; preloading is optional; no llvmjit subpackage on el9.x86_64 in the 2026-08-12 build.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.10.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_clickhouse` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.10.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_clickhouse_$v` | `openssl`, `libcurl`, `libuuid`, `lz4-libs`, `libzstd` |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.10.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-clickhouse` | `libssl3 | libssl3t64`, `libcurl4 | libcurl4t64`, `libuuid1`, `liblz4-1`, `libzstd1` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 | AVAIL PIGSTY 0.10.0 1 |
@ el8.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.10.0-1PIGSTY.el8.x86_64.rpm pigsty 0.10.0 169.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_18-0.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.10.0-1PIGSTY.el8.aarch64.rpm pigsty 0.10.0 167.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_18-0.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.10.0-1PIGSTY.el9.x86_64.rpm pigsty 0.10.0 165.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_18-0.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.10.0-1PIGSTY.el9.aarch64.rpm pigsty 0.10.0 162.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_18-0.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.10.0-1PIGSTY.el10.x86_64.rpm pigsty 0.10.0 162.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_18-0.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.10.0-1PIGSTY.el10.aarch64.rpm pigsty 0.10.0 165.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_18-0.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb pigsty 0.10.0 446.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb pigsty 0.10.0 439.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb pigsty 0.10.0 447.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb pigsty 0.10.0 442.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb pigsty 0.10.0 467.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb pigsty 0.10.0 468.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~noble_amd64.deb pigsty 0.10.0 446.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~noble_arm64.deb pigsty 0.10.0 449.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb pigsty 0.10.0 444.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb pigsty 0.10.0 445.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.10.0-1PIGSTY.el8.x86_64.rpm pigsty 0.10.0 169.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_17-0.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.10.0-1PIGSTY.el8.aarch64.rpm pigsty 0.10.0 167.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_17-0.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.10.0-1PIGSTY.el9.x86_64.rpm pigsty 0.10.0 165.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_17-0.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.10.0-1PIGSTY.el9.aarch64.rpm pigsty 0.10.0 162.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_17-0.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.10.0-1PIGSTY.el10.x86_64.rpm pigsty 0.10.0 162.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_17-0.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.10.0-1PIGSTY.el10.aarch64.rpm pigsty 0.10.0 164.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_17-0.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb pigsty 0.10.0 446.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb pigsty 0.10.0 439.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb pigsty 0.10.0 447.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb pigsty 0.10.0 442.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb pigsty 0.10.0 524.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb pigsty 0.10.0 525.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~noble_amd64.deb pigsty 0.10.0 446.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~noble_arm64.deb pigsty 0.10.0 448.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb pigsty 0.10.0 444.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb pigsty 0.10.0 445.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.10.0-1PIGSTY.el8.x86_64.rpm pigsty 0.10.0 169.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_16-0.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.10.0-1PIGSTY.el8.aarch64.rpm pigsty 0.10.0 167.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_16-0.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.10.0-1PIGSTY.el9.x86_64.rpm pigsty 0.10.0 165.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_16-0.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.10.0-1PIGSTY.el9.aarch64.rpm pigsty 0.10.0 162.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_16-0.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.10.0-1PIGSTY.el10.x86_64.rpm pigsty 0.10.0 162.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_16-0.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.10.0-1PIGSTY.el10.aarch64.rpm pigsty 0.10.0 164.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_16-0.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb pigsty 0.10.0 446.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb pigsty 0.10.0 439.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb pigsty 0.10.0 447.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb pigsty 0.10.0 441.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb pigsty 0.10.0 519.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb pigsty 0.10.0 520.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~noble_amd64.deb pigsty 0.10.0 446.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~noble_arm64.deb pigsty 0.10.0 448.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb pigsty 0.10.0 443.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb pigsty 0.10.0 445.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.10.0-1PIGSTY.el8.x86_64.rpm pigsty 0.10.0 173.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_15-0.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.10.0-1PIGSTY.el8.aarch64.rpm pigsty 0.10.0 170.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_15-0.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.10.0-1PIGSTY.el9.x86_64.rpm pigsty 0.10.0 168.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_15-0.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.10.0-1PIGSTY.el9.aarch64.rpm pigsty 0.10.0 170.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_15-0.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.10.0-1PIGSTY.el10.x86_64.rpm pigsty 0.10.0 171.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_15-0.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.10.0-1PIGSTY.el10.aarch64.rpm pigsty 0.10.0 173.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_15-0.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb pigsty 0.10.0 449.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb pigsty 0.10.0 442.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb pigsty 0.10.0 450.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb pigsty 0.10.0 444.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb pigsty 0.10.0 526.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb pigsty 0.10.0 526.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~noble_amd64.deb pigsty 0.10.0 453.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~noble_arm64.deb pigsty 0.10.0 455.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb pigsty 0.10.0 450.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb pigsty 0.10.0 452.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.10.0-1PIGSTY.el8.x86_64.rpm pigsty 0.10.0 173.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_14-0.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.10.0-1PIGSTY.el8.aarch64.rpm pigsty 0.10.0 170.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_14-0.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.10.0-1PIGSTY.el9.x86_64.rpm pigsty 0.10.0 168.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_14-0.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.10.0-1PIGSTY.el9.aarch64.rpm pigsty 0.10.0 170.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_14-0.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.10.0-1PIGSTY.el10.x86_64.rpm pigsty 0.10.0 171.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_14-0.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.10.0-1PIGSTY.el10.aarch64.rpm pigsty 0.10.0 173.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_14-0.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb pigsty 0.10.0 449.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb pigsty 0.10.0 442.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb pigsty 0.10.0 450.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb pigsty 0.10.0 445.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb pigsty 0.10.0 526.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb pigsty 0.10.0 526.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~noble_amd64.deb pigsty 0.10.0 453.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~noble_arm64.deb pigsty 0.10.0 455.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb pigsty 0.10.0 450.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb pigsty 0.10.0 452.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.10.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_clickhouse` using `pig build`:

```bash
pig build pkg pg_clickhouse         # build RPM / DEB packages
```


## Install

You can install `pg_clickhouse` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_clickhouse;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_clickhouse -v 18  # PG 18
pig ext install -y pg_clickhouse -v 17  # PG 17
pig ext install -y pg_clickhouse -v 16  # PG 16
pig ext install -y pg_clickhouse -v 15  # PG 15
pig ext install -y pg_clickhouse -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_clickhouse_18       # PG 18
dnf install -y pg_clickhouse_17       # PG 17
dnf install -y pg_clickhouse_16       # PG 16
dnf install -y pg_clickhouse_15       # PG 15
dnf install -y pg_clickhouse_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-clickhouse   # PG 18
apt install -y postgresql-17-clickhouse   # PG 17
apt install -y postgresql-16-clickhouse   # PG 16
apt install -y postgresql-15-clickhouse   # PG 15
apt install -y postgresql-14-clickhouse   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_clickhouse;
```

## Usage

Sources:

- [pg_clickhouse v0.10.0 README](https://github.com/ClickHouse/pg_clickhouse/blob/v0.10.0/README.md)
- [pg_clickhouse v0.10.0 reference](https://github.com/ClickHouse/pg_clickhouse/blob/v0.10.0/doc/pg_clickhouse.md)
- [pg_clickhouse v0.10.0 tutorial](https://github.com/ClickHouse/pg_clickhouse/blob/v0.10.0/doc/tutorial.md)
- [pg_clickhouse v0.10.0 changelog](https://github.com/ClickHouse/pg_clickhouse/blob/v0.10.0/CHANGELOG.md)
- [pg_clickhouse v0.10.0 control file](https://github.com/ClickHouse/pg_clickhouse/blob/v0.10.0/pg_clickhouse.control)
- [pg_clickhouse 0.3 to 0.10 upgrade SQL](https://github.com/ClickHouse/pg_clickhouse/blob/v0.10.0/sql/pg_clickhouse--0.3--0.10.sql)
- [Pigsty pg_clickhouse package matrix](https://pgext.cloud/ext/pg_clickhouse)

`pg_clickhouse` 0.10.0 exposes ClickHouse tables to PostgreSQL through the `clickhouse_fdw` foreign data wrapper. Upstream targets PostgreSQL 13 or later and ClickHouse 23.3 or later; current Pigsty packages cover PostgreSQL 14–18. No preload is required for normal use; `session_preload_libraries` and `shared_preload_libraries` are optional connection-startup optimizations.

### Connect PostgreSQL to ClickHouse

```sql
CREATE EXTENSION pg_clickhouse;

CREATE SERVER taxi_srv
FOREIGN DATA WRAPPER clickhouse_fdw
OPTIONS (
  driver 'binary',
  host 'localhost',
  dbname 'taxi',
  compression 'lz4'
);

CREATE USER MAPPING FOR CURRENT_USER
SERVER taxi_srv
OPTIONS (user 'default');

CREATE SCHEMA taxi;
IMPORT FOREIGN SCHEMA taxi FROM SERVER taxi_srv INTO taxi;
```

The required `driver` option is `binary` or `http`. Common server options include `host`, `port`, `dbname`, `compression`, `secure`, and `min_tls_version`; user mappings accept `user` and `password`. Version 0.10 deprecates and ignores `fetch_size` because both drivers now stream the same Native format.

`IMPORT FOREIGN SCHEMA` supports `LIMIT TO (...)` and `EXCEPT (...)`. Imported mixed-case identifiers remain quoted and must be referenced with matching quotes.

### Query and Write Foreign Tables

```sql
EXPLAIN (VERBOSE)
SELECT node_id, count(*)
FROM taxi.logs
GROUP BY node_id;

INSERT INTO taxi.nodes(node_id, name)
VALUES (9, 'west-node');

COPY taxi.nodes(node_id, name) FROM STDIN;
```

`SELECT`, `EXPLAIN`, prepared statements, `INSERT`, and `COPY` operate on foreign tables. In version 0.10 the binary driver flushes inserts in bounded 64 MiB batches, so `COPY` is no longer merely expanded into one statement per row. Use `EXPLAIN (VERBOSE)` to inspect remote SQL and verify which filters, joins, aggregates, and functions were pushed down.

### Direct Query and Command APIs

Version 0.10 adds typed arbitrary-query and command interfaces:

```sql
GRANT EXECUTE ON FUNCTION clickhouse_query(text, text) TO analyst;
GRANT EXECUTE ON PROCEDURE clickhouse_perform(text, text) TO operator;

SELECT *
FROM clickhouse_query(
  'taxi_srv',
  'SELECT region, count() FROM taxi GROUP BY region'
) AS t(region text, n bigint);

CALL clickhouse_perform(
  'taxi_srv',
  'OPTIMIZE TABLE taxi.nodes FINAL'
);

SELECT clickhouse_server_version('taxi_srv');
```

`clickhouse_query(server, sql)` returns rows using the caller-provided column definition, while `clickhouse_perform(server, sql)` discards any result. Both can run arbitrary remote SQL, so `EXECUTE` is revoked from `PUBLIC` and should be granted narrowly. `clickhouse_raw_query()` is deprecated in favor of these interfaces.

### Pushdown and Session Settings

Version 0.10 expands aggregate and function pushdown, improves aggregate execution over mixed local and foreign partitions, and fixes several PostgreSQL NULL-semantics mismatches. Subquery pushdown requires ClickHouse 25.8 or later; older servers evaluate those subqueries locally.

The default `pg_clickhouse.session_settings` preserves PostgreSQL-compatible behavior, including `join_use_nulls = 1`, `group_by_use_nulls = 1`, `final = 1`, and `transform_null_in = 0`. If it is overridden, retain the settings needed by the workload—especially `transform_null_in = 0`, which is required for safe `IN` pushdown.

### Upgrade and Operational Boundaries

```sql
ALTER EXTENSION pg_clickhouse UPDATE TO '0.10';
SELECT pgch_version();
```

The extension SQL version is `0.10`, while `pgch_version()` reports the full library version `0.10.0`. An installation upgraded from SQL version `0.3` must run `ALTER EXTENSION` after the new files are installed.

If `pg_clickhouse` is placed in `session_preload_libraries`, new sessions load it automatically. If it is placed in `shared_preload_libraries`, changing the library requires a PostgreSQL restart. Neither setting is mandatory, unlike extensions that register postmaster hooks.

Lightweight `UPDATE` and `DELETE` remain outside the documented write surface. Treat direct remote SQL as privileged, test pushdown with production-shaped NULL and type cases, and validate both PostgreSQL and ClickHouse versions before relying on a version-gated optimization.
