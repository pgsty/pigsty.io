---
title: "repmgr"
linkTitle: "repmgr"
description: "Replication manager for PostgreSQL"
weight: 9710
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/EnterpriseDB/repmgr">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">EnterpriseDB/repmgr</div>
    <div class="ext-card__desc">https://github.com/EnterpriseDB/repmgr</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`repmgr`**](/ext/e/repmgr) | `5.5.0` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9710  | [**`repmgr`**](/ext/e/repmgr) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pglogical`](/ext/e/pglogical) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`pgactive`](/ext/e/pgactive) [`bgw_replstatus`](/ext/e/bgw_replstatus) [`postgres_fdw`](/ext/e/postgres_fdw) [`pglogical_origin`](/ext/e/pglogical_origin) [`pglogical_ticker`](/ext/e/pglogical_ticker) [`dblink`](/ext/e/dblink) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.5.0` | {{< pgvers "18,17,16,15,14" >}} | `repmgr` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.5.0` | {{< pgvers "18,17,16,15,14" >}} | `repmgr_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `5.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-repmgr` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 2 | AVAIL PGDG 5.5.0 4 | AVAIL PGDG 5.5.0 7 |
| el8.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 2 | AVAIL PGDG 5.5.0 4 | AVAIL PGDG 5.5.0 4 |
| el9.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 2 | AVAIL PGDG 5.5.0 4 | AVAIL PGDG 5.5.0 6 |
| el9.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 2 | AVAIL PGDG 5.5.0 3 | AVAIL PGDG 5.5.0 3 |
| el10.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| el10.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| d12.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| d12.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| d13.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| d13.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| u22.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| u22.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| u24.x86_64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
| u24.aarch64 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 | AVAIL PGDG 5.5.0 1 |
@ el8.x86_64 18 repmgr_18 repmgr_18-5.5.0-6PGDG.rhel8.10.x86_64.rpm pgdg 5.5.0 295.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/repmgr_18-5.5.0-6PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 repmgr_18 repmgr_18-5.5.0-6PGDG.rhel8.10.aarch64.rpm pgdg 5.5.0 285.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/repmgr_18-5.5.0-6PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 repmgr_18 repmgr_18-5.5.0-6PGDG.rhel9.7.x86_64.rpm pgdg 5.5.0 266.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/repmgr_18-5.5.0-6PGDG.rhel9.7.x86_64.rpm
@ el9.aarch64 18 repmgr_18 repmgr_18-5.5.0-6PGDG.rhel9.7.aarch64.rpm pgdg 5.5.0 260.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/repmgr_18-5.5.0-6PGDG.rhel9.7.aarch64.rpm
@ el10.x86_64 18 repmgr_18 repmgr_18-5.5.0-6PGDGrhel10.1.x86_64.rpm pgdg 5.5.0 269.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/repmgr_18-5.5.0-6PGDGrhel10.1.x86_64.rpm
@ el10.aarch64 18 repmgr_18 repmgr_18-5.5.0-6PGDGrhel10.1.aarch64.rpm pgdg 5.5.0 261.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/repmgr_18-5.5.0-6PGDGrhel10.1.aarch64.rpm
@ d12.x86_64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb pgdg 5.5.0 246.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb pgdg 5.5.0 225.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb pgdg 5.5.0 246.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb pgdg 5.5.0 224.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb pgdg 5.5.0 235.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb pgdg 5.5.0 211.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb pgdg 5.5.0 231.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-repmgr postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb pgdg 5.5.0 208.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-18-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 repmgr_17 repmgr_17-5.5.0-1PGDG.rhel8.x86_64.rpm pgdg 5.5.0 295.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/repmgr_17-5.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 repmgr_17 repmgr_17-5.5.0-1PGDG.rhel8.aarch64.rpm pgdg 5.5.0 285.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/repmgr_17-5.5.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 repmgr_17 repmgr_17-5.5.0-1PGDG.rhel9.x86_64.rpm pgdg 5.5.0 267.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/repmgr_17-5.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 repmgr_17 repmgr_17-5.5.0-1PGDG.rhel9.aarch64.rpm pgdg 5.5.0 261.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/repmgr_17-5.5.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 repmgr_17 repmgr_17-5.5.0-3PGDG.rhel10.x86_64.rpm pgdg 5.5.0 270.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/repmgr_17-5.5.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 repmgr_17 repmgr_17-5.5.0-3PGDG.rhel10.aarch64.rpm pgdg 5.5.0 261.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/repmgr_17-5.5.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb pgdg 5.5.0 246.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb pgdg 5.5.0 225.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb pgdg 5.5.0 246.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb pgdg 5.5.0 224.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb pgdg 5.5.0 236.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb pgdg 5.5.0 212.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb pgdg 5.5.0 231.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-repmgr postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb pgdg 5.5.0 207.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-17-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 repmgr_16 repmgr_16-5.5.0-1PGDG.rhel8.x86_64.rpm pgdg 5.5.0 293.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/repmgr_16-5.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 repmgr_16 repmgr_16-5.4.1-1PGDG.rhel8.x86_64.rpm pgdg 5.4.1 291.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/repmgr_16-5.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 repmgr_16 repmgr_16-5.5.0-1PGDG.rhel8.aarch64.rpm pgdg 5.5.0 282.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/repmgr_16-5.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 repmgr_16 repmgr_16-5.4.1-1PGDG.rhel8.aarch64.rpm pgdg 5.4.1 280.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/repmgr_16-5.4.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 repmgr_16 repmgr_16-5.5.0-1PGDG.rhel9.x86_64.rpm pgdg 5.5.0 268.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/repmgr_16-5.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 repmgr_16 repmgr_16-5.4.1-1PGDG.rhel9.x86_64.rpm pgdg 5.4.1 266.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/repmgr_16-5.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 repmgr_16 repmgr_16-5.5.0-1PGDG.rhel9.aarch64.rpm pgdg 5.5.0 261.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/repmgr_16-5.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 repmgr_16 repmgr_16-5.4.1-1PGDG.rhel9.aarch64.rpm pgdg 5.4.1 261.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/repmgr_16-5.4.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 repmgr_16 repmgr_16-5.5.0-3PGDG.rhel10.x86_64.rpm pgdg 5.5.0 270.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/repmgr_16-5.5.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 repmgr_16 repmgr_16-5.5.0-3PGDG.rhel10.aarch64.rpm pgdg 5.5.0 261.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/repmgr_16-5.5.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb pgdg 5.5.0 244.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb pgdg 5.5.0 223.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb pgdg 5.5.0 244.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb pgdg 5.5.0 222.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb pgdg 5.5.0 233.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb pgdg 5.5.0 209.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb pgdg 5.5.0 229.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-repmgr postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb pgdg 5.5.0 205.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-16-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 repmgr_15 repmgr_15-5.5.0-1PGDG.rhel8.x86_64.rpm pgdg 5.5.0 291.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/repmgr_15-5.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 repmgr_15 repmgr_15-5.4.1-1PGDG.rhel8.x86_64.rpm pgdg 5.4.1 290.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/repmgr_15-5.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 repmgr_15 repmgr_15-5.4.0-1.rhel8.x86_64.rpm pgdg 5.4.0 289.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/repmgr_15-5.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 repmgr_15 repmgr_15-5.3.3-1.rhel8.x86_64.rpm pgdg 5.3.3 286.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/repmgr_15-5.3.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 repmgr_15 repmgr_15-5.5.0-1PGDG.rhel8.aarch64.rpm pgdg 5.5.0 282.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/repmgr_15-5.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 repmgr_15 repmgr_15-5.4.1-1PGDG.rhel8.aarch64.rpm pgdg 5.4.1 280.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/repmgr_15-5.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 repmgr_15 repmgr_15-5.4.0-1.rhel8.aarch64.rpm pgdg 5.4.0 280.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/repmgr_15-5.4.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 repmgr_15 repmgr_15-5.3.3-1.rhel8.aarch64.rpm pgdg 5.3.3 276.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/repmgr_15-5.3.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 repmgr_15 repmgr_15-5.5.0-1PGDG.rhel9.x86_64.rpm pgdg 5.5.0 270.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/repmgr_15-5.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 repmgr_15 repmgr_15-5.4.1-1PGDG.rhel9.x86_64.rpm pgdg 5.4.1 268.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/repmgr_15-5.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 repmgr_15 repmgr_15-5.4.0-1.rhel9.x86_64.rpm pgdg 5.4.0 268.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/repmgr_15-5.4.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 repmgr_15 repmgr_15-5.3.3-1.rhel9.x86_64.rpm pgdg 5.3.3 266.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/repmgr_15-5.3.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 repmgr_15 repmgr_15-5.5.0-1PGDG.rhel9.aarch64.rpm pgdg 5.5.0 263.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/repmgr_15-5.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 repmgr_15 repmgr_15-5.4.1-1PGDG.rhel9.aarch64.rpm pgdg 5.4.1 263.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/repmgr_15-5.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 repmgr_15 repmgr_15-5.4.0-1.rhel9.aarch64.rpm pgdg 5.4.0 262.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/repmgr_15-5.4.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 repmgr_15 repmgr_15-5.5.0-3PGDG.rhel10.x86_64.rpm pgdg 5.5.0 270.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/repmgr_15-5.5.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 repmgr_15 repmgr_15-5.5.0-3PGDG.rhel10.aarch64.rpm pgdg 5.5.0 262.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/repmgr_15-5.5.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb pgdg 5.5.0 243.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb pgdg 5.5.0 222.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb pgdg 5.5.0 242.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb pgdg 5.5.0 221.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb pgdg 5.5.0 234.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb pgdg 5.5.0 211.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb pgdg 5.5.0 230.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-repmgr postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb pgdg 5.5.0 206.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-15-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 repmgr_14 repmgr_14-5.5.0-1PGDG.rhel8.x86_64.rpm pgdg 5.5.0 289.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 repmgr_14 repmgr_14-5.4.1-1PGDG.rhel8.x86_64.rpm pgdg 5.4.1 288.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 repmgr_14 repmgr_14-5.4.0-1.rhel8.x86_64.rpm pgdg 5.4.0 288.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.4.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 repmgr_14 repmgr_14-5.3.3-1.rhel8.x86_64.rpm pgdg 5.3.3 284.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.3.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 repmgr_14 repmgr_14-5.3.2-1.rhel8.x86_64.rpm pgdg 5.3.2 296.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.3.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 repmgr_14 repmgr_14-5.3.1-1.rhel8.x86_64.rpm pgdg 5.3.1 296.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.3.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 repmgr_14 repmgr_14-5.3.0-1.rhel8.x86_64.rpm pgdg 5.3.0 296.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/repmgr_14-5.3.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 repmgr_14 repmgr_14-5.5.0-1PGDG.rhel8.aarch64.rpm pgdg 5.5.0 280.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/repmgr_14-5.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 repmgr_14 repmgr_14-5.4.1-1PGDG.rhel8.aarch64.rpm pgdg 5.4.1 279.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/repmgr_14-5.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 repmgr_14 repmgr_14-5.4.0-1.rhel8.aarch64.rpm pgdg 5.4.0 278.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/repmgr_14-5.4.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 repmgr_14 repmgr_14-5.3.3-1.rhel8.aarch64.rpm pgdg 5.3.3 275.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/repmgr_14-5.3.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 repmgr_14 repmgr_14-5.5.0-1PGDG.rhel9.x86_64.rpm pgdg 5.5.0 269.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/repmgr_14-5.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 repmgr_14 repmgr_14-5.4.1-1PGDG.rhel9.x86_64.rpm pgdg 5.4.1 268.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/repmgr_14-5.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 repmgr_14 repmgr_14-5.4.0-1.rhel9.x86_64.rpm pgdg 5.4.0 267.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/repmgr_14-5.4.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 repmgr_14 repmgr_14-5.3.3-1.rhel9.x86_64.rpm pgdg 5.3.3 266.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/repmgr_14-5.3.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 repmgr_14 repmgr_14-5.3.2-1.rhel9.x86_64.rpm pgdg 5.3.2 279.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/repmgr_14-5.3.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 repmgr_14 repmgr_14-5.3.1-1.rhel9.x86_64.rpm pgdg 5.3.1 278.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/repmgr_14-5.3.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 repmgr_14 repmgr_14-5.5.0-1PGDG.rhel9.aarch64.rpm pgdg 5.5.0 262.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/repmgr_14-5.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 repmgr_14 repmgr_14-5.4.1-1PGDG.rhel9.aarch64.rpm pgdg 5.4.1 262.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/repmgr_14-5.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 repmgr_14 repmgr_14-5.4.0-1.rhel9.aarch64.rpm pgdg 5.4.0 262.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/repmgr_14-5.4.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 repmgr_14 repmgr_14-5.5.0-3PGDG.rhel10.x86_64.rpm pgdg 5.5.0 269.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/repmgr_14-5.5.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 repmgr_14 repmgr_14-5.5.0-3PGDG.rhel10.aarch64.rpm pgdg 5.5.0 261.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/repmgr_14-5.5.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb pgdg 5.5.0 243.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb pgdg 5.5.0 222.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb pgdg 5.5.0 241.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb pgdg 5.5.0 221.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb pgdg 5.5.0 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb pgdg 5.5.0 209.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb pgdg 5.5.0 229.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-repmgr postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb pgdg 5.5.0 205.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/repmgr/postgresql-14-repmgr_5.5.0+debpgdg-3.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `repmgr` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install repmgr;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y repmgr -v 18  # PG 18
pig ext install -y repmgr -v 17  # PG 17
pig ext install -y repmgr -v 16  # PG 16
pig ext install -y repmgr -v 15  # PG 15
pig ext install -y repmgr -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y repmgr_18       # PG 18
dnf install -y repmgr_17       # PG 17
dnf install -y repmgr_16       # PG 16
dnf install -y repmgr_15       # PG 15
dnf install -y repmgr_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-repmgr   # PG 18
apt install -y postgresql-17-repmgr   # PG 17
apt install -y postgresql-16-repmgr   # PG 16
apt install -y postgresql-15-repmgr   # PG 15
apt install -y postgresql-14-repmgr   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION repmgr;
```



## Usage

> [repmgr: Replication manager for PostgreSQL](https://github.com/EnterpriseDB/repmgr)

A suite of tools to manage replication and failover within a PostgreSQL cluster. Supports setting up standby servers, monitoring replication, and performing failover/switchover.

### Enabling

```sql
CREATE EXTENSION repmgr;
```

### Configuration

Create `repmgr.conf` on each node:

```ini
node_id=1
node_name='node1'
conninfo='host=node1 dbname=repmgr user=repmgr'
data_directory='/var/lib/postgresql/data'
```

### Register Primary

```bash
repmgr -f /etc/repmgr.conf primary register
```

### Clone and Register Standby

```bash
# Clone from primary
repmgr -h primary-host -U repmgr -d repmgr -f /etc/repmgr.conf standby clone

# Start the standby
pg_ctl -D /var/lib/postgresql/data start

# Register the standby
repmgr -f /etc/repmgr.conf standby register
```

### Monitoring

```bash
# Show cluster status
repmgr -f /etc/repmgr.conf cluster show

# Show replication status
repmgr -f /etc/repmgr.conf node status
```

### Manual Switchover

Promote a standby to primary (planned switchover):

```bash
repmgr -f /etc/repmgr.conf standby switchover
```

### Automatic Failover with repmgrd

Start the repmgr daemon on each node:

```bash
repmgrd -f /etc/repmgr.conf
```

Configure failover in `repmgr.conf`:

```ini
failover='automatic'
promote_command='repmgr standby promote -f /etc/repmgr.conf'
follow_command='repmgr standby follow -f /etc/repmgr.conf --upstream-node-id=%n'
```

### Key Commands

- `repmgr primary register` - register a primary node
- `repmgr standby clone` - clone a standby from primary
- `repmgr standby register` - register a standby node
- `repmgr standby promote` - promote standby to primary
- `repmgr standby follow` - follow a new primary
- `repmgr standby switchover` - planned switchover
- `repmgr cluster show` - display cluster status
- `repmgr cluster event` - show cluster events
- `repmgr node check` - health check a node
