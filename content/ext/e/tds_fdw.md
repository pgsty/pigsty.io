---
title: "tds_fdw"
linkTitle: "tds_fdw"
description: "Foreign data wrapper for querying a TDS database (Sybase or Microsoft SQL Server)"
weight: 8620
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tds-fdw/tds_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tds-fdw/tds_fdw</div>
    <div class="ext-card__desc">https://github.com/tds-fdw/tds_fdw</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`tds_fdw`**](/ext/e/tds_fdw) | `2.0.5` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8620  | [**`tds_fdw`**](/ext/e/tds_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`babelfishpg_tds`](/ext/e/babelfishpg_tds) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`mysql_fdw`](/ext/e/mysql_fdw) [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) [`db2_fdw`](/ext/e/db2_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `tds_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `tds_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-tds-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 4 |
| el8.aarch64 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 4 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| el9.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 4 | AVAIL PGDG 2.0.5 4 | AVAIL PGDG 2.0.5 4 |
| el9.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 5 | AVAIL PGDG 2.0.5 4 | AVAIL PGDG 2.0.5 4 |
| el10.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| el10.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| d12.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| d12.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| d13.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| d13.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| u22.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| u22.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| u24.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| u24.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| u26.x86_64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
| u26.aarch64 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 | AVAIL PGDG 2.0.5 2 |
@ el8.x86_64 18 tds_fdw_18 tds_fdw_18-2.0.5-1PGDG.rhel8.x86_64.rpm pgdg 2.0.5 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/tds_fdw_18-2.0.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 tds_fdw_18 tds_fdw_18-2.0.5-1PGDG.rhel8.aarch64.rpm pgdg 2.0.5 47.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/tds_fdw_18-2.0.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 tds_fdw_18 tds_fdw_18-2.0.5-3PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 48.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/tds_fdw_18-2.0.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 tds_fdw_18 tds_fdw_18-2.0.5-1PGDG.rhel9.x86_64.rpm pgdg 2.0.5 47.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/tds_fdw_18-2.0.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 tds_fdw_18 tds_fdw_18-2.0.5-3PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 46.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/tds_fdw_18-2.0.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 tds_fdw_18 tds_fdw_18-2.0.5-1PGDG.rhel9.aarch64.rpm pgdg 2.0.5 45.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/tds_fdw_18-2.0.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 tds_fdw_18 tds_fdw_18-2.0.5-3PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 48.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/tds_fdw_18-2.0.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 tds_fdw_18 tds_fdw_18-2.0.5-1PGDG.rhel10.x86_64.rpm pgdg 2.0.5 48.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/tds_fdw_18-2.0.5-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 tds_fdw_18 tds_fdw_18-2.0.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 47.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/tds_fdw_18-2.0.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 tds_fdw_18 tds_fdw_18-2.0.5-1PGDG.rhel10.aarch64.rpm pgdg 2.0.5 47.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/tds_fdw_18-2.0.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb pgdg 2.0.5 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb pgdg 2.0.5 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 109.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb pgdg 2.0.5 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb pgdg 2.0.5 109.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb pgdg 2.0.5 112.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 112.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb pgdg 2.0.5 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb pgdg 2.0.5 107.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 107.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb pgdg 2.0.5 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-tds-fdw postgresql-18-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 106.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-18-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.5-1PGDG.rhel8.x86_64.rpm pgdg 2.0.5 49.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/tds_fdw_17-2.0.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.4-1PGDG.rhel8.x86_64.rpm pgdg 2.0.4 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/tds_fdw_17-2.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.5-1PGDG.rhel8.aarch64.rpm pgdg 2.0.5 47.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/tds_fdw_17-2.0.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.4-1PGDG.rhel8.aarch64.rpm pgdg 2.0.4 46.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/tds_fdw_17-2.0.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.5-3PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 48.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tds_fdw_17-2.0.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.5-1PGDG.rhel9.x86_64.rpm pgdg 2.0.5 47.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tds_fdw_17-2.0.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.4-1PGDG.rhel9.x86_64.rpm pgdg 2.0.4 47.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tds_fdw_17-2.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.5-3PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 46.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tds_fdw_17-2.0.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.5-1PGDG.rhel9.aarch64.rpm pgdg 2.0.5 45.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tds_fdw_17-2.0.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.4-1PGDG.rhel9.aarch64.rpm pgdg 2.0.4 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tds_fdw_17-2.0.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.5-3PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 48.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/tds_fdw_17-2.0.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.5-1PGDG.rhel10.x86_64.rpm pgdg 2.0.5 48.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/tds_fdw_17-2.0.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 tds_fdw_17 tds_fdw_17-2.0.4-2PGDG.rhel10.x86_64.rpm pgdg 2.0.4 48.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/tds_fdw_17-2.0.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 47.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/tds_fdw_17-2.0.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.5-1PGDG.rhel10.aarch64.rpm pgdg 2.0.5 47.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/tds_fdw_17-2.0.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 tds_fdw_17 tds_fdw_17-2.0.4-2PGDG.rhel10.aarch64.rpm pgdg 2.0.4 46.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/tds_fdw_17-2.0.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb pgdg 2.0.5 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb pgdg 2.0.5 108.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb pgdg 2.0.5 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb pgdg 2.0.5 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb pgdg 2.0.5 127.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 127.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb pgdg 2.0.5 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 124.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb pgdg 2.0.5 110.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb pgdg 2.0.5 106.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 106.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb pgdg 2.0.5 105.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-tds-fdw postgresql-17-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 105.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-17-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.5-1PGDG.rhel8.x86_64.rpm pgdg 2.0.5 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/tds_fdw_16-2.0.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.4-1PGDG.rhel8.x86_64.rpm pgdg 2.0.4 49.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/tds_fdw_16-2.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.3-4PGDG.rhel8.x86_64.rpm pgdg 2.0.3 47.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/tds_fdw_16-2.0.3-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.5-1PGDG.rhel8.aarch64.rpm pgdg 2.0.5 47.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/tds_fdw_16-2.0.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.4-1PGDG.rhel8.aarch64.rpm pgdg 2.0.4 46.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/tds_fdw_16-2.0.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.3-4PGDG.rhel8.aarch64.rpm pgdg 2.0.3 44.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/tds_fdw_16-2.0.3-4PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.3-3.rhel8.aarch64.rpm pgdg 2.0.3 44.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/tds_fdw_16-2.0.3-3.rhel8.aarch64.rpm
@ el9.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.5-3PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 47.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tds_fdw_16-2.0.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.5-1PGDG.rhel9.x86_64.rpm pgdg 2.0.5 47.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tds_fdw_16-2.0.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.4-1PGDG.rhel9.x86_64.rpm pgdg 2.0.4 47.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tds_fdw_16-2.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.3-4PGDG.rhel9.x86_64.rpm pgdg 2.0.3 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tds_fdw_16-2.0.3-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.5-3PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 46.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tds_fdw_16-2.0.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.5-1PGDG.rhel9.aarch64.rpm pgdg 2.0.5 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tds_fdw_16-2.0.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.4-1PGDG.rhel9.aarch64.rpm pgdg 2.0.4 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tds_fdw_16-2.0.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.3-4PGDG.rhel9.aarch64.rpm pgdg 2.0.3 43.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tds_fdw_16-2.0.3-4PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.3-3.rhel9.aarch64.rpm pgdg 2.0.3 43.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tds_fdw_16-2.0.3-3.rhel9.aarch64.rpm
@ el10.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.5-3PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 48.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/tds_fdw_16-2.0.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.5-1PGDG.rhel10.x86_64.rpm pgdg 2.0.5 48.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/tds_fdw_16-2.0.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 tds_fdw_16 tds_fdw_16-2.0.4-2PGDG.rhel10.x86_64.rpm pgdg 2.0.4 48.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/tds_fdw_16-2.0.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 47.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/tds_fdw_16-2.0.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.5-1PGDG.rhel10.aarch64.rpm pgdg 2.0.5 47.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/tds_fdw_16-2.0.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 tds_fdw_16 tds_fdw_16-2.0.4-2PGDG.rhel10.aarch64.rpm pgdg 2.0.4 46.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/tds_fdw_16-2.0.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb pgdg 2.0.5 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb pgdg 2.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb pgdg 2.0.5 111.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 111.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb pgdg 2.0.5 109.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb pgdg 2.0.5 126.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 126.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb pgdg 2.0.5 122.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb pgdg 2.0.5 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb pgdg 2.0.5 106.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-tds-fdw postgresql-16-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 106.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-16-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.5-1PGDG.rhel8.x86_64.rpm pgdg 2.0.5 49.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/tds_fdw_15-2.0.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.4-1PGDG.rhel8.x86_64.rpm pgdg 2.0.4 49.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/tds_fdw_15-2.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.3-1.rhel8.x86_64.rpm pgdg 2.0.3 47.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/tds_fdw_15-2.0.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.5-1PGDG.rhel8.aarch64.rpm pgdg 2.0.5 47.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/tds_fdw_15-2.0.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.4-1PGDG.rhel8.aarch64.rpm pgdg 2.0.4 46.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/tds_fdw_15-2.0.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.3-1.rhel8.aarch64.rpm pgdg 2.0.3 44.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/tds_fdw_15-2.0.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.5-3PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 48.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tds_fdw_15-2.0.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.5-1PGDG.rhel9.x86_64.rpm pgdg 2.0.5 47.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tds_fdw_15-2.0.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.4-1PGDG.rhel9.x86_64.rpm pgdg 2.0.4 47.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tds_fdw_15-2.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.3-1.rhel9.x86_64.rpm pgdg 2.0.3 46.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tds_fdw_15-2.0.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.5-3PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 46.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tds_fdw_15-2.0.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.5-1PGDG.rhel9.aarch64.rpm pgdg 2.0.5 45.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tds_fdw_15-2.0.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.4-1PGDG.rhel9.aarch64.rpm pgdg 2.0.4 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tds_fdw_15-2.0.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.3-1.rhel9.aarch64.rpm pgdg 2.0.3 44.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tds_fdw_15-2.0.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.5-3PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 48.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/tds_fdw_15-2.0.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.5-1PGDG.rhel10.x86_64.rpm pgdg 2.0.5 48.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/tds_fdw_15-2.0.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 tds_fdw_15 tds_fdw_15-2.0.4-2PGDG.rhel10.x86_64.rpm pgdg 2.0.4 48.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/tds_fdw_15-2.0.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 47.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/tds_fdw_15-2.0.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.5-1PGDG.rhel10.aarch64.rpm pgdg 2.0.5 47.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/tds_fdw_15-2.0.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 tds_fdw_15 tds_fdw_15-2.0.4-2PGDG.rhel10.aarch64.rpm pgdg 2.0.4 46.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/tds_fdw_15-2.0.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb pgdg 2.0.5 111.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 111.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb pgdg 2.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 108.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb pgdg 2.0.5 111.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 111.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb pgdg 2.0.5 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb pgdg 2.0.5 126.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 126.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb pgdg 2.0.5 122.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 122.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb pgdg 2.0.5 110.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb pgdg 2.0.5 106.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb pgdg 2.0.5 105.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-tds-fdw postgresql-15-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 106.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-15-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.5-1PGDG.rhel8.x86_64.rpm pgdg 2.0.5 49.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tds_fdw_14-2.0.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.4-1PGDG.rhel8.x86_64.rpm pgdg 2.0.4 49.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tds_fdw_14-2.0.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.3-1.rhel8.x86_64.rpm pgdg 2.0.3 47.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tds_fdw_14-2.0.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.2-3.rhel8.x86_64.rpm pgdg 2.0.2 136.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tds_fdw_14-2.0.2-3.rhel8.x86_64.rpm
@ el8.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.5-1PGDG.rhel8.aarch64.rpm pgdg 2.0.5 47.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/tds_fdw_14-2.0.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.4-1PGDG.rhel8.aarch64.rpm pgdg 2.0.4 46.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/tds_fdw_14-2.0.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.3-1.rhel8.aarch64.rpm pgdg 2.0.3 44.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/tds_fdw_14-2.0.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.5-3PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tds_fdw_14-2.0.5-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.5-1PGDG.rhel9.x86_64.rpm pgdg 2.0.5 47.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tds_fdw_14-2.0.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.4-1PGDG.rhel9.x86_64.rpm pgdg 2.0.4 47.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tds_fdw_14-2.0.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.3-1.rhel9.x86_64.rpm pgdg 2.0.3 46.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tds_fdw_14-2.0.3-1.rhel9.x86_64.rpm
@ el9.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.5-3PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 46.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tds_fdw_14-2.0.5-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.5-1PGDG.rhel9.aarch64.rpm pgdg 2.0.5 45.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tds_fdw_14-2.0.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.4-1PGDG.rhel9.aarch64.rpm pgdg 2.0.4 46.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tds_fdw_14-2.0.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.3-1.rhel9.aarch64.rpm pgdg 2.0.3 44.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tds_fdw_14-2.0.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.5-3PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 48.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/tds_fdw_14-2.0.5-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.5-1PGDG.rhel10.x86_64.rpm pgdg 2.0.5 48.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/tds_fdw_14-2.0.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 tds_fdw_14 tds_fdw_14-2.0.4-2PGDG.rhel10.x86_64.rpm pgdg 2.0.4 48.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/tds_fdw_14-2.0.4-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 47.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/tds_fdw_14-2.0.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.5-1PGDG.rhel10.aarch64.rpm pgdg 2.0.5 47.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/tds_fdw_14-2.0.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 tds_fdw_14 tds_fdw_14-2.0.4-2PGDG.rhel10.aarch64.rpm pgdg 2.0.4 46.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/tds_fdw_14-2.0.4-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb pgdg 2.0.5 111.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb pgdg 2.0.5 111.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb pgdg 2.0.5 108.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb pgdg 2.0.5 108.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb pgdg 2.0.5 111.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb pgdg 2.0.5 111.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb pgdg 2.0.5 109.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb pgdg 2.0.5 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb pgdg 2.0.5 126.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb pgdg 2.0.5 126.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb pgdg 2.0.5 122.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb pgdg 2.0.5 123.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb pgdg 2.0.5 109.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb pgdg 2.0.5 107.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb pgdg 2.0.5 106.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb pgdg 2.0.5 108.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb pgdg 2.0.5 105.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-tds-fdw postgresql-14-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb pgdg 2.0.5 105.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tds-fdw/postgresql-14-tds-fdw_2.0.5-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `tds_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install tds_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y tds_fdw -v 18  # PG 18
pig ext install -y tds_fdw -v 17  # PG 17
pig ext install -y tds_fdw -v 16  # PG 16
pig ext install -y tds_fdw -v 15  # PG 15
pig ext install -y tds_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y tds_fdw_18       # PG 18
dnf install -y tds_fdw_17       # PG 17
dnf install -y tds_fdw_16       # PG 16
dnf install -y tds_fdw_15       # PG 15
dnf install -y tds_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-tds-fdw   # PG 18
apt install -y postgresql-17-tds-fdw   # PG 17
apt install -y postgresql-16-tds-fdw   # PG 16
apt install -y postgresql-15-tds-fdw   # PG 15
apt install -y postgresql-14-tds-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION tds_fdw;
```




## Usage

- Sources: [README](https://github.com/tds-fdw/tds_fdw/blob/master/README.md), [foreign server](https://github.com/tds-fdw/tds_fdw/blob/master/ForeignServerCreation.md), [foreign table](https://github.com/tds-fdw/tds_fdw/blob/master/ForeignTableCreation.md), [user mapping](https://github.com/tds-fdw/tds_fdw/blob/master/UserMappingCreation.md), [foreign schema](https://github.com/tds-fdw/tds_fdw/blob/master/ForeignSchemaImporting.md), [variables](https://github.com/tds-fdw/tds_fdw/blob/master/Variables.md)

`tds_fdw` is a foreign data wrapper for querying TDS databases such as Sybase and Microsoft SQL Server through a DB-Library implementation such as FreeTDS.

### Create Server

```sql
CREATE EXTENSION tds_fdw;

CREATE SERVER mssql_svr
  FOREIGN DATA WRAPPER tds_fdw
  OPTIONS (servername '127.0.0.1', port '1433',
           database 'tds_fdw_test', tds_version '7.1');
```

**Server Options:** `servername` (server address or DSN, supports comma-separated failover list), `port`, `database`, `dbuse` (0 for direct connection, non-0 for dbuse()), `tds_version` (protocol version), `language`, `character_set`, `msg_handler` (`notice` or `blackhole`), `sqlserver_ansi_mode`, `fdw_startup_cost`, `fdw_tuple_cost`.

### Create User Mapping

```sql
CREATE USER MAPPING FOR postgres
  SERVER mssql_svr
  OPTIONS (username 'sa', password 'secret');
```

For Azure SQL databases, use the format `username@servername` for the `username` option.

### Create Foreign Table

Map a remote table directly:

```sql
CREATE FOREIGN TABLE mssql_table (
  id integer,
  name varchar(255),
  value numeric(10,2)
)
SERVER mssql_svr
OPTIONS (schema_name 'dbo', table_name 'mytable');
```

Or use a custom SQL query:

```sql
CREATE FOREIGN TABLE mssql_query (
  id integer,
  name varchar(255),
  total numeric(10,2)
)
SERVER mssql_svr
OPTIONS (query 'SELECT id, name, SUM(amount) AS total FROM orders GROUP BY id, name');
```

**Table Options:** `table_name` or `query` (one required, mutually exclusive), `schema_name`, `match_column_names` (map by name vs position), `use_remote_estimate`, `local_tuple_estimate`, `row_estimate_method` (`execute` or `showplan_all`).

**Column Options:** `column_name` (remote column name if different from local).

### Query and Debug

```sql
SELECT * FROM mssql_table WHERE id > 100;

-- View the remote query sent to SQL Server
EXPLAIN (VERBOSE) SELECT * FROM mssql_table WHERE id > 100;
```

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA dbo
  FROM SERVER mssql_svr
  INTO public
  OPTIONS (import_default 'true');
```

**Import Options:** `import_default`, `import_not_null`, and `keep_custom_types` for preserving Sybase user-defined types when matching PostgreSQL domains already exist.

### Planner And Runtime Notes

The upstream README says the current version does not support join pushdown or write operations. It does support `WHERE` and column pushdown when `match_column_names` is enabled.

Set diagnostic memory-stat variables with PostgreSQL `SET`, for example:

```sql
SET tds_fdw.show_finished_memory_stats = 1;
```

Available variables are `tds_fdw.show_before_row_memory_stats`, `tds_fdw.show_after_row_memory_stats`, and `tds_fdw.show_finished_memory_stats`.

Pigsty package metadata is version `2.0.5` from PGDG for PostgreSQL 14-18. Upstream docs say the FDW should support PostgreSQL 9.2+ and the current build matrix includes PostgreSQL 13-18, but this stub follows the packaged PostgreSQL versions from `db/extension.csv`.
