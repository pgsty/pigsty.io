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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_clickhouse-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_clickhouse-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_clickhouse-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_clickhouse`**](/ext/e/pg_clickhouse) | `0.2.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2460  | [**`pg_clickhouse`**](/ext/e/pg_clickhouse) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`citus`](/ext/e/citus) [`columnar`](/ext/e/columnar) [`citus_columnar`](/ext/e/citus_columnar) [`clickhouse_fdw`](/ext/e/clickhouse_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) [`dblink`](/ext/e/dblink) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> release 0.2.0; SQL v0.2


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_clickhouse` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_clickhouse_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-clickhouse` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
@ el8.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 724.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 645.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 729.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 699.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 753.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 717.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 859.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 796.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 863.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 801.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 927.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 900.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 939.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 906.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 723.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 644.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 729.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 699.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 753.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 716.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 859.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 796.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 862.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 801.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 981.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 953.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 939.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 906.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 723.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_16-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 644.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_16-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 729.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_16-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 699.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_16-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 753.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_16-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 716.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_16-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 859.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 795.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 862.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 800.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 978.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 950.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 939.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 906.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 727.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_15-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 649.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_15-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 732.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_15-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 702.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_15-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 757.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_15-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 720.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_15-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 861.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 797.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 864.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 802.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 980.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 950.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 942.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 909.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 727.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_14-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 649.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_14-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 732.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_14-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 702.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_14-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 757.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_14-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 720.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_14-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 861.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 798.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 864.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 802.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 979.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 950.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 942.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 909.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.2.0-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

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


**Preload**:

```bash
shared_preload_libraries = 'pg_clickhouse';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_clickhouse;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION pg_clickhouse;
> CREATE SERVER taxi_srv FOREIGN DATA WRAPPER clickhouse_fdw
>   OPTIONS(driver 'binary', host 'localhost', dbname 'taxi');
> CREATE USER MAPPING FOR CURRENT_USER SERVER taxi_srv OPTIONS (user 'default');
> IMPORT FOREIGN SCHEMA taxi FROM SERVER taxi_srv INTO taxi;
> ```
>
> Sources: [README](https://github.com/ClickHouse/pg_clickhouse), [Reference](https://github.com/ClickHouse/pg_clickhouse/blob/master/doc/pg_clickhouse.md), [Tutorial](https://github.com/ClickHouse/pg_clickhouse/blob/master/doc/tutorial.md)

`pg_clickhouse` is a PostgreSQL extension for running analytics queries on ClickHouse directly from PostgreSQL, including a foreign data wrapper and query pushdown support. The current upstream docs state support for PostgreSQL 13+ and ClickHouse 23+.

## Getting Started

The upstream project documents two common starting points:

- use the published Docker image `ghcr.io/clickhouse/pg_clickhouse:18`
- build with `make` / `make install` or install from PGXN

Once installed, enable the extension:

```sql
CREATE EXTENSION pg_clickhouse;
```

Or install it into a dedicated schema:

```sql
CREATE SCHEMA ch;
CREATE EXTENSION pg_clickhouse WITH SCHEMA ch;
```

## Connecting to ClickHouse

The reference docs show the normal flow as:

```sql
CREATE SERVER taxi_srv
FOREIGN DATA WRAPPER clickhouse_fdw
OPTIONS (driver 'binary', host 'localhost', dbname 'taxi');

CREATE USER MAPPING FOR CURRENT_USER
SERVER taxi_srv
OPTIONS (user 'default');

CREATE SCHEMA taxi;
IMPORT FOREIGN SCHEMA taxi FROM SERVER taxi_srv INTO taxi;
```

Documented server options include:

- `driver`, required, either `binary` or `http`
- `dbname`
- `fetch_size`
- `host`
- `port`

## What the Docs Emphasize

The README positions pg_clickhouse around transparent pushdown for analytic workloads. It links both a tutorial and a SQL reference:

- the tutorial walks through connecting PostgreSQL to a ClickHouse sample database and querying imported tables
- the reference documents extension lifecycle commands, foreign server options, and SQL objects exposed by the extension

The project README also includes TPC-H benchmark examples showing where pushdown can significantly reduce runtime.

## Operational Notes

The reference docs describe versioning separately for:

- the library version, visible via `pgch_version()` or `pg_get_loaded_modules()`
- the extension version tracked by PostgreSQL catalogs and extension upgrade scripts

Minor and major upgrades can require `ALTER EXTENSION pg_clickhouse UPDATE`.
