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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_incremental-1.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_incremental-1.5.0.tar.gz</div>
    <div class="ext-card__desc">pg_incremental-1.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_incremental`**](/ext/e/pg_incremental) | `1.5.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2850  | [**`pg_incremental`**](/ext/e/pg_incremental) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pg_ivm`](/ext/e/pg_ivm) [`pg_trickle`](/ext/e/pg_trickle) [`timescaledb`](/ext/e/timescaledb) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_partman`](/ext/e/pg_partman) [`pg_ttl_index`](/ext/e/pg_ttl_index) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_lake`](/ext/e/pg_lake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg_cron is optional since v1.3 and only required for scheduled pipelines.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.0` | {{< pgvers "18,17,16" >}} | `pg_incremental` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.0` | {{< pgvers "18,17,16" >}} | `pg_incremental_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-incremental` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.5.0 2 | AVAIL PIGSTY 1.5.0 2 | AVAIL PIGSTY 1.5.0 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.5.0 2 | AVAIL PIGSTY 1.5.0 2 | AVAIL PIGSTY 1.5.0 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | AVAIL PIGSTY 1.5.0 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | AVAIL PIGSTY 1.5.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 33.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_incremental_18-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 26.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_incremental_18-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_incremental_18-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_incremental_18-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_incremental_18-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_incremental_18-1.0.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_incremental_18-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_incremental_18-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 25.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_incremental_18-1.0.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 25.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_incremental_18-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_incremental_18-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_incremental_18-1.0.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_incremental_18-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 31.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_incremental_18-1.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_incremental_18-1.0.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_incremental_18 pg_incremental_18-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_incremental_18-1.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 55.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 54.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 55.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 54.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 57.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 56.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 56.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 55.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 56.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-incremental postgresql-18-pg-incremental_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 55.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-18-pg-incremental_1.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 33.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_incremental_17-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 26.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_incremental_17-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_incremental_17-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_incremental_17-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_incremental_17-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 26.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_incremental_17-1.0.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_incremental_17-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_incremental_17-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 25.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_incremental_17-1.0.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 25.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_incremental_17-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_incremental_17-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 26.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_incremental_17-1.0.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_incremental_17-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_incremental_17-1.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_incremental_17-1.0.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_incremental_17 pg_incremental_17-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_incremental_17-1.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 55.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 54.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 55.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 54.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 62.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 61.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 56.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 55.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 56.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-incremental postgresql-17-pg-incremental_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 55.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-17-pg-incremental_1.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el8.x86_64.rpm pigsty 1.5.0 33.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_incremental_16-1.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel8.x86_64.rpm pgdg 1.0.0 26.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_incremental_16-1.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el8.aarch64.rpm pigsty 1.5.0 33.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_incremental_16-1.5.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel8.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_incremental_16-1.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el9.x86_64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_incremental_16-1.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_incremental_16-1.0.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel9.x86_64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_incremental_16-1.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el9.aarch64.rpm pigsty 1.5.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_incremental_16-1.5.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 25.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_incremental_16-1.0.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel9.aarch64.rpm pgdg 1.0.0 25.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_incremental_16-1.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el10.x86_64.rpm pigsty 1.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_incremental_16-1.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_incremental_16-1.0.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel10.x86_64.rpm pgdg 1.0.0 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_incremental_16-1.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.5.0-1PIGSTY.el10.aarch64.rpm pigsty 1.5.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_incremental_16-1.5.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_incremental_16-1.0.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_incremental_16 pg_incremental_16-1.0.0-1PGDG.rhel10.aarch64.rpm pgdg 1.0.0 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_incremental_16-1.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~bookworm_amd64.deb pigsty 1.5.0 55.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~bookworm_arm64.deb pigsty 1.5.0 54.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~trixie_amd64.deb pigsty 1.5.0 55.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~trixie_arm64.deb pigsty 1.5.0 54.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~jammy_amd64.deb pigsty 1.5.0 62.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~jammy_arm64.deb pigsty 1.5.0 61.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~noble_amd64.deb pigsty 1.5.0 56.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~noble_arm64.deb pigsty 1.5.0 55.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~resolute_amd64.deb pigsty 1.5.0 56.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-incremental postgresql-16-pg-incremental_1.5.0-1PIGSTY~resolute_arm64.deb pigsty 1.5.0 55.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-incremental/postgresql-16-pg-incremental_1.5.0-1PIGSTY~resolute_arm64.deb
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

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
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

- Sources: [README](https://github.com/CrunchyData/pg_incremental/blob/main/README.md), [v1.5.0 release](https://github.com/CrunchyData/pg_incremental/releases/tag/v1.5.0)

`pg_incremental` defines exactly-once incremental pipelines for append-only tables and file feeds. Upstream documents three pipeline types: sequence, time-interval, and file-list.

### Install And Scheduling Model

The upstream README still documents `pg_cron`-backed scheduling and installs with:

```sql
CREATE EXTENSION pg_incremental CASCADE;
```

Pipelines run immediately when created unless `execute_immediately := false`, then continue on a `pg_cron` schedule. The README notes that each scheduled execution appears in `cron.job_run_details` even when no new data is available.

### Sequence Pipelines

Use sequence pipelines to process safe ranges of sequence values:

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
```

The README documents `max_batch_size` for limiting how many sequence IDs are processed per run.

### Time-Interval Pipelines

Use time windows when the command should receive `$1` and `$2` as a passed interval:

```sql
SELECT incremental.create_time_interval_pipeline('event-aggregation', '1 day', $$
  INSERT INTO events_agg
  SELECT event_time::date, count(DISTINCT event_id)
  FROM events
  WHERE event_time >= $1 AND event_time < $2
  GROUP BY 1
$$);
```

For export-style jobs, the README documents `batched := false` so each interval runs separately.

### File-List Pipelines

Use file-list pipelines to process newly discovered files:

```sql
SELECT incremental.create_file_list_pipeline('event-import', 's3://mybucket/events/*.csv', $$
  SELECT import_events($1)
$$);
```

The v1.5.0 release adds `max_batches_per_run` to file-list pipelines. The README documents `incremental.skip_file()` for permanently marking a bad file as processed.

### Operations And Monitoring

The README documents:

- `CALL incremental.execute_pipeline(name)`: run once if new work exists.
- `SELECT incremental.reset_pipeline(name)`: reset progress.
- `SELECT incremental.drop_pipeline(name)`: remove a pipeline.
- Views and tables such as `incremental.sequence_pipelines`, `incremental.time_interval_pipelines`, `incremental.file_list_pipelines`, and `incremental.processed_files`.

The v1.5.0 release note also calls out a `DROP EXTENSION` fix for environments where `pg_cron` is not present.
