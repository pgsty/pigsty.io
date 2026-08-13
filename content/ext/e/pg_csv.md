---
title: "pg_csv"
linkTitle: "pg_csv"
description: "Flexible CSV processing for Postgres"
weight: 4760
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/PostgREST/pg_csv">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">PostgREST/pg_csv</div>
    <div class="ext-card__desc">https://github.com/PostgREST/pg_csv</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_csv-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_csv-1.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_csv-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_csv`**](/ext/e/pg_csv) | `1.0.2` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4760  | [**`pg_csv`**](/ext/e/pg_csv) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`file_fdw`](/ext/e/file_fdw) [`pg_bulkload`](/ext/e/pg_bulkload) [`omni_csv`](/ext/e/omni_csv) [`aws_s3`](/ext/e/aws_s3) [`pg_parquet`](/ext/e/pg_parquet) [`log_fdw`](/ext/e/log_fdw) [`pg_lake`](/ext/e/pg_lake) [`pg_sqlog`](/ext/e/pg_sqlog) [`pg_fact_loader`](/ext/e/pg_fact_loader) [`pg_ducklake`](/ext/e/pg_ducklake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PIGSTY RPM and PGDG DEB package version 1.0.2 cover PostgreSQL 14-18; SQL/control version is 1.0.1 and the extension is not trusted.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_csv` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_csv_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-csv` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 |
| el8.aarch64 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 | AVAIL PIGSTY 1.0.2 2 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 | AVAIL PIGSTY 1.0.2 3 |
| d12.x86_64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| d12.aarch64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| d13.x86_64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| d13.aarch64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| u22.x86_64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| u22.aarch64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| u24.x86_64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| u24.aarch64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| u26.x86_64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
| u26.aarch64 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 | AVAIL PGDG 1.0.2 3 |
@ el8.x86_64 18 pg_csv_18 pg_csv_18-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 17.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_csv_18-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_csv_18 pg_csv_18-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 14.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_csv_18-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_csv_18 pg_csv_18-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_csv_18-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_csv_18 pg_csv_18-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_csv_18-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_csv_18 pg_csv_18-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_csv_18-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_csv_18 pg_csv_18-1.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.1 14.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_csv_18-1.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_csv_18 pg_csv_18-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_csv_18-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_csv_18 pg_csv_18-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_csv_18-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_csv_18 pg_csv_18-1.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_csv_18-1.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_csv_18 pg_csv_18-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 13.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_csv_18-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_csv_18 pg_csv_18-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_csv_18-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_csv_18 pg_csv_18-1.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_csv_18-1.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_csv_18 pg_csv_18-1.0.1-1PGDG.rhel10.x86_64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_csv_18-1.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_csv_18 pg_csv_18-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_csv_18-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_csv_18 pg_csv_18-1.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_csv_18-1.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_csv_18 pg_csv_18-1.0.1-1PGDG.rhel10.aarch64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_csv_18-1.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg12+1_amd64.deb pgdg 1.0.2 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg12+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg12+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg12+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 16.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg13+1_amd64.deb pgdg 1.0.2 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg13+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg13+1_arm64.deb pgdg 1.0.2 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg13+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb pgdg 1.0.1 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 16.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb pgdg 1.0.2 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb pgdg 1.0.1 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 16.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb pgdg 1.0.2 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb pgdg 1.0.1 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 16.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb pgdg 1.0.2 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb pgdg 1.0.1 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb pgdg 1.0.1 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 17.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb pgdg 1.0.2 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb pgdg 1.0.1 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-csv postgresql-18-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 17.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-18-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_csv_17 pg_csv_17-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 17.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_csv_17-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_csv_17 pg_csv_17-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 14.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_csv_17-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_csv_17 pg_csv_17-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_csv_17-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_csv_17 pg_csv_17-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_csv_17-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_csv_17 pg_csv_17-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_csv_17-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_csv_17 pg_csv_17-1.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.1 14.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_csv_17-1.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_csv_17 pg_csv_17-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_csv_17-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_csv_17 pg_csv_17-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_csv_17-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_csv_17 pg_csv_17-1.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_csv_17-1.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_csv_17 pg_csv_17-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 13.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_csv_17-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_csv_17 pg_csv_17-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_csv_17-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_csv_17 pg_csv_17-1.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_csv_17-1.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_csv_17 pg_csv_17-1.0.1-1PGDG.rhel10.x86_64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_csv_17-1.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_csv_17 pg_csv_17-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_csv_17-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_csv_17 pg_csv_17-1.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_csv_17-1.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_csv_17 pg_csv_17-1.0.1-1PGDG.rhel10.aarch64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_csv_17-1.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg12+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg12+1_amd64.deb pgdg 1.0.1 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 16.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg12+1_arm64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg12+1_arm64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg13+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg13+1_amd64.deb pgdg 1.0.1 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 16.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg13+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg13+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 16.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb pgdg 1.0.2 18.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb pgdg 1.0.1 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 17.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb pgdg 1.0.2 17.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb pgdg 1.0.1 17.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 17.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb pgdg 1.0.1 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 16.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb pgdg 1.0.2 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb pgdg 1.0.1 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb pgdg 1.0.2 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb pgdg 1.0.1 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 17.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb pgdg 1.0.2 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb pgdg 1.0.1 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-csv postgresql-17-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 17.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-17-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_csv_16 pg_csv_16-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 17.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_csv_16-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_csv_16 pg_csv_16-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 14.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_csv_16-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_csv_16 pg_csv_16-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_csv_16-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_csv_16 pg_csv_16-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_csv_16-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_csv_16 pg_csv_16-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_csv_16-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_csv_16 pg_csv_16-1.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.1 14.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_csv_16-1.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_csv_16 pg_csv_16-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_csv_16-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_csv_16 pg_csv_16-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_csv_16-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_csv_16 pg_csv_16-1.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.1 14.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_csv_16-1.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_csv_16 pg_csv_16-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 13.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_csv_16-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_csv_16 pg_csv_16-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_csv_16-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_csv_16 pg_csv_16-1.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.1 14.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_csv_16-1.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_csv_16 pg_csv_16-1.0.1-1PGDG.rhel10.x86_64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_csv_16-1.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_csv_16 pg_csv_16-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_csv_16-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_csv_16 pg_csv_16-1.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_csv_16-1.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_csv_16 pg_csv_16-1.0.1-1PGDG.rhel10.aarch64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_csv_16-1.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg12+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg12+1_amd64.deb pgdg 1.0.1 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 16.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg12+1_arm64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg12+1_arm64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg13+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg13+1_amd64.deb pgdg 1.0.1 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg13+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg13+1_arm64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 16.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb pgdg 1.0.2 18.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb pgdg 1.0.1 18.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 17.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb pgdg 1.0.2 17.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb pgdg 1.0.1 17.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 17.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb pgdg 1.0.2 17.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb pgdg 1.0.1 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 16.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb pgdg 1.0.2 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb pgdg 1.0.1 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb pgdg 1.0.2 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb pgdg 1.0.1 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 17.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb pgdg 1.0.2 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb pgdg 1.0.1 16.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-csv postgresql-16-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 17.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-16-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_csv_15 pg_csv_15-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_csv_15-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_csv_15 pg_csv_15-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_csv_15-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_csv_15 pg_csv_15-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_csv_15-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_csv_15 pg_csv_15-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 14.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_csv_15-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_csv_15 pg_csv_15-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_csv_15-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_csv_15 pg_csv_15-1.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.1 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_csv_15-1.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_csv_15 pg_csv_15-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_csv_15-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_csv_15 pg_csv_15-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_csv_15-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_csv_15 pg_csv_15-1.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.1 14.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_csv_15-1.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_csv_15 pg_csv_15-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 14.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_csv_15-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_csv_15 pg_csv_15-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_csv_15-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_csv_15 pg_csv_15-1.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.1 14.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_csv_15-1.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_csv_15 pg_csv_15-1.0.1-1PGDG.rhel10.x86_64.rpm pgdg 1.0.1 14.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_csv_15-1.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_csv_15 pg_csv_15-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_csv_15-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_csv_15 pg_csv_15-1.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.1 14.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_csv_15-1.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_csv_15 pg_csv_15-1.0.1-1PGDG.rhel10.aarch64.rpm pgdg 1.0.1 15.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_csv_15-1.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg12+1_amd64.deb pgdg 1.0.2 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg12+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg12+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg12+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 16.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg13+1_amd64.deb pgdg 1.0.2 17.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg13+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg13+1_arm64.deb pgdg 1.0.2 17.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg13+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 16.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb pgdg 1.0.2 18.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb pgdg 1.0.1 18.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb pgdg 1.0.2 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb pgdg 1.0.1 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 17.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb pgdg 1.0.2 17.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb pgdg 1.0.1 17.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 16.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 17.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-csv postgresql-15-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 17.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-15-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_csv_14 pg_csv_14-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_csv_14-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_csv_14 pg_csv_14-1.0.1-1PGDG.rhel8.x86_64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_csv_14-1.0.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_csv_14 pg_csv_14-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_csv_14-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_csv_14 pg_csv_14-1.0.1-1PGDG.rhel8.aarch64.rpm pgdg 1.0.1 14.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_csv_14-1.0.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_csv_14 pg_csv_14-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_csv_14-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_csv_14 pg_csv_14-1.0.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.1 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_csv_14-1.0.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_csv_14 pg_csv_14-1.0.1-1PGDG.rhel9.x86_64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_csv_14-1.0.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_csv_14 pg_csv_14-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_csv_14-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_csv_14 pg_csv_14-1.0.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.1 14.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_csv_14-1.0.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_csv_14 pg_csv_14-1.0.1-1PGDG.rhel9.aarch64.rpm pgdg 1.0.1 14.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_csv_14-1.0.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_csv_14 pg_csv_14-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_csv_14-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_csv_14 pg_csv_14-1.0.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.1 14.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_csv_14-1.0.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_csv_14 pg_csv_14-1.0.1-1PGDG.rhel10.x86_64.rpm pgdg 1.0.1 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_csv_14-1.0.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_csv_14 pg_csv_14-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_csv_14-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_csv_14 pg_csv_14-1.0.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.1 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_csv_14-1.0.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_csv_14 pg_csv_14-1.0.1-1PGDG.rhel10.aarch64.rpm pgdg 1.0.1 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_csv_14-1.0.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg12+1_amd64.deb pgdg 1.0.2 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg12+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 16.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg12+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg12+1_arm64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 16.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg13+1_amd64.deb pgdg 1.0.2 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg13+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 16.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg13+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg13+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 16.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb pgdg 1.0.2 18.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb pgdg 1.0.1 18.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 17.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb pgdg 1.0.2 18.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb pgdg 1.0.1 18.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 17.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb pgdg 1.0.2 17.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb pgdg 1.0.1 17.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 16.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb pgdg 1.0.2 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb pgdg 1.0.1 17.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 16.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb pgdg 1.0.1 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 17.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb pgdg 1.0.2 17.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb pgdg 1.0.1 16.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-csv postgresql-14-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 17.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-csv/postgresql-14-pg-csv_1.0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_csv` using `pig build`:

```bash
pig build pkg pg_csv         # build RPM / DEB packages
```


## Install

You can install `pg_csv` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_csv;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_csv -v 18  # PG 18
pig ext install -y pg_csv -v 17  # PG 17
pig ext install -y pg_csv -v 16  # PG 16
pig ext install -y pg_csv -v 15  # PG 15
pig ext install -y pg_csv -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_csv_18       # PG 18
dnf install -y pg_csv_17       # PG 17
dnf install -y pg_csv_16       # PG 16
dnf install -y pg_csv_15       # PG 15
dnf install -y pg_csv_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-csv   # PG 18
apt install -y postgresql-17-pg-csv   # PG 17
apt install -y postgresql-16-pg-csv   # PG 16
apt install -y postgresql-15-pg-csv   # PG 15
apt install -y postgresql-14-pg-csv   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_csv;
```




## Usage

> [pg_csv: flexible CSV processing as aggregate functions](https://github.com/PostgREST/pg_csv)

Provides a CSV aggregate that composes with SQL expressions, unlike COPY which requires a special protocol. RFC 4180 compliant with proper quoting.

```sql
CREATE EXTENSION pg_csv;
```

### Functions

| Function | Description |
|---|---|
| `csv_agg(record)` | Aggregate rows into CSV text with headers |
| `csv_agg(record, csv_options(...))` | Aggregate with custom options |
| `csv_options(delimiter, bom, header, nullstr)` | Configure CSV output options |

### Examples

```sql
CREATE TABLE projects AS SELECT * FROM (VALUES
  (1, 'Death Star OS', 1),
  (2, 'Windows 95 Rebooted', 1),
  (3, 'Project "Comma,Please"', 2)
) AS _(id, name, client_id);

-- Basic CSV output
SELECT csv_agg(x) FROM projects x;
-- id,name,client_id
-- 1,Death Star OS,1
-- 2,Windows 95 Rebooted,1
-- 3,"Project ""Comma,Please""",2

-- Pipe-separated values
SELECT csv_agg(x, csv_options(delimiter := '|')) FROM projects x;

-- Tab-separated values
SELECT csv_agg(x, csv_options(delimiter := E'\t')) FROM projects x;

-- With BOM for Excel compatibility
SELECT csv_agg(x, csv_options(bom := true)) FROM projects x;
```
