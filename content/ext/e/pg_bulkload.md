---
title: "pg_bulkload"
linkTitle: "pg_bulkload"
description: "pg_bulkload is a high speed data loading utility for PostgreSQL"
weight: 9830
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ossc-db/pg_bulkload">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ossc-db/pg_bulkload</div>
    <div class="ext-card__desc">https://github.com/ossc-db/pg_bulkload</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_bulkload-VERSION3_1_23.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_bulkload-VERSION3_1_23.tar.gz</div>
    <div class="ext-card__desc">pg_bulkload-VERSION3_1_23.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_bulkload`**](/ext/e/pg_bulkload) | `3.1.23` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9830  | [**`pg_bulkload`**](/ext/e/pg_bulkload) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`file_fdw`](/ext/e/file_fdw) [`aws_s3`](/ext/e/aws_s3) [`pg_parquet`](/ext/e/pg_parquet) [`pg_lake`](/ext/e/pg_lake) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_fact_loader`](/ext/e/pg_fact_loader) [`pg_csv`](/ext/e/pg_csv) [`omni_csv`](/ext/e/omni_csv) [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg18 fixed by vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.23` | {{< pgvers "18,17,16,15" >}} | `pg_bulkload` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.23` | {{< pgvers "18,17,16,15" >}} | `pg_bulkload_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.23` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-bulkload` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PGDG 3.1.23 3 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 3 | AVAIL PGDG 3.1.23 4 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PGDG 3.1.23 3 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 3 | AVAIL PGDG 3.1.23 4 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 | AVAIL PGDG 3.1.23 2 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PGDG 3.1.23 6 | AVAIL PGDG 3.1.23 5 | AVAIL PGDG 3.1.23 5 | AVAIL PGDG 3.1.23 5 |
| d12.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| d12.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| d13.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| d13.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| u22.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| u22.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| u24.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| u24.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| u26.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
| u26.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 | AVAIL PIGSTY 3.1.23 1 |
@ el8.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel8.10.x86_64.rpm pgdg 3.1.23 69.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_bulkload_18-3.1.23-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGSTY.el8.x86_64.rpm pigsty 3.1.23 210.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bulkload_18-3.1.23-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGDG.rhel8.10.x86_64.rpm pgdg 3.1.23 68.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_bulkload_18-3.1.23-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel8.10.aarch64.rpm pgdg 3.1.23 64.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_bulkload_18-3.1.23-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGSTY.el8.aarch64.rpm pigsty 3.1.23 203.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bulkload_18-3.1.23-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGDG.rhel8.10.aarch64.rpm pgdg 3.1.23 63.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_bulkload_18-3.1.23-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel9.9.x86_64.rpm pgdg 3.1.23 63.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_bulkload_18-3.1.23-6PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGSTY.el9.x86_64.rpm pigsty 3.1.23 207.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bulkload_18-3.1.23-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel9.9.aarch64.rpm pgdg 3.1.23 60.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_bulkload_18-3.1.23-6PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGSTY.el9.aarch64.rpm pigsty 3.1.23 202.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bulkload_18-3.1.23-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel10.3.x86_64.rpm pgdg 3.1.23 64.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_bulkload_18-3.1.23-6PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGSTY.el10.x86_64.rpm pigsty 3.1.23 208.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bulkload_18-3.1.23-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel10.3.aarch64.rpm pgdg 3.1.23 61.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bulkload_18-3.1.23-6PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-6PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 61.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bulkload_18-3.1.23-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGSTY.el10.aarch64.rpm pigsty 3.1.23 203.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bulkload_18-3.1.23-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 60.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bulkload_18-3.1.23-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGDG.rhel10.1.aarch64.rpm pgdg 3.1.23 60.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bulkload_18-3.1.23-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_bulkload_18 pg_bulkload_18-3.1.23-1PGDG.rhel10.0.aarch64.rpm pgdg 3.1.23 60.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_bulkload_18-3.1.23-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb pigsty 3.1.23 228.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb pigsty 3.1.23 220.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb pigsty 3.1.23 230.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb pigsty 3.1.23 222.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb pigsty 3.1.23 240.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb pigsty 3.1.23 234.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb pigsty 3.1.23 230.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb pigsty 3.1.23 227.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb pigsty 3.1.23 229.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-bulkload postgresql-18-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb pigsty 3.1.23 225.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-18-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel8.10.x86_64.rpm pgdg 3.1.23 69.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_bulkload_17-3.1.23-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGSTY.el8.x86_64.rpm pigsty 3.1.23 209.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bulkload_17-3.1.23-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel8.10.aarch64.rpm pgdg 3.1.23 64.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_bulkload_17-3.1.23-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGSTY.el8.aarch64.rpm pigsty 3.1.23 202.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bulkload_17-3.1.23-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel9.9.x86_64.rpm pgdg 3.1.23 63.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_bulkload_17-3.1.23-6PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGSTY.el9.x86_64.rpm pigsty 3.1.23 206.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bulkload_17-3.1.23-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel9.9.aarch64.rpm pgdg 3.1.23 60.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_bulkload_17-3.1.23-6PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGSTY.el9.aarch64.rpm pigsty 3.1.23 201.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bulkload_17-3.1.23-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel10.3.x86_64.rpm pgdg 3.1.23 64.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_bulkload_17-3.1.23-6PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGSTY.el10.x86_64.rpm pigsty 3.1.23 207.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bulkload_17-3.1.23-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel10.3.aarch64.rpm pgdg 3.1.23 61.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bulkload_17-3.1.23-6PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-6PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 61.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bulkload_17-3.1.23-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGSTY.el10.aarch64.rpm pigsty 3.1.23 202.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bulkload_17-3.1.23-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.23-1PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 60.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bulkload_17-3.1.23-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_bulkload_17 pg_bulkload_17-3.1.22-2PGDG.rhel10.aarch64.rpm pgdg 3.1.22 60.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_bulkload_17-3.1.22-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb pigsty 3.1.23 227.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb pigsty 3.1.23 219.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb pigsty 3.1.23 229.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb pigsty 3.1.23 221.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb pigsty 3.1.23 286.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb pigsty 3.1.23 281.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb pigsty 3.1.23 230.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb pigsty 3.1.23 227.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb pigsty 3.1.23 229.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-bulkload postgresql-17-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb pigsty 3.1.23 225.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-17-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel8.10.x86_64.rpm pgdg 3.1.23 69.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bulkload_16-3.1.23-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGSTY.el8.x86_64.rpm pigsty 3.1.23 211.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bulkload_16-3.1.23-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.21-1PGDG.rhel8.x86_64.rpm pgdg 3.1.21 76.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_bulkload_16-3.1.21-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel8.10.aarch64.rpm pgdg 3.1.23 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bulkload_16-3.1.23-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGSTY.el8.aarch64.rpm pigsty 3.1.23 203.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bulkload_16-3.1.23-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.21-1PGDG.rhel8.aarch64.rpm pgdg 3.1.21 71.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_bulkload_16-3.1.21-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel9.9.x86_64.rpm pgdg 3.1.23 63.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_bulkload_16-3.1.23-6PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGSTY.el9.x86_64.rpm pigsty 3.1.23 207.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bulkload_16-3.1.23-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel9.9.aarch64.rpm pgdg 3.1.23 60.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_bulkload_16-3.1.23-6PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGSTY.el9.aarch64.rpm pigsty 3.1.23 202.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bulkload_16-3.1.23-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel10.3.x86_64.rpm pgdg 3.1.23 64.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_bulkload_16-3.1.23-6PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGSTY.el10.x86_64.rpm pigsty 3.1.23 208.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bulkload_16-3.1.23-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel10.3.aarch64.rpm pgdg 3.1.23 61.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bulkload_16-3.1.23-6PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-6PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 61.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bulkload_16-3.1.23-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGSTY.el10.aarch64.rpm pigsty 3.1.23 203.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bulkload_16-3.1.23-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.23-1PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 60.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bulkload_16-3.1.23-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_bulkload_16 pg_bulkload_16-3.1.22-2PGDG.rhel10.aarch64.rpm pgdg 3.1.22 60.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_bulkload_16-3.1.22-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb pigsty 3.1.23 229.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb pigsty 3.1.23 220.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb pigsty 3.1.23 230.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb pigsty 3.1.23 221.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb pigsty 3.1.23 285.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb pigsty 3.1.23 279.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb pigsty 3.1.23 231.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb pigsty 3.1.23 227.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb pigsty 3.1.23 230.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-bulkload postgresql-16-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb pigsty 3.1.23 225.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-16-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel8.10.x86_64.rpm pgdg 3.1.23 69.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bulkload_15-3.1.23-6PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGSTY.el8.x86_64.rpm pigsty 3.1.23 211.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bulkload_15-3.1.23-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.21-1PGDG.rhel8.x86_64.rpm pgdg 3.1.21 76.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bulkload_15-3.1.21-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.20-1.rhel8.x86_64.rpm pgdg 3.1.20 76.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_bulkload_15-3.1.20-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel8.10.aarch64.rpm pgdg 3.1.23 64.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bulkload_15-3.1.23-6PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGSTY.el8.aarch64.rpm pigsty 3.1.23 203.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bulkload_15-3.1.23-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.21-1PGDG.rhel8.aarch64.rpm pgdg 3.1.21 71.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bulkload_15-3.1.21-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.20-1.rhel8.aarch64.rpm pgdg 3.1.20 71.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_bulkload_15-3.1.20-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel9.9.x86_64.rpm pgdg 3.1.23 63.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_bulkload_15-3.1.23-6PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGSTY.el9.x86_64.rpm pigsty 3.1.23 207.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bulkload_15-3.1.23-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel9.9.aarch64.rpm pgdg 3.1.23 60.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_bulkload_15-3.1.23-6PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGSTY.el9.aarch64.rpm pigsty 3.1.23 202.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bulkload_15-3.1.23-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel10.3.x86_64.rpm pgdg 3.1.23 64.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_bulkload_15-3.1.23-6PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGSTY.el10.x86_64.rpm pigsty 3.1.23 209.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bulkload_15-3.1.23-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel10.3.aarch64.rpm pgdg 3.1.23 61.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bulkload_15-3.1.23-6PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-6PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 61.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bulkload_15-3.1.23-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGSTY.el10.aarch64.rpm pigsty 3.1.23 203.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bulkload_15-3.1.23-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.23-1PGDG.rhel10.2.aarch64.rpm pgdg 3.1.23 60.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bulkload_15-3.1.23-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_bulkload_15 pg_bulkload_15-3.1.22-2PGDG.rhel10.aarch64.rpm pgdg 3.1.22 60.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_bulkload_15-3.1.22-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb pigsty 3.1.23 229.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb pigsty 3.1.23 221.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb pigsty 3.1.23 231.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb pigsty 3.1.23 222.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb pigsty 3.1.23 286.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb pigsty 3.1.23 281.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb pigsty 3.1.23 231.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb pigsty 3.1.23 228.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb pigsty 3.1.23 230.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-bulkload postgresql-15-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb pigsty 3.1.23 226.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bulkload/postgresql-15-pg-bulkload_3.1.23-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_bulkload` using `pig build`:

```bash
pig build pkg pg_bulkload         # build RPM / DEB packages
```


## Install

You can install `pg_bulkload` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_bulkload;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_bulkload -v 18  # PG 18
pig ext install -y pg_bulkload -v 17  # PG 17
pig ext install -y pg_bulkload -v 16  # PG 16
pig ext install -y pg_bulkload -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_bulkload_18       # PG 18
dnf install -y pg_bulkload_17       # PG 17
dnf install -y pg_bulkload_16       # PG 16
dnf install -y pg_bulkload_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-bulkload   # PG 18
apt install -y postgresql-17-pg-bulkload   # PG 17
apt install -y postgresql-16-pg-bulkload   # PG 16
apt install -y postgresql-15-pg-bulkload   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_bulkload;
```




## Usage

> [pg_bulkload: pg_bulkload is a high speed data loading utility for PostgreSQL](https://github.com/ossc-db/pg_bulkload)

A high-speed data loading tool for PostgreSQL that bypasses shared buffers for massive data loads, with built-in ETL features for input validation and data transformation.

### Basic Usage

Load data using a control file:

```bash
pg_bulkload sample_csv.ctl
```

Output:

```text
NOTICE: BULK LOAD START
NOTICE: BULK LOAD END
    0 Rows skipped.
    8 Rows successfully loaded.
    0 Rows not loaded due to parse errors.
    0 Rows not loaded due to duplicate errors.
    0 Rows replaced with new rows.
```

### Control File Example

```ini
# sample_csv.ctl
OUTPUT = my_table
INPUT = /path/to/data.csv
TYPE = CSV
DELIMITER = ,
QUOTE = "\""
ESCAPE = "\""
NULL = ""
SKIP = 1              # skip header row
PARSE_ERRORS = 100    # allow up to 100 parse errors
DUPLICATE_ERRORS = 0  # reject on duplicate key errors
ON_DUPLICATE_KEEP = NEW  # or OLD
TRUNCATE = NO
```

### Loading Modes

- **DIRECT**: Bypasses shared buffers, writes directly to data files (fastest)
- **PARALLEL**: Uses multiple processes for loading
- **CSV/BINARY/FIXED**: Supports various input formats

### SQL Interface

```sql
-- Load data from within SQL
SELECT pg_bulkload(
    'OUTPUT = my_table, INPUT = /path/to/data.csv, TYPE = CSV'
);
```

### Key Features

- Bypasses PostgreSQL shared buffers for maximum throughput
- Input data validation with configurable error thresholds
- Duplicate key handling (keep new, keep old, or reject)
- CSV, fixed-length, and binary input formats
- Skip rows, filter functions for data transformation
- Parallel loading support

### Documentation

Full documentation: http://ossc-db.github.io/pg_bulkload/index.html
