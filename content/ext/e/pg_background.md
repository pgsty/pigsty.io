---
title: "pg_background"
linkTitle: "pg_background"
description: "Run SQL queries in the background"
weight: 1110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/vibhorkum/pg_background">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">vibhorkum/pg_background</div>
    <div class="ext-card__desc">https://github.com/vibhorkum/pg_background</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_background-1.9.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_background-1.9.2.tar.gz</div>
    <div class="ext-card__desc">pg_background-1.9.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_background`**](/ext/e/pg_background) | `1.9.2` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1110  | [**`pg_background`**](/ext/e/pg_background) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pg_later`](/ext/e/pg_later) [`pgq`](/ext/e/pgq) [`timescaledb`](/ext/e/timescaledb) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`periods`](/ext/e/periods) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release tag 1.9.2 still ships extension SQL version 1.9.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.9.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_background` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_background_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.9.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-background` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.9.2 4 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 5 |
| el8.aarch64 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 7 | AVAIL PIGSTY 1.9.2 6 |
| el9.x86_64 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 7 | AVAIL PIGSTY 1.9.2 6 |
| el9.aarch64 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 6 | AVAIL PIGSTY 1.9.2 7 | AVAIL PIGSTY 1.9.2 6 |
| el10.x86_64 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 |
| el10.aarch64 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 | AVAIL PIGSTY 1.9.2 5 |
| d12.x86_64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| d12.aarch64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| d13.x86_64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| d13.aarch64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| u22.x86_64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| u22.aarch64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| u24.x86_64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
| u24.aarch64 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 | AVAIL PIGSTY 1.9.2 2 |
@ el8.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PIGSTY.el8.x86_64.rpm pigsty 1.9.2 56.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_18-1.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 22.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PIGSTY.el8.aarch64.rpm pigsty 1.9.2 55.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_18-1.9.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PIGSTY.el9.x86_64.rpm pigsty 1.9.2 55.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_18-1.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 54.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 22.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PIGSTY.el9.aarch64.rpm pigsty 1.9.2 54.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_18-1.9.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.2-1PIGSTY.el10.x86_64.rpm pigsty 1.9.2 55.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_18-1.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel10.x86_64.rpm pgdg 1.5 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.5-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.2-1PIGSTY.el10.aarch64.rpm pigsty 1.9.2 54.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_18-1.9.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel10.aarch64.rpm pgdg 1.5 22.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb pigsty 1.9.2 89.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg12+1_amd64.deb pgdg 1.9.1 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb pigsty 1.9.2 87.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg12+1_arm64.deb pgdg 1.9.1 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb pigsty 1.9.2 89.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg13+1_amd64.deb pgdg 1.9.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb pigsty 1.9.2 87.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg13+1_arm64.deb pgdg 1.9.1 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb pigsty 1.9.2 94.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb pgdg 1.9.1 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb pigsty 1.9.2 93.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb pgdg 1.9.1 58.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~noble_amd64.deb pigsty 1.9.2 92.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb pgdg 1.9.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.2-1PIGSTY~noble_arm64.deb pigsty 1.9.2 91.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-18-pg-background_1.9.2-1PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb pgdg 1.9.1 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-18-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PIGSTY.el8.x86_64.rpm pigsty 1.9.2 56.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_17-1.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PIGSTY.el8.aarch64.rpm pigsty 1.9.2 55.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_17-1.9.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PIGSTY.el9.x86_64.rpm pigsty 1.9.2 55.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_17-1.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel9.x86_64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PIGSTY.el9.aarch64.rpm pigsty 1.9.2 54.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_17-1.9.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel9.aarch64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.2-1PIGSTY.el10.x86_64.rpm pigsty 1.9.2 55.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_17-1.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.2-1PIGSTY.el10.aarch64.rpm pigsty 1.9.2 54.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_17-1.9.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb pigsty 1.9.2 89.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg12+1_amd64.deb pgdg 1.9.1 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb pigsty 1.9.2 87.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg12+1_arm64.deb pgdg 1.9.1 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb pigsty 1.9.2 89.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg13+1_amd64.deb pgdg 1.9.1 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb pigsty 1.9.2 87.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg13+1_arm64.deb pgdg 1.9.1 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb pigsty 1.9.2 100.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb pgdg 1.9.1 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb pigsty 1.9.2 98.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb pgdg 1.9.1 62.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~noble_amd64.deb pigsty 1.9.2 92.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb pgdg 1.9.1 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.2-1PIGSTY~noble_arm64.deb pigsty 1.9.2 91.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-17-pg-background_1.9.2-1PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb pgdg 1.9.1 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-17-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PIGSTY.el8.x86_64.rpm pigsty 1.9.2 56.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_16-1.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PIGSTY.el8.aarch64.rpm pigsty 1.9.2 55.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_16-1.9.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PIGSTY.el9.x86_64.rpm pigsty 1.9.2 55.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_16-1.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PIGSTY.el9.aarch64.rpm pigsty 1.9.2 54.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_16-1.9.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.2-1PIGSTY.el10.x86_64.rpm pigsty 1.9.2 55.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_16-1.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.2-1PIGSTY.el10.aarch64.rpm pigsty 1.9.2 54.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_16-1.9.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb pigsty 1.9.2 89.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg12+1_amd64.deb pgdg 1.9.1 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb pigsty 1.9.2 87.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg12+1_arm64.deb pgdg 1.9.1 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb pigsty 1.9.2 89.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg13+1_amd64.deb pgdg 1.9.1 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb pigsty 1.9.2 87.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg13+1_arm64.deb pgdg 1.9.1 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb pigsty 1.9.2 100.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb pgdg 1.9.1 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb pigsty 1.9.2 98.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb pgdg 1.9.1 62.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~noble_amd64.deb pigsty 1.9.2 91.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb pgdg 1.9.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.2-1PIGSTY~noble_arm64.deb pigsty 1.9.2 91.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-16-pg-background_1.9.2-1PIGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb pgdg 1.9.1 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-16-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PIGSTY.el8.x86_64.rpm pigsty 1.9.2 56.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_15-1.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.0-1.rhel8.x86_64.rpm pgdg 1.0 39.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PIGSTY.el8.aarch64.rpm pigsty 1.9.2 55.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_15-1.9.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.0-1.rhel8.aarch64.rpm pgdg 1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PIGSTY.el9.x86_64.rpm pigsty 1.9.2 55.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_15-1.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.0-1.rhel9.x86_64.rpm pgdg 1.0 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PIGSTY.el9.aarch64.rpm pigsty 1.9.2 54.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_15-1.9.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.0-1.rhel9.aarch64.rpm pgdg 1.0 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.2-1PIGSTY.el10.x86_64.rpm pigsty 1.9.2 55.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_15-1.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.2-1PIGSTY.el10.aarch64.rpm pigsty 1.9.2 54.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_15-1.9.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb pigsty 1.9.2 89.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg12+1_amd64.deb pgdg 1.9.1 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb pigsty 1.9.2 87.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg12+1_arm64.deb pgdg 1.9.1 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb pigsty 1.9.2 89.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg13+1_amd64.deb pgdg 1.9.1 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb pigsty 1.9.2 87.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg13+1_arm64.deb pgdg 1.9.1 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb pigsty 1.9.2 100.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb pgdg 1.9.1 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb pigsty 1.9.2 98.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb pgdg 1.9.1 62.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~noble_amd64.deb pigsty 1.9.2 91.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb pgdg 1.9.1 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.2-1PIGSTY~noble_arm64.deb pigsty 1.9.2 91.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-15-pg-background_1.9.2-1PIGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb pgdg 1.9.1 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-15-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PIGSTY.el8.x86_64.rpm pigsty 1.9.2 56.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_background_14-1.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.1 55.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.9.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.0-1.rhel8.x86_64.rpm pgdg 1.0 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PIGSTY.el8.aarch64.rpm pigsty 1.9.2 55.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_background_14-1.9.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.1 53.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.9.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.0-1.rhel8.aarch64.rpm pgdg 1.0 38.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PIGSTY.el9.x86_64.rpm pigsty 1.9.2 55.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_background_14-1.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.1 53.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.9.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PIGSTY.el9.aarch64.rpm pigsty 1.9.2 54.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_background_14-1.9.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.1 53.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.9.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.0-1.rhel9.aarch64.rpm pgdg 1.0 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.2-1PIGSTY.el10.x86_64.rpm pigsty 1.9.2 55.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_background_14-1.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.1 54.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.9.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.2-1PIGSTY.el10.aarch64.rpm pigsty 1.9.2 54.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_background_14-1.9.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.9.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.1 53.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.9.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb pigsty 1.9.2 88.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg12+1_amd64.deb pgdg 1.9.1 83.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb pigsty 1.9.2 87.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg12+1_arm64.deb pgdg 1.9.1 81.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb pigsty 1.9.2 89.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg13+1_amd64.deb pgdg 1.9.1 83.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb pigsty 1.9.2 87.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg13+1_arm64.deb pgdg 1.9.1 82.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb pigsty 1.9.2 100.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb pgdg 1.9.1 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb pigsty 1.9.2 98.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb pgdg 1.9.1 87.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~noble_amd64.deb pigsty 1.9.2 91.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb pgdg 1.9.1 83.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.2-1PIGSTY~noble_arm64.deb pigsty 1.9.2 90.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-14-pg-background_1.9.2-1PIGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb pgdg 1.9.1 81.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-background/postgresql-14-pg-background_1.9.1-1.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_background` using `pig build`:

```bash
pig build pkg pg_background         # build DEB packages
```


## Install

You can install `pg_background` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_background;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_background -v 18  # PG 18
pig ext install -y pg_background -v 17  # PG 17
pig ext install -y pg_background -v 16  # PG 16
pig ext install -y pg_background -v 15  # PG 15
pig ext install -y pg_background -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_background_18       # PG 18
dnf install -y pg_background_17       # PG 17
dnf install -y pg_background_16       # PG 16
dnf install -y pg_background_15       # PG 15
dnf install -y pg_background_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-background   # PG 18
apt install -y postgresql-17-pg-background   # PG 17
apt install -y postgresql-16-pg-background   # PG 16
apt install -y postgresql-15-pg-background   # PG 15
apt install -y postgresql-14-pg-background   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_background;
```

## Usage

Sources: [official README](https://github.com/vibhorkum/pg_background/blob/master/README.md), [v1.9.2 release](https://github.com/vibhorkum/pg_background/releases/tag/v1.9.2)

`pg_background` executes SQL in PostgreSQL background worker processes. The worker runs inside the server and uses its own transaction, which makes it useful for asynchronous maintenance, autonomous side effects, and long-running tasks that should not block the caller.

```sql
CREATE EXTENSION pg_background;

SELECT * FROM pg_background_launch_v2(
  'SELECT count(*) FROM large_table',
  65536,
  'count-large-table'
) AS h;

SELECT * FROM pg_background_result_v2(h.pid, h.cookie) AS (count bigint);
```

### Core API

- `pg_background_launch_v2(sql, queue_size, label)` launches a tracked worker and returns `(pid, cookie)`.
- `pg_background_submit_v2(sql, queue_size, label)` is fire-and-forget for side-effect SQL.
- `pg_background_result_v2(pid, cookie)` consumes the worker result set once.
- `pg_background_wait_v2(...)` and `pg_background_wait_v2_timeout(...)` wait for completion.
- `pg_background_cancel_v2(...)` stops execution; `pg_background_detach_v2(...)` stops tracking but lets work continue.
- `pg_background_list_v2()`, `pg_background_stats_v2()`, and `pg_background_get_progress_v2(...)` expose worker state and progress.

### Typical Patterns

Run maintenance without holding the client session open:

```sql
SELECT * FROM pg_background_submit_v2(
  'VACUUM (ANALYZE) public.events',
  65536,
  'vacuum-events'
);
```

Use an autonomous side effect from application SQL:

```sql
SELECT * FROM pg_background_submit_v2(
  $$INSERT INTO audit_log(ts, event) VALUES (clock_timestamp(), 'job queued')$$
);
```

### GUCs And Security

- `pg_background.max_workers` limits concurrent workers per session.
- `pg_background.default_queue_size` controls the shared-memory queue size.
- `pg_background.worker_timeout` sets an execution timeout; `0` means no limit.
- The extension creates a dedicated `pg_background_worker` NOLOGIN role and ships helper functions to grant or revoke execution privileges.

### Caveats

- Prefer the V2 API. The older V1 API is still present for compatibility but lacks cookie-based PID reuse protection.
- The `v1.9.2` release is a binary-only patch for assert-enabled PostgreSQL builds. The SQL extension version remains `1.9`, so there is no new SQL upgrade script or user-facing function delta from `1.9.1`.
