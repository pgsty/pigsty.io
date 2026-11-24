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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/system_stats-4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">system_stats-4.1.tar.gz</div>
    <div class="ext-card__desc">system_stats-4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`system_stats`**](/ext/e/system_stats) | `4.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6420  | [**`system_stats`**](/ext/e/system_stats) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgnodemx`](/ext/e/pgnodemx) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pgmeminfo`](/ext/e/pgmeminfo) [`pg_stat_ch`](/ext/e/pg_stat_ch) [`pgmonitor`](/ext/e/pgmonitor) [`pg_datasentinel`](/ext/e/pg_datasentinel) [`pgsentinel`](/ext/e/pgsentinel) [`pgexporter_ext`](/ext/e/pgexporter_ext) [`pg_statvfs`](/ext/e/pg_statvfs) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG RPM and PIGSTY DEB package/source version 4.1 cover PostgreSQL 14-18; SQL/control version is 4.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `4.1` | {{< pgvers "19,18,17,16,15" >}} | `system_stats` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.1` | {{< pgvers "19,18,17,16,15" >}} | `system_stats_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-system-stats` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 4.1 5 | AVAIL PGDG 4.1 5 | AVAIL PGDG 4.1 6 | AVAIL PGDG 4.1 7 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 4.1 5 | AVAIL PGDG 4.1 5 | AVAIL PGDG 4.1 6 | AVAIL PGDG 4.1 7 |
| el9.x86_64 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 |
| el9.aarch64 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 |
| el10.x86_64 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 1 |
| el10.aarch64 | AVAIL PGDG 4.1 1 | AVAIL PGDG 4.1 10 | AVAIL PGDG 4.1 10 | AVAIL PGDG 4.1 10 | AVAIL PGDG 4.1 10 |
| d12.x86_64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| u26.x86_64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
| u26.aarch64 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 | AVAIL PIGSTY 4.1 1 |
@ el9.x86_64 19 system_stats_19 system_stats_19-4.1-5PGDG.rhel9.9.x86_64.rpm pgdg 4.1 32.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/system_stats_19-4.1-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 system_stats_19 system_stats_19-4.1-5PGDG.rhel9.9.aarch64.rpm pgdg 4.1 31.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/system_stats_19-4.1-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 system_stats_19 system_stats_19-4.1-5PGDG.rhel10.3.x86_64.rpm pgdg 4.1 32.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/system_stats_19-4.1-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 system_stats_19 system_stats_19-4.1-5PGDG.rhel10.3.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/system_stats_19-4.1-5PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~bookworm_amd64.deb pigsty 4.1 67.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~bookworm_arm64.deb pigsty 4.1 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~trixie_amd64.deb pigsty 4.1 67.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~trixie_arm64.deb pigsty 4.1 66.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~jammy_amd64.deb pigsty 4.1 70.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~jammy_arm64.deb pigsty 4.1 70.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~noble_amd64.deb pigsty 4.1 70.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~noble_arm64.deb pigsty 4.1 69.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~resolute_amd64.deb pigsty 4.1 70.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-system-stats postgresql-19-system-stats_4.1-1PGSTY~resolute_arm64.deb pigsty 4.1 69.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-19-system-stats_4.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel8.10.x86_64.rpm pgdg 4.1 33.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-4.1-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 system_stats_18 system_stats_18-4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.1 32.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel8.x86_64.rpm pgdg 3.2 28.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/system_stats_18-3.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel8.10.aarch64.rpm pgdg 4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-4.1-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel8.aarch64.rpm pgdg 3.2 28.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/system_stats_18-3.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel9.9.x86_64.rpm pgdg 4.1 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/system_stats_18-4.1-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel9.9.aarch64.rpm pgdg 4.1 31.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/system_stats_18-4.1-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel10.3.x86_64.rpm pgdg 4.1 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/system_stats_18-4.1-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel10.3.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.1-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.1-5PGDG.rhel10.2.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.1 31.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-3.2.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-3.2.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 system_stats_18 system_stats_18-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 28.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/system_stats_18-3.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~bookworm_amd64.deb pigsty 4.1 67.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~bookworm_arm64.deb pigsty 4.1 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~trixie_amd64.deb pigsty 4.1 67.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~trixie_arm64.deb pigsty 4.1 66.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~jammy_amd64.deb pigsty 4.1 70.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~jammy_arm64.deb pigsty 4.1 70.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~noble_amd64.deb pigsty 4.1 70.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~noble_arm64.deb pigsty 4.1 69.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~resolute_amd64.deb pigsty 4.1 70.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-system-stats postgresql-18-system-stats_4.1-1PGSTY~resolute_arm64.deb pigsty 4.1 69.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-18-system-stats_4.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel8.10.x86_64.rpm pgdg 4.1 33.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-4.1-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 system_stats_17 system_stats_17-4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.1 32.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 system_stats_17 system_stats_17-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 28.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/system_stats_17-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel8.10.aarch64.rpm pgdg 4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-4.1-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 system_stats_17 system_stats_17-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 28.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/system_stats_17-3.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel9.9.x86_64.rpm pgdg 4.1 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/system_stats_17-4.1-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel9.9.aarch64.rpm pgdg 4.1 31.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/system_stats_17-4.1-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel10.3.x86_64.rpm pgdg 4.1 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/system_stats_17-4.1-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel10.3.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.1-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.1-5PGDG.rhel10.2.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-3.2.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-3.2.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 system_stats_17 system_stats_17-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 28.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/system_stats_17-3.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~bookworm_amd64.deb pigsty 4.1 67.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~bookworm_arm64.deb pigsty 4.1 66.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~trixie_amd64.deb pigsty 4.1 67.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~trixie_arm64.deb pigsty 4.1 66.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~jammy_amd64.deb pigsty 4.1 77.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~jammy_arm64.deb pigsty 4.1 77.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~noble_amd64.deb pigsty 4.1 70.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~noble_arm64.deb pigsty 4.1 69.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~resolute_amd64.deb pigsty 4.1 70.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-system-stats postgresql-17-system-stats_4.1-1PGSTY~resolute_arm64.deb pigsty 4.1 69.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-17-system-stats_4.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel8.10.x86_64.rpm pgdg 4.1 33.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-4.1-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.1 32.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 28.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 system_stats_16 system_stats_16-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/system_stats_16-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel8.10.aarch64.rpm pgdg 4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-4.1-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 28.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 system_stats_16 system_stats_16-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 27.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/system_stats_16-2.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel9.9.x86_64.rpm pgdg 4.1 32.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/system_stats_16-4.1-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel9.9.aarch64.rpm pgdg 4.1 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/system_stats_16-4.1-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel10.3.x86_64.rpm pgdg 4.1 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/system_stats_16-4.1-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel10.3.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.1-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.1-5PGDG.rhel10.2.aarch64.rpm pgdg 4.1 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-3.2.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.2.1 29.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-3.2.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 system_stats_16 system_stats_16-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 28.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/system_stats_16-3.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~bookworm_amd64.deb pigsty 4.1 67.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~bookworm_arm64.deb pigsty 4.1 66.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~trixie_amd64.deb pigsty 4.1 67.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~trixie_arm64.deb pigsty 4.1 66.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~jammy_amd64.deb pigsty 4.1 77.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~jammy_arm64.deb pigsty 4.1 77.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~noble_amd64.deb pigsty 4.1 70.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~noble_arm64.deb pigsty 4.1 69.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~resolute_amd64.deb pigsty 4.1 69.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-system-stats postgresql-16-system-stats_4.1-1PGSTY~resolute_arm64.deb pigsty 4.1 69.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-16-system-stats_4.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel8.10.x86_64.rpm pgdg 4.1 34.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-4.1-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-4.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.1 33.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-4.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 4.0 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel8.10.x86_64.rpm pgdg 3.2.1 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-3.2.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-3.2-1PGDG.rhel8.x86_64.rpm pgdg 3.2 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 28.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 system_stats_15 system_stats_15-1.0-2.rhel8.x86_64.rpm pgdg 1.0 74.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/system_stats_15-1.0-2.rhel8.x86_64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel8.10.aarch64.rpm pgdg 4.1 33.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-4.1-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-4.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-4.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 4.0 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel8.10.aarch64.rpm pgdg 3.2.1 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-3.2.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-3.2-1PGDG.rhel8.aarch64.rpm pgdg 3.2 29.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 28.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 system_stats_15 system_stats_15-1.0-2.rhel8.aarch64.rpm pgdg 1.0 74.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/system_stats_15-1.0-2.rhel8.aarch64.rpm
@ el9.x86_64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel9.9.x86_64.rpm pgdg 4.1 34.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/system_stats_15-4.1-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel9.9.aarch64.rpm pgdg 4.1 33.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/system_stats_15-4.1-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel10.3.x86_64.rpm pgdg 4.1 34.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/system_stats_15-4.1-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel10.3.aarch64.rpm pgdg 4.1 34.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.1-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.1-5PGDG.rhel10.2.aarch64.rpm pgdg 4.1 34.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.1-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.1 33.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.1-1PGDG.rhel10.1.aarch64.rpm pgdg 4.1 33.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.1-1PGDG.rhel10.0.aarch64.rpm pgdg 4.1 33.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 4.0 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 4.0 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel10.1.aarch64.rpm pgdg 3.2.1 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-3.2.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-3.2.1-1PGDG.rhel10.0.aarch64.rpm pgdg 3.2.1 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-3.2.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 system_stats_15 system_stats_15-3.2-2PGDG.rhel10.aarch64.rpm pgdg 3.2 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/system_stats_15-3.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~bookworm_amd64.deb pigsty 4.1 68.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~bookworm_arm64.deb pigsty 4.1 67.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~trixie_amd64.deb pigsty 4.1 68.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~trixie_arm64.deb pigsty 4.1 67.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~jammy_amd64.deb pigsty 4.1 79.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~jammy_arm64.deb pigsty 4.1 79.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~noble_amd64.deb pigsty 4.1 71.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~noble_arm64.deb pigsty 4.1 71.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~resolute_amd64.deb pigsty 4.1 71.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-system-stats postgresql-15-system-stats_4.1-1PGSTY~resolute_arm64.deb pigsty 4.1 70.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/system-stats/postgresql-15-system-stats_4.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `system_stats` using `pig build`:

```bash
pig build pkg system_stats         # build RPM / DEB packages
```


## Install

You can install `system_stats` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install system_stats;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y system_stats -v 19  # PG 19
pig ext install -y system_stats -v 18  # PG 18
pig ext install -y system_stats -v 17  # PG 17
pig ext install -y system_stats -v 16  # PG 16
pig ext install -y system_stats -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y system_stats_19       # PG 19
dnf install -y system_stats_18       # PG 18
dnf install -y system_stats_17       # PG 17
dnf install -y system_stats_16       # PG 16
dnf install -y system_stats_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-system-stats   # PG 19
apt install -y postgresql-18-system-stats   # PG 18
apt install -y postgresql-17-system-stats   # PG 17
apt install -y postgresql-16-system-stats   # PG 16
apt install -y postgresql-15-system-stats   # PG 15
```


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
- Pigsty metadata tracks `system_stats` 4.0 for PostgreSQL 14-18; the RPM and DEB package names differ (`system_stats_$v` vs. `postgresql-$v-system-stats`).
- Current v4.0 upstream docs keep the same user-facing function family and security model; the refresh here mainly aligns names, privileges, and platform notes with the current README and SQL script.
