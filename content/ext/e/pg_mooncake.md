---
title: "pg_mooncake"
linkTitle: "pg_mooncake"
description: "Columnstore Table in Postgres"
weight: 2440
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgsty/pg_mooncake">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgsty/pg_mooncake</div>
    <div class="ext-card__desc">https://github.com/pgsty/pg_mooncake</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_mooncake-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_mooncake-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_mooncake-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_mooncake`**](/ext/e/pg_mooncake) | `0.3.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2440  | [**`pg_mooncake`**](/ext/e/pg_mooncake) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_ducklake`](/ext/e/pg_ducklake) [`columnar`](/ext/e/columnar) [`citus_columnar`](/ext/e/citus_columnar) [`pg_lake`](/ext/e/pg_lake) [`pg_parquet`](/ext/e/pg_parquet) [`orioledb`](/ext/e/orioledb) [`storage_engine`](/ext/e/storage_engine) [`pg_sorted_heap`](/ext/e/pg_sorted_heap) [`duckdb_fdw`](/ext/e/duckdb_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGSTY-maintained 0.3.0 fork for pg_duckdb 1.2.0 / DuckDB 2.0.0; bundles local Mooncake v0.0.2 and BUSL-1.1 Moonlink. Requires unsigned extensions and a matching local extension_repository. All 80 RPM/DEB PG14-18 combinations verified and locally indexed; CDN sync pending. No upstream 0.2.0 SQL upgrade script; U24 ARM64 PG14 PL/pgSQL dynamic EXPLAIN remains a known pg_duckdb error; S3/crash/stress paths unverified.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mooncake` | `pg_duckdb` |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mooncake_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-mooncake` | - |
{.ext-table .wide .expand}

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
@ el8.x86_64 18 pg_mooncake_18 pg_mooncake_18-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 16.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_18-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_mooncake_18 pg_mooncake_18-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_18-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_mooncake_18 pg_mooncake_18-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_18-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_mooncake_18 pg_mooncake_18-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_18-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_mooncake_18 pg_mooncake_18-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_18-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_mooncake_18 pg_mooncake_18-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_18-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 15.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 15.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 13.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-mooncake postgresql-18-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-18-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_mooncake_17 pg_mooncake_17-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 19.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_17-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_mooncake_17 pg_mooncake_17-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_17-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_mooncake_17 pg_mooncake_17-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_17-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_mooncake_17 pg_mooncake_17-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_17-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_mooncake_17 pg_mooncake_17-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_17-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_mooncake_17 pg_mooncake_17-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_17-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 15.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 15.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 13.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 15.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 15.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-mooncake postgresql-17-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-17-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_mooncake_16 pg_mooncake_16-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 16.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_16-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_mooncake_16 pg_mooncake_16-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_16-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_mooncake_16 pg_mooncake_16-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_16-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_mooncake_16 pg_mooncake_16-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_16-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_mooncake_16 pg_mooncake_16-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_16-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_mooncake_16 pg_mooncake_16-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_16-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 15.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 15.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 13.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 15.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-mooncake postgresql-16-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-16-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_mooncake_15 pg_mooncake_15-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 16.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_15-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_mooncake_15 pg_mooncake_15-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_15-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_mooncake_15 pg_mooncake_15-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_15-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_mooncake_15 pg_mooncake_15-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_15-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_mooncake_15 pg_mooncake_15-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_15-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_mooncake_15 pg_mooncake_15-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_15-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 15.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 15.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 13.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-mooncake postgresql-15-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-15-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_mooncake_14 pg_mooncake_14-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mooncake_14-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_mooncake_14 pg_mooncake_14-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mooncake_14-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_mooncake_14 pg_mooncake_14-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mooncake_14-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_mooncake_14 pg_mooncake_14-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mooncake_14-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_mooncake_14 pg_mooncake_14-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 16.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mooncake_14-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_mooncake_14 pg_mooncake_14-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 14.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mooncake_14-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 15.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 13.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 15.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 13.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 16.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 15.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 16.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-mooncake postgresql-14-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 15.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mooncake/postgresql-14-pg-mooncake_0.3.0-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_mooncake;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_mooncake -v 18  # PG 18
pig ext install -y pg_mooncake -v 17  # PG 17
pig ext install -y pg_mooncake -v 16  # PG 16
pig ext install -y pg_mooncake -v 15  # PG 15
pig ext install -y pg_mooncake -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_mooncake_18       # PG 18
dnf install -y pg_mooncake_17       # PG 17
dnf install -y pg_mooncake_16       # PG 16
dnf install -y pg_mooncake_15       # PG 15
dnf install -y pg_mooncake_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-mooncake   # PG 18
apt install -y postgresql-17-pg-mooncake   # PG 17
apt install -y postgresql-16-pg-mooncake   # PG 16
apt install -y postgresql-15-pg-mooncake   # PG 15
apt install -y postgresql-14-pg-mooncake   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_duckdb, pg_mooncake';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_mooncake CASCADE;  -- requires: pg_duckdb
```

## Usage

Sources:

- [0.3.0 setup and tutorial](https://github.com/pgsty/pg_mooncake/blob/v0.3.0/README.md)
- [0.3.0 SQL procedures](https://github.com/pgsty/pg_mooncake/blob/v0.3.0/src/functions.rs)
- [Dependency guard and DuckDB extension loading](https://github.com/pgsty/pg_mooncake/blob/v0.3.0/src/sql/bootstrap.sql)
- [Scan synchronization](https://github.com/pgsty/pg_mooncake/blob/v0.3.0/src/duckdb_mooncake.rs)
- [0.3.0 validation and limitations](https://github.com/pgsty/pg_mooncake/blob/v0.3.0/docs/pg-mooncake-0.3.0-validation.md)

`pg_mooncake` 0.3.0 creates read-only columnstore mirrors of PostgreSQL tables for analytical queries. Moonlink replicates committed row changes into Arrow buffers and Parquet/Iceberg storage; DuckDB executes scans and aggregates through `pg_duckdb`. This PGSTY release targets PostgreSQL 14–18 and requires exactly `pg_duckdb` 1.2.0 with DuckDB 2.0.0 and the matching bundled DuckDB Mooncake extension.

### Configure and Enable

Have an administrator configure logical replication and add both libraries to the existing preload list, in this order. Point the repository setting at the installed local DuckDB extension. This example uses the EL PostgreSQL 17 layout:

```ini
shared_preload_libraries = 'pg_duckdb,pg_mooncake'
wal_level = logical
duckdb.allow_community_extensions = true
duckdb.allow_unsigned_extensions = true
mooncake.extension_repository = '/usr/pgsql-17/share/extension/pg_mooncake'
```

For another installation, use the directory under the matching `pg_config --sharedir`, followed by `/extension/pg_mooncake`. The tag falls back to the community repository when this setting is absent; it does not automatically select the bundled directory. Unsigned loading is required for this local binary. Ensure sufficient replication slots, WAL senders, and worker processes, then restart PostgreSQL.

```sql
CREATE EXTENSION pg_mooncake CASCADE;
```

Extension creation requires superuser privileges and checks the installed dependency version. Mirror creation opens separate database connections: source DDL must already be committed, and the connecting role must be able to authenticate, read the source, and perform the required replication/publication setup. Run the example in autocommit mode.

### Write to the Source, Query the Mirror

```sql
CREATE TABLE trades (
    id bigint PRIMARY KEY,
    symbol text,
    traded_at timestamp,
    price real
);
CALL mooncake.create_table('trades_analytics', 'trades');

INSERT INTO trades VALUES
    (1, 'AMZN', '2026-11-05 10:00:00', 207),
    (2, 'AMZN', '2026-11-05 10:05:00', 210),
    (3, 'AAPL', '2026-11-05 10:10:00', 203);
UPDATE trades SET price = 209 WHERE id = 1;
DELETE FROM trades WHERE id = 3;

SELECT symbol, avg(price) FROM trades_analytics GROUP BY symbol;
EXPLAIN SELECT avg(price) FROM trades_analytics WHERE symbol = 'AMZN';
```

The helper copies existing rows and starts logical replication. Send `INSERT`, `UPDATE`, and `DELETE` to the source table; the mirror uses `USING mooncake` and is not a writable replacement. Rolled-back source changes are not replicated. Queries can combine mirror data with regular heap tables through supported DuckDB query plans; inspect `EXPLAIN` for a DuckDB scan.

In this tag, scan and snapshot synchronization use the current backend's last-commit LSN. Do not treat this as a general guarantee that every other session's latest write has been ingested, or that a remote source shares the local WAL position. Monitor replication progress for cross-session or remote freshness requirements.

### Procedures and Maintenance

| Interface | Purpose |
| --- | --- |
| `mooncake.create_table(dst, src, src_uri, table_config)` | Create a mirror; the last two arguments default to NULL. Use the exact named argument `src_uri` for a remote PostgreSQL source. |
| `mooncake.list_tables()` | Return registered tables, commit/flush LSNs, and Iceberg warehouse locations. |
| `mooncake.create_snapshot(dst)` | Flush buffered data into an Iceberg snapshot at the requested synchronization point. |
| `mooncake.optimize_table(dst, mode)` | Request compaction; full mode compacts data and indexes. |
| `mooncake.load_files(dst, files)` | Unsupported in 0.3.0; raises SQLSTATE `0A000`. |

```sql
SELECT * FROM mooncake.list_tables();
CALL mooncake.create_snapshot('trades_analytics');
CALL mooncake.optimize_table('trades_analytics', 'full');
```

In-database reads can include buffered Arrow data, while external Iceberg readers see published snapshots. Monitor logical-slot lag and retained WAL as well as mirror storage. Dropping the destination table invokes Moonlink cleanup; verify that its registration and replication slot are removed. Preserve the source data until cleanup and any migration have been checked.

### Compatibility and Upgrade Boundaries

Mirror setup handles replica identity for source tables without a primary key, including existing leaf partitions. Partitions added later also need `REPLICA IDENTITY FULL` before receiving writes. `TRUNCATE` replication and automatic handling of later partition DDL are outside the supported/tested scope. Do not assume arbitrary schema changes or PostgreSQL-specific functions are supported by the mirror.

The v0.3.0 tag provides no in-place SQL upgrade path from 0.2.0. Use a separately validated fresh installation and rebuild mirrors from retained source tables. Replace the PostgreSQL library and matching DuckDB extension together: binaries built for DuckDB 1.4 cannot be reused with DuckDB 2.0. The tagged validation covers local storage and normal restart; S3, crash recovery, and stress behavior are not established by those results.
