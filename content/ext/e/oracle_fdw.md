---
title: "oracle_fdw"
linkTitle: "oracle_fdw"
description: "foreign data wrapper for Oracle access"
weight: 8610
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/laurenz/oracle_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">laurenz/oracle_fdw</div>
    <div class="ext-card__desc">https://github.com/laurenz/oracle_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/oracle_fdw-ORACLE_FDW_2_8_0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">oracle_fdw-ORACLE_FDW_2_8_0.tar.gz</div>
    <div class="ext-card__desc">oracle_fdw-ORACLE_FDW_2_8_0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`oracle_fdw`**](/ext/e/oracle_fdw) | `2.9.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8610  | [**`oracle_fdw`**](/ext/e/oracle_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`mysql_fdw`](/ext/e/mysql_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`firebird_fdw`](/ext/e/firebird_fdw) [`orafce`](/ext/e/orafce) [`wrappers`](/ext/e/wrappers) [`odbc_fdw`](/ext/e/odbc_fdw) [`jdbc_fdw`](/ext/e/jdbc_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require oracle-libs


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.9.0` | {{< pgvers "18,17,16,15,14" >}} | `oracle_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.9.0` | {{< pgvers "18,17,16,15,14" >}} | `oracle_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.9.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-oracle-fdw` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.9.0 5 | AVAIL PGDG 2.9.0 8 | AVAIL PGDG 2.9.0 10 | AVAIL PGDG 2.9.0 13 | AVAIL PGDG 2.9.0 14 |
| el8.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 2.9.0 5 | AVAIL PGDG 2.9.0 9 | AVAIL PGDG 2.9.0 11 | AVAIL PGDG 2.9.0 14 | AVAIL PGDG 2.9.0 14 |
| el9.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 2.9.0 5 | AVAIL PGDG 2.9.0 5 | AVAIL PGDG 2.9.0 5 | AVAIL PGDG 2.9.0 5 | AVAIL PGDG 2.9.0 5 |
| el10.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| d12.aarch64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| d13.x86_64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| d13.aarch64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| u22.x86_64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| u22.aarch64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| u24.x86_64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| u24.aarch64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| u26.x86_64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
| u26.aarch64 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 | AVAIL PGDG 2.9.0 2 |
@ el8.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.9.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.9.0 88.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/oracle_fdw_18-2.9.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-9PGDG.rhel8.10.x86_64.rpm pgdg 2.8.0 88.0KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/oracle_fdw_18-2.8.0-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-8PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.9KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/oracle_fdw_18-2.8.0-8PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-7PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/oracle_fdw_18-2.8.0-7PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-6PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/oracle_fdw_18-2.8.0-6PGDG.rhel8.x86_64.rpm
@ el9.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.9.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.9.0 85.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/oracle_fdw_18-2.9.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-9PGDG.rhel9.7.x86_64.rpm pgdg 2.8.0 85.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/oracle_fdw_18-2.8.0-9PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-8PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/oracle_fdw_18-2.8.0-8PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-7PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/oracle_fdw_18-2.8.0-7PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-6PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/oracle_fdw_18-2.8.0-6PGDG.rhel9.x86_64.rpm
@ el10.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.9.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.9.0 87.1KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/oracle_fdw_18-2.9.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-9PGDG.rhel10.1.x86_64.rpm pgdg 2.8.0 87.0KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/oracle_fdw_18-2.8.0-9PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-8PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/oracle_fdw_18-2.8.0-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-7PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.2KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/oracle_fdw_18-2.8.0-7PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 oracle_fdw_18 oracle_fdw_18-2.8.0-6PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/oracle_fdw_18-2.8.0-6PGDG.rhel10.x86_64.rpm
@ d12.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb pgdg 2.9.0 85.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb pgdg 2.8.0 85.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb pgdg 2.9.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb pgdg 2.8.0 79.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb pgdg 2.9.0 85.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb pgdg 2.8.0 85.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb pgdg 2.9.0 79.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb pgdg 2.8.0 79.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb pgdg 2.9.0 73.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb pgdg 2.8.0 73.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb pgdg 2.9.0 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb pgdg 2.8.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb pgdg 2.9.0 73.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb pgdg 2.8.0 73.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb pgdg 2.9.0 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb pgdg 2.8.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb pgdg 2.9.0 74.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb pgdg 2.8.0 74.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb pgdg 2.9.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-oracle-fdw postgresql-18-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb pgdg 2.8.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-18-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.9.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.9.0 88.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.9.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-9PGDG.rhel8.10.x86_64.rpm pgdg 2.8.0 88.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.8.0-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-8PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.8.0-8PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-7PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.8.0-7PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-6PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.8.0-6PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-5PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.7KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.8.0-5PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.7.0-4PGDG.rhel8.x86_64.rpm pgdg 2.7.0 86.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.7.0-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.7.0-3PGDG.rhel8.x86_64.rpm pgdg 2.7.0 86.8KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/oracle_fdw_17-2.7.0-3PGDG.rhel8.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.9.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.9.0 85.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.9.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-9PGDG.rhel9.7.x86_64.rpm pgdg 2.8.0 85.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.8.0-9PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-8PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.8.0-8PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-7PGDG.rhel9.x86_64.rpm pgdg 2.8.0 84.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.8.0-7PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-6PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.1KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.8.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-5PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.8.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.7.0-5PGDG.rhel9.x86_64.rpm pgdg 2.7.0 84.4KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.7.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.7.0-4PGDG.rhel9.x86_64.rpm pgdg 2.7.0 84.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.7.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.7.0-3PGDG.rhel9.x86_64.rpm pgdg 2.7.0 84.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/oracle_fdw_17-2.7.0-3PGDG.rhel9.x86_64.rpm
@ el10.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.9.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.9.0 87.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/oracle_fdw_17-2.9.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-9PGDG.rhel10.1.x86_64.rpm pgdg 2.8.0 87.0KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/oracle_fdw_17-2.8.0-9PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-8PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/oracle_fdw_17-2.8.0-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-7PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.2KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/oracle_fdw_17-2.8.0-7PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 oracle_fdw_17 oracle_fdw_17-2.8.0-6PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/oracle_fdw_17-2.8.0-6PGDG.rhel10.x86_64.rpm
@ d12.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb pgdg 2.9.0 85.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb pgdg 2.8.0 85.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb pgdg 2.9.0 79.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb pgdg 2.8.0 79.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb pgdg 2.9.0 85.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb pgdg 2.8.0 85.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb pgdg 2.9.0 79.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb pgdg 2.8.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb pgdg 2.9.0 73.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb pgdg 2.8.0 73.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb pgdg 2.9.0 67.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb pgdg 2.8.0 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb pgdg 2.9.0 73.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb pgdg 2.8.0 73.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb pgdg 2.9.0 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb pgdg 2.8.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb pgdg 2.9.0 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb pgdg 2.8.0 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb pgdg 2.9.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-oracle-fdw postgresql-17-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb pgdg 2.8.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-17-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.9.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.9.0 88.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.9.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-9PGDG.rhel8.10.x86_64.rpm pgdg 2.8.0 88.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.8.0-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-8PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.9KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.8.0-8PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-7PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.8.0-7PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-6PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.8.0-6PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-5PGDG.rhel8.x86_64.rpm pgdg 2.8.0 87.7KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.8.0-5PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.7.0-4PGDG.rhel8.x86_64.rpm pgdg 2.7.0 86.9KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.7.0-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.7.0-3PGDG.rhel8.x86_64.rpm pgdg 2.7.0 86.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.7.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.6.0-3PGDG.rhel8.x86_64.rpm pgdg 2.6.0 85.9KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.6.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.6.0-2PGDG.rhel8.x86_64.rpm pgdg 2.6.0 85.9KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/oracle_fdw_16-2.6.0-2PGDG.rhel8.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.9.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.9.0 85.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.9.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-9PGDG.rhel9.7.x86_64.rpm pgdg 2.8.0 85.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.8.0-9PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-8PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.8.0-8PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-7PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.8.0-7PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-6PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.1KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.8.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-5PGDG.rhel9.x86_64.rpm pgdg 2.8.0 85.0KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.8.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.7.0-5PGDG.rhel9.x86_64.rpm pgdg 2.7.0 84.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.7.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.7.0-4PGDG.rhel9.x86_64.rpm pgdg 2.7.0 84.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.7.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.7.0-3PGDG.rhel9.x86_64.rpm pgdg 2.7.0 84.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.7.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.6.0-3PGDG.rhel9.x86_64.rpm pgdg 2.6.0 83.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.6.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.6.0-2PGDG.rhel9.x86_64.rpm pgdg 2.6.0 83.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/oracle_fdw_16-2.6.0-2PGDG.rhel9.x86_64.rpm
@ el10.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.9.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.9.0 87.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/oracle_fdw_16-2.9.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-9PGDG.rhel10.1.x86_64.rpm pgdg 2.8.0 87.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/oracle_fdw_16-2.8.0-9PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-8PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/oracle_fdw_16-2.8.0-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-7PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/oracle_fdw_16-2.8.0-7PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 oracle_fdw_16 oracle_fdw_16-2.8.0-6PGDG.rhel10.x86_64.rpm pgdg 2.8.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/oracle_fdw_16-2.8.0-6PGDG.rhel10.x86_64.rpm
@ d12.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb pgdg 2.9.0 85.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb pgdg 2.8.0 85.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb pgdg 2.9.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb pgdg 2.8.0 79.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb pgdg 2.9.0 85.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb pgdg 2.8.0 85.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb pgdg 2.9.0 79.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb pgdg 2.8.0 79.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb pgdg 2.9.0 73.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb pgdg 2.8.0 73.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb pgdg 2.9.0 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb pgdg 2.8.0 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb pgdg 2.9.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb pgdg 2.8.0 73.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb pgdg 2.9.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb pgdg 2.8.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb pgdg 2.9.0 74.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb pgdg 2.8.0 74.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb pgdg 2.9.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-oracle-fdw postgresql-16-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb pgdg 2.8.0 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-16-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.9.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.9.0 88.8KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.9.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-9PGDG.rhel8.10.x86_64.rpm pgdg 2.8.0 88.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.8.0-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-8PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.8.0-8PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-7PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.8.0-7PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-6PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.8.0-6PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-5PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.8.0-5PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.7.0-4PGDG.rhel8.x86_64.rpm pgdg 2.7.0 87.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.7.0-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.7.0-3PGDG.rhel8.x86_64.rpm pgdg 2.7.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.7.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.6.0-3PGDG.rhel8.x86_64.rpm pgdg 2.6.0 86.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.6.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.6.0-1PGDG.rhel8.x86_64.rpm pgdg 2.6.0 86.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.5.0-3.rhel8.x86_64.rpm pgdg 2.5.0 84.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.5.0-3.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.5.0-2.rhel8.x86_64.rpm pgdg 2.5.0 84.1KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.5.0-2.rhel8.x86_64.rpm
@ el8.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.5.0-1.rhel8.x86_64.rpm pgdg 2.5.0 84.0KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/oracle_fdw_15-2.5.0-1.rhel8.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.9.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.9.0 87.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.9.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-9PGDG.rhel9.7.x86_64.rpm pgdg 2.8.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.8.0-9PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-8PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.8.0-8PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-7PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.3KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.8.0-7PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-6PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.8.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-5PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.8.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.7.0-5PGDG.rhel9.x86_64.rpm pgdg 2.7.0 86.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.7.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.7.0-4PGDG.rhel9.x86_64.rpm pgdg 2.7.0 86.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.7.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.7.0-3PGDG.rhel9.x86_64.rpm pgdg 2.7.0 86.7KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.7.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.6.0-3PGDG.rhel9.x86_64.rpm pgdg 2.6.0 85.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.6.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.6.0-1PGDG.rhel9.x86_64.rpm pgdg 2.6.0 85.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.5.0-3.rhel9.x86_64.rpm pgdg 2.5.0 83.6KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.5.0-3.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.5.0-2.rhel9.x86_64.rpm pgdg 2.5.0 83.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.5.0-2.rhel9.x86_64.rpm
@ el9.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.5.0-1.rhel9.x86_64.rpm pgdg 2.5.0 83.8KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/oracle_fdw_15-2.5.0-1.rhel9.x86_64.rpm
@ el10.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.9.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.9.0 88.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/oracle_fdw_15-2.9.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-9PGDG.rhel10.1.x86_64.rpm pgdg 2.8.0 88.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/oracle_fdw_15-2.8.0-9PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-8PGDG.rhel10.x86_64.rpm pgdg 2.8.0 88.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/oracle_fdw_15-2.8.0-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-7PGDG.rhel10.x86_64.rpm pgdg 2.8.0 88.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/oracle_fdw_15-2.8.0-7PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 oracle_fdw_15 oracle_fdw_15-2.8.0-6PGDG.rhel10.x86_64.rpm pgdg 2.8.0 88.5KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/oracle_fdw_15-2.8.0-6PGDG.rhel10.x86_64.rpm
@ d12.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb pgdg 2.9.0 86.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb pgdg 2.8.0 86.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb pgdg 2.9.0 79.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb pgdg 2.8.0 79.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb pgdg 2.9.0 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb pgdg 2.8.0 86.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb pgdg 2.9.0 80.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb pgdg 2.8.0 80.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb pgdg 2.9.0 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb pgdg 2.8.0 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb pgdg 2.9.0 69.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb pgdg 2.8.0 69.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb pgdg 2.9.0 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb pgdg 2.8.0 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb pgdg 2.9.0 69.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb pgdg 2.8.0 69.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb pgdg 2.9.0 75.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb pgdg 2.8.0 76.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb pgdg 2.9.0 69.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-oracle-fdw postgresql-15-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb pgdg 2.8.0 69.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-15-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.9.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.9.0 89.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.9.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-9PGDG.rhel8.10.x86_64.rpm pgdg 2.8.0 89.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.8.0-9PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-8PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.8.0-8PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-7PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.8.0-7PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-6PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.8.0-6PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-5PGDG.rhel8.x86_64.rpm pgdg 2.8.0 88.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.8.0-5PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.7.0-4PGDG.rhel8.x86_64.rpm pgdg 2.7.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.7.0-4PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.7.0-3PGDG.rhel8.x86_64.rpm pgdg 2.7.0 87.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.7.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.6.0-3PGDG.rhel8.x86_64.rpm pgdg 2.6.0 87.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.6.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.6.0-1PGDG.rhel8.x86_64.rpm pgdg 2.6.0 86.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.5.0-3.rhel8.x86_64.rpm pgdg 2.5.0 84.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.5.0-3.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.5.0-2.rhel8.x86_64.rpm pgdg 2.5.0 84.4KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.5.0-2.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.5.0-1.rhel8.x86_64.rpm pgdg 2.5.0 84.3KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.5.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.4.0-3.rhel8.x86_64.rpm pgdg 2.4.0 83.6KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/oracle_fdw_14-2.4.0-3.rhel8.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.9.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.9.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.9.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-9PGDG.rhel9.7.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.8.0-9PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-8PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.8.0-8PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-7PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.8.0-7PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-6PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.8.0-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-5PGDG.rhel9.x86_64.rpm pgdg 2.8.0 87.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.8.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.7.0-5PGDG.rhel9.x86_64.rpm pgdg 2.7.0 87.0KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.7.0-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.7.0-4PGDG.rhel9.x86_64.rpm pgdg 2.7.0 86.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.7.0-4PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.7.0-3PGDG.rhel9.x86_64.rpm pgdg 2.7.0 86.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.7.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.6.0-3PGDG.rhel9.x86_64.rpm pgdg 2.6.0 85.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.6.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.6.0-1PGDG.rhel9.x86_64.rpm pgdg 2.6.0 85.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.5.0-3.rhel9.x86_64.rpm pgdg 2.5.0 83.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.5.0-3.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.5.0-2.rhel9.x86_64.rpm pgdg 2.5.0 83.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.5.0-2.rhel9.x86_64.rpm
@ el9.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.5.0-1.rhel9.x86_64.rpm pgdg 2.5.0 83.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/oracle_fdw_14-2.5.0-1.rhel9.x86_64.rpm
@ el10.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.9.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.9.0 88.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/oracle_fdw_14-2.9.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-9PGDG.rhel10.1.x86_64.rpm pgdg 2.8.0 88.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/oracle_fdw_14-2.8.0-9PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-8PGDG.rhel10.x86_64.rpm pgdg 2.8.0 88.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/oracle_fdw_14-2.8.0-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-7PGDG.rhel10.x86_64.rpm pgdg 2.8.0 88.7KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/oracle_fdw_14-2.8.0-7PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 oracle_fdw_14 oracle_fdw_14-2.8.0-6PGDG.rhel10.x86_64.rpm pgdg 2.8.0 88.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/oracle_fdw_14-2.8.0-6PGDG.rhel10.x86_64.rpm
@ d12.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb pgdg 2.9.0 86.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb pgdg 2.8.0 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb pgdg 2.9.0 80.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb pgdg 2.8.0 80.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb pgdg 2.9.0 87.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb pgdg 2.8.0 86.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb pgdg 2.9.0 80.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb pgdg 2.8.0 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb pgdg 2.9.0 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb pgdg 2.8.0 75.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb pgdg 2.9.0 69.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb pgdg 2.8.0 70.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb pgdg 2.9.0 75.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb pgdg 2.8.0 75.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb pgdg 2.9.0 69.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb pgdg 2.8.0 69.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb pgdg 2.9.0 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb pgdg 2.8.0 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb pgdg 2.9.0 70.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.9.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-oracle-fdw postgresql-14-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb pgdg 2.8.0 69.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/oracle-fdw/postgresql-14-oracle-fdw_2.8.0-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `oracle_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install oracle_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y oracle_fdw -v 18  # PG 18
pig ext install -y oracle_fdw -v 17  # PG 17
pig ext install -y oracle_fdw -v 16  # PG 16
pig ext install -y oracle_fdw -v 15  # PG 15
pig ext install -y oracle_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y oracle_fdw_18       # PG 18
dnf install -y oracle_fdw_17       # PG 17
dnf install -y oracle_fdw_16       # PG 16
dnf install -y oracle_fdw_15       # PG 15
dnf install -y oracle_fdw_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-oracle-fdw   # PG 18
apt install -y postgresql-17-oracle-fdw   # PG 17
apt install -y postgresql-16-oracle-fdw   # PG 16
apt install -y postgresql-15-oracle-fdw   # PG 15
apt install -y postgresql-14-oracle-fdw   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION oracle_fdw;
```




## Usage

> [oracle_fdw: Foreign data wrapper for Oracle access](https://github.com/laurenz/oracle_fdw)

### Create Server

```sql
CREATE EXTENSION oracle_fdw;

CREATE SERVER oradb FOREIGN DATA WRAPPER oracle_fdw
  OPTIONS (dbserver '//dbserver.mydomain.com:1521/ORADB');
```

**Server Options:** `dbserver` (required, Oracle connection string), `isolation_level` (`serializable`, `read_committed`, or `read_only`, default `serializable`), `nchar` (expensive character conversion, default `off`), `set_timezone` (sync timezone with Oracle, default `off`).

### Create User Mapping

```sql
CREATE USER MAPPING FOR pguser SERVER oradb
  OPTIONS (user 'orauser', password 'orapwd');
```

Use an empty string for `user` to enable external (OS) authentication.

### Create Foreign Table

```sql
CREATE FOREIGN TABLE oratab (
  id integer OPTIONS (key 'true') NOT NULL,
  text character varying(30),
  floating double precision NOT NULL
)
SERVER oradb
OPTIONS (schema 'ORAUSER', table 'ORATAB');
```

**Table Options:** `table` (required, Oracle table name in uppercase), `schema` (table owner), `dblink` (Oracle DB link), `max_long` (max LONG column length, default 32767), `readonly` (default `false`), `sample_percent` (ANALYZE sampling, default 100), `prefetch` (rows per round-trip, default 50).

**Column Options:** `key` (mark as primary key, required for UPDATE/DELETE), `strip_zeros` (remove ASCII 0 from strings).

You can also use a query instead of a table name by enclosing it in parentheses:

```sql
CREATE FOREIGN TABLE oraquery (
  id integer,
  text character varying(30)
)
SERVER oradb
OPTIONS (table '(SELECT id, text FROM ORAUSER.ORATAB WHERE id > 10)');
```

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA "ORAUSER"
  FROM SERVER oradb INTO local_schema;
```

**Import Options:** `case` (`keep`, `lower`, or `smart`, default `smart`), `readonly`, `skip_tables`, `skip_views`, `skip_matviews`, `max_long`, `sample_percent`, `prefetch`.

### Utility Functions

```sql
SELECT oracle_diag();              -- Show versions and environment info
SELECT oracle_diag('oradb');       -- Include Oracle server version
SELECT oracle_close_connections(); -- Close all cached Oracle connections
SELECT oracle_execute('oradb', 'TRUNCATE TABLE ORAUSER.ORATAB'); -- Execute arbitrary Oracle SQL
```

### Data Type Mapping

| Oracle Type | PostgreSQL Types |
|---|---|
| CHAR, VARCHAR2, NVARCHAR2 | char, varchar, text |
| CLOB, NCLOB | text, json |
| NUMBER | numeric, float4, float8, int2, int4, int8, boolean |
| DATE, TIMESTAMP | date, timestamp, timestamptz |
| BLOB, LONG RAW | bytea |
| XMLTYPE | xml, text |
| SDO_GEOMETRY | geometry (PostGIS) |
