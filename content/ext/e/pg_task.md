---
title: "pg_task"
linkTitle: "pg_task"
description: "execute any sql command at any specific time at background"
weight: 1080
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RekGRpth/pg_task">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RekGRpth/pg_task</div>
    <div class="ext-card__desc">https://github.com/RekGRpth/pg_task</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_task-2.1.29.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_task-2.1.29.tar.gz</div>
    <div class="ext-card__desc">pg_task-2.1.29.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_task`**](/ext/e/pg_task) | `2.1.29` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1080  | [**`pg_task`**](/ext/e/pg_task) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`timescaledb`](/ext/e/timescaledb) [`pg_cron`](/ext/e/pg_cron) [`pg_later`](/ext/e/pg_later) [`pg_background`](/ext/e/pg_background) [`pg_partman`](/ext/e/pg_partman) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timeseries`](/ext/e/timeseries) [`periods`](/ext/e/periods) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> breaks on many systems


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.29` | {{< pgvers "18,17,16,15,14" >}} | `pg_task` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.29` | {{< pgvers "18,17,16,15,14" >}} | `pg_task_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.29` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-task` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 |
| el8.aarch64 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 |
| el9.x86_64 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 |
| el9.aarch64 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 | AVAIL PIGSTY 2.1.29 3 |
| el10.x86_64 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 |
| el10.aarch64 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 | AVAIL PIGSTY 2.1.29 2 |
| d12.x86_64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| d12.aarch64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| d13.x86_64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| d13.aarch64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| u22.x86_64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| u22.aarch64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| u24.x86_64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| u24.aarch64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| u26.x86_64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
| u26.aarch64 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 | AVAIL PIGSTY 2.1.29 1 |
@ el8.x86_64 18 pg_task_18 pg_task_18-2.1.29-1PIGSTY.el8.x86_64.rpm pigsty 2.1.29 54.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_task_18-2.1.29-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_task_18 pg_task_18-2.1.7-3PGDG.rhel8.x86_64.rpm pgdg 2.1.7 72.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_task_18-2.1.7-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_task_18 pg_task_18-2.1.29-1PIGSTY.el8.aarch64.rpm pigsty 2.1.29 49.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_task_18-2.1.29-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_task_18 pg_task_18-2.1.7-3PGDG.rhel8.aarch64.rpm pgdg 2.1.7 63.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_task_18-2.1.7-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_task_18 pg_task_18-2.1.29-1PIGSTY.el9.x86_64.rpm pigsty 2.1.29 54.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_task_18-2.1.29-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_task_18 pg_task_18-2.1.7-3PGDG.rhel9.x86_64.rpm pgdg 2.1.7 63.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_task_18-2.1.7-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_task_18 pg_task_18-2.1.29-1PIGSTY.el9.aarch64.rpm pigsty 2.1.29 52.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_task_18-2.1.29-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_task_18 pg_task_18-2.1.7-3PGDG.rhel9.aarch64.rpm pgdg 2.1.7 54.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_task_18-2.1.7-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_task_18 pg_task_18-2.1.29-1PIGSTY.el10.x86_64.rpm pigsty 2.1.29 54.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_task_18-2.1.29-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_task_18 pg_task_18-2.1.7-3PGDG.rhel10.x86_64.rpm pgdg 2.1.7 59.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_task_18-2.1.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_task_18 pg_task_18-2.1.29-1PIGSTY.el10.aarch64.rpm pigsty 2.1.29 52.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_task_18-2.1.29-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_task_18 pg_task_18-2.1.7-3PGDG.rhel10.aarch64.rpm pgdg 2.1.7 56.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_task_18-2.1.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb pigsty 2.1.29 38.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb pigsty 2.1.29 35.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb pigsty 2.1.29 38.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb pigsty 2.1.29 35.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb pigsty 2.1.29 42.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb pigsty 2.1.29 41.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~noble_amd64.deb pigsty 2.1.29 41.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~noble_arm64.deb pigsty 2.1.29 39.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb pigsty 2.1.29 41.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-task postgresql-18-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb pigsty 2.1.29 39.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-18-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_task_17 pg_task_17-2.1.29-1PIGSTY.el8.x86_64.rpm pigsty 2.1.29 54.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_task_17-2.1.29-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_task_17 pg_task_17-2.1.7-1PGDG.rhel8.x86_64.rpm pgdg 2.1.7 72.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_task_17-2.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_task_17 pg_task_17-2.1.29-1PIGSTY.el8.aarch64.rpm pigsty 2.1.29 49.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_task_17-2.1.29-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_task_17 pg_task_17-2.1.7-1PGDG.rhel8.aarch64.rpm pgdg 2.1.7 63.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_task_17-2.1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_task_17 pg_task_17-2.1.29-1PIGSTY.el9.x86_64.rpm pigsty 2.1.29 54.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_task_17-2.1.29-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_task_17 pg_task_17-2.1.7-1PGDG.rhel9.x86_64.rpm pgdg 2.1.7 63.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_task_17-2.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_task_17 pg_task_17-2.1.29-1PIGSTY.el9.aarch64.rpm pigsty 2.1.29 52.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_task_17-2.1.29-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_task_17 pg_task_17-2.1.7-1PGDG.rhel9.aarch64.rpm pgdg 2.1.7 54.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_task_17-2.1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_task_17 pg_task_17-2.1.29-1PIGSTY.el10.x86_64.rpm pigsty 2.1.29 54.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_task_17-2.1.29-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_task_17 pg_task_17-2.1.7-3PGDG.rhel10.x86_64.rpm pgdg 2.1.7 59.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_task_17-2.1.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_task_17 pg_task_17-2.1.29-1PIGSTY.el10.aarch64.rpm pigsty 2.1.29 52.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_task_17-2.1.29-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_task_17 pg_task_17-2.1.7-3PGDG.rhel10.aarch64.rpm pgdg 2.1.7 56.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_task_17-2.1.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb pigsty 2.1.29 38.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb pigsty 2.1.29 35.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb pigsty 2.1.29 38.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb pigsty 2.1.29 35.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb pigsty 2.1.29 42.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb pigsty 2.1.29 40.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~noble_amd64.deb pigsty 2.1.29 41.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~noble_arm64.deb pigsty 2.1.29 39.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb pigsty 2.1.29 41.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-task postgresql-17-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb pigsty 2.1.29 39.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-17-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_task_16 pg_task_16-2.1.29-1PIGSTY.el8.x86_64.rpm pigsty 2.1.29 54.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_task_16-2.1.29-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_task_16 pg_task_16-2.1.7-1PGDG.rhel8.x86_64.rpm pgdg 2.1.7 72.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_task_16-2.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_task_16 pg_task_16-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 72.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_task_16-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_task_16 pg_task_16-2.1.29-1PIGSTY.el8.aarch64.rpm pigsty 2.1.29 49.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_task_16-2.1.29-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_task_16 pg_task_16-2.1.7-1PGDG.rhel8.aarch64.rpm pgdg 2.1.7 63.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_task_16-2.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_task_16 pg_task_16-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 63.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_task_16-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_task_16 pg_task_16-2.1.29-1PIGSTY.el9.x86_64.rpm pigsty 2.1.29 54.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_task_16-2.1.29-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_task_16 pg_task_16-2.1.7-1PGDG.rhel9.x86_64.rpm pgdg 2.1.7 62.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_task_16-2.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_task_16 pg_task_16-2.1.5-1PGDG.rhel9.x86_64.rpm pgdg 2.1.5 62.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_task_16-2.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_task_16 pg_task_16-2.1.29-1PIGSTY.el9.aarch64.rpm pigsty 2.1.29 52.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_task_16-2.1.29-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_task_16 pg_task_16-2.1.7-1PGDG.rhel9.aarch64.rpm pgdg 2.1.7 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_task_16-2.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_task_16 pg_task_16-2.1.5-1PGDG.rhel9.aarch64.rpm pgdg 2.1.5 53.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_task_16-2.1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_task_16 pg_task_16-2.1.29-1PIGSTY.el10.x86_64.rpm pigsty 2.1.29 54.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_task_16-2.1.29-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_task_16 pg_task_16-2.1.7-3PGDG.rhel10.x86_64.rpm pgdg 2.1.7 58.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_task_16-2.1.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_task_16 pg_task_16-2.1.29-1PIGSTY.el10.aarch64.rpm pigsty 2.1.29 52.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_task_16-2.1.29-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_task_16 pg_task_16-2.1.7-3PGDG.rhel10.aarch64.rpm pgdg 2.1.7 55.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_task_16-2.1.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb pigsty 2.1.29 38.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb pigsty 2.1.29 35.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb pigsty 2.1.29 38.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb pigsty 2.1.29 35.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb pigsty 2.1.29 42.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb pigsty 2.1.29 40.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~noble_amd64.deb pigsty 2.1.29 41.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~noble_arm64.deb pigsty 2.1.29 39.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb pigsty 2.1.29 41.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-task postgresql-16-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb pigsty 2.1.29 39.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-16-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_task_15 pg_task_15-2.1.29-1PIGSTY.el8.x86_64.rpm pigsty 2.1.29 55.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_task_15-2.1.29-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_task_15 pg_task_15-2.1.7-1PGDG.rhel8.x86_64.rpm pgdg 2.1.7 73.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_task_15-2.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_task_15 pg_task_15-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 73.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_task_15-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_task_15 pg_task_15-2.1.29-1PIGSTY.el8.aarch64.rpm pigsty 2.1.29 50.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_task_15-2.1.29-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_task_15 pg_task_15-2.1.7-1PGDG.rhel8.aarch64.rpm pgdg 2.1.7 64.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_task_15-2.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_task_15 pg_task_15-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 63.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_task_15-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_task_15 pg_task_15-2.1.29-1PIGSTY.el9.x86_64.rpm pigsty 2.1.29 56.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_task_15-2.1.29-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_task_15 pg_task_15-2.1.7-1PGDG.rhel9.x86_64.rpm pgdg 2.1.7 75.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_task_15-2.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_task_15 pg_task_15-2.1.5-1PGDG.rhel9.x86_64.rpm pgdg 2.1.5 75.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_task_15-2.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_task_15 pg_task_15-2.1.29-1PIGSTY.el9.aarch64.rpm pigsty 2.1.29 54.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_task_15-2.1.29-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_task_15 pg_task_15-2.1.7-1PGDG.rhel9.aarch64.rpm pgdg 2.1.7 68.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_task_15-2.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_task_15 pg_task_15-2.1.5-1PGDG.rhel9.aarch64.rpm pgdg 2.1.5 68.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_task_15-2.1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_task_15 pg_task_15-2.1.29-1PIGSTY.el10.x86_64.rpm pigsty 2.1.29 56.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_task_15-2.1.29-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_task_15 pg_task_15-2.1.7-3PGDG.rhel10.x86_64.rpm pgdg 2.1.7 72.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_task_15-2.1.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_task_15 pg_task_15-2.1.29-1PIGSTY.el10.aarch64.rpm pigsty 2.1.29 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_task_15-2.1.29-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_task_15 pg_task_15-2.1.7-3PGDG.rhel10.aarch64.rpm pgdg 2.1.7 69.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_task_15-2.1.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb pigsty 2.1.29 39.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb pigsty 2.1.29 36.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb pigsty 2.1.29 39.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb pigsty 2.1.29 36.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb pigsty 2.1.29 43.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb pigsty 2.1.29 41.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~noble_amd64.deb pigsty 2.1.29 41.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~noble_arm64.deb pigsty 2.1.29 40.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb pigsty 2.1.29 42.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-task postgresql-15-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb pigsty 2.1.29 40.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-15-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_task_14 pg_task_14-2.1.29-1PIGSTY.el8.x86_64.rpm pigsty 2.1.29 55.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_task_14-2.1.29-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_task_14 pg_task_14-2.1.7-1PGDG.rhel8.x86_64.rpm pgdg 2.1.7 73.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_task_14-2.1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_task_14 pg_task_14-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 72.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_task_14-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_task_14 pg_task_14-2.1.29-1PIGSTY.el8.aarch64.rpm pigsty 2.1.29 50.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_task_14-2.1.29-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_task_14 pg_task_14-2.1.7-1PGDG.rhel8.aarch64.rpm pgdg 2.1.7 63.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_task_14-2.1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_task_14 pg_task_14-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 63.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_task_14-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_task_14 pg_task_14-2.1.29-1PIGSTY.el9.x86_64.rpm pigsty 2.1.29 56.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_task_14-2.1.29-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_task_14 pg_task_14-2.1.7-1PGDG.rhel9.x86_64.rpm pgdg 2.1.7 74.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_task_14-2.1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_task_14 pg_task_14-2.1.5-1PGDG.rhel9.x86_64.rpm pgdg 2.1.5 74.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_task_14-2.1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_task_14 pg_task_14-2.1.29-1PIGSTY.el9.aarch64.rpm pigsty 2.1.29 54.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_task_14-2.1.29-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_task_14 pg_task_14-2.1.7-1PGDG.rhel9.aarch64.rpm pgdg 2.1.7 68.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_task_14-2.1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_task_14 pg_task_14-2.1.5-1PGDG.rhel9.aarch64.rpm pgdg 2.1.5 68.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_task_14-2.1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_task_14 pg_task_14-2.1.29-1PIGSTY.el10.x86_64.rpm pigsty 2.1.29 56.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_task_14-2.1.29-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_task_14 pg_task_14-2.1.7-3PGDG.rhel10.x86_64.rpm pgdg 2.1.7 72.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_task_14-2.1.7-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_task_14 pg_task_14-2.1.29-1PIGSTY.el10.aarch64.rpm pigsty 2.1.29 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_task_14-2.1.29-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_task_14 pg_task_14-2.1.7-3PGDG.rhel10.aarch64.rpm pgdg 2.1.7 69.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_task_14-2.1.7-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb pigsty 2.1.29 39.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb pigsty 2.1.29 36.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb pigsty 2.1.29 40.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb pigsty 2.1.29 36.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb pigsty 2.1.29 43.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb pigsty 2.1.29 41.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~noble_amd64.deb pigsty 2.1.29 41.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~noble_arm64.deb pigsty 2.1.29 40.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb pigsty 2.1.29 42.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-task postgresql-14-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb pigsty 2.1.29 40.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-task/postgresql-14-pg-task_2.1.29-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_task` using `pig build`:

```bash
pig build pkg pg_task         # build RPM / DEB packages
```


## Install

You can install `pg_task` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_task;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_task -v 18  # PG 18
pig ext install -y pg_task -v 17  # PG 17
pig ext install -y pg_task -v 16  # PG 16
pig ext install -y pg_task -v 15  # PG 15
pig ext install -y pg_task -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_task_18       # PG 18
dnf install -y pg_task_17       # PG 17
dnf install -y pg_task_16       # PG 16
dnf install -y pg_task_15       # PG 15
dnf install -y pg_task_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-task   # PG 18
apt install -y postgresql-17-pg-task   # PG 17
apt install -y postgresql-16-pg-task   # PG 16
apt install -y postgresql-15-pg-task   # PG 15
apt install -y postgresql-14-pg-task   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_task';
```





## Usage

> Sources: [pg_task upstream README](https://github.com/RekGRpth/pg_task), [PGXN pg_task](https://pgxn.org/dist/pg_task/), [local metadata](../db/extension.csv).

`pg_task` is a background-worker scheduler for running SQL asynchronously at a planned time. Upstream documents PostgreSQL, Greenplum, and Greengage support.

Enable the worker at server start, then create the extension in the database that will own the task table:

```conf
shared_preload_libraries = 'pg_task'
```

```sql
CREATE EXTENSION pg_task;
```

### Schedule Tasks

Schedule work by inserting rows into the configured task table, which defaults to `public.task` in database `postgres` unless changed with GUCs.

```sql
-- Run SQL immediately
INSERT INTO task (input) VALUES ('SELECT now()');

-- Run SQL after 5 minutes
INSERT INTO task (plan, input) VALUES (now() + '5 min'::interval, 'SELECT now()');

-- Run SQL at a specific time
INSERT INTO task (plan, input) VALUES ('2029-07-01 12:51:00', 'SELECT now()');

-- Repeat SQL every 5 minutes
INSERT INTO task (repeat, input) VALUES ('5 min', 'SELECT now()');

-- Exceptions are caught and written to the error column
INSERT INTO task (input) VALUES ('SELECT 1/0');

-- Limit concurrent tasks in a group.
-- max = 1 means one task at a time for this group.
INSERT INTO task ("group", max, input) VALUES ('billing', 1, 'SELECT refresh_billing_cache()');

-- Run SQL on a remote database
INSERT INTO task (input, remote) VALUES ('SELECT now()', 'user=user host=host');
```

### Task Table

The task table is meant to be user-visible. Upstream notes that users may add columns or partition it.

Key columns:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| id | bigserial | autoincrement | Primary key |
| parent | bigint | pg_task.id | Parent task id |
| plan | timestamptz | statement_timestamp() | Planned start time |
| start | timestamptz | | Actual start time |
| stop | timestamptz | | Actual stop time |
| active | interval | 1 hour | Period after plan time when task is active |
| live | interval | 0 sec | Max lifetime of background worker |
| repeat | interval | 0 sec | Auto repeat interval |
| timeout | interval | 0 sec | Allowed time for task run |
| count | int | 0 | Max task count before worker exit |
| max | int | 0 | Max concurrent tasks in group; negative values mean pause between tasks in milliseconds |
| pid | int | | Process id executing task |
| state | enum | PLAN | PLAN, TAKE, WORK, DONE, STOP |
| delete | bool | true | Auto delete when output and error are null |
| drift | bool | false | Compute next repeat by stop time |
| header | bool | true | Show column headers in output |
| group | text | 'group' | Task grouping name |
| input | text | | SQL command(s) to execute |
| output | text | | Received result(s) |
| error | text | | Caught error |
| remote | text | | Remote database connection string |

### Configuration

Key settings:

| Name | Type | Default | Description |
|------|------|---------|-------------|
| pg_task.delete | bool | true | Auto delete completed tasks |
| pg_task.drift | bool | false | Compute repeat by stop time |
| pg_task.header | bool | true | Show column headers in task output |
| pg_task.string | bool | true | Quote only strings in output |
| pg_task.count | int | 0 | Default maximum number of tasks per worker before exit |
| pg_task.fetch | int | 100 | Number of task rows fetched at once |
| pg_task.limit | int | 1000 | Limit task rows at once |
| pg_task.max | int | 0 | Default max concurrent tasks in group |
| pg_task.run | int | 2147483647 | Maximum concurrently executing tasks in work |
| pg_task.sleep | int | 1000 | Check tasks every N milliseconds |
| pg_task.active | interval | 1 hour | Period after plan time when a task remains active for execution |
| pg_task.live | interval | 0 sec | Maximum lifetime of a worker process |
| pg_task.repeat | interval | 0 sec | Default repeat interval |
| pg_task.timeout | interval | 0 sec | Default task timeout |
| pg_task.data | text | postgres | Database name for tasks table |
| pg_task.user | text | postgres | User name for tasks table |
| pg_task.schema | text | public | Schema name for tasks table |
| pg_task.table | text | task | Table name for tasks table |
| pg_task.json | json | `[{"data":"postgres"}]` | Multi-database configuration |
| pg_task.id | bigint | 0 | Current task id, read-only session setting |

### Multi-Database Configuration

To run tasks on multiple databases, configure via JSON:

```conf
pg_task.json = '[{"data":"database1"},{"data":"database2","user":"username2"},{"data":"database3","schema":"schema3"}]'
```

If the specified database, user, schema or table does not exist, `pg_task` will create them.

The local metadata marks this package as `headless`, so it needs `shared_preload_libraries` rather than a user-facing SQL-only install path. Validate background scheduling behavior on the target PostgreSQL version before relying on it for critical jobs.
