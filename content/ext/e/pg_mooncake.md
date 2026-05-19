---
title: "pg_mooncake"
linkTitle: "pg_mooncake"
description: "Columnstore Table in Postgres"
weight: 2440
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Mooncake-Labs/pg_mooncake">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Mooncake-Labs/pg_mooncake</div>
    <div class="ext-card__desc">https://github.com/Mooncake-Labs/pg_mooncake</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_mooncake-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_mooncake-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_mooncake-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_mooncake`**](/ext/e/pg_mooncake) | `0.2.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2440  | [**`pg_mooncake`**](/ext/e/pg_mooncake) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_analytics`](/ext/e/pg_analytics) [`columnar`](/ext/e/columnar) [`citus_columnar`](/ext/e/citus_columnar) [`pg_parquet`](/ext/e/pg_parquet) [`orioledb`](/ext/e/orioledb) [`timescaledb`](/ext/e/timescaledb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> unpublished release


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mooncake` | `pg_duckdb` |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mooncake_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-mooncake` | - |
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
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_mooncake_18 pg_mooncake_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 11.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_mooncake_18 pg_mooncake_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_mooncake_18 pg_mooncake_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_mooncake_18 pg_mooncake_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_mooncake_18 pg_mooncake_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_mooncake_18 pg_mooncake_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_mooncake_17 pg_mooncake_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 11.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_mooncake_17 pg_mooncake_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_mooncake_17 pg_mooncake_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_mooncake_17 pg_mooncake_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_mooncake_17 pg_mooncake_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_mooncake_17 pg_mooncake_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 7.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_mooncake_16 pg_mooncake_16-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 11.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_16-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_mooncake_16 pg_mooncake_16-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_16-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_mooncake_16 pg_mooncake_16-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_16-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_mooncake_16 pg_mooncake_16-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_16-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_mooncake_16 pg_mooncake_16-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_16-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_mooncake_16 pg_mooncake_16-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_16-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 7.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_mooncake_15 pg_mooncake_15-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 11.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_15-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_mooncake_15 pg_mooncake_15-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_15-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_mooncake_15 pg_mooncake_15-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_15-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_mooncake_15 pg_mooncake_15-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_15-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_mooncake_15 pg_mooncake_15-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_15-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_mooncake_15 pg_mooncake_15-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_15-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 7.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 9.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_mooncake_14 pg_mooncake_14-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 11.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_14-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_mooncake_14 pg_mooncake_14-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_14-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_mooncake_14 pg_mooncake_14-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 10.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_14-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_mooncake_14 pg_mooncake_14-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 10.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_14-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_mooncake_14 pg_mooncake_14-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 10.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_14-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_mooncake_14 pg_mooncake_14-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 10.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_14-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 8.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 7.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 9.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 9.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.2.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_mooncake` using `pig build`:

```bash
pig build pkg pg_mooncake         # build RPM / DEB packages
```


## Install

You can install `pg_mooncake` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_mooncake;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_mooncake -v 18  # PG 18
pig ext install -y pg_mooncake -v 17  # PG 17
pig ext install -y pg_mooncake -v 16  # PG 16
pig ext install -y pg_mooncake -v 15  # PG 15
pig ext install -y pg_mooncake -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_mooncake_18       # PG 18
dnf install -y pg_mooncake_17       # PG 17
dnf install -y pg_mooncake_16       # PG 16
dnf install -y pg_mooncake_15       # PG 15
dnf install -y pg_mooncake_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-mooncake   # PG 18
apt install -y postgresql-17-pg-mooncake   # PG 17
apt install -y postgresql-16-pg-mooncake   # PG 16
apt install -y postgresql-15-pg-mooncake   # PG 15
apt install -y postgresql-14-pg-mooncake   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_duckdb, pg_mooncake';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_mooncake CASCADE;  -- requires: pg_duckdb
```


## Usage

[`pg_mooncake`](https://github.com/Mooncake-Labs/pg_mooncake) is a Postgres extension that creates columnstore mirrors of your tables in Iceberg format, designed as a sub-extension of `pg_duckdb`.

pg_mooncake docs: https://docs.mooncake.dev/


### Quick Setup

Install pg_duckdb and pg_mooncake with pig:

```bash
pig repo set
pig install pg_duckdb pg_mooncake
```

Edit postgresql.conf, then restart to take effect

```ini
shared_preload_libraries = 'pg_duckdb,pg_mooncake'
duckdb.allow_community_extensions = true
wal_level = logical
```



### Hello Worlds

- [Tutorial](https://docs.mooncake.dev/pg/get-started/Hello-world)

```sql
-- create the extension alone with pg_duckdb
CREATE EXTENSION pg_mooncake CASCADE;

-- Next, create a regular Postgres table trades:
CREATE TABLE trades(
  id bigint PRIMARY KEY,
  symbol text,
  time timestamp,
  price real
);

-- Then, create a columnstore mirror trades_iceberg that stays in sync with trades:
CALL mooncake.create_table('trades_iceberg', 'trades');

-- Now, insert some data into trades:
INSERT INTO trades VALUES
    (1,  'AMD', '2024-06-05 10:00:00', 119),
    (2, 'AMZN', '2024-06-05 10:05:00', 207),
    (3, 'AAPL', '2024-06-05 10:10:00', 203),
    (4, 'AMZN', '2024-06-05 10:15:00', 210);

-- Finally, query it with duckdb
EXPLAIN
    SELECT avg(price) FROM trades_iceberg WHERE symbol = 'AMZN';
```

You will see the DuckDBScan in the execution plan:

```bash
                         QUERY PLAN
------------------------------------------------------------
 Custom Scan (DuckDBScan)  (cost=0.00..0.00 rows=0 width=0)
   DuckDB Execution Plan:

 ┌───────────────────────────┐
 │    UNGROUPED_AGGREGATE    │
 │    ────────────────────   │
 │    Aggregates: avg(#0)    │
 └─────────────┬─────────────┘
 ┌─────────────┴─────────────┐
 │         PROJECTION        │
 │    ────────────────────   │
 │   CAST(price AS DOUBLE)   │
 │                           │
 │          ~0 rows          │
 └─────────────┬─────────────┘
 ┌─────────────┴─────────────┐
 │       MOONCAKE_SCAN       │
 │    ────────────────────   │
 │   Table: trades_iceberg   │
 │     Projections: price    │
 │                           │
 │          Filters:         │
 │       symbol='AMZN'       │
 │                           │
 │          ~0 rows          │
 └───────────────────────────┘
```
