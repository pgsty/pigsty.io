---
title: "pgnodemx"
linkTitle: "pgnodemx"
description: "Capture node OS metrics via SQL queries"
weight: 6440
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrunchyData/pgnodemx">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrunchyData/pgnodemx</div>
    <div class="ext-card__desc">https://github.com/CrunchyData/pgnodemx</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgnodemx-1.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgnodemx-1.7.tar.gz</div>
    <div class="ext-card__desc">pgnodemx-1.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgnodemx`**](/ext/e/pgnodemx) | `1.7` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6440  | [**`pgnodemx`**](/ext/e/pgnodemx) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 6450  | [**`pg_proctab`**](/ext/e/pg_proctab) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`system_stats`](/ext/e/system_stats) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) [`pgsentinel`](/ext/e/pgsentinel) [`pgmeminfo`](/ext/e/pgmeminfo) [`pgfincore`](/ext/e/pgfincore) [`prioritize`](/ext/e/prioritize) [`pg_buffercache`](/ext/e/pg_buffercache) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `pgnodemx` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `pgnodemx_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgnodemx` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el8.aarch64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el9.x86_64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el9.aarch64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el10.x86_64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el10.aarch64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| d12.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| d12.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| d13.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| d13.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u22.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u22.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u24.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u24.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u26.x86_64 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 |
| u26.aarch64 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 | AVAIL PGDG 2.0.1 2 |
@ el8.x86_64 18 pgnodemx_18 pgnodemx_18-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 37.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgnodemx_18-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgnodemx_18 pgnodemx_18-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgnodemx_18-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgnodemx_18 pgnodemx_18-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 37.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgnodemx_18-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgnodemx_18 pgnodemx_18-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgnodemx_18-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgnodemx_18 pgnodemx_18-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 35.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgnodemx_18-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgnodemx_18 pgnodemx_18-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgnodemx_18-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgnodemx_18 pgnodemx_18-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 35.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgnodemx_18-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgnodemx_18 pgnodemx_18-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 41.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgnodemx_18-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgnodemx_18 pgnodemx_18-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgnodemx_18-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgnodemx_18 pgnodemx_18-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 42.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgnodemx_18-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgnodemx_18 pgnodemx_18-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgnodemx_18-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgnodemx_18 pgnodemx_18-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 41.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgnodemx_18-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb pgdg 2.0.1 95.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg12+1_amd64.deb pgdg 1.7 82.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb pigsty 1.7 84.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb pgdg 2.0.1 94.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg12+1_arm64.deb pgdg 1.7 81.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb pigsty 1.7 83.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb pgdg 2.0.1 95.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg13+1_amd64.deb pgdg 1.7 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb pigsty 1.7 84.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb pgdg 2.0.1 94.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg13+1_arm64.deb pgdg 1.7 81.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb pigsty 1.7 83.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb pgdg 2.0.1 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb pgdg 1.7 81.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb pigsty 1.7 89.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb pgdg 2.0.1 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb pgdg 1.7 80.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb pigsty 1.7 88.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb pgdg 2.0.1 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb pgdg 1.7 81.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~noble_amd64.deb pigsty 1.7 87.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb pgdg 2.0.1 93.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb pgdg 1.7 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-1PIGSTY~noble_arm64.deb pigsty 1.7 87.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb pgdg 2.0.1 93.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb pgdg 1.7 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb pgdg 2.0.1 93.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgnodemx postgresql-18-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb pgdg 1.7 80.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-18-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgnodemx_17 pgnodemx_17-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 37.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgnodemx_17-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgnodemx_17 pgnodemx_17-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgnodemx_17-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgnodemx_17 pgnodemx_17-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 37.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgnodemx_17-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgnodemx_17 pgnodemx_17-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgnodemx_17-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgnodemx_17 pgnodemx_17-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 35.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgnodemx_17-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgnodemx_17 pgnodemx_17-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgnodemx_17-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgnodemx_17 pgnodemx_17-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 35.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgnodemx_17-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgnodemx_17 pgnodemx_17-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgnodemx_17-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgnodemx_17 pgnodemx_17-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgnodemx_17-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgnodemx_17 pgnodemx_17-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 42.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgnodemx_17-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgnodemx_17 pgnodemx_17-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgnodemx_17-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgnodemx_17 pgnodemx_17-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgnodemx_17-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb pgdg 2.0.1 95.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg12+1_amd64.deb pgdg 1.7 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb pigsty 1.7 84.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb pgdg 2.0.1 94.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg12+1_arm64.deb pgdg 1.7 81.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb pigsty 1.7 83.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb pgdg 2.0.1 95.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg13+1_amd64.deb pgdg 1.7 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb pigsty 1.7 84.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb pgdg 2.0.1 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg13+1_arm64.deb pgdg 1.7 81.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb pigsty 1.7 83.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb pgdg 2.0.1 103.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb pgdg 1.7 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb pigsty 1.7 96.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb pgdg 2.0.1 101.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb pgdg 1.7 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb pigsty 1.7 95.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb pgdg 2.0.1 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb pgdg 1.7 81.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~noble_amd64.deb pigsty 1.7 87.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb pgdg 2.0.1 93.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb pgdg 1.7 80.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-1PIGSTY~noble_arm64.deb pigsty 1.7 87.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb pgdg 2.0.1 94.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb pgdg 1.7 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb pgdg 2.0.1 93.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgnodemx postgresql-17-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb pgdg 1.7 80.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-17-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgnodemx_16 pgnodemx_16-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 37.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgnodemx_16-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgnodemx_16 pgnodemx_16-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgnodemx_16-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgnodemx_16 pgnodemx_16-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 37.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgnodemx_16-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgnodemx_16 pgnodemx_16-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 41.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgnodemx_16-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgnodemx_16 pgnodemx_16-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 35.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgnodemx_16-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgnodemx_16 pgnodemx_16-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgnodemx_16-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgnodemx_16 pgnodemx_16-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 35.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgnodemx_16-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgnodemx_16 pgnodemx_16-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 41.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgnodemx_16-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgnodemx_16 pgnodemx_16-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgnodemx_16-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgnodemx_16 pgnodemx_16-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 42.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgnodemx_16-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgnodemx_16 pgnodemx_16-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgnodemx_16-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgnodemx_16 pgnodemx_16-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgnodemx_16-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb pgdg 2.0.1 95.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg12+1_amd64.deb pgdg 1.7 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb pigsty 1.7 84.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb pgdg 2.0.1 94.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg12+1_arm64.deb pgdg 1.7 81.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb pigsty 1.7 83.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb pgdg 2.0.1 95.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg13+1_amd64.deb pgdg 1.7 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb pigsty 1.7 84.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb pgdg 2.0.1 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg13+1_arm64.deb pgdg 1.7 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb pigsty 1.7 83.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb pgdg 2.0.1 103.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb pgdg 1.7 88.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb pigsty 1.7 96.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb pgdg 2.0.1 101.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb pgdg 1.7 87.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb pigsty 1.7 95.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb pgdg 2.0.1 94.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb pgdg 1.7 81.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~noble_amd64.deb pigsty 1.7 87.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb pgdg 2.0.1 93.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb pgdg 1.7 80.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-1PIGSTY~noble_arm64.deb pigsty 1.7 87.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb pgdg 2.0.1 94.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb pgdg 1.7 81.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb pgdg 2.0.1 93.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgnodemx postgresql-16-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb pgdg 1.7 80.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-16-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgnodemx_15 pgnodemx_15-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 38.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgnodemx_15-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgnodemx_15 pgnodemx_15-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgnodemx_15-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pgnodemx_15 pgnodemx_15-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 38.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgnodemx_15-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgnodemx_15 pgnodemx_15-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 42.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgnodemx_15-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgnodemx_15 pgnodemx_15-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 38.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgnodemx_15-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgnodemx_15 pgnodemx_15-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 43.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgnodemx_15-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pgnodemx_15 pgnodemx_15-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 37.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgnodemx_15-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgnodemx_15 pgnodemx_15-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgnodemx_15-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgnodemx_15 pgnodemx_15-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 38.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgnodemx_15-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgnodemx_15 pgnodemx_15-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 44.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgnodemx_15-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgnodemx_15 pgnodemx_15-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 37.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgnodemx_15-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgnodemx_15 pgnodemx_15-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 44.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgnodemx_15-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb pgdg 2.0.1 96.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg12+1_amd64.deb pgdg 1.7 83.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb pigsty 1.7 85.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb pgdg 2.0.1 95.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg12+1_arm64.deb pgdg 1.7 82.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb pigsty 1.7 84.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb pgdg 2.0.1 96.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg13+1_amd64.deb pgdg 1.7 83.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb pigsty 1.7 85.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb pgdg 2.0.1 95.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg13+1_arm64.deb pgdg 1.7 83.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb pigsty 1.7 84.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb pgdg 2.0.1 105.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb pgdg 1.7 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb pigsty 1.7 98.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb pgdg 2.0.1 103.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb pgdg 1.7 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb pigsty 1.7 97.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb pgdg 2.0.1 96.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb pgdg 1.7 83.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~noble_amd64.deb pigsty 1.7 89.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb pgdg 2.0.1 95.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb pgdg 1.7 82.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-1PIGSTY~noble_arm64.deb pigsty 1.7 89.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb pgdg 2.0.1 95.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb pgdg 1.7 83.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb pgdg 2.0.1 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgnodemx postgresql-15-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb pgdg 1.7 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-15-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgnodemx_14 pgnodemx_14-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 38.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgnodemx_14-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgnodemx_14 pgnodemx_14-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 43.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgnodemx_14-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pgnodemx_14 pgnodemx_14-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 38.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgnodemx_14-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgnodemx_14 pgnodemx_14-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 42.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgnodemx_14-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pgnodemx_14 pgnodemx_14-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 37.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgnodemx_14-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgnodemx_14 pgnodemx_14-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 43.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgnodemx_14-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pgnodemx_14 pgnodemx_14-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 37.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgnodemx_14-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgnodemx_14 pgnodemx_14-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 43.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgnodemx_14-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pgnodemx_14 pgnodemx_14-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 37.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgnodemx_14-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgnodemx_14 pgnodemx_14-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 44.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgnodemx_14-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgnodemx_14 pgnodemx_14-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 37.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgnodemx_14-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgnodemx_14 pgnodemx_14-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 44.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgnodemx_14-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb pgdg 2.0.1 95.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg12+1_amd64.deb pgdg 1.7 83.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb pigsty 1.7 85.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb pgdg 2.0.1 94.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg12+1_arm64.deb pgdg 1.7 82.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb pigsty 1.7 84.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb pgdg 2.0.1 95.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg13+1_amd64.deb pgdg 1.7 83.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb pigsty 1.7 85.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb pgdg 2.0.1 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg13+1_arm64.deb pgdg 1.7 82.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb pigsty 1.7 84.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb pgdg 2.0.1 103.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb pgdg 1.7 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb pigsty 1.7 97.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb pgdg 2.0.1 102.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb pgdg 1.7 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb pigsty 1.7 97.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb pgdg 2.0.1 95.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb pgdg 1.7 83.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~noble_amd64.deb pigsty 1.7 88.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb pgdg 2.0.1 94.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb pgdg 1.7 82.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-1PIGSTY~noble_arm64.deb pigsty 1.7 89.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb pgdg 2.0.1 94.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb pgdg 1.7 82.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb pgdg 2.0.1 93.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_2.0.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgnodemx postgresql-14-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb pgdg 1.7 81.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgnodemx/postgresql-14-pgnodemx_1.7-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgnodemx` using `pig build`:

```bash
pig build pkg pgnodemx         # build RPM / DEB packages
```


## Install

You can install `pgnodemx` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgnodemx;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgnodemx -v 18  # PG 18
pig ext install -y pgnodemx -v 17  # PG 17
pig ext install -y pgnodemx -v 16  # PG 16
pig ext install -y pgnodemx -v 15  # PG 15
pig ext install -y pgnodemx -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgnodemx_18       # PG 18
dnf install -y pgnodemx_17       # PG 17
dnf install -y pgnodemx_16       # PG 16
dnf install -y pgnodemx_15       # PG 15
dnf install -y pgnodemx_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgnodemx   # PG 18
apt install -y postgresql-17-pgnodemx   # PG 17
apt install -y postgresql-16-pgnodemx   # PG 16
apt install -y postgresql-15-pgnodemx   # PG 15
apt install -y postgresql-14-pgnodemx   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgnodemx';
```


**Create Extension**:

```sql
CREATE EXTENSION pgnodemx;
```



## Usage

> [pgnodemx: SQL functions to access node OS metrics from PostgreSQL](https://github.com/CrunchyData/pgnodemx)

pgnodemx provides SQL access to OS-level metrics including cgroup statistics, `/proc` filesystem data, and system information. Requires `pg_monitor` role membership.

### cgroup Functions

```sql
-- Check cgroup support status
SELECT current_setting('pgnodemx.cgroup_enabled');
SELECT cgroup_mode();  -- 'legacy', 'unified', 'hybrid', or 'disabled'

-- Read cgroup scalar values
SELECT cgroup_scalar_bigint('memory.current');
SELECT cgroup_scalar_float8('cpu.uclamp.max');
SELECT cgroup_scalar_text('cgroup.type');

-- Read cgroup key-value files
SELECT * FROM cgroup_setof_kv('memory.stat');
SELECT * FROM cgroup_setof_kv('cpu.stat');

-- Read cgroup nested key-value files
SELECT * FROM cgroup_setof_nkv('memory.pressure');
SELECT * FROM cgroup_setof_nkv('cpu.pressure');

-- Get cgroup paths and process count
SELECT * FROM cgroup_path();
SELECT cgroup_process_count();
```

### /proc Functions

```sql
SELECT * FROM proc_diskstats();       -- /proc/diskstats
SELECT * FROM proc_mountinfo();       -- /proc/self/mountinfo
SELECT * FROM proc_meminfo();         -- /proc/meminfo
SELECT * FROM proc_network_stats();   -- /proc/self/net/dev
SELECT * FROM proc_pid_io();          -- /proc/<pid>/io for all PG processes
SELECT * FROM proc_pid_cmdline();     -- command line for all PG processes
SELECT * FROM proc_pid_stat();        -- /proc/<pid>/stat for all PG processes
SELECT * FROM proc_cputime();         -- first line of /proc/stat
SELECT * FROM proc_loadavg();         -- /proc/loadavg
```

### System Information

```sql
SELECT * FROM fsinfo('/pgdata');      -- filesystem info for a path
SELECT fips_mode();                   -- OpenSSL FIPS mode status
SELECT openssl_version();             -- OpenSSL version
SELECT exec_path();                   -- current PostgreSQL executable path
SELECT kpages_to_bytes(1024);         -- convert kernel pages to bytes
SELECT * FROM stat_file('/path');     -- file uid, gid, mode info
```

### Environment Variables

```sql
SELECT envvar_text('PGDATA');
SELECT envvar_bigint('PGPORT');
```

### Kubernetes DownwardAPI

```sql
SELECT * FROM kdapi_setof_kv('labels');
SELECT kdapi_scalar_bigint('cpu_limit');
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pgnodemx.cgroup_enabled` | `on` | Enable cgroup functions |
| `pgnodemx.containerized` | `off` | Force containerized cgroup paths |
| `pgnodemx.cgrouproot` | `/sys/fs/cgroup` | cgroup mount location |
| `pgnodemx.kdapi_enabled` | `on` | Enable Kubernetes DownwardAPI |
| `pgnodemx.kdapi_path` | `/etc/podinfo` | DownwardAPI files location |
