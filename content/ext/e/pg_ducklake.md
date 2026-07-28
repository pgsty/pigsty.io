---
title: "pg_ducklake"
linkTitle: "pg_ducklake"
description: "DuckLake lakehouse extension for PostgreSQL, backed by DuckDB and Parquet"
weight: 2490
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/relytcloud/pg_ducklake">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">relytcloud/pg_ducklake</div>
    <div class="ext-card__desc">https://github.com/relytcloud/pg_ducklake</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_ducklake-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_ducklake-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_ducklake-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_ducklake`**](/ext/e/pg_ducklake) | `1.0.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2490  | [**`pg_ducklake`**](/ext/e/pg_ducklake) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `ducklake` |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_mooncake`](/ext/e/pg_mooncake) `pg_analytics` [`pg_parquet`](/ext/e/pg_parquet) [`columnar`](/ext/e/columnar) [`citus_columnar`](/ext/e/citus_columnar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_ducklake` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_ducklake_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-ducklake` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el9.x86_64 18 pg_ducklake_18 pg_ducklake_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 16.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ducklake_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_ducklake_18 pg_ducklake_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ducklake_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_ducklake_18 pg_ducklake_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ducklake_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_ducklake_18 pg_ducklake_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ducklake_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 11.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 11.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 11.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 13.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-ducklake postgresql-18-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-18-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb
@ el9.x86_64 17 pg_ducklake_17 pg_ducklake_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 16.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ducklake_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_ducklake_17 pg_ducklake_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ducklake_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_ducklake_17 pg_ducklake_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ducklake_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_ducklake_17 pg_ducklake_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ducklake_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 11.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 11.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 11.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 13.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-ducklake postgresql-17-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-17-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb
@ el9.x86_64 16 pg_ducklake_16 pg_ducklake_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 16.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ducklake_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_ducklake_16 pg_ducklake_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ducklake_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_ducklake_16 pg_ducklake_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ducklake_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_ducklake_16 pg_ducklake_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ducklake_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 11.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 11.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 11.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 13.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-ducklake postgresql-16-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-16-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb
@ el9.x86_64 15 pg_ducklake_15 pg_ducklake_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 16.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ducklake_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_ducklake_15 pg_ducklake_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ducklake_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_ducklake_15 pg_ducklake_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ducklake_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_ducklake_15 pg_ducklake_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ducklake_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 11.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 11.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 11.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 13.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-ducklake postgresql-15-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-15-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb
@ el9.x86_64 14 pg_ducklake_14 pg_ducklake_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 16.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ducklake_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_ducklake_14 pg_ducklake_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ducklake_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_ducklake_14 pg_ducklake_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ducklake_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_ducklake_14 pg_ducklake_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ducklake_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 11.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 14.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 11.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 11.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 13.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-ducklake postgresql-14-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 12.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ducklake/postgresql-14-pg-ducklake_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_ducklake` using `pig build`:

```bash
pig build pkg pg_ducklake         # build RPM / DEB packages
```


## Install

You can install `pg_ducklake` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_ducklake;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_ducklake -v 18  # PG 18
pig ext install -y pg_ducklake -v 17  # PG 17
pig ext install -y pg_ducklake -v 16  # PG 16
pig ext install -y pg_ducklake -v 15  # PG 15
pig ext install -y pg_ducklake -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_ducklake_18       # PG 18
dnf install -y pg_ducklake_17       # PG 17
dnf install -y pg_ducklake_16       # PG 16
dnf install -y pg_ducklake_15       # PG 15
dnf install -y pg_ducklake_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-ducklake   # PG 18
apt install -y postgresql-17-pg-ducklake   # PG 17
apt install -y postgresql-16-pg-ducklake   # PG 16
apt install -y postgresql-15-pg-ducklake   # PG 15
apt install -y postgresql-14-pg-ducklake   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_ducklake';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_ducklake;
```




## Usage

Sources: [README](https://github.com/relytcloud/pg_ducklake/blob/v1.0.0/README.md), [v1.0.0 release](https://github.com/relytcloud/pg_ducklake/releases/tag/v1.0.0), [project docs](https://github.com/relytcloud/pg_ducklake/tree/v1.0.0/pg_ducklake/docs)

`pg_ducklake` adds DuckLake tables to PostgreSQL. DuckLake metadata lives in PostgreSQL while table data is stored in Parquet and queried through DuckDB, giving PostgreSQL SQL clients access to lakehouse features such as snapshots, time travel, partitioning, sort keys, and external object storage.

### Create A DuckLake Table

```sql
CREATE EXTENSION pg_ducklake;

CREATE TABLE events (
  id int,
  kind text,
  ts timestamptz
) USING ducklake;

INSERT INTO events VALUES
  (1, 'login', now()),
  (2, 'click', now());

SELECT * FROM events ORDER BY id;
```

Set a table path explicitly when data should live outside the default path:

```sql
CREATE TABLE lake_events (
  id int,
  payload jsonb
) WITH (
  ducklake.table_path = 's3://my-bucket/prefix/'
) USING ducklake;
```

### Time Travel

Each commit creates a snapshot. Capture a snapshot id before a change, then query the older state:

```sql
SELECT max(snapshot_id) AS before_delete
FROM ducklake.ducklake_snapshot \gset

DELETE FROM events WHERE id = 1;

SELECT * FROM ducklake.time_travel('events'::regclass, :before_delete);
```

### Convert And Load Data

Create DuckLake tables from existing PostgreSQL heap tables or external data readers:

```sql
CREATE TABLE row_store AS
SELECT i AS id, 'hello pg_ducklake' AS msg
FROM generate_series(1, 10000) AS i;

CREATE TABLE col_store USING ducklake AS
SELECT * FROM row_store;

CREATE TABLE titanic USING ducklake AS
SELECT * FROM ducklake.read_csv('https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv');
```

### Inlining, Partitioning, And Maintenance

Small writes are inlined in metadata by default to avoid creating many tiny Parquet files. Tune the row limit or flush explicitly:

```sql
CALL ducklake.set_option('data_inlining_row_limit', 100);
SELECT * FROM ducklake.flush_inlined_data('events'::regclass);
```

Partition and sort tables for pruning and analytics:

```sql
CALL ducklake.set_partition('events'::regclass, 'bucket(4, id)', 'month(ts)');
CREATE INDEX ON events USING ducklake_sorted (id, ts);
```

Run maintenance on demand when automatic background maintenance is not enough:

```sql
SELECT * FROM ducklake.merge_adjacent_files('events'::regclass);
CALL ducklake.set_option('expire_older_than', '7 days');
SELECT * FROM ducklake.expire_snapshots();
SELECT * FROM ducklake.cleanup_old_files();
```

### External DuckDB Access

DuckDB clients can attach the same DuckLake metadata:

```sql
INSTALL ducklake;
LOAD ducklake;
ATTACH 'ducklake:postgres:dbname=postgres host=localhost' AS my_ducklake
  (METADATA_SCHEMA 'ducklake');

SELECT * FROM my_ducklake.public.events;
```

### Caveats

- Version 1.0.0 supports PostgreSQL 14-18.
- The README lists Ubuntu 22.04-24.04 and macOS as source-build targets.
- Cloud credentials are stored through a `ducklake_secret` foreign server and per-user mappings; protect those catalog objects like other database secrets.
- For incremental heap-to-DuckLake conversion, upstream points to the separate `pg_duckpipe` project.
