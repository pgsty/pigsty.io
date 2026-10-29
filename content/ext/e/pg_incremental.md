---
title: "pg_incremental"
linkTitle: "pg_incremental"
description: "Incremental Processing by Crunchy Data"
weight: 2850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrunchyData/pg_incremental">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrunchyData/pg_incremental</div>
    <div class="ext-card__desc">https://github.com/CrunchyData/pg_incremental</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_incremental-1.6.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_incremental-1.6.1.tar.gz</div>
    <div class="ext-card__desc">pg_incremental-1.6.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_incremental`**](/ext/e/pg_incremental) | `1.6` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2850  | [**`pg_incremental`**](/ext/e/pg_incremental) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pg_ivm`](/ext/e/pg_ivm) [`pg_trickle`](/ext/e/pg_trickle) [`timescaledb`](/ext/e/timescaledb) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_partman`](/ext/e/pg_partman) [`pg_ttl_index`](/ext/e/pg_ttl_index) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_lake`](/ext/e/pg_lake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Package 1.6.1; SQL/control 1.6. Fixes _drop_trigger search_path injection. Sequence pipelines require SELECT or USAGE at creation and execution; file-list functions run as the pipeline executor. pg_cron is optional except for scheduled pipelines.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "18,17,16" >}} | `pg_incremental` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6.1` | {{< pgvers "18,17,16" >}} | `pg_incremental_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6.1` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-incremental` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.6.1 4 | AVAIL PGDG 1.6.1 4 | AVAIL PGDG 1.6.1 4 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PGDG 1.6.1 4 | AVAIL PGDG 1.6.1 4 | AVAIL PGDG 1.6.1 4 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | AVAIL PGDG 1.6.1 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_incremental_18 pg_incremental_18-1.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.1 38.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_incremental_18-1.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 33.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_incremental_18-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.0 33.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_incremental_18-1.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 26.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_incremental_18-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_incremental_18 pg_incremental_18-1.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.1 37.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_incremental_18-1.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_incremental_18-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.0 32.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_incremental_18-1.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_incremental_18-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6.1 37.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_incremental_18-1.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_incremental_18-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.5.0 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_incremental_18-1.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_incremental_18-1.0.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_incremental_18-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6.1 37.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_incremental_18-1.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_incremental_18-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.5.0 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_incremental_18-1.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 25.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_incremental_18-1.0.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 25.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_incremental_18-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6.1 38.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_incremental_18-1.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_incremental_18-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.5.0 33.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_incremental_18-1.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_incremental_18-1.0.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_incremental_18-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.1 37.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_incremental_18-1.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_incremental_18-1.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.0 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_incremental_18-1.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_incremental_18-1.0.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_incremental_18-1.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~bookworm_amd64.deb pigsty 1.6.1 70.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~bookworm_arm64.deb pigsty 1.6.1 69.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~trixie_amd64.deb pigsty 1.6.1 70.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~trixie_arm64.deb pigsty 1.6.1 69.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~jammy_amd64.deb pigsty 1.6.1 71.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~jammy_arm64.deb pigsty 1.6.1 70.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~noble_amd64.deb pigsty 1.6.1 70.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~noble_arm64.deb pigsty 1.6.1 69.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~resolute_amd64.deb pigsty 1.6.1 69.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.6.1-1PGSTY~resolute_arm64.deb pigsty 1.6.1 69.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.6.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_incremental_17 pg_incremental_17-1.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.1 38.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_incremental_17-1.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 33.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_incremental_17-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.0 33.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_incremental_17-1.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 26.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_incremental_17-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_incremental_17 pg_incremental_17-1.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.1 37.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_incremental_17-1.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_incremental_17-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.0 32.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_incremental_17-1.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_incremental_17-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6.1 37.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_incremental_17-1.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_incremental_17-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.5.0 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_incremental_17-1.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 26.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_incremental_17-1.0.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_incremental_17-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6.1 37.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_incremental_17-1.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_incremental_17-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.5.0 32.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_incremental_17-1.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 25.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_incremental_17-1.0.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 25.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_incremental_17-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6.1 38.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_incremental_17-1.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_incremental_17-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.5.0 33.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_incremental_17-1.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 26.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_incremental_17-1.0.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_incremental_17-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.1 37.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_incremental_17-1.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_incremental_17-1.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.0 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_incremental_17-1.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_incremental_17-1.0.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_incremental_17-1.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~bookworm_amd64.deb pigsty 1.6.1 70.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~bookworm_arm64.deb pigsty 1.6.1 69.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~trixie_amd64.deb pigsty 1.6.1 70.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~trixie_arm64.deb pigsty 1.6.1 69.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~jammy_amd64.deb pigsty 1.6.1 78.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~jammy_arm64.deb pigsty 1.6.1 77.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~noble_amd64.deb pigsty 1.6.1 70.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~noble_arm64.deb pigsty 1.6.1 69.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~resolute_amd64.deb pigsty 1.6.1 69.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.6.1-1PGSTY~resolute_arm64.deb pigsty 1.6.1 69.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.6.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_incremental_16 pg_incremental_16-1.6.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.1 38.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_incremental_16-1.6.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 33.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_incremental_16-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.0 33.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_incremental_16-1.5.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 26.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_incremental_16-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_incremental_16 pg_incremental_16-1.6.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.1 37.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_incremental_16-1.6.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 33.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_incremental_16-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.0 32.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_incremental_16-1.5.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_incremental_16-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.6.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6.1 37.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_incremental_16-1.6.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_incremental_16-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.5.0 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_incremental_16-1.5.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_incremental_16-1.0.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_incremental_16-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.6.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6.1 37.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_incremental_16-1.6.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_incremental_16-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.5.0 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_incremental_16-1.5.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 25.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_incremental_16-1.0.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 25.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_incremental_16-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.6.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6.1 38.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_incremental_16-1.6.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_incremental_16-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.5.0 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_incremental_16-1.5.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_incremental_16-1.0.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_incremental_16-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.6.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.1 37.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_incremental_16-1.6.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_incremental_16-1.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.0 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_incremental_16-1.5.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_incremental_16-1.0.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_incremental_16-1.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~bookworm_amd64.deb pigsty 1.6.1 70.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~bookworm_arm64.deb pigsty 1.6.1 69.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~trixie_amd64.deb pigsty 1.6.1 70.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~trixie_arm64.deb pigsty 1.6.1 69.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~jammy_amd64.deb pigsty 1.6.1 78.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~jammy_arm64.deb pigsty 1.6.1 77.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~noble_amd64.deb pigsty 1.6.1 70.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~noble_arm64.deb pigsty 1.6.1 70.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~resolute_amd64.deb pigsty 1.6.1 69.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.6.1-1PGSTY~resolute_arm64.deb pigsty 1.6.1 69.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.6.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_incremental` using `pig build`:

```bash
pig build pkg pg_incremental         # build RPM / DEB packages
```


## Install

You can install `pg_incremental` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_incremental;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_incremental -v 18  # PG 18
pig ext install -y pg_incremental -v 17  # PG 17
pig ext install -y pg_incremental -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_incremental_18       # PG 18
dnf install -y pg_incremental_17       # PG 17
dnf install -y pg_incremental_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-incremental   # PG 18
apt install -y postgresql-17-pg-incremental   # PG 17
apt install -y postgresql-16-pg-incremental   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_incremental;
```

## Usage

Sources:

- [Official README](https://github.com/CrunchyData/pg_incremental/blob/v1.6.1/README.md)
- [v1.6.1 release](https://github.com/CrunchyData/pg_incremental/releases/tag/v1.6.1)
- [Control file](https://github.com/CrunchyData/pg_incremental/blob/v1.6.1/pg_incremental.control)

`pg_incremental` defines exactly-once incremental pipelines for append-only tables and file feeds. It depends on `pg_cron` and supports sequence, time-interval and file-list pipelines on PostgreSQL 17–18 in the reviewed upstream test matrix.

### Install and schedule

```sql
CREATE EXTENSION pg_incremental CASCADE;
GRANT USAGE ON SCHEMA cron TO app_user;
```

Pipelines execute immediately by default and then run from `pg_cron`; set `execute_immediately := false` when the initial run should be deferred. The progress update and the pipeline command commit together, so a failed command does not advance the processed range.

### Pipeline types

```sql
SELECT incremental.create_sequence_pipeline('event-aggregation', 'events', $$
  INSERT INTO events_agg
  SELECT date_trunc('day', event_time), count(*)
  FROM events
  WHERE event_id BETWEEN $1 AND $2
  GROUP BY 1
  ON CONFLICT (day) DO UPDATE
  SET event_count = events_agg.event_count + excluded.event_count
$$);

SELECT incremental.create_time_interval_pipeline('hourly-export', '1 hour', $$
  SELECT export_events($1, $2)
$$);

SELECT incremental.create_file_list_pipeline('event-import', 's3://bucket/events/*.csv', $$
  SELECT import_events($1)
$$);
```

Sequence pipelines pass a safe `$1`/`$2` range; time pipelines pass interval boundaries; file-list pipelines pass a newly discovered file. `max_batch_size`, `max_batches_per_run` and `batched := false` tune workload shape. `incremental.execute_pipeline`, `reset_pipeline`, `drop_pipeline` and the pipeline status views provide operational control.

### Security fixes in 1.6.1

Release 1.6.1 fixes a `_drop_trigger` `search_path` injection issue, requires `SELECT` or `USAGE` on a sequence when a sequence pipeline is created and run, and executes file-list functions as the caller. Review ownership and grants before upgrading; existing package facts are separate from this upstream release.
