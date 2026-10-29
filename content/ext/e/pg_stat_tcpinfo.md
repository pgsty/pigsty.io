---
title: "pg_stat_tcpinfo"
linkTitle: "pg_stat_tcpinfo"
description: "Linux TCP connection statistics, latency and retransmissions"
weight: 6480
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jakubwartakEDB/pg_stat_tcpinfo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jakubwartakEDB/pg_stat_tcpinfo</div>
    <div class="ext-card__desc">https://github.com/jakubwartakEDB/pg_stat_tcpinfo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_stat_tcpinfo-1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_stat_tcpinfo-1.1.tar.gz</div>
    <div class="ext-card__desc">pg_stat_tcpinfo-1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_tcpinfo`**](/ext/e/pg_stat_tcpinfo) | `1.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6480  | [**`pg_stat_tcpinfo`**](/ext/e/pg_stat_tcpinfo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgnodemx`](/ext/e/pgnodemx) [`system_stats`](/ext/e/system_stats) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_statvfs`](/ext/e/pg_statvfs) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Linux >=4.18; procfs and NETLINK_INET_DIAG required. Monitoring roles can see all server-OS-user sockets. No preload or upstream 1.0-to-1.1 upgrade script. PG14-18; PGDG remains principal supplier; PGSTY 1.1 batch supplements published.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_stat_tcpinfo` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_stat_tcpinfo_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-stat-tcpinfo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 |
| el8.aarch64 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 |
| el9.x86_64 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 |
| el9.aarch64 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 |
| el10.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 | AVAIL PIGSTY 1.1 2 |
| d12.x86_64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| d12.aarch64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| d13.x86_64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| d13.aarch64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| u22.x86_64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| u22.aarch64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| u24.x86_64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| u24.aarch64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| u26.x86_64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
| u26.aarch64 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 | AVAIL PGDG 1.1 2 |
@ el8.x86_64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGSTY.el8.x86_64.rpm pigsty 1.1 41.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_tcpinfo_18-1.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1 21.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_stat_tcpinfo_18-1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGSTY.el8.aarch64.rpm pigsty 1.1 40.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_tcpinfo_18-1.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1 20.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_stat_tcpinfo_18-1.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGSTY.el9.x86_64.rpm pigsty 1.1 42.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_tcpinfo_18-1.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1 22.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_tcpinfo_18-1.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGSTY.el9.aarch64.rpm pigsty 1.1 41.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_tcpinfo_18-1.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1 21.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_tcpinfo_18-1.1-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGSTY.el10.x86_64.rpm pigsty 1.1 42.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_tcpinfo_18-1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGSTY.el10.aarch64.rpm pigsty 1.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_tcpinfo_18-1.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_stat_tcpinfo_18 pg_stat_tcpinfo_18-1.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.1 21.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_tcpinfo_18-1.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb pgdg 1.1 32.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb pigsty 1.1 32.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb pigsty 1.1 31.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb pgdg 1.1 32.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb pigsty 1.1 32.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb pgdg 1.1 32.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb pigsty 1.1 32.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb pgdg 1.1 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb pigsty 1.1 35.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb pgdg 1.1 32.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb pigsty 1.1 34.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb pgdg 1.1 32.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb pigsty 1.1 34.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb pgdg 1.1 32.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb pigsty 1.1 33.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb pgdg 1.1 32.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb pigsty 1.1 34.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb pgdg 1.1 32.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pg-stat-tcpinfo postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb pigsty 1.1 33.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-18-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGSTY.el8.x86_64.rpm pigsty 1.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_tcpinfo_17-1.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1 21.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_stat_tcpinfo_17-1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGSTY.el8.aarch64.rpm pigsty 1.1 40.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_tcpinfo_17-1.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1 20.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_stat_tcpinfo_17-1.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGSTY.el9.x86_64.rpm pigsty 1.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_tcpinfo_17-1.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1 22.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_stat_tcpinfo_17-1.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGSTY.el9.aarch64.rpm pigsty 1.1 41.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_tcpinfo_17-1.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1 21.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_stat_tcpinfo_17-1.1-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGSTY.el10.x86_64.rpm pigsty 1.1 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_tcpinfo_17-1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGSTY.el10.aarch64.rpm pigsty 1.1 41.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_tcpinfo_17-1.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_stat_tcpinfo_17 pg_stat_tcpinfo_17-1.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.1 21.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_stat_tcpinfo_17-1.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb pgdg 1.1 32.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb pigsty 1.1 31.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb pgdg 1.1 32.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb pigsty 1.1 32.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb pgdg 1.1 36.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb pigsty 1.1 38.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb pgdg 1.1 35.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb pigsty 1.1 37.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb pigsty 1.1 34.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb pigsty 1.1 33.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb pigsty 1.1 33.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb pgdg 1.1 32.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pg-stat-tcpinfo postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb pigsty 1.1 33.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-17-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGSTY.el8.x86_64.rpm pigsty 1.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_tcpinfo_16-1.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_stat_tcpinfo_16-1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGSTY.el8.aarch64.rpm pigsty 1.1 40.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_tcpinfo_16-1.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1 20.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_stat_tcpinfo_16-1.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGSTY.el9.x86_64.rpm pigsty 1.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_tcpinfo_16-1.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1 22.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_stat_tcpinfo_16-1.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGSTY.el9.aarch64.rpm pigsty 1.1 41.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_tcpinfo_16-1.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1 21.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_stat_tcpinfo_16-1.1-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGSTY.el10.x86_64.rpm pigsty 1.1 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_tcpinfo_16-1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGSTY.el10.aarch64.rpm pigsty 1.1 41.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_tcpinfo_16-1.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_stat_tcpinfo_16 pg_stat_tcpinfo_16-1.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.1 21.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_stat_tcpinfo_16-1.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb pgdg 1.1 32.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb pigsty 1.1 31.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb pgdg 1.1 32.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb pgdg 1.1 32.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb pigsty 1.1 32.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb pgdg 1.1 36.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb pigsty 1.1 38.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb pgdg 1.1 35.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb pigsty 1.1 37.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb pgdg 1.1 32.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb pigsty 1.1 34.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb pgdg 1.1 32.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb pigsty 1.1 34.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb pigsty 1.1 33.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb pgdg 1.1 32.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pg-stat-tcpinfo postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb pigsty 1.1 33.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-16-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGSTY.el8.x86_64.rpm pigsty 1.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_tcpinfo_15-1.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1 21.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_stat_tcpinfo_15-1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGSTY.el8.aarch64.rpm pigsty 1.1 40.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_tcpinfo_15-1.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1 20.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_stat_tcpinfo_15-1.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGSTY.el9.x86_64.rpm pigsty 1.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_tcpinfo_15-1.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1 22.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_stat_tcpinfo_15-1.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGSTY.el9.aarch64.rpm pigsty 1.1 41.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_tcpinfo_15-1.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1 21.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_stat_tcpinfo_15-1.1-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGSTY.el10.x86_64.rpm pigsty 1.1 42.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_tcpinfo_15-1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGSTY.el10.aarch64.rpm pigsty 1.1 41.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_tcpinfo_15-1.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_stat_tcpinfo_15 pg_stat_tcpinfo_15-1.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.1 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_stat_tcpinfo_15-1.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb pigsty 1.1 35.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb pgdg 1.1 32.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb pigsty 1.1 32.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb pgdg 1.1 36.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb pigsty 1.1 38.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb pgdg 1.1 35.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb pigsty 1.1 37.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb pgdg 1.1 32.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb pigsty 1.1 34.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb pigsty 1.1 33.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb pigsty 1.1 33.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb pgdg 1.1 32.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pg-stat-tcpinfo postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb pigsty 1.1 33.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-15-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGSTY.el8.x86_64.rpm pigsty 1.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_stat_tcpinfo_14-1.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.1 21.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_stat_tcpinfo_14-1.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGSTY.el8.aarch64.rpm pigsty 1.1 40.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_stat_tcpinfo_14-1.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.1 20.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_stat_tcpinfo_14-1.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGSTY.el9.x86_64.rpm pigsty 1.1 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_stat_tcpinfo_14-1.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.1 22.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_stat_tcpinfo_14-1.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGSTY.el9.aarch64.rpm pigsty 1.1 41.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_stat_tcpinfo_14-1.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.1 21.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_stat_tcpinfo_14-1.1-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGSTY.el10.x86_64.rpm pigsty 1.1 41.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_stat_tcpinfo_14-1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGSTY.el10.aarch64.rpm pigsty 1.1 41.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_stat_tcpinfo_14-1.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_stat_tcpinfo_14 pg_stat_tcpinfo_14-1.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.1 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_stat_tcpinfo_14-1.1-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb pigsty 1.1 32.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb pgdg 1.1 31.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb pigsty 1.1 31.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb pgdg 1.1 32.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb pigsty 1.1 32.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb pgdg 1.1 32.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb pigsty 1.1 31.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb pgdg 1.1 36.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb pigsty 1.1 38.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb pgdg 1.1 35.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb pigsty 1.1 38.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb pgdg 1.1 32.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb pigsty 1.1 34.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb pgdg 1.1 31.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb pigsty 1.1 33.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb pgdg 1.1 32.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb pigsty 1.1 33.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb pgdg 1.1 32.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pg-stat-tcpinfo postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb pigsty 1.1 33.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-stat-tcpinfo/postgresql-14-pg-stat-tcpinfo_1.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_stat_tcpinfo` using `pig build`:

```bash
pig build pkg pg_stat_tcpinfo         # build RPM / DEB packages
```


## Install

You can install `pg_stat_tcpinfo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_stat_tcpinfo;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_stat_tcpinfo -v 18  # PG 18
pig ext install -y pg_stat_tcpinfo -v 17  # PG 17
pig ext install -y pg_stat_tcpinfo -v 16  # PG 16
pig ext install -y pg_stat_tcpinfo -v 15  # PG 15
pig ext install -y pg_stat_tcpinfo -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_stat_tcpinfo_18       # PG 18
dnf install -y pg_stat_tcpinfo_17       # PG 17
dnf install -y pg_stat_tcpinfo_16       # PG 16
dnf install -y pg_stat_tcpinfo_15       # PG 15
dnf install -y pg_stat_tcpinfo_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-stat-tcpinfo   # PG 18
apt install -y postgresql-17-pg-stat-tcpinfo   # PG 17
apt install -y postgresql-16-pg-stat-tcpinfo   # PG 16
apt install -y postgresql-15-pg-stat-tcpinfo   # PG 15
apt install -y postgresql-14-pg-stat-tcpinfo   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_stat_tcpinfo;
```

## Usage

Sources:

- [README](https://github.com/jakubwartakEDB/pg_stat_tcpinfo/blob/v1.1/README.md)
- [Installation SQL](https://github.com/jakubwartakEDB/pg_stat_tcpinfo/blob/v1.1/pg_stat_tcpinfo--1.1.sql)
- [Extension control](https://github.com/jakubwartakEDB/pg_stat_tcpinfo/blob/v1.1/pg_stat_tcpinfo.control)
- [Release 1.1](https://github.com/jakubwartakEDB/pg_stat_tcpinfo/releases/tag/v1.1)
- [License](https://github.com/jakubwartakEDB/pg_stat_tcpinfo/blob/v1.1/LICENSE)

`pg_stat_tcpinfo` 1.1 exposes Linux TCP socket statistics through SQL. It helps investigate slow client connections, replication links and foreign-server traffic using round-trip time, retransmissions, congestion control and queue sizes, without shell access to the host.

It requires Linux 4.18 or later, access to `/proc`, and the `NETLINK_INET_DIAG` interface. Install as a superuser; no preload or server restart is required.

### Core Workflow

```sql
CREATE EXTENSION pg_stat_tcpinfo;

SELECT a.pid, a.usename, a.application_name,
       t.dst_addr, t.dst_port, t.state, t.recvq, t.sendq,
       t.tcpinfo->>'rtt' AS rtt_ms,
       t.tcpinfo->>'total_retrans' AS retransmissions,
       t.tcpinfo->>'congestion' AS congestion_control
FROM pg_stat_activity a
JOIN pg_stat_tcpinfo t ON t.pid = a.pid
WHERE t.state = 'ESTABLISHED';
```

### Objects and Metrics

The `pg_stat_tcpinfo` view calls `pg_stat_get_tcpinfo()`. Each row contains a process and OS user ID, local and remote addresses and ports, connection state, receive and send queues, and a `tcpinfo` JSONB object. IPv4 and IPv6 sockets are supported. The `rtt` field is expressed in milliseconds; `total_retrans` is the cumulative retransmission counter.

The view includes every TCP socket owned by the server's OS user, including sockets from other database clusters or programs running under that account. Joining on the backend PID narrows the result to connections visible in the current cluster. Unix-domain connections are not TCP sockets and do not appear; TIME-WAIT sockets have no owner and are omitted. Metrics unavailable on an older kernel may be null.

### Permissions

The installation revokes public execution of the function and grants function and view access to `pg_read_all_stats`; `pg_monitor` inherits that access. Ordinary application roles cannot read the metrics by default. Additional grants expose all sockets owned by the server OS user, not only the caller's database connections.

### Operational Boundaries

Each call scans process descriptors and queries the kernel; it is an on-demand observation, not a historical sampler. Container PID and network namespaces and procfs restrictions determine which sockets and PIDs are visible. Choose a sampling interval appropriate to the number of processes and connections.

Use a package built for the server's PostgreSQL major version. The 1.1 release includes fresh-install SQL for versions 1.0 and 1.1 but no upgrade script between them, so an existing 1.0 installation has no upstream-provided `ALTER EXTENSION pg_stat_tcpinfo UPDATE` path.
