---
title: "pg_background"
linkTitle: "pg_background"
description: "Run SQL queries in the background"
weight: 1100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/vibhorkum/pg_background">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">vibhorkum/pg_background</div>
    <div class="ext-card__desc">https://github.com/vibhorkum/pg_background</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_background-1.8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_background-1.8.tar.gz</div>
    <div class="ext-card__desc">pg_background-1.8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_background`**](/ext/e/pg_background) | `1.8` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1100  | [**`pg_background`**](/ext/e/pg_background) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pg_later`](/ext/e/pg_later) [`pgq`](/ext/e/pgq) [`timescaledb`](/ext/e/timescaledb) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`periods`](/ext/e/periods) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_background` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8` | {{< pgvers "18,17,16,15,14" >}} | `pg_background_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.8` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-background` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.6 2 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 3 | AVAIL PGDG 1.6 4 | AVAIL PGDG 1.6 3 |
| el8.aarch64 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 4 | AVAIL PGDG 1.8 4 | AVAIL PGDG 1.8 5 | AVAIL PGDG 1.8 4 |
| el9.x86_64 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 4 | AVAIL PGDG 1.8 4 | AVAIL PGDG 1.8 5 | AVAIL PGDG 1.8 4 |
| el9.aarch64 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 4 | AVAIL PGDG 1.8 4 | AVAIL PGDG 1.8 5 | AVAIL PGDG 1.8 4 |
| el10.x86_64 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 |
| el10.aarch64 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 | AVAIL PGDG 1.8 3 |
| d12.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| d12.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| d13.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| d13.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| u22.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| u22.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| u24.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
| u24.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 |
@ el8.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 22.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_background_18-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_background_18-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 22.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_background_18-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 22.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_background_18-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel10.x86_64.rpm pgdg 1.5 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_background_18-1.5-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_background_18 pg_background_18-1.5-1PGDG.rhel10.aarch64.rpm pgdg 1.5 22.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_background_18-1.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.8 77.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.8 75.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~trixie_amd64.deb pigsty 1.8 77.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~trixie_arm64.deb pigsty 1.8 76.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~jammy_amd64.deb pigsty 1.8 82.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~jammy_arm64.deb pigsty 1.8 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~noble_amd64.deb pigsty 1.8 79.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-background postgresql-18-pg-background_1.8-1PIGSTY~noble_arm64.deb pigsty 1.8 79.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-18-pg-background_1.8-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel8.x86_64.rpm pgdg 1.2 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_background_17-1.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel8.aarch64.rpm pgdg 1.2 19.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_background_17-1.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel9.x86_64.rpm pgdg 1.2 20.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_background_17-1.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_background_17 pg_background_17-1.2-2PGDG.rhel9.aarch64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_background_17-1.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_background_17 pg_background_17-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_background_17-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_background_17 pg_background_17-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_background_17-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.8 77.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.8 75.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~trixie_amd64.deb pigsty 1.8 77.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~trixie_arm64.deb pigsty 1.8 75.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~jammy_amd64.deb pigsty 1.8 87.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~jammy_arm64.deb pigsty 1.8 85.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~noble_amd64.deb pigsty 1.8 79.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-background postgresql-17-pg-background_1.8-1PIGSTY~noble_arm64.deb pigsty 1.8 78.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-17-pg-background_1.8-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 19.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_background_16-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_background_16-1.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_background_16-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_background_16 pg_background_16-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_background_16-1.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_background_16 pg_background_16-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_background_16-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_background_16 pg_background_16-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_background_16-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.8 77.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.8 75.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~trixie_amd64.deb pigsty 1.8 77.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~trixie_arm64.deb pigsty 1.8 76.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~jammy_amd64.deb pigsty 1.8 87.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~jammy_arm64.deb pigsty 1.8 85.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~noble_amd64.deb pigsty 1.8 79.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-background postgresql-16-pg-background_1.8-1PIGSTY~noble_arm64.deb pigsty 1.8 78.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-16-pg-background_1.8-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel8.x86_64.rpm pgdg 1.2 19.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_background_15 pg_background_15-1.0-1.rhel8.x86_64.rpm pgdg 1.0 39.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_background_15-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel8.aarch64.rpm pgdg 1.2 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_background_15 pg_background_15-1.0-1.rhel8.aarch64.rpm pgdg 1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_background_15-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_background_15 pg_background_15-1.0-1.rhel9.x86_64.rpm pgdg 1.0 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_background_15-1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.2-1PGDG.rhel9.aarch64.rpm pgdg 1.2 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_background_15 pg_background_15-1.0-1.rhel9.aarch64.rpm pgdg 1.0 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_background_15-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_background_15 pg_background_15-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_background_15-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_background_15 pg_background_15-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_background_15-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.8 77.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.8 75.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~trixie_amd64.deb pigsty 1.8 77.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~trixie_arm64.deb pigsty 1.8 75.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~jammy_amd64.deb pigsty 1.8 87.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~jammy_arm64.deb pigsty 1.8 85.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~noble_amd64.deb pigsty 1.8 79.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-background postgresql-15-pg-background_1.8-1PIGSTY~noble_arm64.deb pigsty 1.8 78.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-15-pg-background_1.8-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 41.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel8.x86_64.rpm pgdg 1.3 21.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_background_14 pg_background_14-1.0-1.rhel8.x86_64.rpm pgdg 1.0 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_background_14-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8 45.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel8.aarch64.rpm pgdg 1.3 21.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_background_14 pg_background_14-1.0-1.rhel8.aarch64.rpm pgdg 1.0 38.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_background_14-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8 46.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.8-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 41.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel9.x86_64.rpm pgdg 1.3 22.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_background_14 pg_background_14-1.2-1PGDG.rhel9.x86_64.rpm pgdg 1.2 19.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_background_14-1.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.8-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.3-1PGDG.rhel9.aarch64.rpm pgdg 1.3 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_background_14 pg_background_14-1.0-1.rhel9.aarch64.rpm pgdg 1.0 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_background_14-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8 46.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.8-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_background_14 pg_background_14-1.3-3PGDG.rhel10.x86_64.rpm pgdg 1.3 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_background_14-1.3-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.8-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8 45.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.8-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_background_14 pg_background_14-1.3-3PGDG.rhel10.aarch64.rpm pgdg 1.3 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_background_14-1.3-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.8 76.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.8 75.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~trixie_amd64.deb pigsty 1.8 76.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~trixie_arm64.deb pigsty 1.8 75.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~jammy_amd64.deb pigsty 1.8 87.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~jammy_arm64.deb pigsty 1.8 85.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~noble_amd64.deb pigsty 1.8 79.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-background postgresql-14-pg-background_1.8-1PIGSTY~noble_arm64.deb pigsty 1.8 78.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-background/postgresql-14-pg-background_1.8-1PIGSTY~noble_arm64.deb
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

> [pg_background: Execute SQL in background worker processes](https://github.com/vibhorkum/pg_background)

Execute arbitrary SQL commands in **background worker processes** within PostgreSQL. Unlike `dblink` (which creates a separate connection), `pg_background` workers run **inside** the database server in **independent transactions**.

**Use Cases:**
- Background maintenance (VACUUM, ANALYZE, REINDEX)
- Asynchronous audit logging
- Long-running ETL pipelines
- Independent notification delivery
- Parallel query patterns

### Quick Start (V2 API)

```sql
CREATE EXTENSION pg_background;

-- Launch a background job
SELECT * FROM pg_background_launch_v2(
  'SELECT count(*) FROM large_table'
) AS handle;
--   pid  |      cookie
-- -------+-------------------
--  12345 | 1234567890123456

-- Retrieve results (one-time consumption)
SELECT * FROM pg_background_result_v2(12345, 1234567890123456) AS (count BIGINT);

-- Fire-and-forget (no result needed)
SELECT * FROM pg_background_submit_v2(
  'INSERT INTO audit_log (ts, event) VALUES (now(), ''system_check'')'
) AS handle;
```


## V2 API Reference

| Function | Returns | Description |
|----------|---------|-------------|
| `pg_background_launch_v2(sql, queue_size)` | `pg_background_handle` | Launch worker, return cookie-protected handle |
| `pg_background_submit_v2(sql, queue_size)` | `pg_background_handle` | Fire-and-forget (no result consumption) |
| `pg_background_result_v2(pid, cookie)` | `SETOF record` | Retrieve results (one-time consumption) |
| `pg_background_detach_v2(pid, cookie)` | `void` | Stop tracking worker (worker continues) |
| `pg_background_cancel_v2(pid, cookie)` | `void` | Request cancellation |
| `pg_background_cancel_v2_grace(pid, cookie, grace_ms)` | `void` | Cancel with grace period |
| `pg_background_wait_v2(pid, cookie)` | `void` | Block until worker completes |
| `pg_background_wait_v2_timeout(pid, cookie, timeout_ms)` | `bool` | Wait with timeout |
| `pg_background_list_v2()` | `SETOF record` | List known workers in current session |
| `pg_background_stats_v2()` | `pg_background_stats` | Session statistics (v1.8+) |
| `pg_background_progress(pct, msg)` | `void` | Report progress from worker (v1.8+) |
| `pg_background_get_progress_v2(pid, cookie)` | `pg_background_progress` | Get worker progress (v1.8+) |

### Cancel vs Detach

| Operation | Stops Execution | Removes Tracking |
|-----------|-----------------|------------------|
| `cancel_v2()` | Yes (best-effort) | No |
| `detach_v2()` | No | Yes |

- Use **`cancel_v2()`** to **stop work** (terminate execution, prevent commit)
- Use **`detach_v2()`** to **stop tracking** (free bookkeeping while worker continues)

### Worker Lifecycle

```sql
-- Cancel a running job
SELECT pg_background_cancel_v2(pid, cookie);

-- Wait for completion
SELECT pg_background_wait_v2(pid, cookie);

-- Wait with timeout (returns true if completed)
SELECT pg_background_wait_v2_timeout(pid, cookie, 5000);

-- List active workers
SELECT * FROM pg_background_list_v2() AS (
  pid int4, cookie int8, launched_at timestamptz,
  user_id oid, queue_size int4, state text,
  sql_preview text, last_error text, consumed bool
);
```

Worker states: `running`, `stopped`, `canceled`, `error`

### Progress Reporting (v1.8+)

```sql
-- From within worker SQL
SELECT pg_background_progress(50, 'Halfway done');

-- From launcher (check progress)
SELECT * FROM pg_background_get_progress_v2(pid, cookie);
```


## GUC Settings (v1.8+)

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_background.max_workers` | 16 | Max concurrent workers per session |
| `pg_background.default_queue_size` | 65536 | Default shared memory queue size |
| `pg_background.worker_timeout` | 0 | Worker execution timeout (0 = no limit) |


## V1 API (Legacy)

The v1 API is retained for backward compatibility but lacks cookie-based PID reuse protection:

```sql
SELECT pg_background_launch('VACUUM VERBOSE my_table') AS pid \gset
SELECT * FROM pg_background_result(:pid) AS (result TEXT);
SELECT pg_background_detach(:pid);
```

The V2 API is recommended for production use due to cookie-based PID reuse protection.


## Security Model

- Extension is installed by superusers, with **no PUBLIC grants** by default
- A dedicated `pg_background_worker` NOLOGIN role is created
- Helper functions manage privileges: `grant_pg_background_privileges(role, include_v1)`
- Workers execute as the **launching user** (not superuser)
