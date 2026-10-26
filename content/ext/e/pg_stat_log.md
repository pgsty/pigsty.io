---
title: "pg_stat_log"
linkTitle: "pg_stat_log"
description: "Track cumulative PostgreSQL log message statistics by backend, database, user, level, and SQLSTATE."
weight: 6040
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fabriziomello/pg_stat_log">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fabriziomello/pg_stat_log</div>
    <div class="ext-card__desc">https://github.com/fabriziomello/pg_stat_log</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_log`**](/ext/e/pg_stat_log) | `0.3` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6040  | [**`pg_stat_log`**](/ext/e/pg_stat_log) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgelog`](/ext/e/pgelog) [`logerrors`](/ext/e/logerrors) [`pg_sqlog`](/ext/e/pg_sqlog) [`log_fdw`](/ext/e/log_fdw) [`pgaudit`](/ext/e/pgaudit) [`pgdisablelogerror`](/ext/e/pgdisablelogerror) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pg_tracing`](/ext/e/pg_tracing) [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) [`pgfr_record`](/ext/e/pgfr_record) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PostgreSQL 18+; shared preload and restart required. Upgrading 0.1/0.2 to 0.3 resets all cumulative statistics; SQL upgrade recreates the view/function, requiring dependent views and custom grants to be restored.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.3` | {{< pgvers "18" >}} | `pg_stat_log` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.3` | {{< pgvers "18" >}} | `pg_stat_log_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.2` | {{< pgvers "18" >}} | `postgresql-$v-stat-log` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.3 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el8.aarch64 | AVAIL PGDG 0.3 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 0.3 5 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.aarch64 | AVAIL PGDG 0.3 5 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 0.3 5 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.aarch64 | AVAIL PGDG 0.3 5 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.aarch64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.x86_64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.aarch64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.x86_64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.aarch64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.x86_64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.aarch64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.x86_64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.aarch64 | AVAIL PGDG 0.2 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
@ el8.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.3 29.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_stat_log_18-0.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.2 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_stat_log_18-0.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.1 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_stat_log_18-0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.3 28.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_stat_log_18-0.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.2 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_stat_log_18-0.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.1 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_stat_log_18-0.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.3-1PGDG.rhel9.8.x86_64.rpm pgdg 0.3 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.2-1PGDG.rhel9.8.x86_64.rpm pgdg 0.2 24.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 0.1 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.3-1PGDG.rhel9.8.aarch64.rpm pgdg 0.3 29.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.2-1PGDG.rhel9.8.aarch64.rpm pgdg 0.2 24.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 0.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.1-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.3 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.2 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 0.1 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.3 29.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.2 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 0.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 0.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.1-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg12+2_amd64.deb pgdg 0.2 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg12+1_amd64.deb pgdg 0.2 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg12+1_amd64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg12+2_arm64.deb pgdg 0.2 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg12+1_arm64.deb pgdg 0.2 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg12+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg13+2_amd64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg13+1_amd64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg13+1_amd64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg13+2_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg13+1_arm64.deb pgdg 0.2 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg13+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg22.04+2_amd64.deb pgdg 0.2 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg22.04+1_amd64.deb pgdg 0.2 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg22.04+1_amd64.deb pgdg 0.1 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg22.04+2_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg22.04+1_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg22.04+1_arm64.deb pgdg 0.1 42.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg24.04+2_amd64.deb pgdg 0.2 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg24.04+1_amd64.deb pgdg 0.2 42.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg24.04+1_amd64.deb pgdg 0.1 42.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg24.04+2_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg24.04+1_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg24.04+1_arm64.deb pgdg 0.1 42.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg26.04+2_amd64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg26.04+1_amd64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg26.04+1_amd64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg26.04+2_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.2-1.pgdg26.04+1_arm64.deb pgdg 0.2 42.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg26.04+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_stat_log` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_stat_log;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_stat_log -v 18  # PG 18
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_stat_log_18       # PG 18
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-stat-log   # PG 18
```


**Preload**:

```bash
shared_preload_libraries = '$libdir/pg_stat_log';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_stat_log;
```

## Usage

Sources:

- [README.md](https://github.com/fabriziomello/pg_stat_log/blob/20b57e2e2eff884bfcf3ede3c095762e614c51d1/README.md)
- [pg_stat_log.control](https://github.com/fabriziomello/pg_stat_log/blob/20b57e2e2eff884bfcf3ede3c095762e614c51d1/pg_stat_log.control)
- [pg_stat_log--0.1.sql](https://github.com/fabriziomello/pg_stat_log/blob/20b57e2e2eff884bfcf3ede3c095762e614c51d1/pg_stat_log--0.1.sql)
- [pg_stat_log--0.1--0.3.sql](https://github.com/fabriziomello/pg_stat_log/blob/20b57e2e2eff884bfcf3ede3c095762e614c51d1/pg_stat_log--0.1--0.3.sql)

`pg_stat_log` 0.3 collects PostgreSQL 18+ log-message counts by backend, database, role, severity and SQLSTATE, with optional grouping by query identifier. Add the library to the existing preload list and restart before creating the SQL extension. The default SQL grants allow `pg_read_all_stats` to inspect the counters.

### Core Workflow

```ini
shared_preload_libraries = 'pg_stat_log'
```

```sql
CREATE EXTENSION pg_stat_log;
SELECT database_name, user_name, query_id, elevel, sqlerrcode_name, count
FROM pg_stat_log
ORDER BY count DESC;
SELECT * FROM pg_stat_log_info();
```

### Operational Boundaries

The `pg_stat_log` view resolves names from `pg_stat_log_data()`. `pg_stat_log_info()` reports `max_entries`, `num_entries`, `n_dropped` and `stats_reset`; `pg_stat_log_reset()` clears counters and frees capacity, and is restricted by default. `pg_stat_log.enabled` and `pg_stat_log.min_error_level` control collection, with defaults true and warning. Only messages reaching the server log are counted: `log_min_messages` can filter messages before the hook runs, and caught exceptions are absent. Parallel-worker messages can count the same logical failure more than once.

`pg_stat_log.compute_query_id` defaults to off and requires restart to change; PostgreSQL's `compute_query_id` must not be off. A missing query identifier appears as NULL. `pg_stat_log.max_entries` defaults to 1024, requires restart, and drops new combinations when full; inspect `n_dropped`. Changing this capacity resets all PostgreSQL cumulative statistics on the next start. Counters survive clean restarts, but drop telemetry does not, and crash recovery discards cumulative statistics.

Version 0.3 maps connection authentication, authorization and disconnection to `PSL01`, `PSL02` and `PSL03`. Collection needs the corresponding server logging plus `pg_stat_log.min_error_level = 'log'` or lower; the role attribution is the login role.

Upstream releases 0.1 and 0.2 both install SQL version 0.1. Moving to 0.3 requires matching library files and a restart; the first start resets all PostgreSQL cumulative statistics. Then run `ALTER EXTENSION pg_stat_log UPDATE TO '0.3'` in each installed database. The update recreates the reporting view and function: drop and recreate dependent views and reapply custom grants; the default grants to `pg_read_all_stats` are restored.
