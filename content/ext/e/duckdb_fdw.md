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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/duckdb_fdw-2.0.2.tar.gz duckdb-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">duckdb_fdw-2.0.2.tar.gz duckdb-2.0.0.tar.gz</div>
    <div class="ext-card__desc">duckdb_fdw-2.0.2.tar.gz duckdb-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`duckdb_fdw`**](/ext/e/duckdb_fdw) | `2.0.2` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2470  | [**`duckdb_fdw`**](/ext/e/duckdb_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_clickhouse`](/ext/e/pg_clickhouse) [`pg_parquet`](/ext/e/pg_parquet) [`pg_lake`](/ext/e/pg_lake) [`aws_s3`](/ext/e/aws_s3) [`file_fdw`](/ext/e/file_fdw) [`pg_bulkload`](/ext/e/pg_bulkload) [`pg_stat_ch`](/ext/e/pg_stat_ch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGSTY 2.0.2 embeds DuckDB 2.0.0 statically, has no pg_duckdb runtime dependency, and conflicts with pg_duckdb for the same PG major. Switching from pg_duckdb requires removing its preload setting and restarting. Current builds support PG15-18; PG14 fails upstream boolVal/makeBoolean API use despite the README claiming PG13-18. Historical PG14 1.4.3 packages remain available.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.2` | {{< pgvers "15,16,17,18" >}} | `duckdb_fdw` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `duckdb_fdw_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-duckdb-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 2.0.2 1 | AVAIL PIGSTY 1.4.3 1 |
@ el8.x86_64 18 duckdb_fdw_18 duckdb_fdw_18-2.0.2-1PGSTY.el8.x86_64.rpm pigsty 2.0.2 21.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_18-2.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 duckdb_fdw_18 duckdb_fdw_18-2.0.2-1PGSTY.el8.aarch64.rpm pigsty 2.0.2 19.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_18-2.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 duckdb_fdw_18 duckdb_fdw_18-2.0.2-1PGSTY.el9.x86_64.rpm pigsty 2.0.2 19.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_18-2.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 duckdb_fdw_18 duckdb_fdw_18-2.0.2-1PGSTY.el9.aarch64.rpm pigsty 2.0.2 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_18-2.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 duckdb_fdw_18 duckdb_fdw_18-2.0.2-1PGSTY.el10.x86_64.rpm pigsty 2.0.2 21.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_18-2.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 duckdb_fdw_18 duckdb_fdw_18-2.0.2-1PGSTY.el10.aarch64.rpm pigsty 2.0.2 19.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_18-2.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb pigsty 2.0.2 18.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb pigsty 2.0.2 17.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb pigsty 2.0.2 20.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb pigsty 2.0.2 19.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb pigsty 2.0.2 16.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb pigsty 2.0.2 15.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb pigsty 2.0.2 19.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb pigsty 2.0.2 18.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb pigsty 2.0.2 20.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-duckdb-fdw postgresql-18-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb pigsty 2.0.2 19.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-18-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 duckdb_fdw_17 duckdb_fdw_17-2.0.2-1PGSTY.el8.x86_64.rpm pigsty 2.0.2 21.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_17-2.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 duckdb_fdw_17 duckdb_fdw_17-2.0.2-1PGSTY.el8.aarch64.rpm pigsty 2.0.2 19.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_17-2.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 duckdb_fdw_17 duckdb_fdw_17-2.0.2-1PGSTY.el9.x86_64.rpm pigsty 2.0.2 19.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_17-2.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 duckdb_fdw_17 duckdb_fdw_17-2.0.2-1PGSTY.el9.aarch64.rpm pigsty 2.0.2 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_17-2.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 duckdb_fdw_17 duckdb_fdw_17-2.0.2-1PGSTY.el10.x86_64.rpm pigsty 2.0.2 21.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_17-2.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 duckdb_fdw_17 duckdb_fdw_17-2.0.2-1PGSTY.el10.aarch64.rpm pigsty 2.0.2 19.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_17-2.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb pigsty 2.0.2 18.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb pigsty 2.0.2 17.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb pigsty 2.0.2 20.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb pigsty 2.0.2 19.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb pigsty 2.0.2 16.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb pigsty 2.0.2 15.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb pigsty 2.0.2 19.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb pigsty 2.0.2 18.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb pigsty 2.0.2 20.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-duckdb-fdw postgresql-17-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb pigsty 2.0.2 19.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-17-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 duckdb_fdw_16 duckdb_fdw_16-2.0.2-1PGSTY.el8.x86_64.rpm pigsty 2.0.2 21.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_16-2.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 duckdb_fdw_16 duckdb_fdw_16-2.0.2-1PGSTY.el8.aarch64.rpm pigsty 2.0.2 19.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_16-2.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 duckdb_fdw_16 duckdb_fdw_16-2.0.2-1PGSTY.el9.x86_64.rpm pigsty 2.0.2 19.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_16-2.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 duckdb_fdw_16 duckdb_fdw_16-2.0.2-1PGSTY.el9.aarch64.rpm pigsty 2.0.2 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_16-2.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 duckdb_fdw_16 duckdb_fdw_16-2.0.2-1PGSTY.el10.x86_64.rpm pigsty 2.0.2 21.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_16-2.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 duckdb_fdw_16 duckdb_fdw_16-2.0.2-1PGSTY.el10.aarch64.rpm pigsty 2.0.2 19.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_16-2.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb pigsty 2.0.2 18.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb pigsty 2.0.2 17.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb pigsty 2.0.2 20.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb pigsty 2.0.2 19.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb pigsty 2.0.2 16.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb pigsty 2.0.2 15.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb pigsty 2.0.2 19.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb pigsty 2.0.2 18.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb pigsty 2.0.2 20.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-duckdb-fdw postgresql-16-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb pigsty 2.0.2 19.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-16-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 duckdb_fdw_15 duckdb_fdw_15-2.0.2-1PGSTY.el8.x86_64.rpm pigsty 2.0.2 21.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/duckdb_fdw_15-2.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 duckdb_fdw_15 duckdb_fdw_15-2.0.2-1PGSTY.el8.aarch64.rpm pigsty 2.0.2 19.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/duckdb_fdw_15-2.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 duckdb_fdw_15 duckdb_fdw_15-2.0.2-1PGSTY.el9.x86_64.rpm pigsty 2.0.2 19.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/duckdb_fdw_15-2.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 duckdb_fdw_15 duckdb_fdw_15-2.0.2-1PGSTY.el9.aarch64.rpm pigsty 2.0.2 18.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/duckdb_fdw_15-2.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 duckdb_fdw_15 duckdb_fdw_15-2.0.2-1PGSTY.el10.x86_64.rpm pigsty 2.0.2 21.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/duckdb_fdw_15-2.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 duckdb_fdw_15 duckdb_fdw_15-2.0.2-1PGSTY.el10.aarch64.rpm pigsty 2.0.2 19.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/duckdb_fdw_15-2.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb pigsty 2.0.2 18.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb pigsty 2.0.2 17.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb pigsty 2.0.2 20.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb pigsty 2.0.2 19.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb pigsty 2.0.2 16.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb pigsty 2.0.2 15.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb pigsty 2.0.2 19.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb pigsty 2.0.2 18.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb pigsty 2.0.2 20.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-duckdb-fdw postgresql-15-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb pigsty 2.0.2 19.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/duckdb-fdw/postgresql-15-duckdb-fdw_2.0.2-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install duckdb_fdw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y duckdb_fdw -v 18  # PG 18
pig ext install -y duckdb_fdw -v 17  # PG 17
pig ext install -y duckdb_fdw -v 16  # PG 16
pig ext install -y duckdb_fdw -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y duckdb_fdw_18       # PG 18
dnf install -y duckdb_fdw_17       # PG 17
dnf install -y duckdb_fdw_16       # PG 16
dnf install -y duckdb_fdw_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-duckdb-fdw   # PG 18
apt install -y postgresql-17-duckdb-fdw   # PG 17
apt install -y postgresql-16-duckdb-fdw   # PG 16
apt install -y postgresql-15-duckdb-fdw   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION duckdb_fdw;
```

## Usage

Sources:

- [2.0.2 README](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/README.md)
- [2.0.2 control file](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/duckdb_fdw.control)
- [2.0.2 SQL functions and privileges](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/duckdb_fdw--2.0.2.sql)
- [Server, mapping and table options](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/option.c)
- [Scan, write and diagnostic functions](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/duckdb_fdw.c)
- [Connection and transaction handling](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/connection.c)
- [Schema import implementation](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/import.c)
- [2.0.1 to 2.0.2 upgrade](https://github.com/alitrack/duckdb_fdw/blob/4c444d19f80eace50bc09fa3ec766e8ca2cf667d/duckdb_fdw--2.0.1--2.0.2.sql)

`duckdb_fdw` 2.0.2 exposes DuckDB tables and data sources as PostgreSQL foreign tables through DuckDB's native C API. Use it to query a DuckDB database, read Parquet, or access optional DuckDB catalogs. Foreign tables support reads and inserts; PostgreSQL UPDATE and DELETE through the FDW are not supported.

### Enable and Map a DuckDB Table

Install the extension as a superuser. A new installation does not require preloading or a PostgreSQL restart. Use a persistent DuckDB file in a directory accessible to the PostgreSQL service account; the example assumes that directory already exists.

```sql
CREATE EXTENSION duckdb_fdw;
CREATE SERVER duckdb_server
  FOREIGN DATA WRAPPER duckdb_fdw
  OPTIONS (database '/var/lib/postgresql/duckdb/analytics.duckdb');

SELECT duckdb_execute(
  'duckdb_server',
  'CREATE TABLE measurements (sensor_id INTEGER, reading DOUBLE)'
);

CREATE FOREIGN TABLE measurements (
  sensor_id integer,
  reading double precision
) SERVER duckdb_server OPTIONS (table 'measurements');

INSERT INTO measurements VALUES (1, 21.5), (2, 19.8);
SELECT * FROM measurements WHERE reading > 20;

SELECT extversion FROM pg_extension WHERE extname = 'duckdb_fdw';
SELECT duckdb_fdw_version();
```

The catalog query reports the extension version; despite its name, `duckdb_fdw_version()` reports the linked DuckDB engine version. A user mapping is optional for a local file without credentials. Database-file permissions are those of the PostgreSQL operating-system account.

### Import Tables and Read Parquet

```sql
CREATE SCHEMA duckdb_import;
IMPORT FOREIGN SCHEMA main
  FROM SERVER duckdb_server INTO duckdb_import;
```

Use DuckDB's schema name, normally `main`, rather than PostgreSQL's `public`. To read an existing Parquet file, declare matching PostgreSQL column types:

```sql
CREATE FOREIGN TABLE parquet_measurements (
  sensor_id integer,
  reading double precision
) SERVER duckdb_server
  OPTIONS (table '/var/lib/postgresql/duckdb/measurements.parquet');

SELECT * FROM parquet_measurements WHERE sensor_id = 1;
```

### Options and Privileges

| Object | Purpose |
| --- | --- |
| Server `database` | DuckDB file path, or a connection-local in-memory database |
| Server `force_readonly` | Open file databases read-only and reject FDW writes and non-read-only helper statements |
| Server `extensions`, `attach_catalogs` | Load optional DuckDB extensions and attach catalogs |
| Table `table` | Map a DuckDB table or a Parquet path |
| Column `column_name` | Map a PostgreSQL column to a differently named DuckDB column |
| `duckdb_execute(server, statement)` | Execute DuckDB SQL; returns void, not a result table |
| `duckdb_create_s3_secret(...)` | Create an S3 secret in the DuckDB connection |
| `duckdb_fdw_preflight()` | Inspect runtime compatibility before using DuckDB |

Grant application roles only the foreign-server, schema and foreign-table privileges they need. EXECUTE on the arbitrary-SQL and secret helpers is revoked from PUBLIC on installation; grant it only to trusted roles.

For S3, MotherDuck or Quack credentials, prefer user mappings. Server options are visible in PostgreSQL catalogs and are unsuitable for secrets. Remote examples additionally depend on the relevant DuckDB extensions, network access and credentials; their availability is not implied by installing the FDW.

### Connection and Transaction Boundaries

- Connections close at transaction end by default. With `database ':memory:'`, keep setup and queries in the same explicit transaction or the temporary database disappears.
- `duckdb_fdw.keep_connection` defaults to off. Enabling it retains connections after commit, but a writable file connection holds the DuckDB file lock across transactions and can block other PostgreSQL sessions from opening that file.
- Foreign-table inserts follow the top-level PostgreSQL commit or rollback. Savepoint rollback does not undo individual DuckDB writes: if the outer transaction commits, writes from an aborted subtransaction can remain.
- DuckDB does not participate in PostgreSQL two-phase commit. Do not use prepared transactions or assume crash-atomic commits across PostgreSQL and DuckDB. Arbitrary SQL sent through the helper also does not acquire PostgreSQL transaction semantics automatically.

### Compatibility and Upgrade

The Pigsty 2.0.2 packages target PostgreSQL 15-18. Upstream's README advertises PostgreSQL 13-18, which is broader than this package range. Version 2.0.2 accepts DuckDB 1.5.x and 2.0.x runtimes; it does not change the SQL function set from 2.0.1.

Runtime execution is guarded against loading `pg_duckdb` in the same backend. Keep the two extensions in separate PostgreSQL instances. When switching away from a preloaded `pg_duckdb`, remove its preload entry and restart PostgreSQL; replacing files does not unload libraries from existing processes.

```sql
SELECT duckdb_fdw_runtime_compatibility_status();
SELECT duckdb_fdw_runtime_fingerprint();
SELECT duckdb_fdw_preflight();
```

After installing matching files, use fresh backend sessions and update each database:

```sql
ALTER EXTENSION duckdb_fdw UPDATE TO '2.0.2';
```
