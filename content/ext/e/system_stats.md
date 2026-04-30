---
title: "system_stats"
linkTitle: "system_stats"
description: "EnterpriseDB system statistics for PostgreSQL"
weight: 6420
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/EnterpriseDB/system_stats">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">EnterpriseDB/system_stats</div>
    <div class="ext-card__desc">https://github.com/EnterpriseDB/system_stats</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/system_stats-4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">system_stats-4.0.tar.gz</div>
    <div class="ext-card__desc">system_stats-4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`system_stats`**](/ext/e/system_stats) | `4.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6420  | [**`system_stats`**](/ext/e/system_stats) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgnodemx`](/ext/e/pgnodemx) [`pg_proctab`](/ext/e/pg_proctab) [`pgmeminfo`](/ext/e/pgmeminfo) [`pgfincore`](/ext/e/pgfincore) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_background`](/ext/e/pg_background) [`pg_cooldown`](/ext/e/pg_cooldown) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `4.0` | {{< pgvers "18,17,16,15,14" >}} | `system_stats` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.0` | {{< pgvers "18,17,16,15,14" >}} | `system_stats_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-system-stats` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 4 | AVAIL PGDG 4.0 5 | AVAIL PGDG 4.0 5 |
| el8.aarch64 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 4 | AVAIL PGDG 4.0 5 | AVAIL PGDG 4.0 5 |
| el9.x86_64 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 4 | AVAIL PGDG 4.0 5 | AVAIL PGDG 4.0 4 |
| el9.aarch64 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 4 | AVAIL PGDG 4.0 5 | AVAIL PGDG 4.0 5 |
| el10.x86_64 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 |
| el10.aarch64 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 | AVAIL PGDG 4.0 3 |
| d12.x86_64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 | AVAIL PIGSTY 4.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel8.x86_64.rpm pgdg 3.2 28.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-3.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel8.aarch64.rpm pgdg 3.2 28.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-3.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/system_stats_18-4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel9.x86_64.rpm pgdg 3.2 28.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/system_stats_18-3.2-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/system_stats_18-3.2.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0 31.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/system_stats_18-4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel9.aarch64.rpm pgdg 3.2 28.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/system_stats_18-3.2-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.2.1 29.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/system_stats_18-3.2.1-1PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/system_stats_18-4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel10.x86_64.rpm pgdg 3.2 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/system_stats_18-3.2-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/system_stats_18-3.2.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 28.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-3.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 67.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 66.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~trixie_amd64.deb pigsty 4.0 67.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~trixie_arm64.deb pigsty 4.0 66.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 70.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 70.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 70.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 69.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-18-system-stats_4.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 system_stats_17 system_stats_17-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 28.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 28.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-3.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0 31.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/system_stats_17-4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/system_stats_17-3.2.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 system_stats_17 system_stats_17-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/system_stats_17-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/system_stats_17-4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.2.1 29.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/system_stats_17-3.2.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 system_stats_17 system_stats_17-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/system_stats_17-3.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/system_stats_17-4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 system_stats_17 system_stats_17-3.2-2PGDG.rhel10.x86_64.rpm pgdg 3.2 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/system_stats_17-3.2-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.2.1 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/system_stats_17-3.2.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 28.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-3.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 66.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~trixie_amd64.deb pigsty 4.0 67.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~trixie_arm64.deb pigsty 4.0 66.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 77.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 77.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 69.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 69.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-17-system-stats_4.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 28.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 28.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 27.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-2.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/system_stats_16-4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/system_stats_16-3.2.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 system_stats_16 system_stats_16-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 28.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/system_stats_16-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 system_stats_16 system_stats_16-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/system_stats_16-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0 31.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/system_stats_16-4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/system_stats_16-3.2.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 system_stats_16 system_stats_16-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 28.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/system_stats_16-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 system_stats_16 system_stats_16-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/system_stats_16-2.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0 32.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/system_stats_16-4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 system_stats_16 system_stats_16-3.2-2PGDG.rhel10.x86_64.rpm pgdg 3.2 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/system_stats_16-3.2-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/system_stats_16-3.2.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 28.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-3.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 66.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~trixie_amd64.deb pigsty 4.0 67.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~trixie_arm64.deb pigsty 4.0 66.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 77.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 77.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 69.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 69.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-16-system-stats_4.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 28.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-1.0-2.rhel8.x86_64.rpm pgdg 1.0 74.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-1.0-2.rhel8.x86_64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 29.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 28.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-1.0-2.rhel8.aarch64.rpm pgdg 1.0 74.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-1.0-2.rhel8.aarch64.rpm
@ el9.x86_64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0 33.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/system_stats_15-4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.2.1 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/system_stats_15-3.2.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 system_stats_15 system_stats_15-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/system_stats_15-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 system_stats_15 system_stats_15-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 29.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/system_stats_15-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 system_stats_15 system_stats_15-1.0-2.rhel9.x86_64.rpm pgdg 1.0 76.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/system_stats_15-1.0-2.rhel9.x86_64.rpm
@ el9.aarch64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/system_stats_15-4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.2.1 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/system_stats_15-3.2.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 system_stats_15 system_stats_15-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/system_stats_15-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 system_stats_15 system_stats_15-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/system_stats_15-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 system_stats_15 system_stats_15-1.0-2.rhel9.aarch64.rpm pgdg 1.0 75.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/system_stats_15-1.0-2.rhel9.aarch64.rpm
@ el10.x86_64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0 34.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/system_stats_15-4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 system_stats_15 system_stats_15-3.2-2PGDG.rhel10.x86_64.rpm pgdg 3.2 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/system_stats_15-3.2-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.2.1 32.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/system_stats_15-3.2.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-3.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 67.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 66.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~trixie_amd64.deb pigsty 4.0 68.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~trixie_arm64.deb pigsty 4.0 66.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 79.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 79.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 71.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 70.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-15-system-stats_4.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 system_stats_14 system_stats_14-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/system_stats_14-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 system_stats_14 system_stats_14-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 31.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/system_stats_14-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 system_stats_14 system_stats_14-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/system_stats_14-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 system_stats_14 system_stats_14-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 28.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/system_stats_14-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 system_stats_14 system_stats_14-1.0-2.rhel8.x86_64.rpm pgdg 1.0 75.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/system_stats_14-1.0-2.rhel8.x86_64.rpm
@ el8.aarch64 14 system_stats_14 system_stats_14-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/system_stats_14-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 system_stats_14 system_stats_14-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/system_stats_14-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 system_stats_14 system_stats_14-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 29.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/system_stats_14-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 system_stats_14 system_stats_14-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 28.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/system_stats_14-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 system_stats_14 system_stats_14-1.0-2.rhel8.aarch64.rpm pgdg 1.0 74.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/system_stats_14-1.0-2.rhel8.aarch64.rpm
@ el9.x86_64 14 system_stats_14 system_stats_14-4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 4.0 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/system_stats_14-4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 system_stats_14 system_stats_14-3.2.1-1PGDG.rhel9.7.x86_64.rpm pgdg 3.2.1 31.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/system_stats_14-3.2.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 system_stats_14 system_stats_14-3.2-1PGDG.rhel9.x86_64.rpm pgdg 3.2 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/system_stats_14-3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 system_stats_14 system_stats_14-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 29.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/system_stats_14-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 system_stats_14 system_stats_14-4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 4.0 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/system_stats_14-4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 system_stats_14 system_stats_14-3.2.1-1PGDG.rhel9.7.aarch64.rpm pgdg 3.2.1 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/system_stats_14-3.2.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 system_stats_14 system_stats_14-3.2-1PGDG.rhel9.aarch64.rpm pgdg 3.2 30.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/system_stats_14-3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 system_stats_14 system_stats_14-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 29.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/system_stats_14-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 system_stats_14 system_stats_14-1.0-2.rhel9.aarch64.rpm pgdg 1.0 75.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/system_stats_14-1.0-2.rhel9.aarch64.rpm
@ el10.x86_64 14 system_stats_14 system_stats_14-4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 4.0 34.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/system_stats_14-4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 system_stats_14 system_stats_14-3.2-2PGDG.rhel10.x86_64.rpm pgdg 3.2 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/system_stats_14-3.2-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 system_stats_14 system_stats_14-3.2.1-1PGDG.rhel10.1.x86_64.rpm pgdg 3.2.1 32.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/system_stats_14-3.2.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.aarch64 14 system_stats_14 system_stats_14-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/system_stats_14-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 system_stats_14 system_stats_14-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/system_stats_14-3.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 system_stats_14 system_stats_14-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/system_stats_14-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ d12.x86_64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 67.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~trixie_amd64.deb pigsty 4.0 67.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~trixie_arm64.deb pigsty 4.0 66.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 78.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 78.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 71.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-system-stats postgresql-14-system-stats_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 70.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-14-system-stats_4.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `system_stats` using `pig build`:

```bash
pig build pkg system_stats         # build DEB packages
```


## Install

You can install `system_stats` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install system_stats;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y system_stats -v 18  # PG 18
pig ext install -y system_stats -v 17  # PG 17
pig ext install -y system_stats -v 16  # PG 16
pig ext install -y system_stats -v 15  # PG 15
pig ext install -y system_stats -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y system_stats_18       # PG 18
dnf install -y system_stats_17       # PG 17
dnf install -y system_stats_16       # PG 16
dnf install -y system_stats_15       # PG 15
dnf install -y system_stats_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-system-stats   # PG 18
apt install -y postgresql-17-system-stats   # PG 17
apt install -y postgresql-16-system-stats   # PG 16
apt install -y postgresql-15-system-stats   # PG 15
apt install -y postgresql-14-system-stats   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION system_stats;
```

## Usage

Source: [README](https://github.com/EnterpriseDB/system_stats/blob/master/README.md), [Release v4.0](https://github.com/EnterpriseDB/system_stats/releases/tag/v4.0), [SQL install script](https://github.com/EnterpriseDB/system_stats/blob/master/system_stats--4.0.sql)

`system_stats` exposes operating-system metrics through SQL functions. It supports Linux, macOS, and Windows, returning `NULL` for fields that are not meaningful on the current platform.

### Main functions

```sql
CREATE EXTENSION system_stats;

SELECT * FROM pg_sys_os_info();
SELECT * FROM pg_sys_cpu_info();
SELECT * FROM pg_sys_cpu_usage_info();
SELECT * FROM pg_sys_memory_info();
SELECT * FROM pg_sys_io_analysis_info();
SELECT * FROM pg_sys_disk_info();
SELECT * FROM pg_sys_load_avg_info();
SELECT * FROM pg_sys_process_info();
SELECT * FROM pg_sys_network_info();
SELECT * FROM pg_sys_cpu_memory_by_process();
```

These functions cover OS identity, CPU inventory and usage, memory, block-device I/O, disks, load average, process counts, network interfaces, and per-process CPU and memory usage.

### Access control

```sql
GRANT monitor_system_stats TO nagios;
GRANT EXECUTE ON FUNCTION pg_sys_os_info() TO pg_monitor;
```

- The extension creates a `monitor_system_stats` role and grants execution on the shipped functions to that role.
- Functions are revoked from `PUBLIC`.

### Caveats

- The `monitor_system_stats` role is not dropped automatically when the extension is removed.
- macOS cannot expose full per-process details for processes owned by other users; those rows may contain only PID and process name.
- Current v4.0 upstream docs keep the same user-facing function family and security model; the refresh here mainly aligns names, privileges, and platform notes with the current README and SQL script.
