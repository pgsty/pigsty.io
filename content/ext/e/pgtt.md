---
title: "pgtt"
linkTitle: "pgtt"
description: "Extension to add Global Temporary Tables feature to PostgreSQL"
weight: 9110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/darold/pgtt">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">darold/pgtt</div>
    <div class="ext-card__desc">https://github.com/darold/pgtt</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgtt`**](/ext/e/pgtt) | `4.6` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9110  | [**`pgtt`**](/ext/e/pgtt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgtt_schema` |
{.ext-table}

| **Related** | [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) [`session_variable`](/ext/e/session_variable) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`ivorysql_ora`](/ext/e/ivorysql_ora) [`db_migrator`](/ext/e/db_migrator) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.6` | {{< pgvers "18,17,16,15,14" >}} | `pgtt` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.6` | {{< pgvers "18,17,16,15,14" >}} | `pgtt_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgtt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 8 | AVAIL PGDG 4.6 10 | AVAIL PGDG 4.6 12 |
| el8.aarch64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 8 | AVAIL PGDG 4.6 10 | AVAIL PGDG 4.6 10 |
| el9.x86_64 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 9 | AVAIL PGDG 4.6 11 | AVAIL PGDG 4.6 12 |
| el9.aarch64 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 9 | AVAIL PGDG 4.6 11 | AVAIL PGDG 4.6 11 |
| el10.x86_64 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 6 |
| el10.aarch64 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 6 | AVAIL PGDG 4.6 6 |
| d12.x86_64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| d12.aarch64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| d13.x86_64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 |
| d13.aarch64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 3 |
| u22.x86_64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| u22.aarch64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| u24.x86_64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| u24.aarch64 | AVAIL PGDG 4.6 3 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| u26.x86_64 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
| u26.aarch64 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 | AVAIL PGDG 4.6 4 |
@ el8.x86_64 18 pgtt_18 pgtt_18-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 42.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgtt_18-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgtt_18 pgtt_18-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 39.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgtt_18-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgtt_18 pgtt_18-4.4-1PGDG.rhel8.x86_64.rpm pgdg 4.4 38.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgtt_18-4.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgtt_18 pgtt_18-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgtt_18-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgtt_18 pgtt_18-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgtt_18-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgtt_18 pgtt_18-4.4-1PGDG.rhel8.aarch64.rpm pgdg 4.4 37.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgtt_18-4.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgtt_18 pgtt_18-4.6-1PGDG.rhel9.8.x86_64.rpm pgdg 4.6 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgtt_18-4.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgtt_18 pgtt_18-4.5-1PGDG.rhel9.8.x86_64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgtt_18-4.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgtt_18 pgtt_18-4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 4.4 37.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgtt_18-4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgtt_18 pgtt_18-4.4-1PGDG.rhel9.x86_64.rpm pgdg 4.4 37.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgtt_18-4.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgtt_18 pgtt_18-4.6-1PGDG.rhel9.8.aarch64.rpm pgdg 4.6 39.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgtt_18-4.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgtt_18 pgtt_18-4.5-1PGDG.rhel9.8.aarch64.rpm pgdg 4.5 36.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgtt_18-4.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgtt_18 pgtt_18-4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 4.4 36.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgtt_18-4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgtt_18 pgtt_18-4.4-1PGDG.rhel9.aarch64.rpm pgdg 4.4 36.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgtt_18-4.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgtt_18 pgtt_18-4.6-1PGDG.rhel10.2.x86_64.rpm pgdg 4.6 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgtt_18-4.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgtt_18 pgtt_18-4.5-1PGDG.rhel10.2.x86_64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgtt_18-4.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgtt_18 pgtt_18-4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 4.4 37.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgtt_18-4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgtt_18 pgtt_18-4.4-1PGDG.rhel10.x86_64.rpm pgdg 4.4 38.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgtt_18-4.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgtt_18 pgtt_18-4.6-1PGDG.rhel10.2.aarch64.rpm pgdg 4.6 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgtt_18-4.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgtt_18 pgtt_18-4.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.5 37.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgtt_18-4.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgtt_18 pgtt_18-4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 4.4 36.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgtt_18-4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgtt_18 pgtt_18-4.4-1PGDG.rhel10.aarch64.rpm pgdg 4.4 37.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgtt_18-4.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg12+1_amd64.deb pgdg 4.5 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg12+1_amd64.deb pgdg 4.4 58.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg12+1_arm64.deb pgdg 4.5 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg12+1_arm64.deb pgdg 4.4 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg13+1_amd64.deb pgdg 4.5 58.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg13+1_amd64.deb pgdg 4.4 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg13+1_arm64.deb pgdg 4.5 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg13+1_arm64.deb pgdg 4.4 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 60.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg22.04+1_amd64.deb pgdg 4.5 54.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg22.04+1_amd64.deb pgdg 4.4 54.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg22.04+1_arm64.deb pgdg 4.5 52.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg22.04+1_arm64.deb pgdg 4.4 52.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 58.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg24.04+1_amd64.deb pgdg 4.5 53.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg24.04+1_amd64.deb pgdg 4.4 53.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg24.04+1_arm64.deb pgdg 4.5 52.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg24.04+1_arm64.deb pgdg 4.4 51.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg26.04+1_amd64.deb pgdg 4.6 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg26.04+1_amd64.deb pgdg 4.5 52.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg26.04+1_amd64.deb pgdg 4.4 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-1PIGSTY~resolute_amd64.deb pigsty 4.4 48.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-18-pgtt_4.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.6-1.pgdg26.04+1_arm64.deb pgdg 4.6 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.5-1.pgdg26.04+1_arm64.deb pgdg 4.5 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-2.pgdg26.04+1_arm64.deb pgdg 4.4 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-18-pgtt_4.4-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgtt postgresql-18-pgtt_4.4-1PIGSTY~resolute_arm64.deb pigsty 4.4 47.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-18-pgtt_4.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgtt_17 pgtt_17-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 42.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgtt_17-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgtt_17 pgtt_17-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 39.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgtt_17-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgtt_17 pgtt_17-4.4-1PGDG.rhel8.x86_64.rpm pgdg 4.4 38.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgtt_17-4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgtt_17 pgtt_17-4.3-1PGDG.rhel8.x86_64.rpm pgdg 4.3 38.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgtt_17-4.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgtt_17 pgtt_17-4.0-3PGDG.rhel8.x86_64.rpm pgdg 4.0 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgtt_17-4.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgtt_17 pgtt_17-4.0-2PGDG.rhel8.x86_64.rpm pgdg 4.0 36.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgtt_17-4.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgtt_17 pgtt_17-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgtt_17-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgtt_17 pgtt_17-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgtt_17-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgtt_17 pgtt_17-4.4-1PGDG.rhel8.aarch64.rpm pgdg 4.4 37.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgtt_17-4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgtt_17 pgtt_17-4.3-1PGDG.rhel8.aarch64.rpm pgdg 4.3 36.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgtt_17-4.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgtt_17 pgtt_17-4.0-3PGDG.rhel8.aarch64.rpm pgdg 4.0 35.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgtt_17-4.0-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgtt_17 pgtt_17-4.0-2PGDG.rhel8.aarch64.rpm pgdg 4.0 35.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgtt_17-4.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.6-1PGDG.rhel9.8.x86_64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.5-1PGDG.rhel9.8.x86_64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 4.4 37.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.4-1PGDG.rhel9.x86_64.rpm pgdg 4.4 37.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.3-1PGDG.rhel9.x86_64.rpm pgdg 4.3 37.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.0-3PGDG.rhel9.x86_64.rpm pgdg 4.0 36.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgtt_17 pgtt_17-4.0-2PGDG.rhel9.x86_64.rpm pgdg 4.0 36.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgtt_17-4.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.6-1PGDG.rhel9.8.aarch64.rpm pgdg 4.6 39.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.5-1PGDG.rhel9.8.aarch64.rpm pgdg 4.5 36.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 4.4 36.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.4-1PGDG.rhel9.aarch64.rpm pgdg 4.4 36.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.3-1PGDG.rhel9.aarch64.rpm pgdg 4.3 35.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.0-3PGDG.rhel9.aarch64.rpm pgdg 4.0 34.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.0-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgtt_17 pgtt_17-4.0-2PGDG.rhel9.aarch64.rpm pgdg 4.0 35.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgtt_17-4.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgtt_17 pgtt_17-4.6-1PGDG.rhel10.2.x86_64.rpm pgdg 4.6 40.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgtt_17-4.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgtt_17 pgtt_17-4.5-1PGDG.rhel10.2.x86_64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgtt_17-4.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgtt_17 pgtt_17-4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 4.4 37.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgtt_17-4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgtt_17 pgtt_17-4.4-1PGDG.rhel10.x86_64.rpm pgdg 4.4 38.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgtt_17-4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgtt_17 pgtt_17-4.3-1PGDG.rhel10.x86_64.rpm pgdg 4.3 37.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgtt_17-4.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgtt_17 pgtt_17-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 36.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgtt_17-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgtt_17 pgtt_17-4.6-1PGDG.rhel10.2.aarch64.rpm pgdg 4.6 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgtt_17-4.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgtt_17 pgtt_17-4.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.5 37.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgtt_17-4.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgtt_17 pgtt_17-4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 4.4 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgtt_17-4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgtt_17 pgtt_17-4.4-1PGDG.rhel10.aarch64.rpm pgdg 4.4 37.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgtt_17-4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgtt_17 pgtt_17-4.3-1PGDG.rhel10.aarch64.rpm pgdg 4.3 36.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgtt_17-4.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgtt_17 pgtt_17-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 35.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgtt_17-4.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg12+1_amd64.deb pgdg 4.5 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg12+1_amd64.deb pgdg 4.4 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 57.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-17-pgtt_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 64.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg12+1_arm64.deb pgdg 4.5 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg12+1_arm64.deb pgdg 4.4 56.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 56.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-17-pgtt_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg13+1_amd64.deb pgdg 4.5 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg13+1_amd64.deb pgdg 4.4 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 64.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg13+1_arm64.deb pgdg 4.5 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg13+1_arm64.deb pgdg 4.4 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg22.04+1_amd64.deb pgdg 4.5 61.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg22.04+1_amd64.deb pgdg 4.4 60.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 56.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-17-pgtt_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 64.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg22.04+1_arm64.deb pgdg 4.5 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg22.04+1_arm64.deb pgdg 4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 55.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-17-pgtt_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg24.04+1_amd64.deb pgdg 4.5 53.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg24.04+1_amd64.deb pgdg 4.4 53.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 49.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-17-pgtt_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg24.04+1_arm64.deb pgdg 4.5 51.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg24.04+1_arm64.deb pgdg 4.4 51.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 48.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-17-pgtt_4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg26.04+1_amd64.deb pgdg 4.6 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg26.04+1_amd64.deb pgdg 4.5 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg26.04+1_amd64.deb pgdg 4.4 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-1PIGSTY~resolute_amd64.deb pigsty 4.4 47.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-17-pgtt_4.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.6-1.pgdg26.04+1_arm64.deb pgdg 4.6 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.5-1.pgdg26.04+1_arm64.deb pgdg 4.5 51.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-2.pgdg26.04+1_arm64.deb pgdg 4.4 51.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-17-pgtt_4.4-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgtt postgresql-17-pgtt_4.4-1PIGSTY~resolute_arm64.deb pigsty 4.4 47.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-17-pgtt_4.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgtt_16 pgtt_16-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 42.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 39.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-4.4-1PGDG.rhel8.x86_64.rpm pgdg 4.4 38.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-4.3-1PGDG.rhel8.x86_64.rpm pgdg 4.3 38.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-4.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-4.0-3PGDG.rhel8.x86_64.rpm pgdg 4.0 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-4.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-4.0-1PGDG.rhel8.x86_64.rpm pgdg 4.0 36.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 33.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgtt_16 pgtt_16-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 33.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgtt_16-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 38.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-4.4-1PGDG.rhel8.aarch64.rpm pgdg 4.4 37.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-4.3-1PGDG.rhel8.aarch64.rpm pgdg 4.3 36.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-4.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-4.0-3PGDG.rhel8.aarch64.rpm pgdg 4.0 35.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-4.0-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-4.0-1PGDG.rhel8.aarch64.rpm pgdg 4.0 35.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgtt_16 pgtt_16-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 32.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgtt_16-3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.6-1PGDG.rhel9.8.x86_64.rpm pgdg 4.6 40.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.5-1PGDG.rhel9.8.x86_64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 4.4 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.4-1PGDG.rhel9.x86_64.rpm pgdg 4.4 37.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.3-1PGDG.rhel9.x86_64.rpm pgdg 4.3 37.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.0-3PGDG.rhel9.x86_64.rpm pgdg 4.0 36.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-4.0-1PGDG.rhel9.x86_64.rpm pgdg 4.0 36.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 33.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgtt_16 pgtt_16-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgtt_16-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.6-1PGDG.rhel9.8.aarch64.rpm pgdg 4.6 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.5-1PGDG.rhel9.8.aarch64.rpm pgdg 4.5 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 4.4 36.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.4-1PGDG.rhel9.aarch64.rpm pgdg 4.4 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.3-1PGDG.rhel9.aarch64.rpm pgdg 4.3 35.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.0-3PGDG.rhel9.aarch64.rpm pgdg 4.0 34.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.0-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-4.0-1PGDG.rhel9.aarch64.rpm pgdg 4.0 34.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgtt_16 pgtt_16-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 31.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgtt_16-3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgtt_16 pgtt_16-4.6-1PGDG.rhel10.2.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgtt_16-4.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgtt_16 pgtt_16-4.5-1PGDG.rhel10.2.x86_64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgtt_16-4.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgtt_16 pgtt_16-4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 4.4 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgtt_16-4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgtt_16 pgtt_16-4.4-1PGDG.rhel10.x86_64.rpm pgdg 4.4 38.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgtt_16-4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgtt_16 pgtt_16-4.3-1PGDG.rhel10.x86_64.rpm pgdg 4.3 37.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgtt_16-4.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgtt_16 pgtt_16-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 36.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgtt_16-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgtt_16 pgtt_16-4.6-1PGDG.rhel10.2.aarch64.rpm pgdg 4.6 40.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgtt_16-4.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgtt_16 pgtt_16-4.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.5 37.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgtt_16-4.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgtt_16 pgtt_16-4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 4.4 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgtt_16-4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgtt_16 pgtt_16-4.4-1PGDG.rhel10.aarch64.rpm pgdg 4.4 37.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgtt_16-4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgtt_16 pgtt_16-4.3-1PGDG.rhel10.aarch64.rpm pgdg 4.3 36.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgtt_16-4.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgtt_16 pgtt_16-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 35.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgtt_16-4.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg12+1_amd64.deb pgdg 4.5 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg12+1_amd64.deb pgdg 4.4 58.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 57.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-16-pgtt_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg12+1_arm64.deb pgdg 4.5 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg12+1_arm64.deb pgdg 4.4 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 56.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-16-pgtt_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg13+1_amd64.deb pgdg 4.5 58.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg13+1_amd64.deb pgdg 4.4 57.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg13+1_arm64.deb pgdg 4.5 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg13+1_arm64.deb pgdg 4.4 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 66.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg22.04+1_amd64.deb pgdg 4.5 61.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg22.04+1_amd64.deb pgdg 4.4 60.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 56.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-16-pgtt_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg22.04+1_arm64.deb pgdg 4.5 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg22.04+1_arm64.deb pgdg 4.4 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 55.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-16-pgtt_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg24.04+1_amd64.deb pgdg 4.5 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg24.04+1_amd64.deb pgdg 4.4 53.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 49.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-16-pgtt_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg24.04+1_arm64.deb pgdg 4.5 52.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg24.04+1_arm64.deb pgdg 4.4 52.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 48.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-16-pgtt_4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg26.04+1_amd64.deb pgdg 4.6 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg26.04+1_amd64.deb pgdg 4.5 52.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg26.04+1_amd64.deb pgdg 4.4 52.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-1PIGSTY~resolute_amd64.deb pigsty 4.4 48.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-16-pgtt_4.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.6-1.pgdg26.04+1_arm64.deb pgdg 4.6 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.5-1.pgdg26.04+1_arm64.deb pgdg 4.5 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-2.pgdg26.04+1_arm64.deb pgdg 4.4 51.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-16-pgtt_4.4-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgtt postgresql-16-pgtt_4.4-1PIGSTY~resolute_arm64.deb pigsty 4.4 47.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-16-pgtt_4.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgtt_15 pgtt_15-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 42.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-4.4-1PGDG.rhel8.x86_64.rpm pgdg 4.4 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-4.3-1PGDG.rhel8.x86_64.rpm pgdg 4.3 38.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-4.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-4.0-3PGDG.rhel8.x86_64.rpm pgdg 4.0 37.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-4.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-4.0-1PGDG.rhel8.x86_64.rpm pgdg 4.0 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 34.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 33.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-2.10-1.rhel8.x86_64.rpm pgdg 2.10 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-2.10-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgtt_15 pgtt_15-2.9-1.rhel8.x86_64.rpm pgdg 2.9 69.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgtt_15-2.9-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 38.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-4.4-1PGDG.rhel8.aarch64.rpm pgdg 4.4 37.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-4.3-1PGDG.rhel8.aarch64.rpm pgdg 4.3 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-4.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-4.0-3PGDG.rhel8.aarch64.rpm pgdg 4.0 35.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-4.0-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-4.0-1PGDG.rhel8.aarch64.rpm pgdg 4.0 35.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-2.10-1.rhel8.aarch64.rpm pgdg 2.10 31.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-2.10-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgtt_15 pgtt_15-2.9-1.rhel8.aarch64.rpm pgdg 2.9 67.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgtt_15-2.9-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.6-1PGDG.rhel9.8.x86_64.rpm pgdg 4.6 41.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.5-1PGDG.rhel9.8.x86_64.rpm pgdg 4.5 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 4.4 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.4-1PGDG.rhel9.x86_64.rpm pgdg 4.4 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.3-1PGDG.rhel9.x86_64.rpm pgdg 4.3 38.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.0-3PGDG.rhel9.x86_64.rpm pgdg 4.0 37.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-4.0-1PGDG.rhel9.x86_64.rpm pgdg 4.0 37.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 34.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 34.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-2.10-1.rhel9.x86_64.rpm pgdg 2.10 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-2.10-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgtt_15 pgtt_15-2.9-1.rhel9.x86_64.rpm pgdg 2.9 70.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgtt_15-2.9-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.6-1PGDG.rhel9.8.aarch64.rpm pgdg 4.6 40.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.5-1PGDG.rhel9.8.aarch64.rpm pgdg 4.5 37.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 4.4 37.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.4-1PGDG.rhel9.aarch64.rpm pgdg 4.4 37.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.3-1PGDG.rhel9.aarch64.rpm pgdg 4.3 36.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.0-3PGDG.rhel9.aarch64.rpm pgdg 4.0 35.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.0-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-4.0-1PGDG.rhel9.aarch64.rpm pgdg 4.0 35.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-2.10-1.rhel9.aarch64.rpm pgdg 2.10 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-2.10-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgtt_15 pgtt_15-2.9-1.rhel9.aarch64.rpm pgdg 2.9 69.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgtt_15-2.9-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pgtt_15 pgtt_15-4.6-1PGDG.rhel10.2.x86_64.rpm pgdg 4.6 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgtt_15-4.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgtt_15 pgtt_15-4.5-1PGDG.rhel10.2.x86_64.rpm pgdg 4.5 38.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgtt_15-4.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgtt_15 pgtt_15-4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 4.4 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgtt_15-4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgtt_15 pgtt_15-4.4-1PGDG.rhel10.x86_64.rpm pgdg 4.4 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgtt_15-4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgtt_15 pgtt_15-4.3-1PGDG.rhel10.x86_64.rpm pgdg 4.3 38.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgtt_15-4.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgtt_15 pgtt_15-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 37.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgtt_15-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgtt_15 pgtt_15-4.6-1PGDG.rhel10.2.aarch64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgtt_15-4.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgtt_15 pgtt_15-4.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.5 38.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgtt_15-4.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgtt_15 pgtt_15-4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 4.4 37.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgtt_15-4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgtt_15 pgtt_15-4.4-1PGDG.rhel10.aarch64.rpm pgdg 4.4 37.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgtt_15-4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgtt_15 pgtt_15-4.3-1PGDG.rhel10.aarch64.rpm pgdg 4.3 37.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgtt_15-4.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgtt_15 pgtt_15-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 36.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgtt_15-4.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg12+1_amd64.deb pgdg 4.5 58.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg12+1_amd64.deb pgdg 4.4 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 58.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-15-pgtt_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg12+1_arm64.deb pgdg 4.5 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg12+1_arm64.deb pgdg 4.4 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 56.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-15-pgtt_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg13+1_amd64.deb pgdg 4.5 58.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg13+1_amd64.deb pgdg 4.4 58.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg13+1_arm64.deb pgdg 4.5 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg13+1_arm64.deb pgdg 4.4 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg22.04+1_amd64.deb pgdg 4.5 61.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg22.04+1_amd64.deb pgdg 4.4 61.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 57.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-15-pgtt_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg22.04+1_arm64.deb pgdg 4.5 60.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg22.04+1_arm64.deb pgdg 4.4 60.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 56.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-15-pgtt_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg24.04+1_amd64.deb pgdg 4.5 54.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg24.04+1_amd64.deb pgdg 4.4 54.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 50.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-15-pgtt_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg24.04+1_arm64.deb pgdg 4.5 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg24.04+1_arm64.deb pgdg 4.4 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 49.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-15-pgtt_4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg26.04+1_amd64.deb pgdg 4.6 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg26.04+1_amd64.deb pgdg 4.5 54.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg26.04+1_amd64.deb pgdg 4.4 54.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-1PIGSTY~resolute_amd64.deb pigsty 4.4 49.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-15-pgtt_4.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.6-1.pgdg26.04+1_arm64.deb pgdg 4.6 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.5-1.pgdg26.04+1_arm64.deb pgdg 4.5 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-2.pgdg26.04+1_arm64.deb pgdg 4.4 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-15-pgtt_4.4-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgtt postgresql-15-pgtt_4.4-1PIGSTY~resolute_arm64.deb pigsty 4.4 48.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-15-pgtt_4.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgtt_14 pgtt_14-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 42.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 39.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-4.4-1PGDG.rhel8.x86_64.rpm pgdg 4.4 38.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-4.3-1PGDG.rhel8.x86_64.rpm pgdg 4.3 38.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-4.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-4.0-3PGDG.rhel8.x86_64.rpm pgdg 4.0 37.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-4.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-4.0-1PGDG.rhel8.x86_64.rpm pgdg 4.0 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-4.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-3.1-1PGDG.rhel8.x86_64.rpm pgdg 3.1 34.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 33.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-2.10-1.rhel8.x86_64.rpm pgdg 2.10 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-2.10-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-2.9-1.rhel8.x86_64.rpm pgdg 2.9 69.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-2.9-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-2.8-1.rhel8.x86_64.rpm pgdg 2.8 68.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-2.8-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgtt_14 pgtt_14-2.6-1.rhel8.x86_64.rpm pgdg 2.6 68.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgtt_14-2.6-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 38.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-4.4-1PGDG.rhel8.aarch64.rpm pgdg 4.4 37.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-4.3-1PGDG.rhel8.aarch64.rpm pgdg 4.3 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-4.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-4.0-3PGDG.rhel8.aarch64.rpm pgdg 4.0 35.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-4.0-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-4.0-1PGDG.rhel8.aarch64.rpm pgdg 4.0 35.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-4.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-3.1-1PGDG.rhel8.aarch64.rpm pgdg 3.1 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-2.10-1.rhel8.aarch64.rpm pgdg 2.10 31.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-2.10-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgtt_14 pgtt_14-2.9-1.rhel8.aarch64.rpm pgdg 2.9 67.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgtt_14-2.9-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.6-1PGDG.rhel9.8.x86_64.rpm pgdg 4.6 41.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.5-1PGDG.rhel9.8.x86_64.rpm pgdg 4.5 38.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 4.4 38.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.4-1PGDG.rhel9.x86_64.rpm pgdg 4.4 38.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.3-1PGDG.rhel9.x86_64.rpm pgdg 4.3 38.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.0-3PGDG.rhel9.x86_64.rpm pgdg 4.0 37.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-4.0-1PGDG.rhel9.x86_64.rpm pgdg 4.0 37.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-4.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-3.1-1PGDG.rhel9.x86_64.rpm pgdg 3.1 34.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 34.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-2.10-1.rhel9.x86_64.rpm pgdg 2.10 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-2.10-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-2.9-1.rhel9.x86_64.rpm pgdg 2.9 70.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-2.9-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgtt_14 pgtt_14-2.8-1.rhel9.x86_64.rpm pgdg 2.8 70.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgtt_14-2.8-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.6-1PGDG.rhel9.8.aarch64.rpm pgdg 4.6 40.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.5-1PGDG.rhel9.8.aarch64.rpm pgdg 4.5 37.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 4.4 37.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.4-1PGDG.rhel9.aarch64.rpm pgdg 4.4 37.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.3-1PGDG.rhel9.aarch64.rpm pgdg 4.3 36.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.0-3PGDG.rhel9.aarch64.rpm pgdg 4.0 35.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.0-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-4.0-1PGDG.rhel9.aarch64.rpm pgdg 4.0 35.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-4.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-3.1-1PGDG.rhel9.aarch64.rpm pgdg 3.1 32.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-2.10-1.rhel9.aarch64.rpm pgdg 2.10 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-2.10-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgtt_14 pgtt_14-2.9-1.rhel9.aarch64.rpm pgdg 2.9 69.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgtt_14-2.9-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgtt_14 pgtt_14-4.6-1PGDG.rhel10.2.x86_64.rpm pgdg 4.6 41.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgtt_14-4.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgtt_14 pgtt_14-4.5-1PGDG.rhel10.2.x86_64.rpm pgdg 4.5 38.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgtt_14-4.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgtt_14 pgtt_14-4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 4.4 38.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgtt_14-4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgtt_14 pgtt_14-4.4-1PGDG.rhel10.x86_64.rpm pgdg 4.4 38.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgtt_14-4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgtt_14 pgtt_14-4.3-1PGDG.rhel10.x86_64.rpm pgdg 4.3 38.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgtt_14-4.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgtt_14 pgtt_14-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 37.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgtt_14-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgtt_14 pgtt_14-4.6-1PGDG.rhel10.2.aarch64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgtt_14-4.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgtt_14 pgtt_14-4.5-1PGDG.rhel10.2.aarch64.rpm pgdg 4.5 37.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgtt_14-4.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgtt_14 pgtt_14-4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 4.4 37.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgtt_14-4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgtt_14 pgtt_14-4.4-1PGDG.rhel10.aarch64.rpm pgdg 4.4 37.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgtt_14-4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgtt_14 pgtt_14-4.3-1PGDG.rhel10.aarch64.rpm pgdg 4.3 37.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgtt_14-4.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgtt_14 pgtt_14-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 36.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgtt_14-4.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg12+1_amd64.deb pgdg 4.5 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg12+1_amd64.deb pgdg 4.4 58.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.0-1PIGSTY~bookworm_amd64.deb pigsty 4.0 57.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-14-pgtt_4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg12+1_arm64.deb pgdg 4.5 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg12+1_arm64.deb pgdg 4.4 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.0-1PIGSTY~bookworm_arm64.deb pigsty 4.0 56.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtt/postgresql-14-pgtt_4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg13+1_amd64.deb pgdg 4.5 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg13+1_amd64.deb pgdg 4.4 58.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg13+1_arm64.deb pgdg 4.5 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg13+1_arm64.deb pgdg 4.4 57.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg22.04+1_amd64.deb pgdg 4.5 61.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg22.04+1_amd64.deb pgdg 4.4 61.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.0-1PIGSTY~jammy_amd64.deb pigsty 4.0 57.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-14-pgtt_4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 65.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg22.04+1_arm64.deb pgdg 4.5 60.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg22.04+1_arm64.deb pgdg 4.4 60.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.0-1PIGSTY~jammy_arm64.deb pigsty 4.0 56.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtt/postgresql-14-pgtt_4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 59.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg24.04+1_amd64.deb pgdg 4.5 54.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg24.04+1_amd64.deb pgdg 4.4 54.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.0-1PIGSTY~noble_amd64.deb pigsty 4.0 50.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-14-pgtt_4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg24.04+1_arm64.deb pgdg 4.5 52.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg24.04+1_arm64.deb pgdg 4.4 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.0-1PIGSTY~noble_arm64.deb pigsty 4.0 49.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtt/postgresql-14-pgtt_4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg26.04+1_amd64.deb pgdg 4.6 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg26.04+1_amd64.deb pgdg 4.5 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg26.04+1_amd64.deb pgdg 4.4 54.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-1PIGSTY~resolute_amd64.deb pigsty 4.4 49.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-14-pgtt_4.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.6-1.pgdg26.04+1_arm64.deb pgdg 4.6 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.5-1.pgdg26.04+1_arm64.deb pgdg 4.5 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-2.pgdg26.04+1_arm64.deb pgdg 4.4 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgtt/postgresql-14-pgtt_4.4-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgtt postgresql-14-pgtt_4.4-1PIGSTY~resolute_arm64.deb pigsty 4.4 48.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtt/postgresql-14-pgtt_4.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgtt` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgtt;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgtt -v 18  # PG 18
pig ext install -y pgtt -v 17  # PG 17
pig ext install -y pgtt -v 16  # PG 16
pig ext install -y pgtt -v 15  # PG 15
pig ext install -y pgtt -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgtt_18       # PG 18
dnf install -y pgtt_17       # PG 17
dnf install -y pgtt_16       # PG 16
dnf install -y pgtt_15       # PG 15
dnf install -y pgtt_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgtt   # PG 18
apt install -y postgresql-17-pgtt   # PG 17
apt install -y postgresql-16-pgtt   # PG 16
apt install -y postgresql-15-pgtt   # PG 15
apt install -y postgresql-14-pgtt   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgtt';
```


**Create Extension**:

```sql
CREATE EXTENSION pgtt;
```




## Usage

> [pgtt: Extension to add Global Temporary Tables feature to PostgreSQL](https://github.com/darold/pgtt)

### Creating a Global Temporary Table

```sql
CREATE EXTENSION pgtt;

-- ON COMMIT PRESERVE ROWS: data persists across transactions within a session
CREATE GLOBAL TEMPORARY TABLE test_gtt (
    id integer,
    lbl text
) ON COMMIT PRESERVE ROWS;

-- ON COMMIT DELETE ROWS: data is deleted at transaction commit
CREATE GLOBAL TEMPORARY TABLE session_data (
    id integer,
    value text
) ON COMMIT DELETE ROWS;
```

The `GLOBAL` keyword can also be used as a comment to avoid warnings:

```sql
CREATE /*GLOBAL*/ TEMPORARY TABLE test_gtt (
    LIKE other_table INCLUDING DEFAULTS INCLUDING CONSTRAINTS INCLUDING INDEXES
) ON COMMIT PRESERVE ROWS;
```

### CREATE AS Form

```sql
CREATE /*GLOBAL*/ TEMPORARY TABLE gtt_copy
AS SELECT * FROM source_table WITH DATA;
```

### Using Global Temporary Tables

```sql
INSERT INTO test_gtt VALUES (1, 'one'), (2, 'two');
SELECT * FROM test_gtt;  -- visible only in current session
```

### Creating Indexes

```sql
CREATE INDEX ON test_gtt (id);
```

### Constraints

All constraints except FOREIGN KEYS are supported:

```sql
CREATE GLOBAL TEMPORARY TABLE t2 (
    c1 serial PRIMARY KEY,
    c2 VARCHAR(50) UNIQUE NOT NULL,
    c3 boolean DEFAULT false
);
```

### Dropping

```sql
DROP TABLE test_gtt;  -- can be dropped even while used by other sessions
```

### Configuration

```sql
SET pgtt.enabled TO off;   -- disable GTT rerouting
SET pgtt.enabled TO on;    -- re-enable GTT rerouting
```

### Key Behaviors

- GTT content is session-local; other sessions cannot see your data
- The table structure is persistent (visible to all users), but data is per-session
- Requires loading via `session_preload_libraries = 'pgtt'`
- Partitioning is not supported on GTTs
