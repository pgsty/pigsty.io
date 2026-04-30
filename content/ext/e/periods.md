---
title: "periods"
linkTitle: "periods"
description: "Provide Standard SQL functionality for PERIODs and SYSTEM VERSIONING"
weight: 1030
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/xocolatl/periods">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">xocolatl/periods</div>
    <div class="ext-card__desc">https://github.com/xocolatl/periods</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/periods-1.2.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">periods-1.2.3.tar.gz</div>
    <div class="ext-card__desc">periods-1.2.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`periods`**](/ext/e/periods) | `1.2.3` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1030  | [**`periods`**](/ext/e/periods) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`btree_gist`](/ext/e/btree_gist) [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) [`timescaledb`](/ext/e/timescaledb) [`timeseries`](/ext/e/timeseries) [`temporal_tables`](/ext/e/temporal_tables) [`emaj`](/ext/e/emaj) [`table_version`](/ext/e/table_version) [`pg_cron`](/ext/e/pg_cron) [`pg_partman`](/ext/e/pg_partman) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `periods` | `btree_gist` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `periods_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-periods` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 3 | AVAIL PIGSTY 1.2.3 3 |
| el8.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 3 | AVAIL PIGSTY 1.2.3 3 |
| el9.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 3 | AVAIL PIGSTY 1.2.3 2 |
| el9.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 3 | AVAIL PIGSTY 1.2.3 3 |
| el10.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 |
| el10.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 | AVAIL PIGSTY 1.2.3 2 |
| d12.x86_64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| d12.aarch64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| d13.x86_64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| d13.aarch64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| u22.x86_64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| u22.aarch64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| u24.x86_64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| u24.aarch64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| u26.x86_64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
| u26.aarch64 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 | AVAIL PGDG 1.2.3 1 |
@ el8.x86_64 18 periods_18 periods_18-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/periods_18-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 periods_18 periods_18-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 43.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/periods_18-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 periods_18 periods_18-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/periods_18-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 periods_18 periods_18-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/periods_18-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 periods_18 periods_18-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 42.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/periods_18-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 periods_18 periods_18-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/periods_18-1.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg12+1_amd64.deb pgdg 1.2.3 47.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg12+1_arm64.deb pgdg 1.2.3 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg13+1_amd64.deb pgdg 1.2.3 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg13+1_arm64.deb pgdg 1.2.3 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg22.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg22.04+1_arm64.deb pgdg 1.2.3 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg24.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg24.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg26.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-periods postgresql-18-periods_1.2.3-2.pgdg26.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-18-periods_1.2.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 periods_17 periods_17-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/periods_17-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 periods_17 periods_17-1.2.2-3PGDG.rhel8.x86_64.rpm pgdg 1.2.2 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/periods_17-1.2.2-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 periods_17 periods_17-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 43.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/periods_17-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 periods_17 periods_17-1.2.2-3PGDG.rhel8.aarch64.rpm pgdg 1.2.2 44.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/periods_17-1.2.2-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 periods_17 periods_17-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/periods_17-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 periods_17 periods_17-1.2.2-3PGDG.rhel9.x86_64.rpm pgdg 1.2.2 42.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/periods_17-1.2.2-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 periods_17 periods_17-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/periods_17-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 periods_17 periods_17-1.2.2-3PGDG.rhel9.aarch64.rpm pgdg 1.2.2 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/periods_17-1.2.2-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 periods_17 periods_17-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/periods_17-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 periods_17 periods_17-1.2.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2.2 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/periods_17-1.2.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 periods_17 periods_17-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/periods_17-1.2.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 periods_17 periods_17-1.2.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2.2 42.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/periods_17-1.2.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg12+1_amd64.deb pgdg 1.2.3 47.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg12+1_arm64.deb pgdg 1.2.3 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg13+1_amd64.deb pgdg 1.2.3 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg13+1_arm64.deb pgdg 1.2.3 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg22.04+1_amd64.deb pgdg 1.2.3 50.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg22.04+1_arm64.deb pgdg 1.2.3 49.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg24.04+1_amd64.deb pgdg 1.2.3 46.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg24.04+1_arm64.deb pgdg 1.2.3 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg26.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-periods postgresql-17-periods_1.2.3-2.pgdg26.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-17-periods_1.2.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 periods_16 periods_16-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/periods_16-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 periods_16 periods_16-1.2.2-1.rhel8.1.x86_64.rpm pgdg 1.2.2 44.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/periods_16-1.2.2-1.rhel8.1.x86_64.rpm
@ el8.aarch64 16 periods_16 periods_16-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 43.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/periods_16-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 periods_16 periods_16-1.2.2-1.rhel8.1.aarch64.rpm pgdg 1.2.2 43.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/periods_16-1.2.2-1.rhel8.1.aarch64.rpm
@ el9.x86_64 16 periods_16 periods_16-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/periods_16-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 periods_16 periods_16-1.2.2-1.rhel9.1.x86_64.rpm pgdg 1.2.2 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/periods_16-1.2.2-1.rhel9.1.x86_64.rpm
@ el9.aarch64 16 periods_16 periods_16-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/periods_16-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 periods_16 periods_16-1.2.2-1.rhel9.1.aarch64.rpm pgdg 1.2.2 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/periods_16-1.2.2-1.rhel9.1.aarch64.rpm
@ el10.x86_64 16 periods_16 periods_16-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/periods_16-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 periods_16 periods_16-1.2.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2.2 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/periods_16-1.2.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 periods_16 periods_16-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/periods_16-1.2.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 periods_16 periods_16-1.2.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2.2 42.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/periods_16-1.2.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg12+1_amd64.deb pgdg 1.2.3 47.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg12+1_arm64.deb pgdg 1.2.3 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg13+1_amd64.deb pgdg 1.2.3 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg13+1_arm64.deb pgdg 1.2.3 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg22.04+1_amd64.deb pgdg 1.2.3 49.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg22.04+1_arm64.deb pgdg 1.2.3 49.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg24.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg24.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg26.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-periods postgresql-16-periods_1.2.3-2.pgdg26.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-16-periods_1.2.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 periods_15 periods_15-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/periods_15-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 periods_15 periods_15-1.2.2-1.rhel8.x86_64.rpm pgdg 1.2.2 44.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/periods_15-1.2.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 periods_15 periods_15-1.2-2.rhel8.x86_64.rpm pgdg 1.2 60.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/periods_15-1.2-2.rhel8.x86_64.rpm
@ el8.aarch64 15 periods_15 periods_15-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 43.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/periods_15-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 periods_15 periods_15-1.2.2-1.rhel8.aarch64.rpm pgdg 1.2.2 43.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/periods_15-1.2.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 periods_15 periods_15-1.2-2.rhel8.aarch64.rpm pgdg 1.2 60.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/periods_15-1.2-2.rhel8.aarch64.rpm
@ el9.x86_64 15 periods_15 periods_15-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/periods_15-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 periods_15 periods_15-1.2.2-1.rhel9.x86_64.rpm pgdg 1.2.2 42.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/periods_15-1.2.2-1.rhel9.x86_64.rpm
@ el9.x86_64 15 periods_15 periods_15-1.2-2.rhel9.x86_64.rpm pgdg 1.2 59.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/periods_15-1.2-2.rhel9.x86_64.rpm
@ el9.aarch64 15 periods_15 periods_15-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/periods_15-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 periods_15 periods_15-1.2.2-1.rhel9.aarch64.rpm pgdg 1.2.2 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/periods_15-1.2.2-1.rhel9.aarch64.rpm
@ el9.aarch64 15 periods_15 periods_15-1.2-2.rhel9.aarch64.rpm pgdg 1.2 59.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/periods_15-1.2-2.rhel9.aarch64.rpm
@ el10.x86_64 15 periods_15 periods_15-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/periods_15-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 periods_15 periods_15-1.2.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2.2 42.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/periods_15-1.2.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 periods_15 periods_15-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/periods_15-1.2.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 periods_15 periods_15-1.2.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2.2 42.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/periods_15-1.2.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg12+1_amd64.deb pgdg 1.2.3 46.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg12+1_arm64.deb pgdg 1.2.3 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg13+1_amd64.deb pgdg 1.2.3 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg13+1_arm64.deb pgdg 1.2.3 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg22.04+1_amd64.deb pgdg 1.2.3 49.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg22.04+1_arm64.deb pgdg 1.2.3 49.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg24.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg24.04+1_arm64.deb pgdg 1.2.3 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg26.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-periods postgresql-15-periods_1.2.3-2.pgdg26.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-15-periods_1.2.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 periods_14 periods_14-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/periods_14-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 periods_14 periods_14-1.2.2-1.rhel8.x86_64.rpm pgdg 1.2.2 44.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/periods_14-1.2.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 periods_14 periods_14-1.2-2.rhel8.x86_64.rpm pgdg 1.2 61.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/periods_14-1.2-2.rhel8.x86_64.rpm
@ el8.aarch64 14 periods_14 periods_14-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 43.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/periods_14-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 periods_14 periods_14-1.2.2-1.rhel8.aarch64.rpm pgdg 1.2.2 43.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/periods_14-1.2.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 periods_14 periods_14-1.2-2.rhel8.aarch64.rpm pgdg 1.2 60.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/periods_14-1.2-2.rhel8.aarch64.rpm
@ el9.x86_64 14 periods_14 periods_14-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/periods_14-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 periods_14 periods_14-1.2.2-1.rhel9.x86_64.rpm pgdg 1.2.2 42.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/periods_14-1.2.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 periods_14 periods_14-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/periods_14-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 periods_14 periods_14-1.2.2-1.rhel9.aarch64.rpm pgdg 1.2.2 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/periods_14-1.2.2-1.rhel9.aarch64.rpm
@ el9.aarch64 14 periods_14 periods_14-1.2-2.rhel9.aarch64.rpm pgdg 1.2 59.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/periods_14-1.2-2.rhel9.aarch64.rpm
@ el10.x86_64 14 periods_14 periods_14-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/periods_14-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 periods_14 periods_14-1.2.2-4PGDG.rhel10.x86_64.rpm pgdg 1.2.2 42.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/periods_14-1.2.2-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 periods_14 periods_14-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/periods_14-1.2.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 periods_14 periods_14-1.2.2-4PGDG.rhel10.aarch64.rpm pgdg 1.2.2 42.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/periods_14-1.2.2-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg12+1_amd64.deb pgdg 1.2.3 46.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg12+1_arm64.deb pgdg 1.2.3 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg13+1_amd64.deb pgdg 1.2.3 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg13+1_arm64.deb pgdg 1.2.3 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg22.04+1_amd64.deb pgdg 1.2.3 49.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg22.04+1_arm64.deb pgdg 1.2.3 49.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg24.04+1_amd64.deb pgdg 1.2.3 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg24.04+1_arm64.deb pgdg 1.2.3 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg26.04+1_amd64.deb pgdg 1.2.3 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-periods postgresql-14-periods_1.2.3-2.pgdg26.04+1_arm64.deb pgdg 1.2.3 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-periods/postgresql-14-periods_1.2.3-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `periods` using `pig build`:

```bash
pig build pkg periods         # build RPM packages
```


## Install

You can install `periods` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install periods;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y periods -v 18  # PG 18
pig ext install -y periods -v 17  # PG 17
pig ext install -y periods -v 16  # PG 16
pig ext install -y periods -v 15  # PG 15
pig ext install -y periods -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y periods_18       # PG 18
dnf install -y periods_17       # PG 17
dnf install -y periods_16       # PG 16
dnf install -y periods_15       # PG 15
dnf install -y periods_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-periods   # PG 18
apt install -y postgresql-17-periods   # PG 17
apt install -y postgresql-16-periods   # PG 16
apt install -y postgresql-15-periods   # PG 15
apt install -y postgresql-14-periods   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION periods CASCADE;  -- requires: btree_gist
```



## Usage

> [periods: Periods and SYSTEM VERSIONING for PostgreSQL](https://github.com/xocolatl/periods)

This extension recreates the behavior defined in [SQL:2016](https://www.iso.org/standard/63556.html) (originally in SQL:2011) around periods and tables with `SYSTEM VERSIONING`. The idea is to figure out all the rules that PostgreSQL would like to adopt and to allow earlier versions of PostgreSQL to simulate the behavior once the feature is finally integrated.

### What is a period?

A period is a definition on a table which specifies a name and two columns. The period's name cannot be the same as any column name of the table.

```sql
-- Standard SQL
CREATE TABLE example (
    id bigint,
    start_date date,
    end_date date,
    PERIOD FOR validity (start_date, end_date)
);
```

Since extensions cannot modify PostgreSQL's grammar, we use functions, views, and triggers to get as close to the same thing as possible.

```sql
CREATE TABLE example (
    id bigint,
    start_date date,
    end_date date
);
SELECT periods.add_period('example', 'validity', 'start_date', 'end_date');
```

Defining a period constrains the two columns such that the start column's value must be strictly inferior to the end column's value, and that both columns be non-null. The period's value includes the start value but excludes the end value.

## Unique Constraints

Periods may be part of `PRIMARY KEY`s and `UNIQUE` constraints.

```sql
CREATE TABLE example (
    id bigint,
    start_date date,
    end_date date
);
SELECT periods.add_period('example', 'validity', 'start_date', 'end_date');
SELECT periods.add_unique_key('example', ARRAY['id'], 'validity');
```

The extension will create a unique constraint over all of the columns specified and the two columns of the period given. It will also create an exclusion constraint using gist to implement the `WITHOUT OVERLAPS` part of the constraint.

## Foreign Keys

If you can have unique keys with periods, you can also have foreign keys pointing at them.

```sql
SELECT periods.add_foreign_key('example2', 'ARRAY[ex_id]', 'validity', 'example_id_validity');
```

## Portions

The SQL standard allows syntax for updating or deleting just a portion of a period. Rows are inserted as needed for the portions not being updated or deleted.

```sql
-- Standard SQL
UPDATE example
FOR PORTION OF validity FROM '...' TO '...'
SET ...
WHERE ...;
```

This extension uses a view with an `INSTEAD OF` trigger to figure out what portion of the period you would like to modify:

```sql
UPDATE example__for_portion_of_validity
SET ...,
    start_date = ...,
    end_date = ...
WHERE ...;
```

In order to use this feature, the table must have a primary key.

## Predicates

The SQL standard provides for several predicates on periods, implemented as inlined functions:

```sql
-- "t" and "u" are tables with respective periods "p" and "q".
-- Both periods have underlying columns "s" and "e".

WHERE periods.contains(t.s, t.e, 42)            -- t.p CONTAINS 42
WHERE periods.contains(t.s, t.e, u.s, u.e)      -- t.p CONTAINS u.q
WHERE periods.equals(t.s, t.e, u.s, u.e)        -- t.p EQUALS u.q
WHERE periods.overlaps(t.s, t.e, u.s, u.e)      -- t.p OVERLAPS u.q
WHERE periods.precedes(t.s, t.e, u.s, u.e)      -- t.p PRECEDES u.q
WHERE periods.succeeds(t.s, t.e, u.s, u.e)      -- t.p SUCCEEDS u.q
WHERE periods.immediately_precedes(t.s, t.e, u.s, u.e)  -- t.p IMMEDIATELY PRECEDES u.q
WHERE periods.immediately_succeeds(t.s, t.e, u.s, u.e)  -- t.p IMMEDIATELY SUCCEEDS u.q
```


## System-Versioned Tables

### SYSTEM_TIME

If the period is named `SYSTEM_TIME`, then special rules apply. The type of the columns must be `date`, `timestamp without time zone`, or `timestamp with time zone`; and they are not modifiable by the user. This extension uses triggers to set the start column to `transaction_timestamp()` and the end column is always `'infinity'`.

***Note:*** It is generally unwise to use anything but `timestamp with time zone` because changes in the `TimeZone` configuration parameter or Daylight Savings Time changes can distort the history.

```sql
CREATE TABLE example (
    id bigint PRIMARY KEY,
    value text
);
SELECT periods.add_system_time_period('example', 'row_start', 'row_end');
```

The columns need not exist — they will be created by the extension.

### Excluding Columns

It might be desirable to prevent some columns from updating the `SYSTEM_TIME` values:

```sql
SELECT periods.add_system_time_period(
            'example',
            excluded_column_names => ARRAY['foo', 'bar']);
```

Excluded columns can be defined after the fact as well:

```sql
SELECT periods.set_system_time_period_excluded_columns(
            'example',
            ARRAY['foo', 'bar']);
```

### WITH SYSTEM VERSIONING

This special `SYSTEM_TIME` period can be used to keep track of changes in the table.

```sql
CREATE TABLE example (
    id bigint PRIMARY KEY,
    value text
);
SELECT periods.add_system_time_period('example', 'row_start', 'row_end');
SELECT periods.add_system_versioning('example');
```

This instructs the system to keep a record of all changes in the table. A separate history table is used. You can create the history table yourself and instruct the extension to use it if you want to do things like add partitioning.

### Temporal Querying

The SQL standard extends the `FROM` and `JOIN` clauses to allow specifying a point in time, or a range of time. This extension implements them through inlined functions:

```sql
SELECT * FROM t__as_of('...');                       -- FOR system_time AS OF '...'
SELECT * FROM t__from_to('...', '...');              -- FOR system_time FROM '...' TO '...'
SELECT * FROM t__between('...', '...');              -- FOR system_time BETWEEN '...' AND '...'
SELECT * FROM t__between_symmetric('...', '...');    -- FOR system_time BETWEEN SYMMETRIC '...' AND '...'
```

### Access Control

The history table as well as the helper functions all follow the ownership and access privileges of the base table. The history data is read-only. In order to trim old data, `SYSTEM VERSIONING` must be suspended:

```sql
BEGIN;
SELECT periods.drop_system_versioning('t');
GRANT DELETE ON TABLE t TO CURRENT_USER;
DELETE FROM t_history WHERE system_time_end < now() - interval '1 year';
SELECT periods.add_system_versioning('t');
COMMIT;
```

### Altering a Table with System Versioning

This extension prevents you from dropping objects while system versioning is active. The suggested way to make changes is:

```sql
BEGIN;
SELECT periods.drop_system_versioning('t');
ALTER TABLE t ...;
ALTER TABLE t_history ...;
SELECT periods.add_system_versioning('t');
COMMIT;
```

It is up to you to make sure you alter the history table in a way that is compatible with the main table. Re-activating system versioning will verify this.
