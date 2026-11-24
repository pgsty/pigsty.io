---
title: "orafce"
linkTitle: "orafce"
description: "Functions and operators that emulate a subset of functions and packages from the Oracle RDBMS"
weight: 9100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/orafce/orafce">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">orafce/orafce</div>
    <div class="ext-card__desc">https://github.com/orafce/orafce</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`orafce`**](/ext/e/orafce) | `4.17.2` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license 0bsd" href="/ext/license#0bsd">0BSD</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9100  | [**`orafce`**](/ext/e/orafce) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `oracle` |
{.ext-table .wide .expand}

| **Related** | [`ivorysql_ora`](/ext/e/ivorysql_ora) [`db2fce`](/ext/e/db2fce) [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`pgtt`](/ext/e/pgtt) [`session_variable`](/ext/e/session_variable) [`tds_fdw`](/ext/e/tds_fdw) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`pg_dbms_job`](/ext/e/pg_dbms_job) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Distribution 4.17.1 uses SQL/control version 4.17 and adds UTL_RAW; current PGDG RPM and DEB package baseline is 4.17.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.17.2` | {{< pgvers "19,18,17,16,15" >}} | `orafce` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.17.1` | {{< pgvers "19,18,17,16,15" >}} | `orafce_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.17.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-orafce` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 4.17.1 12 | AVAIL PGDG 4.17.1 20 | AVAIL PGDG 4.17.1 29 | AVAIL PGDG 4.17.1 29 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 4.17.1 12 | AVAIL PGDG 4.17.1 20 | AVAIL PGDG 4.17.1 29 | AVAIL PGDG 4.17.1 29 |
| el9.x86_64 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 |
| el9.aarch64 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 |
| el10.x86_64 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 1 |
| el10.aarch64 | AVAIL PGDG 4.17.1 1 | AVAIL PGDG 4.17.1 18 | AVAIL PGDG 4.17.1 19 | AVAIL PGDG 4.17.1 19 | AVAIL PGDG 4.17.1 19 |
| d12.x86_64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| d12.aarch64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| d13.x86_64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| d13.aarch64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| u22.x86_64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| u22.aarch64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| u24.x86_64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| u24.aarch64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| u26.x86_64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
| u26.aarch64 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 | AVAIL PGDG 4.17.1 3 |
@ el9.x86_64 19 orafce_19 orafce_19-4.17.1-2PGDG.rhel9.9.x86_64.rpm pgdg 4.17.1 157.4KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/orafce_19-4.17.1-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 orafce_19 orafce_19-4.17.1-2PGDG.rhel9.9.aarch64.rpm pgdg 4.17.1 151.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/orafce_19-4.17.1-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 orafce_19 orafce_19-4.17.1-2PGDG.rhel10.3.x86_64.rpm pgdg 4.17.1 158.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/orafce_19-4.17.1-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 orafce_19 orafce_19-4.17.1-2PGDG.rhel10.3.aarch64.rpm pgdg 4.17.1 153.5KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/orafce_19-4.17.1-2PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg12+2_amd64.deb pgdg 4.17.1 381.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg12+2_amd64.deb
@ d12.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg12+1_amd64.deb pgdg 4.17.1 380.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg12+1_amd64.deb pgdg 4.16.13 376.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg12+2_arm64.deb pgdg 4.17.1 369.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg12+2_arm64.deb
@ d12.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg12+1_arm64.deb pgdg 4.17.1 369.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg12+1_arm64.deb pgdg 4.16.13 365.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg13+2_amd64.deb pgdg 4.17.1 381.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg13+2_amd64.deb
@ d13.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg13+1_amd64.deb pgdg 4.17.1 381.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg13+1_amd64.deb pgdg 4.16.13 377.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg13+2_arm64.deb pgdg 4.17.1 371.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg13+2_arm64.deb
@ d13.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg13+1_arm64.deb pgdg 4.17.1 370.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg13+1_arm64.deb pgdg 4.16.13 366.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg22.04+2_amd64.deb pgdg 4.17.1 386.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg22.04+1_amd64.deb pgdg 4.17.1 385.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg22.04+1_amd64.deb pgdg 4.16.13 382.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg22.04+2_arm64.deb pgdg 4.17.1 373.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg22.04+1_arm64.deb pgdg 4.17.1 373.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg22.04+1_arm64.deb pgdg 4.16.13 369.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg24.04+2_amd64.deb pgdg 4.17.1 378.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg24.04+1_amd64.deb pgdg 4.17.1 378.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg24.04+1_amd64.deb pgdg 4.16.13 374.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg24.04+2_arm64.deb pgdg 4.17.1 368.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg24.04+1_arm64.deb pgdg 4.17.1 369.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg24.04+1_arm64.deb pgdg 4.16.13 364.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg26.04+2_amd64.deb pgdg 4.17.1 375.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg26.04+1_amd64.deb pgdg 4.17.1 375.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg26.04+1_amd64.deb pgdg 4.16.13 371.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg26.04+2_arm64.deb pgdg 4.17.1 365.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.17.1-1.pgdg26.04+1_arm64.deb pgdg 4.17.1 365.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.17.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 19 postgresql-19-orafce postgresql-19-orafce_4.16.13-1.pgdg26.04+1_arm64.deb pgdg 4.16.13 360.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-19-orafce_4.16.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 162.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.17.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.17.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 162.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.17.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.12-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.12 156.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.12-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.11-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.11 155.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.10-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.10 154.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.10-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.9-2PGDG.rhel8.10.x86_64.rpm pgdg 4.16.9 154.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.9-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.8-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.8 154.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.7 153.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.5 153.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.16.2-2PGDG.rhel8.x86_64.rpm pgdg 4.16.2 152.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.16.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.14.6-1PGDG.rhel8.x86_64.rpm pgdg 4.14.6 151.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.14.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 orafce_18 orafce_18-4.14.5-1PGDG.rhel8.x86_64.rpm pgdg 4.14.5 151.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/orafce_18-4.14.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.17.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.17.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.17.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.12-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.12 149.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.12-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.11-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.11 150.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.10-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.10 150.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.10-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.9-2PGDG.rhel8.10.aarch64.rpm pgdg 4.16.9 150.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.9-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.8-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.8 150.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.7 149.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.5 148.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.16.2-2PGDG.rhel8.aarch64.rpm pgdg 4.16.2 148.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.16.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.14.6-1PGDG.rhel8.aarch64.rpm pgdg 4.14.6 146.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.14.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 orafce_18 orafce_18-4.14.5-1PGDG.rhel8.aarch64.rpm pgdg 4.14.5 147.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/orafce_18-4.14.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel9.9.x86_64.rpm pgdg 4.17.1 156.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/orafce_18-4.17.1-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel9.9.aarch64.rpm pgdg 4.17.1 152.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/orafce_18-4.17.1-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel10.3.x86_64.rpm pgdg 4.17.1 158.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/orafce_18-4.17.1-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel10.3.aarch64.rpm pgdg 4.17.1 153.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.17.1-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.17.1-2PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.17.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.17.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.17.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.12-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.12 149.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.12-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.11-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.11 150.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.10-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.10 149.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.10-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.9-2PGDG.rhel10.2.aarch64.rpm pgdg 4.16.9 149.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.9-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.8-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.8 149.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.7 148.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.7 148.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.7 148.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.5 149.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.5 149.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.5 149.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.2-2PGDG.rhel10.aarch64.rpm pgdg 4.16.2 149.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.16.1-1PGDG.rhel10.aarch64.rpm pgdg 4.16.1 149.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.16.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.14.6-1PGDG.rhel10.aarch64.rpm pgdg 4.14.6 148.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.14.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 orafce_18 orafce_18-4.14.5-1PGDG.rhel10.aarch64.rpm pgdg 4.14.5 148.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/orafce_18-4.14.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg12+2_amd64.deb pgdg 4.17.1 378.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg12+1_amd64.deb pgdg 4.17.1 378.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg12+1_amd64.deb pgdg 4.16.13 374.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg12+2_arm64.deb pgdg 4.17.1 368.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg12+1_arm64.deb pgdg 4.17.1 368.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg12+1_arm64.deb pgdg 4.16.13 364.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg13+2_amd64.deb pgdg 4.17.1 379.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg13+1_amd64.deb pgdg 4.17.1 378.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg13+1_amd64.deb pgdg 4.16.13 375.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg13+2_arm64.deb pgdg 4.17.1 369.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg13+1_arm64.deb pgdg 4.17.1 369.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg13+1_arm64.deb pgdg 4.16.13 365.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg22.04+2_amd64.deb pgdg 4.17.1 383.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg22.04+1_amd64.deb pgdg 4.17.1 383.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg22.04+1_amd64.deb pgdg 4.16.13 379.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg22.04+2_arm64.deb pgdg 4.17.1 372.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg22.04+1_arm64.deb pgdg 4.17.1 372.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg22.04+1_arm64.deb pgdg 4.16.13 368.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg24.04+2_amd64.deb pgdg 4.17.1 375.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg24.04+1_amd64.deb pgdg 4.17.1 375.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg24.04+1_amd64.deb pgdg 4.16.13 371.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg24.04+2_arm64.deb pgdg 4.17.1 368.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg24.04+1_arm64.deb pgdg 4.17.1 367.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg24.04+1_arm64.deb pgdg 4.16.13 363.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg26.04+2_amd64.deb pgdg 4.17.1 374.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg26.04+1_amd64.deb pgdg 4.17.1 373.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg26.04+1_amd64.deb pgdg 4.16.13 369.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg26.04+2_arm64.deb pgdg 4.17.1 363.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.17.1-1.pgdg26.04+1_arm64.deb pgdg 4.17.1 364.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.17.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-orafce postgresql-18-orafce_4.16.13-1.pgdg26.04+1_arm64.deb pgdg 4.16.13 359.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-18-orafce_4.16.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 161.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.17.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.17.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 162.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.17.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.12-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.12 156.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.12-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.11-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.11 155.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.10-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.10 155.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.10-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.9-2PGDG.rhel8.10.x86_64.rpm pgdg 4.16.9 154.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.9-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.8-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.8 154.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.7 153.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.5 153.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.16.2-2PGDG.rhel8.x86_64.rpm pgdg 4.16.2 152.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.16.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.14.6-1PGDG.rhel8.x86_64.rpm pgdg 4.14.6 151.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.14.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.14.4-1PGDG.rhel8.x86_64.rpm pgdg 4.14.4 150.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.14.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.14.3-2PGDG.rhel8.x86_64.rpm pgdg 4.14.3 150.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.14.3-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.14.3-1PGDG.rhel8.x86_64.rpm pgdg 4.14.3 150.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.14.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.14.2-1PGDG.rhel8.x86_64.rpm pgdg 4.14.2 150.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.14.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.14.0-1PGDG.rhel8.x86_64.rpm pgdg 4.14.0 148.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.14.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.13.5-1PGDG.rhel8.x86_64.rpm pgdg 4.13.5 148.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.13.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.13.3-1PGDG.rhel8.x86_64.rpm pgdg 4.13.3 147.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.13.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.13.2-1PGDG.rhel8.x86_64.rpm pgdg 4.13.2 147.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.13.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 orafce_17 orafce_17-4.13.0-1PGDG.rhel8.x86_64.rpm pgdg 4.13.0 147.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/orafce_17-4.13.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.17.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.17.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.17.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.12-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.12 149.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.12-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.11-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.11 150.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.10-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.10 150.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.10-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.9-2PGDG.rhel8.10.aarch64.rpm pgdg 4.16.9 150.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.9-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.8-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.8 150.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.7 149.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.5 148.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.16.2-2PGDG.rhel8.aarch64.rpm pgdg 4.16.2 148.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.16.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.14.6-1PGDG.rhel8.aarch64.rpm pgdg 4.14.6 146.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.14.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.14.4-1PGDG.rhel8.aarch64.rpm pgdg 4.14.4 146.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.14.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.14.3-2PGDG.rhel8.aarch64.rpm pgdg 4.14.3 146.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.14.3-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.14.3-1PGDG.rhel8.aarch64.rpm pgdg 4.14.3 146.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.14.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.14.2-1PGDG.rhel8.aarch64.rpm pgdg 4.14.2 146.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.14.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.14.0-1PGDG.rhel8.aarch64.rpm pgdg 4.14.0 143.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.14.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.13.5-1PGDG.rhel8.aarch64.rpm pgdg 4.13.5 143.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.13.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.13.3-1PGDG.rhel8.aarch64.rpm pgdg 4.13.3 142.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.13.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.13.2-1PGDG.rhel8.aarch64.rpm pgdg 4.13.2 142.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.13.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 orafce_17 orafce_17-4.13.0-1PGDG.rhel8.aarch64.rpm pgdg 4.13.0 142.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/orafce_17-4.13.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel9.9.x86_64.rpm pgdg 4.17.1 156.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/orafce_17-4.17.1-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel9.9.aarch64.rpm pgdg 4.17.1 151.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/orafce_17-4.17.1-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel10.3.x86_64.rpm pgdg 4.17.1 157.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/orafce_17-4.17.1-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel10.3.aarch64.rpm pgdg 4.17.1 153.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.17.1-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.17.1-2PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.17.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.17.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.17.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.12-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.12 148.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.12-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.11-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.11 150.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.10-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.10 149.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.10-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.9-2PGDG.rhel10.2.aarch64.rpm pgdg 4.16.9 149.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.9-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.8-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.8 149.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.7 148.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.7 148.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.7 148.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.2-2PGDG.rhel10.aarch64.rpm pgdg 4.16.2 148.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.16.1-1PGDG.rhel10.aarch64.rpm pgdg 4.16.1 149.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.16.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.14.6-1PGDG.rhel10.aarch64.rpm pgdg 4.14.6 148.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.14.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.14.4-1PGDG.rhel10.aarch64.rpm pgdg 4.14.4 148.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.14.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 orafce_17 orafce_17-4.14.3-2PGDG.rhel10.aarch64.rpm pgdg 4.14.3 148.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/orafce_17-4.14.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg12+2_amd64.deb pgdg 4.17.1 378.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg12+1_amd64.deb pgdg 4.17.1 378.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg12+1_amd64.deb pgdg 4.16.13 373.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg12+2_arm64.deb pgdg 4.17.1 368.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg12+1_arm64.deb pgdg 4.17.1 367.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg12+1_arm64.deb pgdg 4.16.13 364.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg13+2_amd64.deb pgdg 4.17.1 379.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg13+1_amd64.deb pgdg 4.17.1 379.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg13+1_amd64.deb pgdg 4.16.13 375.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg13+2_arm64.deb pgdg 4.17.1 370.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg13+1_arm64.deb pgdg 4.17.1 369.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg13+1_arm64.deb pgdg 4.16.13 365.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg22.04+2_amd64.deb pgdg 4.17.1 415.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg22.04+1_amd64.deb pgdg 4.17.1 415.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg22.04+1_amd64.deb pgdg 4.16.13 410.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg22.04+2_arm64.deb pgdg 4.17.1 403.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg22.04+1_arm64.deb pgdg 4.17.1 403.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg22.04+1_arm64.deb pgdg 4.16.13 399.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg24.04+2_amd64.deb pgdg 4.17.1 376.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg24.04+1_amd64.deb pgdg 4.17.1 376.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg24.04+1_amd64.deb pgdg 4.16.13 371.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg24.04+2_arm64.deb pgdg 4.17.1 367.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg24.04+1_arm64.deb pgdg 4.17.1 367.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg24.04+1_arm64.deb pgdg 4.16.13 363.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg26.04+2_amd64.deb pgdg 4.17.1 373.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg26.04+1_amd64.deb pgdg 4.17.1 373.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg26.04+1_amd64.deb pgdg 4.16.13 369.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg26.04+2_arm64.deb pgdg 4.17.1 364.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.17.1-1.pgdg26.04+1_arm64.deb pgdg 4.17.1 364.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.17.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-orafce postgresql-17-orafce_4.16.13-1.pgdg26.04+1_arm64.deb pgdg 4.16.13 359.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-17-orafce_4.16.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 161.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.17.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.17.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 162.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.17.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.12-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.12 157.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.12-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.11-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.11 155.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.10-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.10 155.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.10-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.9-2PGDG.rhel8.10.x86_64.rpm pgdg 4.16.9 154.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.9-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.8-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.8 154.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.7 153.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.5 153.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.16.2-2PGDG.rhel8.x86_64.rpm pgdg 4.16.2 152.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.16.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.14.6-1PGDG.rhel8.x86_64.rpm pgdg 4.14.6 151.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.14.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.14.4-1PGDG.rhel8.x86_64.rpm pgdg 4.14.4 150.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.14.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.14.3-2PGDG.rhel8.x86_64.rpm pgdg 4.14.3 150.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.14.3-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.14.3-1PGDG.rhel8.x86_64.rpm pgdg 4.14.3 150.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.14.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.14.2-1PGDG.rhel8.x86_64.rpm pgdg 4.14.2 150.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.14.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.14.0-1PGDG.rhel8.x86_64.rpm pgdg 4.14.0 148.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.14.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.13.5-1PGDG.rhel8.x86_64.rpm pgdg 4.13.5 148.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.13.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.13.3-1PGDG.rhel8.x86_64.rpm pgdg 4.13.3 147.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.13.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.13.2-1PGDG.rhel8.x86_64.rpm pgdg 4.13.2 147.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.13.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.12.0-1PGDG.rhel8.x86_64.rpm pgdg 4.12.0 146.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.12.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.11.0-1PGDG.rhel8.x86_64.rpm pgdg 4.11.0 145.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.11.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.10.3-1PGDG.rhel8.x86_64.rpm pgdg 4.10.3 145.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.10.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.10.2-1PGDG.rhel8.x86_64.rpm pgdg 4.10.2 145.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.10.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.10.0-1PGDG.rhel8.x86_64.rpm pgdg 4.10.0 144.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.10.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.9.4-1PGDG.rhel8.x86_64.rpm pgdg 4.9.4 143.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.9.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.9.3-1PGDG.rhel8.x86_64.rpm pgdg 4.9.3 143.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.9.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.9.2-1PGDG.rhel8.x86_64.rpm pgdg 4.9.2 143.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.9.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.9.1-1PGDG.rhel8.x86_64.rpm pgdg 4.9.1 143.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 orafce_16 orafce_16-4.9.0-1PGDG.rhel8.x86_64.rpm pgdg 4.9.0 143.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/orafce_16-4.9.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.17.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.17.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.17.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.12-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.12 149.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.12-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.11-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.11 150.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.10-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.10 150.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.10-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.9-2PGDG.rhel8.10.aarch64.rpm pgdg 4.16.9 150.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.9-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.8-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.8 150.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.7 149.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.5 148.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.16.2-2PGDG.rhel8.aarch64.rpm pgdg 4.16.2 148.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.16.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.14.6-1PGDG.rhel8.aarch64.rpm pgdg 4.14.6 147.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.14.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.14.4-1PGDG.rhel8.aarch64.rpm pgdg 4.14.4 146.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.14.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.14.3-2PGDG.rhel8.aarch64.rpm pgdg 4.14.3 146.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.14.3-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.14.3-1PGDG.rhel8.aarch64.rpm pgdg 4.14.3 146.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.14.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.14.2-1PGDG.rhel8.aarch64.rpm pgdg 4.14.2 146.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.14.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.14.0-1PGDG.rhel8.aarch64.rpm pgdg 4.14.0 143.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.14.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.13.5-1PGDG.rhel8.aarch64.rpm pgdg 4.13.5 142.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.13.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.13.3-1PGDG.rhel8.aarch64.rpm pgdg 4.13.3 142.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.13.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.13.2-1PGDG.rhel8.aarch64.rpm pgdg 4.13.2 142.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.13.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.12.0-1PGDG.rhel8.aarch64.rpm pgdg 4.12.0 141.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.12.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.11.0-1PGDG.rhel8.aarch64.rpm pgdg 4.11.0 140.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.11.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.10.3-1PGDG.rhel8.aarch64.rpm pgdg 4.10.3 140.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.10.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.10.2-1PGDG.rhel8.aarch64.rpm pgdg 4.10.2 140.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.10.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.10.0-1PGDG.rhel8.aarch64.rpm pgdg 4.10.0 139.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.10.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.9.4-1PGDG.rhel8.aarch64.rpm pgdg 4.9.4 139.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.9.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.9.3-1PGDG.rhel8.aarch64.rpm pgdg 4.9.3 138.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.9.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.9.2-1PGDG.rhel8.aarch64.rpm pgdg 4.9.2 138.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.9.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.9.1-1PGDG.rhel8.aarch64.rpm pgdg 4.9.1 138.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 orafce_16 orafce_16-4.9.0-1PGDG.rhel8.aarch64.rpm pgdg 4.9.0 138.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/orafce_16-4.9.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel9.9.x86_64.rpm pgdg 4.17.1 156.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/orafce_16-4.17.1-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel9.9.aarch64.rpm pgdg 4.17.1 151.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/orafce_16-4.17.1-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel10.3.x86_64.rpm pgdg 4.17.1 157.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/orafce_16-4.17.1-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel10.3.aarch64.rpm pgdg 4.17.1 153.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.17.1-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.17.1-2PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.17.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.17.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.17.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.12-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.12 148.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.12-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.11-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.11 150.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.10-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.10 149.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.10-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.9-2PGDG.rhel10.2.aarch64.rpm pgdg 4.16.9 149.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.9-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.8-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.8 149.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.7 148.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.7 148.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.7 148.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.2-2PGDG.rhel10.aarch64.rpm pgdg 4.16.2 148.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.16.1-1PGDG.rhel10.aarch64.rpm pgdg 4.16.1 149.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.16.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.14.6-1PGDG.rhel10.aarch64.rpm pgdg 4.14.6 148.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.14.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.14.4-1PGDG.rhel10.aarch64.rpm pgdg 4.14.4 148.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.14.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 orafce_16 orafce_16-4.14.3-2PGDG.rhel10.aarch64.rpm pgdg 4.14.3 148.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/orafce_16-4.14.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg12+2_amd64.deb pgdg 4.17.1 378.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg12+1_amd64.deb pgdg 4.17.1 378.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg12+1_amd64.deb pgdg 4.16.13 373.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg12+2_arm64.deb pgdg 4.17.1 368.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg12+1_arm64.deb pgdg 4.17.1 367.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg12+1_arm64.deb pgdg 4.16.13 363.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg13+2_amd64.deb pgdg 4.17.1 379.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg13+1_amd64.deb pgdg 4.17.1 379.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg13+1_amd64.deb pgdg 4.16.13 374.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg13+2_arm64.deb pgdg 4.17.1 369.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg13+1_arm64.deb pgdg 4.17.1 369.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg13+1_arm64.deb pgdg 4.16.13 365.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg22.04+2_amd64.deb pgdg 4.17.1 414.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg22.04+1_amd64.deb pgdg 4.17.1 414.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg22.04+1_amd64.deb pgdg 4.16.13 410.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg22.04+2_arm64.deb pgdg 4.17.1 402.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg22.04+1_arm64.deb pgdg 4.17.1 402.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg22.04+1_arm64.deb pgdg 4.16.13 398.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg24.04+2_amd64.deb pgdg 4.17.1 375.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg24.04+1_amd64.deb pgdg 4.17.1 375.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg24.04+1_amd64.deb pgdg 4.16.13 371.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg24.04+2_arm64.deb pgdg 4.17.1 367.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg24.04+1_arm64.deb pgdg 4.17.1 367.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg24.04+1_arm64.deb pgdg 4.16.13 363.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg26.04+2_amd64.deb pgdg 4.17.1 372.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg26.04+1_amd64.deb pgdg 4.17.1 373.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg26.04+1_amd64.deb pgdg 4.16.13 368.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg26.04+2_arm64.deb pgdg 4.17.1 364.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.17.1-1.pgdg26.04+1_arm64.deb pgdg 4.17.1 364.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.17.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-orafce postgresql-16-orafce_4.16.13-1.pgdg26.04+1_arm64.deb pgdg 4.16.13 359.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-16-orafce_4.16.13-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 162.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.17.1-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.17.1-1PGDG.rhel8.10.x86_64.rpm pgdg 4.17.1 162.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.17.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.12-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.12 157.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.12-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.11-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.11 155.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.11-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.10-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.10 155.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.10-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.9-2PGDG.rhel8.10.x86_64.rpm pgdg 4.16.9 154.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.9-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.8-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.8 155.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.7-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.7 153.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.16.5 153.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.16.2-2PGDG.rhel8.x86_64.rpm pgdg 4.16.2 152.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.16.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.14.6-1PGDG.rhel8.x86_64.rpm pgdg 4.14.6 151.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.14.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.14.4-1PGDG.rhel8.x86_64.rpm pgdg 4.14.4 150.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.14.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.14.3-2PGDG.rhel8.x86_64.rpm pgdg 4.14.3 150.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.14.3-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.14.3-1PGDG.rhel8.x86_64.rpm pgdg 4.14.3 150.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.14.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.14.2-1PGDG.rhel8.x86_64.rpm pgdg 4.14.2 150.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.14.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.14.0-1PGDG.rhel8.x86_64.rpm pgdg 4.14.0 149.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.14.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.13.5-1PGDG.rhel8.x86_64.rpm pgdg 4.13.5 149.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.13.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.13.3-1PGDG.rhel8.x86_64.rpm pgdg 4.13.3 149.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.13.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.13.2-1PGDG.rhel8.x86_64.rpm pgdg 4.13.2 148.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.13.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.12.0-1PGDG.rhel8.x86_64.rpm pgdg 4.12.0 147.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.12.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.11.0-1PGDG.rhel8.x86_64.rpm pgdg 4.11.0 147.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.11.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.10.3-1PGDG.rhel8.x86_64.rpm pgdg 4.10.3 146.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.10.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.10.2-1PGDG.rhel8.x86_64.rpm pgdg 4.10.2 146.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.10.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.10.0-1PGDG.rhel8.x86_64.rpm pgdg 4.10.0 146.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.10.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.9.4-1PGDG.rhel8.x86_64.rpm pgdg 4.9.4 145.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.9.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.9.3-1PGDG.rhel8.x86_64.rpm pgdg 4.9.3 145.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.9.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.9.2-1PGDG.rhel8.x86_64.rpm pgdg 4.9.2 145.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.9.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.9.1-1PGDG.rhel8.x86_64.rpm pgdg 4.9.1 145.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 orafce_15 orafce_15-4.9.0-1PGDG.rhel8.x86_64.rpm pgdg 4.9.0 144.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/orafce_15-4.9.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.17.1-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.17.1-1PGDG.rhel8.10.aarch64.rpm pgdg 4.17.1 154.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.17.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.12-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.12 149.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.12-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.11-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.11 150.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.11-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.10-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.10 150.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.10-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.9-2PGDG.rhel8.10.aarch64.rpm pgdg 4.16.9 150.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.9-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.8-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.8 150.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.7-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.7 149.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.16.5 148.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.16.2-2PGDG.rhel8.aarch64.rpm pgdg 4.16.2 148.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.16.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.14.6-1PGDG.rhel8.aarch64.rpm pgdg 4.14.6 147.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.14.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.14.4-1PGDG.rhel8.aarch64.rpm pgdg 4.14.4 146.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.14.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.14.3-2PGDG.rhel8.aarch64.rpm pgdg 4.14.3 146.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.14.3-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.14.3-1PGDG.rhel8.aarch64.rpm pgdg 4.14.3 146.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.14.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.14.2-1PGDG.rhel8.aarch64.rpm pgdg 4.14.2 146.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.14.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.14.0-1PGDG.rhel8.aarch64.rpm pgdg 4.14.0 144.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.14.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.13.5-1PGDG.rhel8.aarch64.rpm pgdg 4.13.5 144.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.13.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.13.3-1PGDG.rhel8.aarch64.rpm pgdg 4.13.3 144.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.13.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.13.2-1PGDG.rhel8.aarch64.rpm pgdg 4.13.2 144.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.13.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.12.0-1PGDG.rhel8.aarch64.rpm pgdg 4.12.0 142.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.12.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.11.0-1PGDG.rhel8.aarch64.rpm pgdg 4.11.0 142.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.11.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.10.3-1PGDG.rhel8.aarch64.rpm pgdg 4.10.3 142.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.10.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.10.2-1PGDG.rhel8.aarch64.rpm pgdg 4.10.2 141.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.10.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.10.0-1PGDG.rhel8.aarch64.rpm pgdg 4.10.0 141.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.10.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.9.4-1PGDG.rhel8.aarch64.rpm pgdg 4.9.4 140.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.9.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.9.3-1PGDG.rhel8.aarch64.rpm pgdg 4.9.3 140.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.9.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.9.2-1PGDG.rhel8.aarch64.rpm pgdg 4.9.2 140.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.9.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.9.1-1PGDG.rhel8.aarch64.rpm pgdg 4.9.1 140.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 orafce_15 orafce_15-4.9.0-1PGDG.rhel8.aarch64.rpm pgdg 4.9.0 140.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/orafce_15-4.9.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel9.9.x86_64.rpm pgdg 4.17.1 157.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/orafce_15-4.17.1-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel9.9.aarch64.rpm pgdg 4.17.1 151.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/orafce_15-4.17.1-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel10.3.x86_64.rpm pgdg 4.17.1 158.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/orafce_15-4.17.1-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel10.3.aarch64.rpm pgdg 4.17.1 153.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.17.1-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.17.1-2PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.17.1-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.17.1-1PGDG.rhel10.2.aarch64.rpm pgdg 4.17.1 153.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.17.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.12-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.12 149.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.12-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.11-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.11 150.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.11-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.10-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.10 150.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.10-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.9-2PGDG.rhel10.2.aarch64.rpm pgdg 4.16.9 149.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.9-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.8-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.8 149.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.7-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.7 148.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.7-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.7 148.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.7-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.7-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.7 148.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.7-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.16.5 149.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.16.5 149.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.5-1PGDG.rhel10.0.aarch64.rpm pgdg 4.16.5 149.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.5-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.2-2PGDG.rhel10.aarch64.rpm pgdg 4.16.2 149.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.2-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.16.1-1PGDG.rhel10.aarch64.rpm pgdg 4.16.1 149.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.16.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.14.6-1PGDG.rhel10.aarch64.rpm pgdg 4.14.6 148.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.14.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.14.4-1PGDG.rhel10.aarch64.rpm pgdg 4.14.4 148.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.14.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 orafce_15 orafce_15-4.14.3-2PGDG.rhel10.aarch64.rpm pgdg 4.14.3 148.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/orafce_15-4.14.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg12+2_amd64.deb pgdg 4.17.1 380.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg12+1_amd64.deb pgdg 4.17.1 380.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg12+1_amd64.deb pgdg 4.16.13 376.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg12+2_arm64.deb pgdg 4.17.1 370.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg12+1_arm64.deb pgdg 4.17.1 370.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg12+1_arm64.deb pgdg 4.16.13 366.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg13+2_amd64.deb pgdg 4.17.1 382.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg13+1_amd64.deb pgdg 4.17.1 381.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg13+1_amd64.deb pgdg 4.16.13 377.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg13+2_arm64.deb pgdg 4.17.1 372.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg13+1_arm64.deb pgdg 4.17.1 372.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg13+1_arm64.deb pgdg 4.16.13 368.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg22.04+2_amd64.deb pgdg 4.17.1 420.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg22.04+1_amd64.deb pgdg 4.17.1 420.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg22.04+1_amd64.deb pgdg 4.16.13 416.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg22.04+2_arm64.deb pgdg 4.17.1 409.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg22.04+1_arm64.deb pgdg 4.17.1 409.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg22.04+1_arm64.deb pgdg 4.16.13 405.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg24.04+2_amd64.deb pgdg 4.17.1 380.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg24.04+1_amd64.deb pgdg 4.17.1 380.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg24.04+1_amd64.deb pgdg 4.16.13 375.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg24.04+2_arm64.deb pgdg 4.17.1 372.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg24.04+1_arm64.deb pgdg 4.17.1 371.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg24.04+1_arm64.deb pgdg 4.16.13 367.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg26.04+2_amd64.deb pgdg 4.17.1 378.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg26.04+1_amd64.deb pgdg 4.17.1 378.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg26.04+1_amd64.deb pgdg 4.16.13 374.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg26.04+2_arm64.deb pgdg 4.17.1 368.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.17.1-1.pgdg26.04+1_arm64.deb pgdg 4.17.1 368.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.17.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-orafce postgresql-15-orafce_4.16.13-1.pgdg26.04+1_arm64.deb pgdg 4.16.13 364.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/o/orafce/postgresql-15-orafce_4.16.13-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `orafce` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install orafce;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y orafce -v 19  # PG 19
pig ext install -y orafce -v 18  # PG 18
pig ext install -y orafce -v 17  # PG 17
pig ext install -y orafce -v 16  # PG 16
pig ext install -y orafce -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y orafce_19       # PG 19
dnf install -y orafce_18       # PG 18
dnf install -y orafce_17       # PG 17
dnf install -y orafce_16       # PG 16
dnf install -y orafce_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-orafce   # PG 19
apt install -y postgresql-18-orafce   # PG 18
apt install -y postgresql-17-orafce   # PG 17
apt install -y postgresql-16-orafce   # PG 16
apt install -y postgresql-15-orafce   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION orafce;
```

## Usage

Sources:

- [README.asciidoc](https://github.com/orafce/orafce/blob/542aed2e0297898cc9844fede3c4452f894b37ed/README.asciidoc)
- [orafce.control](https://github.com/orafce/orafce/blob/542aed2e0297898cc9844fede3c4452f894b37ed/orafce.control)
- [orafce--4.17.sql](https://github.com/orafce/orafce/blob/542aed2e0297898cc9844fede3c4452f894b37ed/orafce--4.17.sql)
- [orafce--4.16--4.17.sql](https://github.com/orafce/orafce/blob/542aed2e0297898cc9844fede3c4452f894b37ed/orafce--4.16--4.17.sql)
- [file.c](https://github.com/orafce/orafce/blob/542aed2e0297898cc9844fede3c4452f894b37ed/file.c)

`orafce` provides Oracle-compatible functions, types and utility packages. Distribution 4.17.1 uses control and SQL extension version 4.17; the two numbers describe different layers.

### Core Workflow

```sql
CREATE EXTENSION orafce;
SELECT oracle.add_months(date '2026-01-31', 1);
SELECT oracle.nvl(NULL::text, 'fallback');
SELECT oracle.decode(1, 1, 'one', 2, 'two', 'other');
SELECT dbms_output.enable();
SELECT dbms_output.put_line('Hello');
SELECT * FROM dbms_output.get_line();
```

### Types and Packages

Use `oracle.date` when an Oracle-style date must retain the time of day. Date functions include `oracle.add_months`, `oracle.last_day`, `oracle.next_day`, `oracle.months_between`, rounding and truncation. Qualify `oracle.decode`, `oracle.greatest` and `oracle.least` explicitly because PostgreSQL parser handling can otherwise select built-in semantics.

`dbms_output` manages buffered output; `dbms_pipe` and `dbms_alert` support session communication. `dbms_sql` exposes dynamic cursors and typed column retrieval. `dbms_utility`, `dbms_assert`, `plvstr`, `plvchr` and `plvsubst` supply diagnostic, validation and string helpers. These compatibility functions do not turn PostgreSQL into Oracle or provide an Oracle procedural-language runtime.

### File Access and 4.16.12 Changes

`utl_file` accesses server-side files within administrator-configured allowed directories; restrict grants and file-system permissions. The implementation rejects parent-directory references that remain after path canonicalization. Avoid parent references in file paths. The 4.16.12 release specifically fixes possible crashes in `dbms_sql`.

Installation requires a superuser and creates fixed schemas; no preload is required. Follow the upstream configuration guidance before altering `search_path`. The 4.16 patch releases did not change the SQL version; upgrading to the 4.17 series does require its SQL upgrade. Reconnect as required to use the updated library and verify behavior against the exact installed distribution.

### 4.16.13 Patch

Distribution 4.16.13 fixes additional possible `dbms_sql` crashes. The control version remains 4.16; update the library distribution without inventing a 4.16.13 SQL upgrade.

### 4.17 Compatibility Objects

Distribution 4.17.1 adds `utl_raw` byte operations, including `utl_raw.cast_to_raw`, `utl_raw.cast_to_varchar2`, `utl_raw.substr` and bitwise functions. `utl_raw.substr` rejects a null value, invalid start, nonpositive length or a range past the end. `oracle.hextoraw`, `oracle.rawtohex`, `oracle.empty_clob`, `oracle.empty_blob` and `oracle.from_tz` are also added. USER_TABLES and USER_TAB_COLUMNS now restrict their results to the current schema. After installing the new distribution, run `ALTER EXTENSION orafce UPDATE TO '4.17'` and reconnect to use the new library.
