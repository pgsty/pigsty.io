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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_clickhouse-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_clickhouse-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_clickhouse-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_clickhouse`**](/ext/e/pg_clickhouse) | `0.3.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2460  | [**`pg_clickhouse`**](/ext/e/pg_clickhouse) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`citus`](/ext/e/citus) [`columnar`](/ext/e/columnar) [`citus_columnar`](/ext/e/citus_columnar) [`clickhouse_fdw`](/ext/e/clickhouse_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) [`dblink`](/ext/e/dblink) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> release 0.3.0; SQL v0.3


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_clickhouse` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_clickhouse_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-clickhouse` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el8.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 740.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_18-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 663.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_18-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 745.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_18-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 715.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_18-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_clickhouse_18 pg_clickhouse_18-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 771.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_18-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_clickhouse_18 pg_clickhouse_18-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 734.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_18-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 884.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 820.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 888.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 826.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 955.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 926.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 965.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 932.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 962.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-clickhouse postgresql-18-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 977.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-18-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 740.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_17-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 663.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_17-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 746.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_17-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 715.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_17-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_clickhouse_17 pg_clickhouse_17-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 771.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_17-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_clickhouse_17 pg_clickhouse_17-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 734.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_17-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 884.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 819.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 889.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 825.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 1007.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 979.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 965.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 932.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 961.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-clickhouse postgresql-17-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 977.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-17-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 740.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_16-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 663.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_16-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 745.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_16-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 715.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_16-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_clickhouse_16 pg_clickhouse_16-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 771.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_16-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_clickhouse_16 pg_clickhouse_16-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 734.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_16-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 884.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 819.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 888.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 826.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 1004.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 975.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 965.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 932.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 962.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-clickhouse postgresql-16-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 978.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-16-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 744.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_15-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 666.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_15-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 749.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_15-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 718.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_15-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_clickhouse_15 pg_clickhouse_15-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 775.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_15-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_clickhouse_15 pg_clickhouse_15-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 737.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_15-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 887.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 821.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 889.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 827.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 1006.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 978.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 968.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 934.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 964.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-clickhouse postgresql-15-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 979.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-15-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 744.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_clickhouse_14-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 666.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_clickhouse_14-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 748.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_clickhouse_14-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 719.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_clickhouse_14-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_clickhouse_14 pg_clickhouse_14-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 775.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_clickhouse_14-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_clickhouse_14 pg_clickhouse_14-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 737.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_clickhouse_14-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 886.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 821.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 889.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 827.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 1005.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 976.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 968.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 934.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 964.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-clickhouse postgresql-14-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 979.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-clickhouse/postgresql-14-clickhouse_0.3.0-1PIGSTY~resolute_arm64.deb
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

Sources: [README](https://github.com/ClickHouse/pg_clickhouse/blob/main/README.md), [reference](https://github.com/ClickHouse/pg_clickhouse/blob/main/doc/pg_clickhouse.md), [tutorial](https://github.com/ClickHouse/pg_clickhouse/blob/main/doc/tutorial.md), [v0.3.0 release notes](https://github.com/ClickHouse/pg_clickhouse/releases/tag/v0.3.0), [changelog](https://github.com/ClickHouse/pg_clickhouse/blob/main/CHANGELOG.md)

`pg_clickhouse` runs analytics queries on ClickHouse from PostgreSQL through the `clickhouse_fdw` foreign data wrapper. Upstream documents PostgreSQL 13+ and ClickHouse 23+ support; Pigsty packages version 0.3.0 for PostgreSQL 14-18.

### Connect PostgreSQL to ClickHouse

```sql
CREATE EXTENSION pg_clickhouse;

CREATE SERVER taxi_srv
FOREIGN DATA WRAPPER clickhouse_fdw
OPTIONS (driver 'binary', host 'localhost', dbname 'taxi');

CREATE USER MAPPING FOR CURRENT_USER
SERVER taxi_srv
OPTIONS (user 'default');

CREATE SCHEMA taxi;
IMPORT FOREIGN SCHEMA taxi FROM SERVER taxi_srv INTO taxi;
```

Server options documented upstream:

- `driver`: required, `binary` or `http`
- `host`
- `port`
- `dbname`
- `fetch_size`: HTTP streaming batch size; `0` disables streaming

User mapping options:

- `user`
- `password`

### Common operations

```sql
ALTER EXTENSION pg_clickhouse UPDATE;
ALTER EXTENSION pg_clickhouse UPDATE TO '0.3';
SELECT pgch_version();
DROP SERVER taxi_srv CASCADE;
```

`IMPORT FOREIGN SCHEMA` also supports `LIMIT TO (...)` and `EXCEPT (...)`. The reference warns that imported mixed-case identifiers are double-quoted in PostgreSQL and must be queried with quotes.

### Query and write notes

`SELECT`, `EXPLAIN`, prepared statements, `INSERT`, and `COPY` can operate on `pg_clickhouse` foreign tables. Use `EXPLAIN (VERBOSE)` to inspect the remote SQL that will be sent to ClickHouse.

```sql
EXPLAIN (VERBOSE)
SELECT node_id, count(*)
FROM logs
GROUP BY node_id;

INSERT INTO nodes(node_id, name, region, arch, os)
VALUES (9, 'west-node', 'us-west-2', 'amd64', 'Linux');
```

`COPY` into a foreign table is documented, but upstream notes that it currently uses `INSERT` statements because FDW batch insertion is still future work.

### Version and pushdown notes

- The reference documents separate library and extension versions; `pgch_version()` reports the loaded library version.
- Patch-only releases update the library without requiring `ALTER EXTENSION`.
- Release `v0.3.0` uses SQL version `0.3`; run `ALTER EXTENSION pg_clickhouse UPDATE TO '0.3'` to apply its SQL-level privilege change.
- Release `v0.3.0` adds pushdown for `re2` functions, `soundex()`, two-argument `levenshtein()`, compatible `to_char(timestamp[tz], fmt)`, selected builtin functions, and JSON/JSONB path operations.
- ClickHouse `JSON` maps to PostgreSQL `jsonb` or `json`; the binary driver's `JSON` mapping requires ClickHouse 24.10 or later.
- `pg_clickhouse.pushdown_regex` controls built-in PostgreSQL regex pushdown. Upstream recommends considering the `re2` extension for regex work that should push down directly.

### Caveats

- In 0.3.0, `clickhouse_raw_query(text, text)` is no longer executable by `PUBLIC`; grant it only to roles that need ad-hoc ClickHouse queries.
- This is positioned upstream as an analytics-first extension; lightweight `DELETE` and `UPDATE` support remain on the roadmap.
- For full examples, follow the official tutorial, which creates a ClickHouse `taxi` database, imports it through `IMPORT FOREIGN SCHEMA`, and queries the resulting foreign tables.
