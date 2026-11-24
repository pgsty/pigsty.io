---
title: "pg_parquet"
linkTitle: "pg_parquet"
description: "copy data between Postgres and Parquet"
weight: 2480
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrunchyData/pg_parquet/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrunchyData/pg_parquet</div>
    <div class="ext-card__desc">https://github.com/CrunchyData/pg_parquet/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_parquet-v0.6.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_parquet-v0.6.1.tar.gz</div>
    <div class="ext-card__desc">pg_parquet-v0.6.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_parquet`**](/ext/e/pg_parquet) | `0.6.1` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2480  | [**`pg_parquet`**](/ext/e/pg_parquet) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`file_fdw`](/ext/e/file_fdw) [`aws_s3`](/ext/e/aws_s3) [`pg_bulkload`](/ext/e/pg_bulkload) [`pg_lake`](/ext/e/pg_lake) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_fact_loader`](/ext/e/pg_fact_loader) [`pg_csv`](/ext/e/pg_csv) [`omni_csv`](/ext/e/omni_csv) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Pigsty fixes streaming COPY temp-file leaks.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_parquet` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.1` | {{< pgvers "18,17,16,15" >}} | `pg_parquet_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.1` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-parquet` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.5.1 3 | AVAIL PIGSTY 0.5.1 3 | AVAIL PIGSTY 0.5.1 3 | AVAIL PIGSTY 0.5.1 3 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.5.1 3 | AVAIL PIGSTY 0.5.1 3 | AVAIL PIGSTY 0.5.1 3 | AVAIL PIGSTY 0.5.1 3 |
| el9.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 |
| el9.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 |
| el10.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 | AVAIL PIGSTY 0.5.1 2 |
| el10.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 4 | AVAIL PIGSTY 0.5.1 4 | AVAIL PIGSTY 0.5.1 4 | AVAIL PIGSTY 0.5.1 4 |
| d12.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d12.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d13.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| d13.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u22.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u22.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u24.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u24.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u26.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
| u26.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 | AVAIL PIGSTY 0.5.1 1 |
@ el8.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-4PGSTY.el8.x86_64.rpm pigsty 0.5.1 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_parquet_18-0.5.1-4PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-2PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_parquet_18-0.5.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_parquet_18-0.5.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-4PGSTY.el8.aarch64.rpm pigsty 0.5.1 8.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_parquet_18-0.5.1-4PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-2PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_parquet_18-0.5.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_parquet_18-0.5.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-4PGSTY.el9.x86_64.rpm pigsty 0.5.1 9.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_parquet_18-0.5.1-4PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-3PGDG.rhel9.9.x86_64.rpm pgdg 0.5.1 6.8MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_parquet_18-0.5.1-3PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-4PGSTY.el9.aarch64.rpm pigsty 0.5.1 9.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_parquet_18-0.5.1-4PGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-3PGDG.rhel9.9.aarch64.rpm pgdg 0.5.1 6.3MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_parquet_18-0.5.1-3PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-4PGSTY.el10.x86_64.rpm pigsty 0.5.1 9.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_parquet_18-0.5.1-4PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_parquet_18 pg_parquet_18-0.5.1-3PGDG.rhel10.3.x86_64.rpm pgdg 0.5.1 6.7MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_parquet_18-0.5.1-3PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-4PGSTY.el10.aarch64.rpm pigsty 0.5.1 9.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_parquet_18-0.5.1-4PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-3PGDG.rhel10.3.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_parquet_18-0.5.1-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-2PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_parquet_18-0.5.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_parquet_18 pg_parquet_18-0.5.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_parquet_18-0.5.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb pigsty 0.5.1 7.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb pigsty 0.5.1 7.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb pigsty 0.5.1 8.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb pigsty 0.5.1 9.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-parquet postgresql-18-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-18-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-4PGSTY.el8.x86_64.rpm pigsty 0.5.1 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_parquet_17-0.5.1-4PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-2PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_parquet_17-0.5.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_parquet_17-0.5.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-4PGSTY.el8.aarch64.rpm pigsty 0.5.1 8.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_parquet_17-0.5.1-4PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-2PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_parquet_17-0.5.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_parquet_17-0.5.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-4PGSTY.el9.x86_64.rpm pigsty 0.5.1 9.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_parquet_17-0.5.1-4PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-3PGDG.rhel9.9.x86_64.rpm pgdg 0.5.1 6.8MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_parquet_17-0.5.1-3PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-4PGSTY.el9.aarch64.rpm pigsty 0.5.1 9.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_parquet_17-0.5.1-4PGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-3PGDG.rhel9.9.aarch64.rpm pgdg 0.5.1 6.3MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_parquet_17-0.5.1-3PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-4PGSTY.el10.x86_64.rpm pigsty 0.5.1 9.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_parquet_17-0.5.1-4PGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_parquet_17 pg_parquet_17-0.5.1-3PGDG.rhel10.3.x86_64.rpm pgdg 0.5.1 6.7MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_parquet_17-0.5.1-3PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-4PGSTY.el10.aarch64.rpm pigsty 0.5.1 9.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_parquet_17-0.5.1-4PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-3PGDG.rhel10.3.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_parquet_17-0.5.1-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-2PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_parquet_17-0.5.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_parquet_17 pg_parquet_17-0.5.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_parquet_17-0.5.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb pigsty 0.5.1 7.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb pigsty 0.5.1 7.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb pigsty 0.5.1 8.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb pigsty 0.5.1 9.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-parquet postgresql-17-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-17-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-4PGSTY.el8.x86_64.rpm pigsty 0.5.1 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_parquet_16-0.5.1-4PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-2PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_parquet_16-0.5.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_parquet_16-0.5.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-4PGSTY.el8.aarch64.rpm pigsty 0.5.1 8.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_parquet_16-0.5.1-4PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-2PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_parquet_16-0.5.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_parquet_16-0.5.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-4PGSTY.el9.x86_64.rpm pigsty 0.5.1 9.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_parquet_16-0.5.1-4PGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-3PGDG.rhel9.9.x86_64.rpm pgdg 0.5.1 6.8MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_parquet_16-0.5.1-3PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-4PGSTY.el9.aarch64.rpm pigsty 0.5.1 9.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_parquet_16-0.5.1-4PGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-3PGDG.rhel9.9.aarch64.rpm pgdg 0.5.1 6.3MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_parquet_16-0.5.1-3PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-4PGSTY.el10.x86_64.rpm pigsty 0.5.1 9.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_parquet_16-0.5.1-4PGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_parquet_16 pg_parquet_16-0.5.1-3PGDG.rhel10.3.x86_64.rpm pgdg 0.5.1 6.7MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_parquet_16-0.5.1-3PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-4PGSTY.el10.aarch64.rpm pigsty 0.5.1 9.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_parquet_16-0.5.1-4PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-3PGDG.rhel10.3.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_parquet_16-0.5.1-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-2PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_parquet_16-0.5.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_parquet_16 pg_parquet_16-0.5.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_parquet_16-0.5.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb pigsty 0.5.1 7.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb pigsty 0.5.1 7.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb pigsty 0.5.1 8.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb pigsty 0.5.1 9.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-parquet postgresql-16-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-16-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-4PGSTY.el8.x86_64.rpm pigsty 0.5.1 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_parquet_15-0.5.1-4PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-2PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_parquet_15-0.5.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.5.1 7.1MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_parquet_15-0.5.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-4PGSTY.el8.aarch64.rpm pigsty 0.5.1 8.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_parquet_15-0.5.1-4PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-2PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_parquet_15-0.5.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_parquet_15-0.5.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-4PGSTY.el9.x86_64.rpm pigsty 0.5.1 9.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_parquet_15-0.5.1-4PGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-3PGDG.rhel9.9.x86_64.rpm pgdg 0.5.1 6.8MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_parquet_15-0.5.1-3PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-4PGSTY.el9.aarch64.rpm pigsty 0.5.1 9.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_parquet_15-0.5.1-4PGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-3PGDG.rhel9.9.aarch64.rpm pgdg 0.5.1 6.3MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_parquet_15-0.5.1-3PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-4PGSTY.el10.x86_64.rpm pigsty 0.5.1 9.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_parquet_15-0.5.1-4PGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_parquet_15 pg_parquet_15-0.5.1-3PGDG.rhel10.3.x86_64.rpm pgdg 0.5.1 6.7MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_parquet_15-0.5.1-3PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-4PGSTY.el10.aarch64.rpm pigsty 0.5.1 9.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_parquet_15-0.5.1-4PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-3PGDG.rhel10.3.aarch64.rpm pgdg 0.5.1 6.2MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_parquet_15-0.5.1-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-2PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_parquet_15-0.5.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_parquet_15 pg_parquet_15-0.5.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.5.1 6.4MiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_parquet_15-0.5.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb pigsty 0.5.1 7.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb pigsty 0.5.1 8.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb pigsty 0.5.1 7.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb pigsty 0.5.1 9.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb pigsty 0.5.1 9.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-parquet postgresql-15-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb pigsty 0.5.1 8.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-parquet/postgresql-15-pg-parquet_0.5.1-4PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_parquet` using `pig build`:

```bash
pig build pkg pg_parquet         # build RPM / DEB packages
```


## Install

You can install `pg_parquet` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_parquet;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_parquet -v 19  # PG 19
pig ext install -y pg_parquet -v 18  # PG 18
pig ext install -y pg_parquet -v 17  # PG 17
pig ext install -y pg_parquet -v 16  # PG 16
pig ext install -y pg_parquet -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_parquet_19       # PG 19
dnf install -y pg_parquet_18       # PG 18
dnf install -y pg_parquet_17       # PG 17
dnf install -y pg_parquet_16       # PG 16
dnf install -y pg_parquet_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-parquet   # PG 19
apt install -y postgresql-18-pg-parquet   # PG 18
apt install -y postgresql-17-pg-parquet   # PG 17
apt install -y postgresql-16-pg-parquet   # PG 16
apt install -y postgresql-15-pg-parquet   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_parquet';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_parquet;
```

## Usage

Sources:

- [Official source](https://github.com/CrunchyData/pg_parquet/blob/v0.6.0/README.md)
- [Official source](https://github.com/CrunchyData/pg_parquet/blob/v0.6.0/pg_parquet.control)
- [Official source](https://github.com/CrunchyData/pg_parquet/blob/v0.6.0/Cargo.toml)
- [Official source](https://github.com/CrunchyData/pg_parquet/releases/tag/v0.6.0)

`pg_parquet` 0.6.0 reads and writes Parquet through PostgreSQL COPY and inspects file metadata. The source targets PostgreSQL 14–19. It uses server-side local files or S3, Azure, GCS and HTTP(S) endpoints; these locations and credentials are separate from a PostgreSQL backup.

### Enable and Copy

Preserve other preload entries, add the library and restart. A superuser creates the non-relocatable extension. The server process must have access to the chosen local path or remote object. Run the example as an administrator with the relevant COPY privileges:

```ini
shared_preload_libraries = 'pg_parquet'
```

```sql
CREATE EXTENSION pg_parquet;
CREATE TABLE parquet_demo (id bigint, label text);
INSERT INTO parquet_demo VALUES (1, 'first'), (2, 'second');
COPY parquet_demo TO '/tmp/parquet_demo.parquet' WITH (format parquet);
CREATE TABLE parquet_copy (LIKE parquet_demo);
COPY parquet_copy FROM '/tmp/parquet_demo.parquet' WITH (format parquet, match_by name);
SELECT * FROM parquet.schema('/tmp/parquet_demo.parquet');
SELECT * FROM parquet.file_metadata('/tmp/parquet_demo.parquet');
```

Use COPY of a query for a filtered export. STDIN, STDOUT and PROGRAM streams require an explicit Parquet format. External output is not rolled back with the SQL transaction: failed or rolled-back exports can leave files or incomplete uploads.

### Schema and Type Handling

```sql
CREATE TABLE inferred_demo () WITH (load_from = '/tmp/parquet_demo.parquet');
SET pg_parquet.max_parallel_workers = 2;
SELECT * FROM pg_stat_progress_copy;
```

The `load_from` table option infers columns and loads rows. Composite types are created in `parquet_structs`; the creator needs CREATE there, which installation grants to PUBLIC. Generated types survive dropping the table. Dropping the extension with CASCADE can remove dependent columns. Maps require `crunchy_map`; unsupported inferred types need an explicitly defined target table.

`match_by name` matches nested composite fields by name; the default is position. Version 0.6.0 improves dictionary/decimal/INT96 and infinite date/timestamp reads, preserves JSON text and rejects embedded NUL strings. COPY TO rejects multidimensional arrays. PostGIS geometry/geography use Parquet geospatial types; curves and other unsupported geometries must be converted or exported explicitly as binary.

### Files, Performance and Credentials

`parquet.metadata`, `parquet.kv_metadata`, `parquet.column_stats` and `parquet.schema` inspect files. The `bloom_filter` and `dictionary` export options select columns; COPY FROM reads all rows and does not use bloom filters to filter them.

`pg_parquet.max_parallel_workers` defaults to zero. Eligible copies can use parallel workers; query exports, temporary tables, triggers/defaults and other cases can keep the serial path. Import workers decode while the leader inserts. Inspect `pg_stat_progress_copy` and size resources for the actual file and table.

`file_size_bytes` writes a folder of files. Nonempty folders are refused unless `overwrite true` is specified, except that a denied listing cannot establish emptiness and retains the older write behavior. Overwrite can remove files from an earlier copy. Concurrent writers are excluded within one PostgreSQL instance; other instances require external coordination. A single-file destination retains its replacement behavior. Plan cleanup for failed exports.

`pg_parquet.profile_name` selects an object-store identity only if the role is allowed by `parquet.user_profile_mapping`. Only a superuser or `parquet_profile_manager` may manage that mapping; privileges are rechecked for each copy. Keep credentials in protected server-side files/environment. `pg_parquet.allow_credentials_in_parameters` defaults off because SQL credentials can appear in logs and activity views. HTTP exports buffer one file in memory and cap it at 10 MiB; object-store parallel multipart requirements vary, including limitations for stores demanding equally sized parts.

### Upgrade

Deploy files matching the server major, follow the preload maintenance procedure and use the supplied SQL update path. Check existing folder-export jobs, inferred composite-type dependencies, credential mappings and type coercion behavior before moving to 0.6.0.
