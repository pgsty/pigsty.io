---
title: "pg_cron"
linkTitle: "pg_cron"
description: "Job scheduler for PostgreSQL"
weight: 1070
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/citusdata/pg_cron">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">citusdata/pg_cron</div>
    <div class="ext-card__desc">https://github.com/citusdata/pg_cron</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_cron`**](/ext/e/pg_cron) | `1.6.8` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1070  | [**`pg_cron`**](/ext/e/pg_cron) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table .wide .expand}

| **Related** | [`pgagent`](/ext/e/pgagent) [`pg_task`](/ext/e/pg_task) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_dispatch`](/ext/e/pg_dispatch) [`pg_later`](/ext/e/pg_later) [`pg_jobmon`](/ext/e/pg_jobmon) [`pg_durable`](/ext/e/pg_durable) [`pg_background`](/ext/e/pg_background) [`pg_when`](/ext/e/pg_when) [`cron_utils`](/ext/e/cron_utils) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) [`pg_dispatch`](/ext/e/pg_dispatch) [`pgfr_record`](/ext/e/pgfr_record) [`pglock`](/ext/e/pglock) [`pgmb`](/ext/e/pgmb) [`timeseries`](/ext/e/timeseries) [`vectorize`](/ext/e/vectorize) |
{.ext-table .ext-table--rel}


> require cron.database_name


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6.8` | {{< pgvers "19,18,17,16,15" >}} | `pg_cron` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6.8` | {{< pgvers "19,18,17,16,15" >}} | `pg_cron_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6.8` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-cron` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 5 | AVAIL PGDG 1.6.8 9 | AVAIL PGDG 1.6.8 12 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 5 | AVAIL PGDG 1.6.8 9 | AVAIL PGDG 1.6.8 12 |
| el9.x86_64 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 |
| el9.aarch64 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 |
| el10.x86_64 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 1 |
| el10.aarch64 | AVAIL PGDG 1.6.8 1 | AVAIL PGDG 1.6.8 5 | AVAIL PGDG 1.6.8 6 | AVAIL PGDG 1.6.8 6 | AVAIL PGDG 1.6.8 6 |
| d12.x86_64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| d12.aarch64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| d13.x86_64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| d13.aarch64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| u22.x86_64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| u22.aarch64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| u24.x86_64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| u24.aarch64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| u26.x86_64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
| u26.aarch64 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 | AVAIL PGDG 1.6.8 3 |
@ el9.x86_64 19 pg_cron_19 pg_cron_19-1.6.8-4PGDG.rhel9.9.x86_64.rpm pgdg 1.6.8 46.7KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pg_cron_19-1.6.8-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pg_cron_19 pg_cron_19-1.6.8-4PGDG.rhel9.9.aarch64.rpm pgdg 1.6.8 45.6KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pg_cron_19-1.6.8-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pg_cron_19 pg_cron_19-1.6.8-4PGDG.rhel10.3.x86_64.rpm pgdg 1.6.8 48.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pg_cron_19-1.6.8-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pg_cron_19 pg_cron_19-1.6.8-4PGDG.rhel10.3.aarch64.rpm pgdg 1.6.8 47.2KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pg_cron_19-1.6.8-4PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg12+3_amd64.deb pgdg 1.6.8 91.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg12+3_amd64.deb
@ d12.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg12+2_amd64.deb pgdg 1.6.8 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg12+2_amd64.deb
@ d12.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg12+1_amd64.deb pgdg 1.6.8 91.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg12+1_amd64.deb
@ d12.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg12+3_arm64.deb pgdg 1.6.8 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg12+3_arm64.deb
@ d12.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg12+2_arm64.deb pgdg 1.6.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg12+2_arm64.deb
@ d12.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg12+1_arm64.deb pgdg 1.6.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg12+1_arm64.deb
@ d13.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg13+3_amd64.deb pgdg 1.6.8 91.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg13+3_amd64.deb
@ d13.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg13+2_amd64.deb pgdg 1.6.8 91.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg13+2_amd64.deb
@ d13.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg13+1_amd64.deb pgdg 1.6.8 91.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg13+1_amd64.deb
@ d13.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg13+3_arm64.deb pgdg 1.6.8 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg13+3_arm64.deb
@ d13.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg13+2_arm64.deb pgdg 1.6.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg13+2_arm64.deb
@ d13.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg13+1_arm64.deb pgdg 1.6.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg13+1_arm64.deb
@ u22.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg22.04+3_amd64.deb pgdg 1.6.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg22.04+3_amd64.deb
@ u22.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg22.04+2_amd64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg22.04+1_amd64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg22.04+3_arm64.deb pgdg 1.6.8 86.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg22.04+3_arm64.deb
@ u22.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg22.04+2_arm64.deb pgdg 1.6.8 87.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg22.04+1_arm64.deb pgdg 1.6.8 87.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg24.04+3_amd64.deb pgdg 1.6.8 88.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg24.04+3_amd64.deb
@ u24.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg24.04+2_amd64.deb pgdg 1.6.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg24.04+1_amd64.deb pgdg 1.6.8 88.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg24.04+3_arm64.deb pgdg 1.6.8 86.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg24.04+3_arm64.deb
@ u24.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg24.04+2_arm64.deb pgdg 1.6.8 85.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg24.04+1_arm64.deb pgdg 1.6.8 85.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg26.04+3_amd64.deb pgdg 1.6.8 87.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg26.04+3_amd64.deb
@ u26.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg26.04+2_amd64.deb pgdg 1.6.8 87.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg26.04+1_amd64.deb pgdg 1.6.8 87.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg26.04+3_arm64.deb pgdg 1.6.8 84.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg26.04+3_arm64.deb
@ u26.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg26.04+2_arm64.deb pgdg 1.6.8 84.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 19 postgresql-19-cron postgresql-19-cron_1.6.8-1.pgdg26.04+1_arm64.deb pgdg 1.6.8 84.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-19-cron_1.6.8-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_cron_18-1.6.8-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_cron_18 pg_cron_18-1.6.8-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_cron_18-1.6.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_cron_18 pg_cron_18-1.6.7-1PGDG.rhel8.x86_64.rpm pgdg 1.6.7 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_cron_18-1.6.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_cron_18-1.6.8-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_cron_18 pg_cron_18-1.6.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_cron_18-1.6.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_cron_18 pg_cron_18-1.6.7-1PGDG.rhel8.aarch64.rpm pgdg 1.6.7 44.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_cron_18-1.6.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel9.9.x86_64.rpm pgdg 1.6.8 46.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_cron_18-1.6.8-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel9.9.aarch64.rpm pgdg 1.6.8 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_cron_18-1.6.8-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel10.3.x86_64.rpm pgdg 1.6.8 49.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_cron_18-1.6.8-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel10.3.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_cron_18-1.6.8-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_cron_18 pg_cron_18-1.6.8-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_cron_18-1.6.8-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_cron_18 pg_cron_18-1.6.8-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 46.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_cron_18-1.6.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_cron_18 pg_cron_18-1.6.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.6.7 44.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_cron_18-1.6.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_cron_18 pg_cron_18-1.6.7-1PGDG.rhel10.aarch64.rpm pgdg 1.6.7 44.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_cron_18-1.6.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg12+3_amd64.deb pgdg 1.6.8 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg12+3_amd64.deb
@ d12.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg12+2_amd64.deb pgdg 1.6.8 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg12+1_amd64.deb pgdg 1.6.8 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg12+3_arm64.deb pgdg 1.6.8 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg12+3_arm64.deb
@ d12.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg12+2_arm64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg12+1_arm64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg13+3_amd64.deb pgdg 1.6.8 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg13+3_amd64.deb
@ d13.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg13+2_amd64.deb pgdg 1.6.8 91.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg13+1_amd64.deb pgdg 1.6.8 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg13+3_arm64.deb pgdg 1.6.8 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg13+3_arm64.deb
@ d13.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg13+2_arm64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg13+1_arm64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg22.04+3_amd64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg22.04+3_amd64.deb
@ u22.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg22.04+2_amd64.deb pgdg 1.6.8 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg22.04+1_amd64.deb pgdg 1.6.8 90.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg22.04+3_arm64.deb pgdg 1.6.8 87.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg22.04+3_arm64.deb
@ u22.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg22.04+2_arm64.deb pgdg 1.6.8 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg22.04+1_arm64.deb pgdg 1.6.8 88.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg24.04+3_amd64.deb pgdg 1.6.8 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg24.04+3_amd64.deb
@ u24.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg24.04+2_amd64.deb pgdg 1.6.8 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg24.04+1_amd64.deb pgdg 1.6.8 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg24.04+3_arm64.deb pgdg 1.6.8 86.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg24.04+3_arm64.deb
@ u24.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg24.04+2_arm64.deb pgdg 1.6.8 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg24.04+1_arm64.deb pgdg 1.6.8 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg26.04+3_amd64.deb pgdg 1.6.8 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg26.04+3_amd64.deb
@ u26.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg26.04+2_amd64.deb pgdg 1.6.8 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg26.04+1_amd64.deb pgdg 1.6.8 87.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg26.04+3_arm64.deb pgdg 1.6.8 85.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg26.04+3_arm64.deb
@ u26.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg26.04+2_arm64.deb pgdg 1.6.8 85.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-cron postgresql-18-cron_1.6.8-1.pgdg26.04+1_arm64.deb pgdg 1.6.8 85.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-18-cron_1.6.8-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_cron_17-1.6.8-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_cron_17 pg_cron_17-1.6.8-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_cron_17-1.6.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_cron_17 pg_cron_17-1.6.7-1PGDG.rhel8.x86_64.rpm pgdg 1.6.7 45.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_cron_17-1.6.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_cron_17 pg_cron_17-1.6.5-1PGDG.rhel8.x86_64.rpm pgdg 1.6.5 45.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_cron_17-1.6.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_cron_17 pg_cron_17-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_cron_17-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_cron_17-1.6.8-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_cron_17 pg_cron_17-1.6.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_cron_17-1.6.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_cron_17 pg_cron_17-1.6.7-1PGDG.rhel8.aarch64.rpm pgdg 1.6.7 44.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_cron_17-1.6.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_cron_17 pg_cron_17-1.6.5-1PGDG.rhel8.aarch64.rpm pgdg 1.6.5 43.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_cron_17-1.6.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_cron_17 pg_cron_17-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_cron_17-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel9.9.x86_64.rpm pgdg 1.6.8 46.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_cron_17-1.6.8-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel9.9.aarch64.rpm pgdg 1.6.8 45.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_cron_17-1.6.8-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel10.3.x86_64.rpm pgdg 1.6.8 49.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_cron_17-1.6.8-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel10.3.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_cron_17-1.6.8-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_cron_17 pg_cron_17-1.6.8-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_cron_17-1.6.8-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_cron_17 pg_cron_17-1.6.8-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 46.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_cron_17-1.6.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_cron_17 pg_cron_17-1.6.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.6.7 44.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_cron_17-1.6.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_cron_17 pg_cron_17-1.6.7-1PGDG.rhel10.aarch64.rpm pgdg 1.6.7 44.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_cron_17-1.6.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_cron_17 pg_cron_17-1.6.5-1PGDG.rhel10.aarch64.rpm pgdg 1.6.5 44.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_cron_17-1.6.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg12+3_amd64.deb pgdg 1.6.8 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg12+3_amd64.deb
@ d12.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg12+2_amd64.deb pgdg 1.6.8 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg12+1_amd64.deb pgdg 1.6.8 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg12+3_arm64.deb pgdg 1.6.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg12+3_arm64.deb
@ d12.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg12+2_arm64.deb pgdg 1.6.8 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg12+1_arm64.deb pgdg 1.6.8 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg13+3_amd64.deb pgdg 1.6.8 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg13+3_amd64.deb
@ d13.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg13+2_amd64.deb pgdg 1.6.8 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg13+1_amd64.deb pgdg 1.6.8 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg13+3_arm64.deb pgdg 1.6.8 90.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg13+3_arm64.deb
@ d13.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg13+2_arm64.deb pgdg 1.6.8 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg13+1_arm64.deb pgdg 1.6.8 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg22.04+3_amd64.deb pgdg 1.6.8 101.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg22.04+3_amd64.deb
@ u22.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg22.04+2_amd64.deb pgdg 1.6.8 102.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg22.04+1_amd64.deb pgdg 1.6.8 102.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg22.04+3_arm64.deb pgdg 1.6.8 99.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg22.04+3_arm64.deb
@ u22.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg22.04+2_arm64.deb pgdg 1.6.8 99.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg22.04+1_arm64.deb pgdg 1.6.8 99.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg24.04+3_amd64.deb pgdg 1.6.8 89.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg24.04+3_amd64.deb
@ u24.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg24.04+2_amd64.deb pgdg 1.6.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg24.04+1_amd64.deb pgdg 1.6.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg24.04+3_arm64.deb pgdg 1.6.8 86.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg24.04+3_arm64.deb
@ u24.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg24.04+2_arm64.deb pgdg 1.6.8 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg24.04+1_arm64.deb pgdg 1.6.8 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg26.04+3_amd64.deb pgdg 1.6.8 88.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg26.04+3_amd64.deb
@ u26.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg26.04+2_amd64.deb pgdg 1.6.8 88.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg26.04+1_amd64.deb pgdg 1.6.8 87.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg26.04+3_arm64.deb pgdg 1.6.8 85.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg26.04+3_arm64.deb
@ u26.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg26.04+2_arm64.deb pgdg 1.6.8 85.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-cron postgresql-17-cron_1.6.8-1.pgdg26.04+1_arm64.deb pgdg 1.6.8 85.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-17-cron_1.6.8-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.8-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.8-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.7-1PGDG.rhel8.x86_64.rpm pgdg 1.6.7 45.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.5-1PGDG.rhel8.x86_64.rpm pgdg 1.6.5 45.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 44.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 44.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 43.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 43.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_cron_16 pg_cron_16-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 43.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_cron_16-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.8-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.7-1PGDG.rhel8.aarch64.rpm pgdg 1.6.7 44.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.5-1PGDG.rhel8.aarch64.rpm pgdg 1.6.5 43.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 42.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 42.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 42.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_cron_16 pg_cron_16-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_cron_16-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel9.9.x86_64.rpm pgdg 1.6.8 46.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_cron_16-1.6.8-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel9.9.aarch64.rpm pgdg 1.6.8 45.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_cron_16-1.6.8-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel10.3.x86_64.rpm pgdg 1.6.8 49.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_cron_16-1.6.8-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel10.3.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_cron_16-1.6.8-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_cron_16 pg_cron_16-1.6.8-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 47.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_cron_16-1.6.8-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_cron_16 pg_cron_16-1.6.8-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 46.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_cron_16-1.6.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_cron_16 pg_cron_16-1.6.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.6.7 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_cron_16-1.6.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_cron_16 pg_cron_16-1.6.7-1PGDG.rhel10.aarch64.rpm pgdg 1.6.7 44.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_cron_16-1.6.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_cron_16 pg_cron_16-1.6.5-1PGDG.rhel10.aarch64.rpm pgdg 1.6.5 44.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_cron_16-1.6.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg12+3_amd64.deb pgdg 1.6.8 92.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg12+3_amd64.deb
@ d12.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg12+2_amd64.deb pgdg 1.6.8 91.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg12+1_amd64.deb pgdg 1.6.8 91.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg12+3_arm64.deb pgdg 1.6.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg12+3_arm64.deb
@ d12.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg12+2_arm64.deb pgdg 1.6.8 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg12+1_arm64.deb pgdg 1.6.8 89.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg13+3_amd64.deb pgdg 1.6.8 92.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg13+3_amd64.deb
@ d13.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg13+2_amd64.deb pgdg 1.6.8 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg13+1_amd64.deb pgdg 1.6.8 92.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg13+3_arm64.deb pgdg 1.6.8 90.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg13+3_arm64.deb
@ d13.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg13+2_arm64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg13+1_arm64.deb pgdg 1.6.8 89.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg22.04+3_amd64.deb pgdg 1.6.8 101.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg22.04+3_amd64.deb
@ u22.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg22.04+2_amd64.deb pgdg 1.6.8 102.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg22.04+1_amd64.deb pgdg 1.6.8 102.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg22.04+3_arm64.deb pgdg 1.6.8 99.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg22.04+3_arm64.deb
@ u22.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg22.04+2_arm64.deb pgdg 1.6.8 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg22.04+1_arm64.deb pgdg 1.6.8 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg24.04+3_amd64.deb pgdg 1.6.8 89.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg24.04+3_amd64.deb
@ u24.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg24.04+2_amd64.deb pgdg 1.6.8 89.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg24.04+1_amd64.deb pgdg 1.6.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg24.04+3_arm64.deb pgdg 1.6.8 86.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg24.04+3_arm64.deb
@ u24.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg24.04+2_arm64.deb pgdg 1.6.8 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg24.04+1_arm64.deb pgdg 1.6.8 86.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg26.04+3_amd64.deb pgdg 1.6.8 88.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg26.04+3_amd64.deb
@ u26.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg26.04+2_amd64.deb pgdg 1.6.8 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg26.04+1_amd64.deb pgdg 1.6.8 87.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg26.04+3_arm64.deb pgdg 1.6.8 85.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg26.04+3_arm64.deb
@ u26.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg26.04+2_arm64.deb pgdg 1.6.8 85.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-cron postgresql-16-cron_1.6.8-1.pgdg26.04+1_arm64.deb pgdg 1.6.8 85.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-16-cron_1.6.8-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.8-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.8-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6.8 49.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.8-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.7-1PGDG.rhel8.x86_64.rpm pgdg 1.6.7 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.5-1PGDG.rhel8.x86_64.rpm pgdg 1.6.5 45.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 44.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 44.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 44.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 43.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.5.2-1.rhel8.x86_64.rpm pgdg 1.5.2 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.5.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.5.1-1.rhel8.x86_64.rpm pgdg 1.5.1 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.5.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_cron_15 pg_cron_15-1.4.2-1.rhel8.x86_64.rpm pgdg 1.4.2 109.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_cron_15-1.4.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 48.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.8-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.8-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6.8 47.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.8-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.7-1PGDG.rhel8.aarch64.rpm pgdg 1.6.7 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.5-1PGDG.rhel8.aarch64.rpm pgdg 1.6.5 44.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 42.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 42.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.5.2-1.rhel8.aarch64.rpm pgdg 1.5.2 41.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.5.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.5.1-1.rhel8.aarch64.rpm pgdg 1.5.1 41.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.5.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_cron_15 pg_cron_15-1.4.2-1.rhel8.aarch64.rpm pgdg 1.4.2 106.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_cron_15-1.4.2-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel9.9.x86_64.rpm pgdg 1.6.8 48.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_cron_15-1.6.8-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel9.9.aarch64.rpm pgdg 1.6.8 47.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_cron_15-1.6.8-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel10.3.x86_64.rpm pgdg 1.6.8 48.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_cron_15-1.6.8-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel10.3.aarch64.rpm pgdg 1.6.8 47.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_cron_15-1.6.8-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_cron_15 pg_cron_15-1.6.8-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 47.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_cron_15-1.6.8-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_cron_15 pg_cron_15-1.6.8-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6.8 47.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_cron_15-1.6.8-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_cron_15 pg_cron_15-1.6.7-5PGDG.rhel10.2.aarch64.rpm pgdg 1.6.7 44.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_cron_15-1.6.7-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_cron_15 pg_cron_15-1.6.7-1PGDG.rhel10.aarch64.rpm pgdg 1.6.7 45.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_cron_15-1.6.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_cron_15 pg_cron_15-1.6.5-1PGDG.rhel10.aarch64.rpm pgdg 1.6.5 45.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_cron_15-1.6.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg12+3_amd64.deb pgdg 1.6.8 92.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg12+3_amd64.deb
@ d12.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg12+2_amd64.deb pgdg 1.6.8 93.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg12+1_amd64.deb pgdg 1.6.8 93.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg12+3_arm64.deb pgdg 1.6.8 90.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg12+3_arm64.deb
@ d12.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg12+2_arm64.deb pgdg 1.6.8 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg12+1_arm64.deb pgdg 1.6.8 91.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg13+3_amd64.deb pgdg 1.6.8 92.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg13+3_amd64.deb
@ d13.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg13+2_amd64.deb pgdg 1.6.8 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg13+1_amd64.deb pgdg 1.6.8 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg13+3_arm64.deb pgdg 1.6.8 90.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg13+3_arm64.deb
@ d13.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg13+2_arm64.deb pgdg 1.6.8 91.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg13+1_arm64.deb pgdg 1.6.8 91.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg22.04+3_amd64.deb pgdg 1.6.8 102.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg22.04+3_amd64.deb
@ u22.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg22.04+2_amd64.deb pgdg 1.6.8 104.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg22.04+1_amd64.deb pgdg 1.6.8 104.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg22.04+3_arm64.deb pgdg 1.6.8 100.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg22.04+3_arm64.deb
@ u22.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg22.04+2_arm64.deb pgdg 1.6.8 102.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg22.04+1_arm64.deb pgdg 1.6.8 101.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg24.04+3_amd64.deb pgdg 1.6.8 89.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg24.04+3_amd64.deb
@ u24.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg24.04+2_amd64.deb pgdg 1.6.8 90.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg24.04+1_amd64.deb pgdg 1.6.8 90.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg24.04+3_arm64.deb pgdg 1.6.8 87.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg24.04+3_arm64.deb
@ u24.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg24.04+2_arm64.deb pgdg 1.6.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg24.04+1_arm64.deb pgdg 1.6.8 88.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg26.04+3_amd64.deb pgdg 1.6.8 87.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg26.04+3_amd64.deb
@ u26.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg26.04+2_amd64.deb pgdg 1.6.8 88.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg26.04+1_amd64.deb pgdg 1.6.8 88.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg26.04+3_arm64.deb pgdg 1.6.8 85.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg26.04+3_arm64.deb
@ u26.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg26.04+2_arm64.deb pgdg 1.6.8 86.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-cron postgresql-15-cron_1.6.8-1.pgdg26.04+1_arm64.deb pgdg 1.6.8 86.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-cron/postgresql-15-cron_1.6.8-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_cron` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_cron;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_cron -v 19  # PG 19
pig ext install -y pg_cron -v 18  # PG 18
pig ext install -y pg_cron -v 17  # PG 17
pig ext install -y pg_cron -v 16  # PG 16
pig ext install -y pg_cron -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_cron_19       # PG 19
dnf install -y pg_cron_18       # PG 18
dnf install -y pg_cron_17       # PG 17
dnf install -y pg_cron_16       # PG 16
dnf install -y pg_cron_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-cron   # PG 19
apt install -y postgresql-18-cron   # PG 18
apt install -y postgresql-17-cron   # PG 17
apt install -y postgresql-16-cron   # PG 16
apt install -y postgresql-15-cron   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_cron';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_cron;
```




## Usage

beware that `cron.database` has to be set before adding to `shared_preload_libraries`

```sql
-- Delete old data on Saturday at 3:30am (GMT)
SELECT cron.schedule('30 3 * * 6', $$DELETE FROM events WHERE event_time < now() - interval '1 week'$$);
 schedule
----------
       42

-- Vacuum every day at 10:00am (GMT)
SELECT cron.schedule('nightly-vacuum', '0 10 * * *', 'VACUUM');
 schedule
----------
       43

-- Change to vacuum at 3:00am (GMT)
SELECT cron.schedule('nightly-vacuum', '0 3 * * *', 'VACUUM');
 schedule
----------
       43

-- Stop scheduling jobs
SELECT cron.unschedule('nightly-vacuum' );
 unschedule 
------------
 t

SELECT cron.unschedule(42);
 unschedule
------------
          t

-- Vacuum every Sunday at 4:00am (GMT) in a database other than the one pg_cron is installed in
SELECT cron.schedule_in_database('weekly-vacuum', '0 4 * * 0', 'VACUUM', 'some_other_database');
 schedule
----------
       44

-- Call a stored procedure every 5 seconds
SELECT cron.schedule('process-updates', '5 seconds', 'CALL process_updates()');

-- Process payroll at 12:00 of the last day of each month
SELECT cron.schedule('process-payroll', '0 12 $ * *', 'CALL process_payroll()');
```

Crontab format:

```text
 ┌───────────── min (0 - 59)
 │ ┌────────────── hour (0 - 23)
 │ │ ┌─────────────── day of month (1 - 31) or last day of the month ($)
 │ │ │ ┌──────────────── month (1 - 12)
 │ │ │ │ ┌───────────────── day of week (0 - 6) (0 to 6 are Sunday to
 │ │ │ │ │                  Saturday, or use names; 7 is also Sunday)
 │ │ │ │ │
 │ │ │ │ │
 * * * * *
```
