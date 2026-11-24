---
title: "pgaudit"
linkTitle: "pgaudit"
description: "provides auditing functionality"
weight: 7100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgaudit/pgaudit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgaudit/pgaudit</div>
    <div class="ext-card__desc">https://github.com/pgaudit/pgaudit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgaudit-1.7.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgaudit-1.7.2.tar.gz</div>
    <div class="ext-card__desc">pgaudit-1.7.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgaudit`**](/ext/e/pgaudit) | `19.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7100  | [**`pgaudit`**](/ext/e/pgaudit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`pg_auditor`](/ext/e/pg_auditor) [`pg_roast`](/ext/e/pg_roast) [`pgmemento`](/ext/e/pgmemento) [`table_log`](/ext/e/table_log) [`pg_drop_events`](/ext/e/pg_drop_events) [`pgelog`](/ext/e/pgelog) [`logerrors`](/ext/e/logerrors) [`pg_stat_log`](/ext/e/pg_stat_log) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`data_historization`](/ext/e/data_historization) [`table_version`](/ext/e/table_version) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload; PG14/15 RPM names differ.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `19.0` | {{< pgvers "19,18,17,16,15" >}} | `pgaudit` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `19.0` | {{< pgvers "19,18,17,16,15" >}} | `pgaudit_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `19.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pgaudit` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 4 | AVAIL PGDG 16.2 4 | AVAIL PIGSTY 1.7.2 1 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 4 | AVAIL PGDG 16.2 4 | AVAIL PIGSTY 1.7.2 1 |
| el9.x86_64 | AVAIL PGDG 19.0 1 | AVAIL PGDG 18.1 2 | AVAIL PGDG 17.2 2 | AVAIL PGDG 16.2 2 | AVAIL PIGSTY 1.7.2 1 |
| el9.aarch64 | AVAIL PGDG 19.0 1 | AVAIL PGDG 18.1 2 | AVAIL PGDG 17.2 2 | AVAIL PGDG 16.2 2 | AVAIL PIGSTY 1.7.2 1 |
| el10.x86_64 | AVAIL PGDG 19.0 1 | AVAIL PGDG 18.1 2 | AVAIL PGDG 17.2 2 | AVAIL PGDG 16.2 2 | AVAIL PIGSTY 1.7.2 1 |
| el10.aarch64 | AVAIL PGDG 19.0 1 | AVAIL PGDG 18.1 6 | AVAIL PGDG 17.2 6 | AVAIL PGDG 16.2 6 | AVAIL PIGSTY 1.7.2 1 |
| d12.x86_64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| d12.aarch64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| d13.x86_64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| d13.aarch64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| u22.x86_64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| u22.aarch64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| u24.x86_64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| u24.aarch64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| u26.x86_64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
| u26.aarch64 | AVAIL PGDG 19.0 3 | AVAIL PGDG 18.1 3 | AVAIL PGDG 17.2 3 | AVAIL PGDG 16.2 3 | AVAIL PGDG 1.7.2 3 |
@ el9.x86_64 19 pgaudit_19 pgaudit_19-19.0-1PGDG.rhel9.9.x86_64.rpm pgdg 19.0 29.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pgaudit_19-19.0-1PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pgaudit_19 pgaudit_19-19.0-1PGDG.rhel9.9.aarch64.rpm pgdg 19.0 29.6KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pgaudit_19-19.0-1PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pgaudit_19 pgaudit_19-19.0-1PGDG.rhel10.3.x86_64.rpm pgdg 19.0 29.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pgaudit_19-19.0-1PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pgaudit_19 pgaudit_19-19.0-1PGDG.rhel10.3.aarch64.rpm pgdg 19.0 29.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pgaudit_19-19.0-1PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg12+1_amd64.deb pgdg 19.0 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg12+2_amd64.deb pgdg 19 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg12+2_amd64.deb
@ d12.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg12+1_amd64.deb pgdg 19 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg12+1_amd64.deb
@ d12.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg12+1_arm64.deb pgdg 19.0 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg12+2_arm64.deb pgdg 19 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg12+2_arm64.deb
@ d12.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg12+1_arm64.deb pgdg 19 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg12+1_arm64.deb
@ d13.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg13+1_amd64.deb pgdg 19.0 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg13+2_amd64.deb pgdg 19 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg13+2_amd64.deb
@ d13.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg13+1_amd64.deb pgdg 19 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg13+1_amd64.deb
@ d13.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg13+1_arm64.deb pgdg 19.0 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg13+2_arm64.deb pgdg 19 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg13+2_arm64.deb
@ d13.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg13+1_arm64.deb pgdg 19 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg13+1_arm64.deb
@ u22.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg22.04+1_amd64.deb pgdg 19.0 49.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg22.04+2_amd64.deb pgdg 19 49.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg22.04+1_amd64.deb pgdg 19 49.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg22.04+1_arm64.deb pgdg 19.0 48.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg22.04+2_arm64.deb pgdg 19 48.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg22.04+1_arm64.deb pgdg 19 48.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg24.04+1_amd64.deb pgdg 19.0 48.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg24.04+2_amd64.deb pgdg 19 48.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg24.04+1_amd64.deb pgdg 19 47.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg24.04+1_arm64.deb pgdg 19.0 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg24.04+2_arm64.deb pgdg 19 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg24.04+1_arm64.deb pgdg 19 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg26.04+1_amd64.deb pgdg 19.0 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg26.04+2_amd64.deb pgdg 19 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg26.04+1_amd64.deb pgdg 19 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19.0-1.pgdg26.04+1_arm64.deb pgdg 19.0 46.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg26.04+2_arm64.deb pgdg 19 46.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 19 postgresql-19-pgaudit postgresql-19-pgaudit_19~rc1-1.pgdg26.04+1_arm64.deb pgdg 19 46.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-19/postgresql-19-pgaudit_19~rc1-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel8.10.x86_64.rpm pgdg 18.1 29.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgaudit_18-18.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel8.10.x86_64.rpm pgdg 18.0 28.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgaudit_18-18.0-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel8.x86_64.rpm pgdg 18.0 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgaudit_18-18.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel8.10.aarch64.rpm pgdg 18.1 29.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgaudit_18-18.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel8.10.aarch64.rpm pgdg 18.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgaudit_18-18.0-9PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel8.aarch64.rpm pgdg 18.0 27.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgaudit_18-18.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel9.9.x86_64.rpm pgdg 18.1 30.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgaudit_18-18.1-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel9.9.x86_64.rpm pgdg 18.0 29.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgaudit_18-18.0-9PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel9.9.aarch64.rpm pgdg 18.1 29.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgaudit_18-18.1-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel9.9.aarch64.rpm pgdg 18.0 28.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgaudit_18-18.0-9PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel10.3.x86_64.rpm pgdg 18.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgaudit_18-18.1-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel10.3.x86_64.rpm pgdg 18.0 29.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgaudit_18-18.0-9PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel10.3.aarch64.rpm pgdg 18.1 30.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.1-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.1-1PGDG.rhel10.2.aarch64.rpm pgdg 18.1 30.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel10.3.aarch64.rpm pgdg 18.0 29.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.0-9PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.0-9PGDG.rhel10.2.aarch64.rpm pgdg 18.0 29.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.0-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.0-4PGDG.rhel10.2.aarch64.rpm pgdg 18.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgaudit_18 pgaudit_18-18.0-1PGDG.rhel10.aarch64.rpm pgdg 18.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgaudit_18-18.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg12+1_amd64.deb pgdg 18.1 48.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg12+2_amd64.deb pgdg 18.0 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg12+1_amd64.deb pgdg 18.0 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg12+1_arm64.deb pgdg 18.1 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg12+2_arm64.deb pgdg 18.0 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg12+1_arm64.deb pgdg 18.0 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg13+1_amd64.deb pgdg 18.1 48.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg13+2_amd64.deb pgdg 18.0 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg13+1_amd64.deb pgdg 18.0 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg13+1_arm64.deb pgdg 18.1 47.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg13+2_arm64.deb pgdg 18.0 46.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg13+1_arm64.deb pgdg 18.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg22.04+1_amd64.deb pgdg 18.1 49.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg22.04+2_amd64.deb pgdg 18.0 48.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg22.04+1_amd64.deb pgdg 18.0 48.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg22.04+1_arm64.deb pgdg 18.1 49.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg22.04+2_arm64.deb pgdg 18.0 48.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg22.04+1_arm64.deb pgdg 18.0 48.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg24.04+1_amd64.deb pgdg 18.1 48.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg24.04+2_amd64.deb pgdg 18.0 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg24.04+1_amd64.deb pgdg 18.0 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg24.04+1_arm64.deb pgdg 18.1 47.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg24.04+2_arm64.deb pgdg 18.0 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg24.04+1_arm64.deb pgdg 18.0 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg26.04+1_amd64.deb pgdg 18.1 47.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg26.04+2_amd64.deb pgdg 18.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg26.04+1_amd64.deb pgdg 18.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.1-1.pgdg26.04+1_arm64.deb pgdg 18.1 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg26.04+2_arm64.deb pgdg 18.0 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-pgaudit postgresql-18-pgaudit_18.0-3.pgdg26.04+1_arm64.deb pgdg 18.0 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-18/postgresql-18-pgaudit_18.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel8.10.x86_64.rpm pgdg 17.2 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgaudit_17-17.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel8.10.x86_64.rpm pgdg 17.1 29.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgaudit_17-17.1-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel8.x86_64.rpm pgdg 17.1 28.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgaudit_17-17.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgaudit_17 pgaudit_17-17.0-1PGDG.rhel8.x86_64.rpm pgdg 17.0 27.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgaudit_17-17.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel8.10.aarch64.rpm pgdg 17.2 29.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgaudit_17-17.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel8.10.aarch64.rpm pgdg 17.1 28.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgaudit_17-17.1-9PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel8.aarch64.rpm pgdg 17.1 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgaudit_17-17.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgaudit_17 pgaudit_17-17.0-1PGDG.rhel8.aarch64.rpm pgdg 17.0 27.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgaudit_17-17.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel9.9.x86_64.rpm pgdg 17.2 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgaudit_17-17.2-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel9.9.x86_64.rpm pgdg 17.1 29.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgaudit_17-17.1-9PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel9.9.aarch64.rpm pgdg 17.2 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgaudit_17-17.2-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel9.9.aarch64.rpm pgdg 17.1 28.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgaudit_17-17.1-9PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel10.3.x86_64.rpm pgdg 17.2 30.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgaudit_17-17.2-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel10.3.x86_64.rpm pgdg 17.1 29.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgaudit_17-17.1-9PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel10.3.aarch64.rpm pgdg 17.2 30.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.2-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.2-1PGDG.rhel10.2.aarch64.rpm pgdg 17.2 30.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel10.3.aarch64.rpm pgdg 17.1 29.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.1-9PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.1-9PGDG.rhel10.2.aarch64.rpm pgdg 17.1 29.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.1-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.1-4PGDG.rhel10.2.aarch64.rpm pgdg 17.1 28.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.1-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgaudit_17 pgaudit_17-17.1-1PGDG.rhel10.aarch64.rpm pgdg 17.1 28.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgaudit_17-17.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg12+1_amd64.deb pgdg 17.2 47.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg12+2_amd64.deb pgdg 17.1 46.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg12+1_amd64.deb pgdg 17.1 46.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg12+1_arm64.deb pgdg 17.2 47.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg12+2_arm64.deb pgdg 17.1 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg12+1_arm64.deb pgdg 17.1 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg13+1_amd64.deb pgdg 17.2 47.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg13+2_amd64.deb pgdg 17.1 46.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg13+1_amd64.deb pgdg 17.1 46.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg13+1_arm64.deb pgdg 17.2 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg13+2_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg13+1_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg22.04+1_amd64.deb pgdg 17.2 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg22.04+2_amd64.deb pgdg 17.1 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg22.04+1_amd64.deb pgdg 17.1 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg22.04+1_arm64.deb pgdg 17.2 53.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg22.04+2_arm64.deb pgdg 17.1 52.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg22.04+1_arm64.deb pgdg 17.1 52.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg24.04+1_amd64.deb pgdg 17.2 47.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg24.04+2_amd64.deb pgdg 17.1 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg24.04+1_amd64.deb pgdg 17.1 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg24.04+1_arm64.deb pgdg 17.2 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg24.04+2_arm64.deb pgdg 17.1 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg24.04+1_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg26.04+1_amd64.deb pgdg 17.2 47.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg26.04+2_amd64.deb pgdg 17.1 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg26.04+1_amd64.deb pgdg 17.1 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.2-1.pgdg26.04+1_arm64.deb pgdg 17.2 46.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg26.04+2_arm64.deb pgdg 17.1 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-pgaudit postgresql-17-pgaudit_17.1-2.pgdg26.04+1_arm64.deb pgdg 17.1 45.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-17/postgresql-17-pgaudit_17.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel8.10.x86_64.rpm pgdg 16.2 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgaudit_16-16.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel8.10.x86_64.rpm pgdg 16.1 28.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgaudit_16-16.1-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel8.x86_64.rpm pgdg 16.1 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgaudit_16-16.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgaudit_16 pgaudit_16-16.0-1PGDG.rhel8.x86_64.rpm pgdg 16.0 26.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgaudit_16-16.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel8.10.aarch64.rpm pgdg 16.2 29.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgaudit_16-16.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel8.10.aarch64.rpm pgdg 16.1 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgaudit_16-16.1-9PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel8.aarch64.rpm pgdg 16.1 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgaudit_16-16.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgaudit_16 pgaudit_16-16.0-1PGDG.rhel8.aarch64.rpm pgdg 16.0 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgaudit_16-16.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel9.9.x86_64.rpm pgdg 16.2 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgaudit_16-16.2-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel9.9.x86_64.rpm pgdg 16.1 28.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgaudit_16-16.1-9PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel9.9.aarch64.rpm pgdg 16.2 29.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgaudit_16-16.2-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel9.9.aarch64.rpm pgdg 16.1 28.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgaudit_16-16.1-9PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel10.3.x86_64.rpm pgdg 16.2 30.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgaudit_16-16.2-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel10.3.x86_64.rpm pgdg 16.1 29.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgaudit_16-16.1-9PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel10.3.aarch64.rpm pgdg 16.2 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.2-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.2-1PGDG.rhel10.2.aarch64.rpm pgdg 16.2 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel10.3.aarch64.rpm pgdg 16.1 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.1-9PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.1-9PGDG.rhel10.2.aarch64.rpm pgdg 16.1 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.1-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.1-4PGDG.rhel10.2.aarch64.rpm pgdg 16.1 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.1-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgaudit_16 pgaudit_16-16.1-1PGDG.rhel10.aarch64.rpm pgdg 16.1 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgaudit_16-16.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg12+1_amd64.deb pgdg 16.2 46.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg12+2_amd64.deb pgdg 16.1 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg12+1_amd64.deb pgdg 16.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg12+1_arm64.deb pgdg 16.2 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg12+2_arm64.deb pgdg 16.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg12+1_arm64.deb pgdg 16.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg13+1_amd64.deb pgdg 16.2 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg13+2_amd64.deb pgdg 16.1 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg13+1_amd64.deb pgdg 16.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg13+1_arm64.deb pgdg 16.2 46.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg13+2_arm64.deb pgdg 16.1 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg13+1_arm64.deb pgdg 16.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg22.04+1_amd64.deb pgdg 16.2 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg22.04+2_amd64.deb pgdg 16.1 51.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg22.04+1_amd64.deb pgdg 16.1 51.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg22.04+1_arm64.deb pgdg 16.2 51.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg22.04+2_arm64.deb pgdg 16.1 50.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg22.04+1_arm64.deb pgdg 16.1 50.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg24.04+1_amd64.deb pgdg 16.2 46.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg24.04+2_amd64.deb pgdg 16.1 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg24.04+1_amd64.deb pgdg 16.1 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg24.04+1_arm64.deb pgdg 16.2 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg24.04+2_arm64.deb pgdg 16.1 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg24.04+1_arm64.deb pgdg 16.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg26.04+1_amd64.deb pgdg 16.2 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg26.04+2_amd64.deb pgdg 16.1 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg26.04+1_amd64.deb pgdg 16.1 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.2-1.pgdg26.04+1_arm64.deb pgdg 16.2 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg26.04+2_arm64.deb pgdg 16.1 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-pgaudit postgresql-16-pgaudit_16.1-2.pgdg26.04+1_arm64.deb pgdg 16.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-16/postgresql-16-pgaudit_16.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgaudit_15 pgaudit_15-1.7.2-1PGSTY.el8.x86_64.rpm pigsty 1.7.2 52.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgaudit_15-1.7.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgaudit_15 pgaudit_15-1.7.2-1PGSTY.el8.aarch64.rpm pigsty 1.7.2 51.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgaudit_15-1.7.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgaudit_15 pgaudit_15-1.7.2-1PGSTY.el9.x86_64.rpm pigsty 1.7.2 53.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgaudit_15-1.7.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgaudit_15 pgaudit_15-1.7.2-1PGSTY.el9.aarch64.rpm pigsty 1.7.2 53.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgaudit_15-1.7.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgaudit_15 pgaudit_15-1.7.2-1PGSTY.el10.x86_64.rpm pigsty 1.7.2 53.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgaudit_15-1.7.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgaudit_15 pgaudit_15-1.7.2-1PGSTY.el10.aarch64.rpm pigsty 1.7.2 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgaudit_15-1.7.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg12+1_amd64.deb pgdg 1.7.2 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg12+2_amd64.deb pgdg 1.7.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg12+1_amd64.deb pgdg 1.7.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg12+1_arm64.deb pgdg 1.7.2 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg12+2_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg12+1_arm64.deb pgdg 1.7.1 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg13+1_amd64.deb pgdg 1.7.2 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg13+2_amd64.deb pgdg 1.7.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg13+1_amd64.deb pgdg 1.7.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg13+1_arm64.deb pgdg 1.7.2 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg13+2_arm64.deb pgdg 1.7.1 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg13+1_arm64.deb pgdg 1.7.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg22.04+1_amd64.deb pgdg 1.7.2 51.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg22.04+2_amd64.deb pgdg 1.7.1 50.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_amd64.deb pgdg 1.7.1 50.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg22.04+1_arm64.deb pgdg 1.7.2 50.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg22.04+2_arm64.deb pgdg 1.7.1 49.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_arm64.deb pgdg 1.7.1 49.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg24.04+1_amd64.deb pgdg 1.7.2 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg24.04+2_amd64.deb pgdg 1.7.1 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_amd64.deb pgdg 1.7.1 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg24.04+1_arm64.deb pgdg 1.7.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg24.04+2_arm64.deb pgdg 1.7.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg26.04+1_amd64.deb pgdg 1.7.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg26.04+2_amd64.deb pgdg 1.7.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_amd64.deb pgdg 1.7.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.2-1.pgdg26.04+1_arm64.deb pgdg 1.7.2 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg26.04+2_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-pgaudit postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_arm64.deb pgdg 1.7.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgaudit-1.7/postgresql-15-pgaudit_1.7.1-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pgaudit` using `pig build`:

```bash
pig build pkg pgaudit         # build RPM packages
```


## Install

You can install `pgaudit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgaudit;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgaudit -v 19  # PG 19
pig ext install -y pgaudit -v 18  # PG 18
pig ext install -y pgaudit -v 17  # PG 17
pig ext install -y pgaudit -v 16  # PG 16
pig ext install -y pgaudit -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgaudit_19       # PG 19
dnf install -y pgaudit_18       # PG 18
dnf install -y pgaudit_17       # PG 17
dnf install -y pgaudit_16       # PG 16
dnf install -y pgaudit_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pgaudit   # PG 19
apt install -y postgresql-18-pgaudit   # PG 18
apt install -y postgresql-17-pgaudit   # PG 17
apt install -y postgresql-16-pgaudit   # PG 16
apt install -y postgresql-15-pgaudit   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pgaudit';
```


**Create Extension**:

```sql
CREATE EXTENSION pgaudit;
```

## Usage

Sources:

- [pgAudit 19.0 README](https://github.com/pgaudit/pgaudit/blob/19.0/README.md)
- [PostgreSQL 19 release](https://github.com/pgaudit/pgaudit/releases/tag/19.0)
- [Release control file](https://github.com/pgaudit/pgaudit/blob/19.0/pgaudit.control)

`pgaudit` records session and object events through PostgreSQL logging. Use the branch matching the server: 19.0 for PostgreSQL 19, 18.1 for 18, 17.2 for 17, 16.2 for 16, 1.7.2 for 15 and 1.6.4 for 14. The branches are separate server builds; upgrading PostgreSQL does not make an older library ABI-compatible.

### Enable auditing

Add `pgaudit` to `shared_preload_libraries` and restart the server. As a superuser, create the extension before setting `pgaudit.log`:

```sql
CREATE EXTENSION pgaudit;
```

Only a superuser can change audit settings. Size and protect the log volume: SQL text and parameters can contain sensitive information, and broad logging can consume substantial space. The extension provides audit records; it does not itself establish compliance.

### Configuration Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pgaudit.log` | `none` | Statement classes to log: `READ`, `WRITE`, `FUNCTION`, `ROLE`, `DDL`, `MISC`, `MISC_SET`, `ALL` |
| `pgaudit.log_catalog` | `on` | Log statements when all relations are in pg_catalog |
| `pgaudit.log_client` | `off` | Show audit log messages to client |
| `pgaudit.log_level` | `log` | Log level for audit entries |
| `pgaudit.log_parameter` | `off` | Include statement parameters in log |
| `pgaudit.log_parameter_max_size` | `0` | Max parameter size in bytes (0=unlimited) |
| `pgaudit.log_relation` | `off` | Separate log entry per relation in SELECT/DML |
| `pgaudit.log_rows` | `off` | Include row count in log |
| `pgaudit.log_statement` | `on` | Include statement text in log |
| `pgaudit.log_statement_once` | `off` | Log statement text only with first entry |
| `pgaudit.role` | (none) | Master role for object audit logging |
{.wide .expand}

### Session Audit Logging

Log all DML and DDL with per-relation detail:

```sql
SET pgaudit.log = 'write, ddl';
SET pgaudit.log_relation = on;
```

Log everything except miscellaneous commands:

```sql
SET pgaudit.log = 'all, -misc';
```

Example output:
```text
AUDIT: SESSION,1,1,DDL,CREATE TABLE,TABLE,public.account,create table account(...)
AUDIT: SESSION,2,1,READ,SELECT,,,select * from account
```

### Object Audit Logging

Grant permissions to an audit role to control which relations are logged:

```sql
SET pgaudit.role = 'auditor';

GRANT SELECT, DELETE
   ON public.account
   TO auditor;
```

Now any `SELECT` or `DELETE` on the `account` table will be audit logged.

### Log Format

Entries are CSV with fields: `AUDIT_TYPE`, `STATEMENT_ID`, `SUBSTATEMENT_ID`, `CLASS`, `COMMAND`, `OBJECT_TYPE`, `OBJECT_NAME`, `STATEMENT`, `PARAMETER`.

### Logging boundary

Audit output is best-effort PostgreSQL logging, outside transaction durability. A rolled-back statement can leave an audit record, and a committed transaction is not guaranteed to have a durable audit record. Protect and collect logs separately; do not treat them as a transactionally complete ledger.
