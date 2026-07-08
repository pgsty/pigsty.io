---
title: "pg_fact_loader"
linkTitle: "pg_fact_loader"
description: "build fact tables with Postgres"
weight: 9820
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/enova/pg_fact_loader">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">enova/pg_fact_loader</div>
    <div class="ext-card__desc">https://github.com/enova/pg_fact_loader</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_fact_loader`**](/ext/e/pg_fact_loader) | `2.0.1` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9820  | [**`pg_fact_loader`**](/ext/e/pg_fact_loader) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fact_loader` |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_partman`](/ext/e/pg_partman) [`pg_jobmon`](/ext/e/pg_jobmon) [`mimeo`](/ext/e/mimeo) [`timescaledb`](/ext/e/timescaledb) [`citus`](/ext/e/citus) [`tablefunc`](/ext/e/tablefunc) [`pg_bulkload`](/ext/e/pg_bulkload) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_fact_loader` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_fact_loader_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.1` | {{< pgvers "17,16,15,14" >}} | `postgresql-$v-pg-fact-loader` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| el8.aarch64 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 |
| el9.x86_64 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| el9.aarch64 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| el10.x86_64 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 |
| el10.aarch64 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 1 |
| d12.x86_64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| d12.aarch64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| d13.x86_64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| d13.aarch64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| u22.x86_64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| u22.aarch64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| u24.x86_64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| u24.aarch64 | MISS PGDG - 0 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 | AVAIL PGDG 2.0.1 1 |
| u26.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_fact_loader_18-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_fact_loader_18-2.0.1-3PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_fact_loader_18-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_fact_loader_18-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_fact_loader_18-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_fact_loader_18-2.0.1-3PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_fact_loader_18-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_fact_loader_18-2.0.1-3PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_fact_loader_18-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_fact_loader_18 pg_fact_loader_18-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_fact_loader_18-2.0.1-3PGDG.rhel10.noarch.rpm
@ el8.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_fact_loader_17-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_fact_loader_17-2.0.1-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_fact_loader_17-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_fact_loader_17-2.0.1-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_fact_loader_17-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_fact_loader_17-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_fact_loader_17-2.0.1-2PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_fact_loader_17-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_fact_loader_17-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_fact_loader_17-2.0.1-2PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_fact_loader_17-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_fact_loader_17-2.0.1-3PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_fact_loader_17-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_fact_loader_17 pg_fact_loader_17-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_fact_loader_17-2.0.1-3PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-fact-loader postgresql-17-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-17-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_fact_loader_16-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_fact_loader_16-2.0.1-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-1PGDG.f42.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_fact_loader_16-2.0.1-1PGDG.f42.noarch.rpm
@ el8.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_fact_loader_16-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_fact_loader_16-2.0.1-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_fact_loader_16-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_fact_loader_16-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_fact_loader_16-2.0.1-2PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_fact_loader_16-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_fact_loader_16-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_fact_loader_16-2.0.1-2PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_fact_loader_16-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_fact_loader_16-2.0.1-3PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_fact_loader_16-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_fact_loader_16 pg_fact_loader_16-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_fact_loader_16-2.0.1-3PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-fact-loader postgresql-16-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-16-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_fact_loader_15-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_fact_loader_15-2.0.1-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-1PGDG.f42.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_fact_loader_15-2.0.1-1PGDG.f42.noarch.rpm
@ el8.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_fact_loader_15-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_fact_loader_15-2.0.1-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_fact_loader_15-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_fact_loader_15-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_fact_loader_15-2.0.1-2PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_fact_loader_15-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_fact_loader_15-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_fact_loader_15-2.0.1-2PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_fact_loader_15-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_fact_loader_15-2.0.1-3PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_fact_loader_15-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_fact_loader_15 pg_fact_loader_15-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_fact_loader_15-2.0.1-3PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-fact-loader postgresql-15-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-15-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_fact_loader_14-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_fact_loader_14-2.0.1-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-1PGDG.f42.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_fact_loader_14-2.0.1-1PGDG.f42.noarch.rpm
@ el8.aarch64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_fact_loader_14-2.0.1-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-2PGDG.rhel8.noarch.rpm pgdg 2.0.1 36.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_fact_loader_14-2.0.1-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_fact_loader_14-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_fact_loader_14-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_fact_loader_14-2.0.1-2PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel9.8.noarch.rpm pgdg 2.0.1 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_fact_loader_14-2.0.1-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_fact_loader_14-2.0.1-3PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-2PGDG.rhel9.noarch.rpm pgdg 2.0.1 34.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_fact_loader_14-2.0.1-2PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel10.2.noarch.rpm pgdg 2.0.1 34.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_fact_loader_14-2.0.1-3PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_fact_loader_14-2.0.1-3PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_fact_loader_14 pg_fact_loader_14-2.0.1-3PGDG.rhel10.noarch.rpm pgdg 2.0.1 35.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_fact_loader_14-2.0.1-3PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg120+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg120+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg130+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg130+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb pgdg 2.0.1 40.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-fact-loader postgresql-14-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb pgdg 2.0.1 40.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-fact-loader/postgresql-14-pg-fact-loader_2.0.1-5.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_fact_loader` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_fact_loader;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_fact_loader -v 18  # PG 18
pig ext install -y pg_fact_loader -v 17  # PG 17
pig ext install -y pg_fact_loader -v 16  # PG 16
pig ext install -y pg_fact_loader -v 15  # PG 15
pig ext install -y pg_fact_loader -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_fact_loader_18       # PG 18
dnf install -y pg_fact_loader_17       # PG 17
dnf install -y pg_fact_loader_16       # PG 16
dnf install -y pg_fact_loader_15       # PG 15
dnf install -y pg_fact_loader_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-fact-loader   # PG 18
apt install -y postgresql-17-pg-fact-loader   # PG 17
apt install -y postgresql-16-pg-fact-loader   # PG 16
apt install -y postgresql-15-pg-fact-loader   # PG 15
apt install -y postgresql-14-pg-fact-loader   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_fact_loader;
```




## Usage

> [pg_fact_loader: build fact tables with Postgres](https://github.com/enova/pg_fact_loader)

Build and maintain fact tables using queue-based change data capture. Processes audit/change log tables to incrementally update fact tables.

### Enabling

```sql
CREATE EXTENSION pg_fact_loader;
```

Optionally with pglogical for replica-based setup:

```sql
CREATE EXTENSION pglogical;
CREATE EXTENSION pglogical_ticker;
CREATE EXTENSION pg_fact_loader;
```

### Workflow

1. **Replicate source tables** to a reporting database (via pglogical or other means)
2. **Create audit/change log tables** on the OLTP system for source tables
3. **Create a fact table** structure for aggregated data
4. **Create a merge function** that takes a key ID and returns one row of the fact table
5. **Configure pg_fact_loader** to wire queue tables to fact tables
6. **Backfill** the fact table initially
7. **Schedule** the worker to process changes continuously

### Configuration Tables

```sql
-- Register a fact table
INSERT INTO fact_loader.fact_tables (fact_table_relid, fact_table_agg_proid, ...)
VALUES ('public.customers_fact'::regclass, 'customers_fact_merge'::regproc, ...);

-- Register queue (audit) tables
INSERT INTO fact_loader.queue_tables (queue_table_relid, queue_of_base_table_relid, ...)
VALUES ('audit.customers_audit'::regclass, 'public.customers'::regclass, ...);

-- Connect queue tables to fact tables with merge functions
INSERT INTO fact_loader.queue_table_deps
    (fact_table_id, queue_table_id, insert_merge_proid, update_merge_proid, delete_merge_proid)
VALUES (1, 1, 'customers_fact_merge'::regproc, 'customers_fact_merge'::regproc, 'customers_fact_merge'::regproc);

-- Define how to retrieve the key from queue entries
INSERT INTO fact_loader.key_retrieval_sequences
    (queue_table_dep_id, return_columns, is_fact_key)
VALUES (1, '{customer_id}', true);
```

### Running the Worker

```sql
-- Process pending changes
SELECT fact_loader.worker();

-- Schedule this to run periodically (e.g., every few seconds via pg_cron)
```

### Initial Backfill

```sql
-- Run the merge function for every existing row
SELECT customers_fact_merge(customer_id) FROM customers;
```

### Adding Batch ID Fields

```sql
SELECT fact_loader.add_batch_id_fields();
```

### Key Features

- Queue-based incremental fact table updates
- Supports insert, update, and delete events
- Handles multi-level key retrieval (joins through multiple tables)
- Fact table dependency chains (child facts updated after parent)
- Checks replication lag before processing (when used with pglogical)
