---
title: "mimeo"
linkTitle: "mimeo"
description: "Extension for specialized, per-table replication between PostgreSQL instances"
weight: 9700
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/omniti-labs/mimeo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">omniti-labs/mimeo</div>
    <div class="ext-card__desc">https://github.com/omniti-labs/mimeo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/mimeo-1.5.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">mimeo-1.5.1.tar.gz</div>
    <div class="ext-card__desc">mimeo-1.5.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`mimeo`**](/ext/e/mimeo) | `1.5.1` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9700  | [**`mimeo`**](/ext/e/mimeo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dblink`](/ext/e/dblink) [`pglogical`](/ext/e/pglogical) [`spock`](/ext/e/spock) [`db_migrator`](/ext/e/db_migrator) [`pgactive`](/ext/e/pgactive) [`postgres_fdw`](/ext/e/postgres_fdw) [`pgoutput`](/ext/e/pgoutput) [`pgclone`](/ext/e/pgclone) [`repmgr`](/ext/e/repmgr) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`pgspider_ext`](/ext/e/pgspider_ext) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> name conflict with pg_partman


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.5.1` | {{< pgvers "18,17,16,15,14" >}} | `mimeo` | `dblink` |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.1` | {{< pgvers "18,17,16,15,14" >}} | `mimeo_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-mimeo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 |
| d12.x86_64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| d12.aarch64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| d13.x86_64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| d13.aarch64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| u22.x86_64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| u22.aarch64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| u24.x86_64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| u24.aarch64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| u26.x86_64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
| u26.aarch64 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 | AVAIL PGDG 1.5.1 1 |
@ el8.x86_64 18 mimeo_18 mimeo_18-1.5.1-1PIGSTY.el8.x86_64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mimeo_18-1.5.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 mimeo_18 mimeo_18-1.5.1-1PIGSTY.el8.aarch64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mimeo_18-1.5.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 mimeo_18 mimeo_18-1.5.1-1PIGSTY.el9.x86_64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mimeo_18-1.5.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 mimeo_18 mimeo_18-1.5.1-1PIGSTY.el9.aarch64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mimeo_18-1.5.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 mimeo_18 mimeo_18-1.5.1-1PIGSTY.el10.x86_64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mimeo_18-1.5.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 mimeo_18 mimeo_18-1.5.1-1PIGSTY.el10.aarch64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mimeo_18-1.5.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-mimeo postgresql-18-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-18-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ el8.x86_64 17 mimeo_17 mimeo_17-1.5.1-1PIGSTY.el8.x86_64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mimeo_17-1.5.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 mimeo_17 mimeo_17-1.5.1-1PIGSTY.el8.aarch64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mimeo_17-1.5.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 mimeo_17 mimeo_17-1.5.1-1PIGSTY.el9.x86_64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mimeo_17-1.5.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 mimeo_17 mimeo_17-1.5.1-1PIGSTY.el9.aarch64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mimeo_17-1.5.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 mimeo_17 mimeo_17-1.5.1-1PIGSTY.el10.x86_64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mimeo_17-1.5.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 mimeo_17 mimeo_17-1.5.1-1PIGSTY.el10.aarch64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mimeo_17-1.5.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u24.x86_64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-mimeo postgresql-17-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-17-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ el8.x86_64 16 mimeo_16 mimeo_16-1.5.1-1PIGSTY.el8.x86_64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mimeo_16-1.5.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 mimeo_16 mimeo_16-1.5.1-1PIGSTY.el8.aarch64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mimeo_16-1.5.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 mimeo_16 mimeo_16-1.5.1-1PIGSTY.el9.x86_64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mimeo_16-1.5.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 mimeo_16 mimeo_16-1.5.1-1PIGSTY.el9.aarch64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mimeo_16-1.5.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 mimeo_16 mimeo_16-1.5.1-1PIGSTY.el10.x86_64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mimeo_16-1.5.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 mimeo_16 mimeo_16-1.5.1-1PIGSTY.el10.aarch64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mimeo_16-1.5.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u24.x86_64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-mimeo postgresql-16-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-16-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ el8.x86_64 15 mimeo_15 mimeo_15-1.5.1-1PIGSTY.el8.x86_64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mimeo_15-1.5.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 mimeo_15 mimeo_15-1.5.1-1PIGSTY.el8.aarch64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mimeo_15-1.5.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 mimeo_15 mimeo_15-1.5.1-1PIGSTY.el9.x86_64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mimeo_15-1.5.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 mimeo_15 mimeo_15-1.5.1-1PIGSTY.el9.aarch64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mimeo_15-1.5.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 mimeo_15 mimeo_15-1.5.1-1PIGSTY.el10.x86_64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mimeo_15-1.5.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 mimeo_15 mimeo_15-1.5.1-1PIGSTY.el10.aarch64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mimeo_15-1.5.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d13.x86_64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg13+1_all.deb
@ u22.x86_64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u24.x86_64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u26.x86_64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-mimeo postgresql-15-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-15-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ el8.x86_64 14 mimeo_14 mimeo_14-1.5.1-1PIGSTY.el8.x86_64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/mimeo_14-1.5.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 mimeo_14 mimeo_14-1.5.1-1PIGSTY.el8.aarch64.rpm pigsty 1.5.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/mimeo_14-1.5.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 mimeo_14 mimeo_14-1.5.1-1PIGSTY.el9.x86_64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/mimeo_14-1.5.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 mimeo_14 mimeo_14-1.5.1-1PIGSTY.el9.aarch64.rpm pigsty 1.5.1 113.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/mimeo_14-1.5.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 mimeo_14 mimeo_14-1.5.1-1PIGSTY.el10.x86_64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/mimeo_14-1.5.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 mimeo_14 mimeo_14-1.5.1-1PIGSTY.el10.aarch64.rpm pigsty 1.5.1 114.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/mimeo_14-1.5.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg12+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg12+1_all.deb
@ d13.x86_64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg13+1_all.deb pgdg 1.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg13+1_all.deb
@ u22.x86_64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u22.aarch64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg22.04+1_all.deb pgdg 1.5.1 108.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg22.04+1_all.deb
@ u24.x86_64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg24.04+1_all.deb pgdg 1.5.1 107.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg24.04+1_all.deb
@ u26.x86_64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-mimeo postgresql-14-mimeo_1.5.1-20.pgdg26.04+1_all.deb pgdg 1.5.1 107.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/m/mimeo/postgresql-14-mimeo_1.5.1-20.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `mimeo` using `pig build`:

```bash
pig build pkg mimeo         # build RPM packages
```


## Install

You can install `mimeo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install mimeo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y mimeo -v 18  # PG 18
pig ext install -y mimeo -v 17  # PG 17
pig ext install -y mimeo -v 16  # PG 16
pig ext install -y mimeo -v 15  # PG 15
pig ext install -y mimeo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y mimeo_18       # PG 18
dnf install -y mimeo_17       # PG 17
dnf install -y mimeo_16       # PG 16
dnf install -y mimeo_15       # PG 15
dnf install -y mimeo_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-mimeo   # PG 18
apt install -y postgresql-17-mimeo   # PG 17
apt install -y postgresql-16-mimeo   # PG 16
apt install -y postgresql-15-mimeo   # PG 15
apt install -y postgresql-14-mimeo   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION mimeo CASCADE;  -- requires: dblink
```




## Usage

> [mimeo: Extension for specialized, per-table replication between PostgreSQL instances](https://github.com/omniti-labs/mimeo)

Provides per-table replication between PostgreSQL instances with snapshot (full copy), incremental (timestamp/id based), and DML (insert/update/delete) modes.

### Enabling

```sql
CREATE SCHEMA mimeo;
CREATE EXTENSION mimeo SCHEMA mimeo;
```

Requires the `dblink` extension. Optionally install `pg_jobmon` for monitoring.

### Setting Up a Data Source

```sql
-- Create a dblink connection to the source database
SELECT mimeo.dblink_mapping_create(
    p_mapping_name := 'source_db',
    p_data_source := 'host=sourcehost dbname=sourcedb user=replicator password=secret',
    p_superuser := true
);
```

### Snapshot Replication (Full Table Copy)

Copies the entire source table each time it runs:

```sql
SELECT mimeo.snapshot_maker(
    p_src_table := 'public.my_table',
    p_dblink_id := 1  -- from dblink_mapping
);

-- Refresh the snapshot
SELECT mimeo.refresh_snap('public.my_table');
```

### Incremental Replication (Timestamp-Based)

Replicates rows based on an incrementing timestamp column:

```sql
SELECT mimeo.inserter_maker(
    p_src_table := 'public.events',
    p_control := 'created_at',  -- timestamp column
    p_dblink_id := 1
);

-- Refresh incrementally
SELECT mimeo.refresh_inserter('public.events');
```

For tables with updates (not just inserts):

```sql
SELECT mimeo.updater_maker(
    p_src_table := 'public.orders',
    p_control := 'updated_at',
    p_dblink_id := 1
);

SELECT mimeo.refresh_updater('public.orders');
```

### DML Replication (Insert/Update/Delete)

Full DML tracking via triggers on the source:

```sql
SELECT mimeo.dml_maker(
    p_src_table := 'public.accounts',
    p_dblink_id := 1
);

SELECT mimeo.refresh_dml('public.accounts');
```

### Scheduling Refreshes

Use `pg_jobmon` or cron to schedule periodic calls to the appropriate `refresh_*` function.

### Key Features

- Three replication modes: snapshot, incremental, DML
- Per-table replication (no need to replicate entire database)
- Works between different PostgreSQL versions
- Built on `dblink` for cross-database communication
