---
title: "wal2json"
linkTitle: "wal2json"
description: "Changing data capture in JSON format"
weight: 9630
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/eulerto/wal2json">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">eulerto/wal2json</div>
    <div class="ext-card__desc">https://github.com/eulerto/wal2json</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/wal2json-2.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">wal2json-2.6.tar.gz</div>
    <div class="ext-card__desc">wal2json-2.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`wal2json`**](/ext/e/wal2json) | `2.6` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9630  | [**`wal2json`**](/ext/e/wal2json) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pglogical`](/ext/e/pglogical) [`wal2mongo`](/ext/e/wal2mongo) [`decoderbufs`](/ext/e/decoderbufs) [`decoder_raw`](/ext/e/decoder_raw) [`kafka_fdw`](/ext/e/kafka_fdw) [`pglogical_origin`](/ext/e/pglogical_origin) [`pglogical_ticker`](/ext/e/pglogical_ticker) [`pg_failover_slots`](/ext/e/pg_failover_slots) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.6` | {{< pgvers "18,17,16,15,14" >}} | `wal2json` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.6` | {{< pgvers "18,17,16,15,14" >}} | `wal2json_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-wal2json` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 3 |
| el8.aarch64 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 3 | AVAIL PGDG 2.6 3 |
| el9.x86_64 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.5 1 | AVAIL PGDG 2.5 1 | AVAIL PGDG 2.5 1 |
| el9.aarch64 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 2 | AVAIL PGDG 2.6 3 | AVAIL PGDG 2.6 3 |
| el10.x86_64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| el10.aarch64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| d12.x86_64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| d12.aarch64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| d13.x86_64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| d13.aarch64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| u22.x86_64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| u22.aarch64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| u24.x86_64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| u24.aarch64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| u26.x86_64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
| u26.aarch64 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 | AVAIL PGDG 2.6 1 |
@ el8.x86_64 18 wal2json_18 wal2json_18-2.6-3PGDG.rhel8.x86_64.rpm pgdg 2.6 33.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/wal2json_18-2.6-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 wal2json_18 wal2json_18-2.6-1PIGSTY.el8.x86_64.rpm pigsty 2.6 31.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/wal2json_18-2.6-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 wal2json_18 wal2json_18-2.6-3PGDG.rhel8.aarch64.rpm pgdg 2.6 31.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/wal2json_18-2.6-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 wal2json_18 wal2json_18-2.6-1PIGSTY.el8.aarch64.rpm pigsty 2.6 29.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/wal2json_18-2.6-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 wal2json_18 wal2json_18-2.6-3PGDG.rhel9.x86_64.rpm pgdg 2.6 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/wal2json_18-2.6-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 wal2json_18 wal2json_18-2.6-1PIGSTY.el9.x86_64.rpm pigsty 2.6 31.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/wal2json_18-2.6-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 wal2json_18 wal2json_18-2.6-3PGDG.rhel9.aarch64.rpm pgdg 2.6 30.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/wal2json_18-2.6-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 wal2json_18 wal2json_18-2.6-1PIGSTY.el9.aarch64.rpm pigsty 2.6 30.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/wal2json_18-2.6-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 wal2json_18 wal2json_18-2.6-3PGDG.rhel10.x86_64.rpm pgdg 2.6 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/wal2json_18-2.6-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 wal2json_18 wal2json_18-2.6-3PGDG.rhel10.aarch64.rpm pgdg 2.6 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/wal2json_18-2.6-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg12+1_amd64.deb pgdg 2.6 56.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg12+1_arm64.deb pgdg 2.6 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg13+1_amd64.deb pgdg 2.6 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg13+1_arm64.deb pgdg 2.6 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg22.04+1_amd64.deb pgdg 2.6 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg22.04+1_arm64.deb pgdg 2.6 54.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg24.04+1_amd64.deb pgdg 2.6 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg24.04+1_arm64.deb pgdg 2.6 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg26.04+1_amd64.deb pgdg 2.6 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-wal2json postgresql-18-wal2json_2.6-3.pgdg26.04+1_arm64.deb pgdg 2.6 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-18-wal2json_2.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 wal2json_17 wal2json_17-2.6-2PGDG.rhel8.x86_64.rpm pgdg 2.6 33.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/wal2json_17-2.6-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 wal2json_17 wal2json_17-2.6-2PGDG.rhel8.aarch64.rpm pgdg 2.6 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/wal2json_17-2.6-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 wal2json_17 wal2json_17-2.6-2PGDG.rhel9.x86_64.rpm pgdg 2.6 32.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/wal2json_17-2.6-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 wal2json_17 wal2json_17-2.6-2PGDG.rhel9.aarch64.rpm pgdg 2.6 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/wal2json_17-2.6-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 wal2json_17 wal2json_17-2.6-3PGDG.rhel10.x86_64.rpm pgdg 2.6 33.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/wal2json_17-2.6-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 wal2json_17 wal2json_17-2.6-3PGDG.rhel10.aarch64.rpm pgdg 2.6 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/wal2json_17-2.6-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg12+1_amd64.deb pgdg 2.6 56.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg12+1_arm64.deb pgdg 2.6 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg13+1_amd64.deb pgdg 2.6 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg13+1_arm64.deb pgdg 2.6 54.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg22.04+1_amd64.deb pgdg 2.6 63.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg22.04+1_arm64.deb pgdg 2.6 61.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg24.04+1_amd64.deb pgdg 2.6 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg24.04+1_arm64.deb pgdg 2.6 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg26.04+1_amd64.deb pgdg 2.6 55.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-wal2json postgresql-17-wal2json_2.6-3.pgdg26.04+1_arm64.deb pgdg 2.6 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-17-wal2json_2.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 wal2json_16 wal2json_16-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/wal2json_16-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 wal2json_16 wal2json_16-2.5-3.rhel8.1.x86_64.rpm pgdg 2.5 32.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/wal2json_16-2.5-3.rhel8.1.x86_64.rpm
@ el8.aarch64 16 wal2json_16 wal2json_16-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 31.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/wal2json_16-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 wal2json_16 wal2json_16-2.5-3.rhel8.1.aarch64.rpm pgdg 2.5 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/wal2json_16-2.5-3.rhel8.1.aarch64.rpm
@ el9.x86_64 16 wal2json_16 wal2json_16-2.5-3.rhel9.1.x86_64.rpm pgdg 2.5 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/wal2json_16-2.5-3.rhel9.1.x86_64.rpm
@ el9.aarch64 16 wal2json_16 wal2json_16-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/wal2json_16-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 wal2json_16 wal2json_16-2.5-3.rhel9.1.aarch64.rpm pgdg 2.5 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/wal2json_16-2.5-3.rhel9.1.aarch64.rpm
@ el10.x86_64 16 wal2json_16 wal2json_16-2.6-3PGDG.rhel10.x86_64.rpm pgdg 2.6 33.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/wal2json_16-2.6-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 wal2json_16 wal2json_16-2.6-3PGDG.rhel10.aarch64.rpm pgdg 2.6 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/wal2json_16-2.6-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg12+1_amd64.deb pgdg 2.6 56.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg12+1_arm64.deb pgdg 2.6 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg13+1_amd64.deb pgdg 2.6 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg13+1_arm64.deb pgdg 2.6 54.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg22.04+1_amd64.deb pgdg 2.6 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg22.04+1_arm64.deb pgdg 2.6 61.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg24.04+1_amd64.deb pgdg 2.6 56.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg24.04+1_arm64.deb pgdg 2.6 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg26.04+1_amd64.deb pgdg 2.6 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-wal2json postgresql-16-wal2json_2.6-3.pgdg26.04+1_arm64.deb pgdg 2.6 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-16-wal2json_2.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 wal2json_15 wal2json_15-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/wal2json_15-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 wal2json_15 wal2json_15-2.5-1.rhel8.x86_64.rpm pgdg 2.5 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/wal2json_15-2.5-1.rhel8.x86_64.rpm
@ el8.aarch64 15 wal2json_15 wal2json_15-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/wal2json_15-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 wal2json_15 wal2json_15-2.5-2.rhel8.aarch64.rpm pgdg 2.5 30.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/wal2json_15-2.5-2.rhel8.aarch64.rpm
@ el8.aarch64 15 wal2json_15 wal2json_15-2.5-1.rhel8.aarch64.rpm pgdg 2.5 30.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/wal2json_15-2.5-1.rhel8.aarch64.rpm
@ el9.x86_64 15 wal2json_15 wal2json_15-2.5-1.rhel9.x86_64.rpm pgdg 2.5 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/wal2json_15-2.5-1.rhel9.x86_64.rpm
@ el9.aarch64 15 wal2json_15 wal2json_15-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/wal2json_15-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 wal2json_15 wal2json_15-2.5-2.rhel9.aarch64.rpm pgdg 2.5 30.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/wal2json_15-2.5-2.rhel9.aarch64.rpm
@ el9.aarch64 15 wal2json_15 wal2json_15-2.5-1.rhel9.aarch64.rpm pgdg 2.5 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/wal2json_15-2.5-1.rhel9.aarch64.rpm
@ el10.x86_64 15 wal2json_15 wal2json_15-2.6-3PGDG.rhel10.x86_64.rpm pgdg 2.6 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/wal2json_15-2.6-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 wal2json_15 wal2json_15-2.6-3PGDG.rhel10.aarch64.rpm pgdg 2.6 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/wal2json_15-2.6-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg12+1_amd64.deb pgdg 2.6 56.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg12+1_arm64.deb pgdg 2.6 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg13+1_amd64.deb pgdg 2.6 56.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg13+1_arm64.deb pgdg 2.6 54.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg22.04+1_amd64.deb pgdg 2.6 64.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg22.04+1_arm64.deb pgdg 2.6 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg24.04+1_amd64.deb pgdg 2.6 56.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg24.04+1_arm64.deb pgdg 2.6 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg26.04+1_amd64.deb pgdg 2.6 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-wal2json postgresql-15-wal2json_2.6-3.pgdg26.04+1_arm64.deb pgdg 2.6 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-15-wal2json_2.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 wal2json_14 wal2json_14-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/wal2json_14-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 wal2json_14 wal2json_14-2.5-1.rhel8.x86_64.rpm pgdg 2.5 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/wal2json_14-2.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 wal2json_14 wal2json_14-2.4-1.rhel8.x86_64.rpm pgdg 2.4 76.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/wal2json_14-2.4-1.rhel8.x86_64.rpm
@ el8.aarch64 14 wal2json_14 wal2json_14-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/wal2json_14-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 wal2json_14 wal2json_14-2.5-2.rhel8.aarch64.rpm pgdg 2.5 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/wal2json_14-2.5-2.rhel8.aarch64.rpm
@ el8.aarch64 14 wal2json_14 wal2json_14-2.5-1.rhel8.aarch64.rpm pgdg 2.5 30.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/wal2json_14-2.5-1.rhel8.aarch64.rpm
@ el9.x86_64 14 wal2json_14 wal2json_14-2.5-1.rhel9.x86_64.rpm pgdg 2.5 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/wal2json_14-2.5-1.rhel9.x86_64.rpm
@ el9.aarch64 14 wal2json_14 wal2json_14-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/wal2json_14-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 wal2json_14 wal2json_14-2.5-2.rhel9.aarch64.rpm pgdg 2.5 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/wal2json_14-2.5-2.rhel9.aarch64.rpm
@ el9.aarch64 14 wal2json_14 wal2json_14-2.5-1.rhel9.aarch64.rpm pgdg 2.5 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/wal2json_14-2.5-1.rhel9.aarch64.rpm
@ el10.x86_64 14 wal2json_14 wal2json_14-2.6-3PGDG.rhel10.x86_64.rpm pgdg 2.6 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/wal2json_14-2.6-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 wal2json_14 wal2json_14-2.6-3PGDG.rhel10.aarch64.rpm pgdg 2.6 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/wal2json_14-2.6-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg12+1_amd64.deb pgdg 2.6 56.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg12+1_arm64.deb pgdg 2.6 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg13+1_amd64.deb pgdg 2.6 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg13+1_arm64.deb pgdg 2.6 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg22.04+1_amd64.deb pgdg 2.6 64.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg22.04+1_arm64.deb pgdg 2.6 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg24.04+1_amd64.deb pgdg 2.6 56.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg24.04+1_arm64.deb pgdg 2.6 53.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg26.04+1_amd64.deb pgdg 2.6 55.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-wal2json postgresql-14-wal2json_2.6-3.pgdg26.04+1_arm64.deb pgdg 2.6 53.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/w/wal2json/postgresql-14-wal2json_2.6-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `wal2json` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install wal2json;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y wal2json -v 18  # PG 18
pig ext install -y wal2json -v 17  # PG 17
pig ext install -y wal2json -v 16  # PG 16
pig ext install -y wal2json -v 15  # PG 15
pig ext install -y wal2json -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y wal2json_18       # PG 18
dnf install -y wal2json_17       # PG 17
dnf install -y wal2json_16       # PG 16
dnf install -y wal2json_15       # PG 15
dnf install -y wal2json_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-wal2json   # PG 18
apt install -y postgresql-17-wal2json   # PG 17
apt install -y postgresql-16-wal2json   # PG 16
apt install -y postgresql-15-wal2json   # PG 15
apt install -y postgresql-14-wal2json   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}

> This extension does not require `CREATE EXTENSION`



## Usage

> [wal2json: Changing data capture in JSON format](https://github.com/eulerto/wal2json)

A logical decoding output plugin that produces JSON-formatted change data capture from the PostgreSQL WAL.

### Configuration

In `postgresql.conf`:

```ini
wal_level = logical
max_replication_slots = 10
max_wal_senders = 10
```

### Using with Streaming Protocol (pg_recvlogical)

```bash
# Create a replication slot
pg_recvlogical -d postgres --slot test_slot --create-slot -P wal2json

# Start consuming changes
pg_recvlogical -d postgres --slot test_slot --start -o pretty-print=1 -f -

# Drop the slot when done
pg_recvlogical -d postgres --slot test_slot --drop-slot
```

### Using with SQL Functions

```sql
-- Create a logical replication slot
SELECT * FROM pg_create_logical_replication_slot('test_slot', 'wal2json');

-- Peek at changes (does not consume)
SELECT data FROM pg_logical_slot_peek_changes('test_slot', NULL, NULL);

-- Get and consume changes
SELECT data FROM pg_logical_slot_get_changes('test_slot', NULL, NULL,
    'pretty-print', '1');

-- Drop the slot
SELECT pg_drop_replication_slot('test_slot');
```

### Output Format v1 (JSON per transaction)

```json
{
  "change": [
    {
      "kind": "insert",
      "schema": "public",
      "table": "my_table",
      "columnnames": ["a", "b"],
      "columntypes": ["integer", "text"],
      "columnvalues": [1, "hello"]
    },
    {
      "kind": "delete",
      "schema": "public",
      "table": "my_table",
      "oldkeys": {
        "keynames": ["a"],
        "keytypes": ["integer"],
        "keyvalues": [1]
      }
    }
  ]
}
```

### Output Format v2 (JSON per tuple)

Enable with: `'format-version', '2'`

### Key Parameters

- `include-xids` - add transaction ID (default: false)
- `include-timestamp` - add timestamp (default: false)
- `include-schemas` - add schema name (default: true)
- `include-types` - add column types (default: true)
- `include-pk` - add primary key info (default: false)
- `include-lsn` - add WAL LSN (default: false)
- `include-not-null` - add NOT NULL info (default: false)
- `include-default` - add default expressions (default: false)
- `pretty-print` - format JSON output (default: false)
- `filter-tables` - comma-separated list of tables to include
- `add-tables` - same as filter-tables
- `filter-msg-prefixes` - filter logical messages by prefix
- `format-version` - 1 (per-transaction) or 2 (per-tuple)
- `actions` - filter by action type: insert, update, delete, truncate
