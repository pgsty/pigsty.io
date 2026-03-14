---
title: "pglogical"
linkTitle: "pglogical"
description: "PostgreSQL Logical Replication"
weight: 9500
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/2ndQuadrant/pglogical">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">2ndQuadrant/pglogical</div>
    <div class="ext-card__desc">https://github.com/2ndQuadrant/pglogical</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pglogical-2.4.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglogical-2.4.6.tar.gz</div>
    <div class="ext-card__desc">pglogical-2.4.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglogical`**](/ext/e/pglogical) | `2.4.6` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9500  | [**`pglogical`**](/ext/e/pglogical) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglogical` |
| 9501  | [**`pglogical_origin`**](/ext/e/pglogical_origin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglogical_origin` |
{.ext-table}

| **Related** | [`decoderbufs`](/ext/e/decoderbufs) [`wal2json`](/ext/e/wal2json) [`dblink`](/ext/e/dblink) [`postgres_fdw`](/ext/e/postgres_fdw) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`pgactive`](/ext/e/pgactive) [`repmgr`](/ext/e/repmgr) [`kafka_fdw`](/ext/e/kafka_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`pglogical_ticker`](/ext/e/pglogical_ticker) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.6` | {{< pgvers "18,17,16,15,14" >}} | `pglogical` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.6` | {{< pgvers "18,17,16,15,14" >}} | `pglogical_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglogical` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.4 1 | AVAIL PGDG 2.4.3 2 | AVAIL PGDG 2.4.3 4 |
| el8.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.4 1 | AVAIL PGDG 2.4.3 2 | AVAIL PGDG 2.4.3 2 |
| el9.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.4 1 | AVAIL PGDG 2.4.3 2 | AVAIL PGDG 2.4.3 3 |
| el9.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.4 1 | AVAIL PGDG 2.4.3 2 | AVAIL PGDG 2.4.3 2 |
| el10.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.5 1 |
| el10.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.5 1 | AVAIL PGDG 2.4.5 1 |
| d12.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| d12.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| d13.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| d13.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| u22.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| u22.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| u24.x86_64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
| u24.aarch64 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 | AVAIL PGDG 2.4.6 1 |
@ el8.x86_64 18 pglogical_18 pglogical_18-2.4.6-1PGDG.rhel8.x86_64.rpm pgdg 2.4.6 154.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pglogical_18-2.4.6-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pglogical_18 pglogical_18-2.4.6-1PGDG.rhel8.aarch64.rpm pgdg 2.4.6 148.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pglogical_18-2.4.6-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pglogical_18 pglogical_18-2.4.6-1PGDG.rhel9.x86_64.rpm pgdg 2.4.6 146.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pglogical_18-2.4.6-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pglogical_18 pglogical_18-2.4.6-1PGDG.rhel9.aarch64.rpm pgdg 2.4.6 143.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pglogical_18-2.4.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pglogical_18 pglogical_18-2.4.6-1PGDG.rhel10.x86_64.rpm pgdg 2.4.6 148.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pglogical_18-2.4.6-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pglogical_18 pglogical_18-2.4.6-1PGDG.rhel10.aarch64.rpm pgdg 2.4.6 145.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pglogical_18-2.4.6-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg12+1_amd64.deb pgdg 2.4.6 345.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg12+1_arm64.deb pgdg 2.4.6 336.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg13+1_amd64.deb pgdg 2.4.6 346.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg13+1_arm64.deb pgdg 2.4.6 337.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb pgdg 2.4.6 357.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb pgdg 2.4.6 345.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb pgdg 2.4.6 344.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pglogical postgresql-18-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb pgdg 2.4.6 335.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-18-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 pglogical_17 pglogical_17-2.4.5-1PGDG.rhel8.x86_64.rpm pgdg 2.4.5 153.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pglogical_17-2.4.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pglogical_17 pglogical_17-2.4.5-1PGDG.rhel8.aarch64.rpm pgdg 2.4.5 147.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pglogical_17-2.4.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pglogical_17 pglogical_17-2.4.5-1PGDG.rhel9.x86_64.rpm pgdg 2.4.5 146.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pglogical_17-2.4.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pglogical_17 pglogical_17-2.4.5-1PGDG.rhel9.aarch64.rpm pgdg 2.4.5 143.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pglogical_17-2.4.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pglogical_17 pglogical_17-2.4.5-3PGDG.rhel10.x86_64.rpm pgdg 2.4.5 148.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pglogical_17-2.4.5-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pglogical_17 pglogical_17-2.4.5-3PGDG.rhel10.aarch64.rpm pgdg 2.4.5 144.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pglogical_17-2.4.5-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg12+1_amd64.deb pgdg 2.4.6 345.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg12+1_arm64.deb pgdg 2.4.6 336.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg13+1_amd64.deb pgdg 2.4.6 346.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg13+1_arm64.deb pgdg 2.4.6 337.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb pgdg 2.4.6 434.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb pgdg 2.4.6 422.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb pgdg 2.4.6 344.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pglogical postgresql-17-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb pgdg 2.4.6 334.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-17-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 pglogical_16 pglogical_16-2.4.4-1PGDG.rhel8.x86_64.rpm pgdg 2.4.4 152.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pglogical_16-2.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pglogical_16 pglogical_16-2.4.4-1PGDG.rhel8.aarch64.rpm pgdg 2.4.4 145.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pglogical_16-2.4.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pglogical_16 pglogical_16-2.4.4-1PGDG.rhel9.x86_64.rpm pgdg 2.4.4 146.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pglogical_16-2.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pglogical_16 pglogical_16-2.4.4-1PGDG.rhel9.aarch64.rpm pgdg 2.4.4 143.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pglogical_16-2.4.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pglogical_16 pglogical_16-2.4.5-3PGDG.rhel10.x86_64.rpm pgdg 2.4.5 148.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pglogical_16-2.4.5-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pglogical_16 pglogical_16-2.4.5-3PGDG.rhel10.aarch64.rpm pgdg 2.4.5 144.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pglogical_16-2.4.5-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg12+1_amd64.deb pgdg 2.4.6 344.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg12+1_arm64.deb pgdg 2.4.6 334.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg13+1_amd64.deb pgdg 2.4.6 345.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg13+1_arm64.deb pgdg 2.4.6 336.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb pgdg 2.4.6 431.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb pgdg 2.4.6 419.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb pgdg 2.4.6 343.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pglogical postgresql-16-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb pgdg 2.4.6 334.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-16-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 pglogical_15 pglogical_15-2.4.3-1.rhel8.x86_64.rpm pgdg 2.4.3 153.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pglogical_15-2.4.3-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pglogical_15 pglogical_15-2.4.2-1.rhel8.x86_64.rpm pgdg 2.4.2 152.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pglogical_15-2.4.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pglogical_15 pglogical_15-2.4.3-1.rhel8.aarch64.rpm pgdg 2.4.3 146.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pglogical_15-2.4.3-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pglogical_15 pglogical_15-2.4.2-1.rhel8.aarch64.rpm pgdg 2.4.2 145.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pglogical_15-2.4.2-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pglogical_15 pglogical_15-2.4.3-1.rhel9.x86_64.rpm pgdg 2.4.3 150.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pglogical_15-2.4.3-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pglogical_15 pglogical_15-2.4.2-1.rhel9.x86_64.rpm pgdg 2.4.2 150.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pglogical_15-2.4.2-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pglogical_15 pglogical_15-2.4.3-1.rhel9.aarch64.rpm pgdg 2.4.3 146.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pglogical_15-2.4.3-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pglogical_15 pglogical_15-2.4.2-1.rhel9.aarch64.rpm pgdg 2.4.2 146.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pglogical_15-2.4.2-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pglogical_15 pglogical_15-2.4.5-3PGDG.rhel10.x86_64.rpm pgdg 2.4.5 151.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pglogical_15-2.4.5-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pglogical_15 pglogical_15-2.4.5-3PGDG.rhel10.aarch64.rpm pgdg 2.4.5 149.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pglogical_15-2.4.5-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg12+1_amd64.deb pgdg 2.4.6 346.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg12+1_arm64.deb pgdg 2.4.6 335.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg13+1_amd64.deb pgdg 2.4.6 348.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg13+1_arm64.deb pgdg 2.4.6 336.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb pgdg 2.4.6 436.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb pgdg 2.4.6 424.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb pgdg 2.4.6 347.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pglogical postgresql-15-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb pgdg 2.4.6 336.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-15-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 pglogical_14 pglogical_14-2.4.3-1.rhel8.x86_64.rpm pgdg 2.4.3 151.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pglogical_14-2.4.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pglogical_14 pglogical_14-2.4.2-1.rhel8.x86_64.rpm pgdg 2.4.2 150.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pglogical_14-2.4.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pglogical_14 pglogical_14-2.4.1-1.rhel8.x86_64.rpm pgdg 2.4.1 150.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pglogical_14-2.4.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pglogical_14 pglogical_14-2.4.0-1.rhel8.x86_64.rpm pgdg 2.4.0 149.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pglogical_14-2.4.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pglogical_14 pglogical_14-2.4.3-1.rhel8.aarch64.rpm pgdg 2.4.3 145.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pglogical_14-2.4.3-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pglogical_14 pglogical_14-2.4.2-1.rhel8.aarch64.rpm pgdg 2.4.2 144.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pglogical_14-2.4.2-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pglogical_14 pglogical_14-2.4.3-1.rhel9.x86_64.rpm pgdg 2.4.3 150.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pglogical_14-2.4.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pglogical_14 pglogical_14-2.4.2-1.rhel9.x86_64.rpm pgdg 2.4.2 150.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pglogical_14-2.4.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pglogical_14 pglogical_14-2.4.1-1.rhel9.x86_64.rpm pgdg 2.4.1 149.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pglogical_14-2.4.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pglogical_14 pglogical_14-2.4.3-1.rhel9.aarch64.rpm pgdg 2.4.3 145.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pglogical_14-2.4.3-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pglogical_14 pglogical_14-2.4.2-1.rhel9.aarch64.rpm pgdg 2.4.2 145.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pglogical_14-2.4.2-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pglogical_14 pglogical_14-2.4.5-3PGDG.rhel10.x86_64.rpm pgdg 2.4.5 151.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pglogical_14-2.4.5-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pglogical_14 pglogical_14-2.4.5-3PGDG.rhel10.aarch64.rpm pgdg 2.4.5 148.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pglogical_14-2.4.5-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg12+1_amd64.deb pgdg 2.4.6 347.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg12+1_arm64.deb pgdg 2.4.6 335.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg13+1_amd64.deb pgdg 2.4.6 347.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg13+1_arm64.deb pgdg 2.4.6 336.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb pgdg 2.4.6 434.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb pgdg 2.4.6 423.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb pgdg 2.4.6 347.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pglogical postgresql-14-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb pgdg 2.4.6 336.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pglogical/postgresql-14-pglogical_2.4.6-2.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pglogical` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pglogical;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pglogical -v 18  # PG 18
pig ext install -y pglogical -v 17  # PG 17
pig ext install -y pglogical -v 16  # PG 16
pig ext install -y pglogical -v 15  # PG 15
pig ext install -y pglogical -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pglogical_18       # PG 18
dnf install -y pglogical_17       # PG 17
dnf install -y pglogical_16       # PG 16
dnf install -y pglogical_15       # PG 15
dnf install -y pglogical_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pglogical   # PG 18
apt install -y postgresql-17-pglogical   # PG 17
apt install -y postgresql-16-pglogical   # PG 16
apt install -y postgresql-15-pglogical   # PG 15
apt install -y postgresql-14-pglogical   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pglogical';
```


**Create Extension**:

```sql
CREATE EXTENSION pglogical;
```



## Usage

> [pglogical: PostgreSQL Logical Replication](https://github.com/2ndQuadrant/pglogical)

A logical replication system for PostgreSQL using a publish/subscribe model. Requires no triggers or external programs.

### Enabling

Add to `postgresql.conf`:

```ini
wal_level = 'logical'
max_worker_processes = 10
max_replication_slots = 10
max_wal_senders = 10
shared_preload_libraries = 'pglogical'
```

```sql
CREATE EXTENSION pglogical;
```

### Provider (Publisher) Setup

```sql
-- Create a node on the provider
SELECT pglogical.create_node(
    node_name := 'provider1',
    dsn := 'host=providerhost port=5432 dbname=mydb'
);

-- Add all tables in public schema to default replication set
SELECT pglogical.replication_set_add_all_tables('default', ARRAY['public']);

-- Add all sequences in public schema
SELECT pglogical.replication_set_add_all_sequences('default', ARRAY['public']);
```

### Subscriber Setup

```sql
-- Create a node on the subscriber
SELECT pglogical.create_node(
    node_name := 'subscriber1',
    dsn := 'host=subscriberhost port=5432 dbname=mydb'
);

-- Create a subscription to the provider
SELECT pglogical.create_subscription(
    subscription_name := 'subscription1',
    provider_dsn := 'host=providerhost port=5432 dbname=mydb'
);
```

### Replication Set Management

```sql
-- Create a custom replication set
SELECT pglogical.create_replication_set('my_set');

-- Add a specific table
SELECT pglogical.replication_set_add_table('my_set', 'my_table', true);

-- Remove a table
SELECT pglogical.replication_set_remove_table('my_set', 'my_table');
```

### Row and Column Filtering

```sql
-- Row filtering: only replicate rows matching a condition
SELECT pglogical.replication_set_add_table(
    set_name := 'default',
    relation := 'my_table',
    row_filter := 'id > 1000'
);

-- Column filtering: only replicate specific columns
SELECT pglogical.replication_set_add_table(
    set_name := 'default',
    relation := 'my_table',
    columns := '{id, name, updated_at}'
);
```

### Subscription Management

```sql
-- Check subscription status
SELECT * FROM pglogical.show_subscription_status();

-- Drop subscription
SELECT pglogical.drop_subscription('subscription1');
```

### Key Features

- Selective replication (per-table, row filtering, column filtering)
- Replication between different PostgreSQL major versions
- Delayed replication
- No need for superuser on subscriber
