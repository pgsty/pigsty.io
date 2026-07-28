---
title: "pgmemcache"
linkTitle: "pgmemcache"
description: "memcached interface"
weight: 9410
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ohmu/pgmemcache">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ohmu/pgmemcache</div>
    <div class="ext-card__desc">https://github.com/ohmu/pgmemcache</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmemcache`**](/ext/e/pgmemcache) | `2.3.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9410  | [**`pgmemcache`**](/ext/e/pgmemcache) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`redis_fdw`](/ext/e/redis_fdw) [`redis`](/ext/e/redis) `spat` [`mongo_fdw`](/ext/e/mongo_fdw) [`kafka_fdw`](/ext/e/kafka_fdw) [`documentdb`](/ext/e/documentdb) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb_distributed`](/ext/e/documentdb_distributed) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> missing pg12-14 on el.aarch64


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmemcache` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmemcache_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmemcache` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 |
| el8.aarch64 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 | AVAIL PIGSTY 2.3.0 1 |
| el9.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 1 |
| el9.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 1 | AVAIL PGDG 2.3.0 1 |
| el10.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| el10.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| d12.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| d12.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| d13.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| d13.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| u22.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| u22.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| u24.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| u24.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| u26.x86_64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
| u26.aarch64 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 | AVAIL PGDG 2.3.0 2 |
@ el8.x86_64 18 pgmemcache_18 pgmemcache_18-2.3.0-9PGDG.rhel8.x86_64.rpm pgdg 2.3.0 26.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmemcache_18-2.3.0-9PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgmemcache_18 pgmemcache_18-2.3.0-9PGDG.rhel8.aarch64.rpm pgdg 2.3.0 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmemcache_18-2.3.0-9PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgmemcache_18 pgmemcache_18-2.3.0-11PGDG.rhel9.8.x86_64.rpm pgdg 2.3.0 26.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmemcache_18-2.3.0-11PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgmemcache_18 pgmemcache_18-2.3.0-9PGDG.rhel9.x86_64.rpm pgdg 2.3.0 25.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmemcache_18-2.3.0-9PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgmemcache_18 pgmemcache_18-2.3.0-11PGDG.rhel9.8.aarch64.rpm pgdg 2.3.0 25.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmemcache_18-2.3.0-11PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgmemcache_18 pgmemcache_18-2.3.0-9PGDG.rhel9.aarch64.rpm pgdg 2.3.0 25.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmemcache_18-2.3.0-9PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgmemcache_18 pgmemcache_18-2.3.0-11PGDG.rhel10.2.x86_64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmemcache_18-2.3.0-11PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgmemcache_18 pgmemcache_18-2.3.0-9PGDG.rhel10.x86_64.rpm pgdg 2.3.0 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmemcache_18-2.3.0-9PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgmemcache_18 pgmemcache_18-2.3.0-11PGDG.rhel10.2.aarch64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmemcache_18-2.3.0-11PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgmemcache_18 pgmemcache_18-2.3.0-9PGDG.rhel10.aarch64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmemcache_18-2.3.0-9PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb pgdg 2.3.0 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb pgdg 2.3.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb pgdg 2.3.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb pgdg 2.3.0 46.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb pgdg 2.3.0 46.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb pgdg 2.3.0 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb pgdg 2.3.0 46.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb pgdg 2.3.0 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgmemcache postgresql-18-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-18-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgmemcache_17 pgmemcache_17-2.3.0-8PGDG.rhel8.x86_64.rpm pgdg 2.3.0 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmemcache_17-2.3.0-8PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgmemcache_17 pgmemcache_17-2.3.0-8PGDG.rhel8.aarch64.rpm pgdg 2.3.0 25.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmemcache_17-2.3.0-8PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgmemcache_17 pgmemcache_17-2.3.0-11PGDG.rhel9.8.x86_64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmemcache_17-2.3.0-11PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgmemcache_17 pgmemcache_17-2.3.0-8PGDG.rhel9.x86_64.rpm pgdg 2.3.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmemcache_17-2.3.0-8PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgmemcache_17 pgmemcache_17-2.3.0-11PGDG.rhel9.8.aarch64.rpm pgdg 2.3.0 25.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmemcache_17-2.3.0-11PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgmemcache_17 pgmemcache_17-2.3.0-8PGDG.rhel9.aarch64.rpm pgdg 2.3.0 25.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmemcache_17-2.3.0-8PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgmemcache_17 pgmemcache_17-2.3.0-11PGDG.rhel10.2.x86_64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmemcache_17-2.3.0-11PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgmemcache_17 pgmemcache_17-2.3.0-9PGDG.rhel10.x86_64.rpm pgdg 2.3.0 26.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmemcache_17-2.3.0-9PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgmemcache_17 pgmemcache_17-2.3.0-11PGDG.rhel10.2.aarch64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmemcache_17-2.3.0-11PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgmemcache_17 pgmemcache_17-2.3.0-9PGDG.rhel10.aarch64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmemcache_17-2.3.0-9PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb pgdg 2.3.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb pgdg 2.3.0 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb pgdg 2.3.0 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb pgdg 2.3.0 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb pgdg 2.3.0 52.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb pgdg 2.3.0 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgmemcache postgresql-17-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-17-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgmemcache_16 pgmemcache_16-2.3.0-6.rhel8.1.x86_64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmemcache_16-2.3.0-6.rhel8.1.x86_64.rpm
@ el8.aarch64 16 pgmemcache_16 pgmemcache_16-2.3.0-6.rhel8.1.aarch64.rpm pgdg 2.3.0 25.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmemcache_16-2.3.0-6.rhel8.1.aarch64.rpm
@ el9.x86_64 16 pgmemcache_16 pgmemcache_16-2.3.0-11PGDG.rhel9.8.x86_64.rpm pgdg 2.3.0 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmemcache_16-2.3.0-11PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgmemcache_16 pgmemcache_16-2.3.0-6.rhel9.1.x86_64.rpm pgdg 2.3.0 25.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmemcache_16-2.3.0-6.rhel9.1.x86_64.rpm
@ el9.aarch64 16 pgmemcache_16 pgmemcache_16-2.3.0-11PGDG.rhel9.8.aarch64.rpm pgdg 2.3.0 25.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmemcache_16-2.3.0-11PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgmemcache_16 pgmemcache_16-2.3.0-6.rhel9.1.aarch64.rpm pgdg 2.3.0 25.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmemcache_16-2.3.0-6.rhel9.1.aarch64.rpm
@ el10.x86_64 16 pgmemcache_16 pgmemcache_16-2.3.0-11PGDG.rhel10.2.x86_64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmemcache_16-2.3.0-11PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgmemcache_16 pgmemcache_16-2.3.0-9PGDG.rhel10.x86_64.rpm pgdg 2.3.0 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmemcache_16-2.3.0-9PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgmemcache_16 pgmemcache_16-2.3.0-11PGDG.rhel10.2.aarch64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmemcache_16-2.3.0-11PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgmemcache_16 pgmemcache_16-2.3.0-9PGDG.rhel10.aarch64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmemcache_16-2.3.0-9PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb pgdg 2.3.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb pgdg 2.3.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb pgdg 2.3.0 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb pgdg 2.3.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb pgdg 2.3.0 51.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb pgdg 2.3.0 51.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgmemcache postgresql-16-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-16-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgmemcache_15 pgmemcache_15-2.3.0-5.rhel8.x86_64.rpm pgdg 2.3.0 56.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmemcache_15-2.3.0-5.rhel8.x86_64.rpm
@ el8.aarch64 15 pgmemcache_15 pgmemcache_15-2.3.0-5PIGSTY.el8.aarch64.rpm pigsty 2.3.0 50.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemcache_15-2.3.0-5PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmemcache_15 pgmemcache_15-2.3.0-11PGDG.rhel9.8.x86_64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmemcache_15-2.3.0-11PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgmemcache_15 pgmemcache_15-2.3.0-5.rhel9.x86_64.rpm pgdg 2.3.0 57.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmemcache_15-2.3.0-5.rhel9.x86_64.rpm
@ el9.aarch64 15 pgmemcache_15 pgmemcache_15-2.3.0-11PGDG.rhel9.8.aarch64.rpm pgdg 2.3.0 25.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmemcache_15-2.3.0-11PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 pgmemcache_15 pgmemcache_15-2.3.0-11PGDG.rhel10.2.x86_64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmemcache_15-2.3.0-11PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgmemcache_15 pgmemcache_15-2.3.0-9PGDG.rhel10.x86_64.rpm pgdg 2.3.0 26.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmemcache_15-2.3.0-9PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgmemcache_15 pgmemcache_15-2.3.0-11PGDG.rhel10.2.aarch64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmemcache_15-2.3.0-11PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgmemcache_15 pgmemcache_15-2.3.0-9PGDG.rhel10.aarch64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmemcache_15-2.3.0-9PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb pgdg 2.3.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb pgdg 2.3.0 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb pgdg 2.3.0 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb pgdg 2.3.0 51.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb pgdg 2.3.0 51.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb pgdg 2.3.0 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgmemcache postgresql-15-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-15-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgmemcache_14 pgmemcache_14-2.3.0-5.rhel8.x86_64.rpm pgdg 2.3.0 56.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmemcache_14-2.3.0-5.rhel8.x86_64.rpm
@ el8.aarch64 14 pgmemcache_14 pgmemcache_14-2.3.0-5PIGSTY.el8.aarch64.rpm pigsty 2.3.0 50.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmemcache_14-2.3.0-5PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmemcache_14 pgmemcache_14-2.3.0-11PGDG.rhel9.8.x86_64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmemcache_14-2.3.0-11PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 pgmemcache_14 pgmemcache_14-2.3.0-11PGDG.rhel9.8.aarch64.rpm pgdg 2.3.0 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmemcache_14-2.3.0-11PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 pgmemcache_14 pgmemcache_14-2.3.0-11PGDG.rhel10.2.x86_64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmemcache_14-2.3.0-11PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgmemcache_14 pgmemcache_14-2.3.0-9PGDG.rhel10.x86_64.rpm pgdg 2.3.0 26.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmemcache_14-2.3.0-9PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgmemcache_14 pgmemcache_14-2.3.0-11PGDG.rhel10.2.aarch64.rpm pgdg 2.3.0 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmemcache_14-2.3.0-11PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgmemcache_14 pgmemcache_14-2.3.0-9PGDG.rhel10.aarch64.rpm pgdg 2.3.0 26.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmemcache_14-2.3.0-9PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb pgdg 2.3.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb pgdg 2.3.0 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb pgdg 2.3.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb pgdg 2.3.0 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb pgdg 2.3.0 51.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb pgdg 2.3.0 51.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb pgdg 2.3.0 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb pgdg 2.3.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb pgdg 2.3.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb pgdg 2.3.0 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb pgdg 2.3.0 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-16.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgmemcache postgresql-14-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb pgdg 2.3.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgmemcache/postgresql-14-pgmemcache_2.3.0-15.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgmemcache` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmemcache;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmemcache -v 18  # PG 18
pig ext install -y pgmemcache -v 17  # PG 17
pig ext install -y pgmemcache -v 16  # PG 16
pig ext install -y pgmemcache -v 15  # PG 15
pig ext install -y pgmemcache -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmemcache_18       # PG 18
dnf install -y pgmemcache_17       # PG 17
dnf install -y pgmemcache_16       # PG 16
dnf install -y pgmemcache_15       # PG 15
dnf install -y pgmemcache_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmemcache   # PG 18
apt install -y postgresql-17-pgmemcache   # PG 17
apt install -y postgresql-16-pgmemcache   # PG 16
apt install -y postgresql-15-pgmemcache   # PG 15
apt install -y postgresql-14-pgmemcache   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmemcache;
```




## Usage

> [pgmemcache: memcached interface](https://github.com/ohmu/pgmemcache)

Provides PostgreSQL user-defined functions for interacting with memcached servers.

### Enabling

```sql
CREATE EXTENSION pgmemcache;
```

Configure default servers in `postgresql.conf`:

```ini
shared_preload_libraries = 'pgmemcache'
pgmemcache.default_servers = 'localhost:11211'
pgmemcache.default_behavior = 'DEAD_TIMEOUT:2'
```

### Server Management

```sql
SELECT memcache_server_add('localhost:11211');
SELECT memcache_server_add('cache-host');  -- uses default port 11211
```

### Setting and Getting Values

```sql
-- Set a key (overwrites if exists)
SELECT memcache_set('user:1:name', 'John Doe');
SELECT memcache_set('session:abc', 'data', now() + interval '1 hour');

-- Add a key (fails if exists)
SELECT memcache_add('user:2:name', 'Jane Doe');
SELECT memcache_add('temp_key', 'value', interval '5 minutes');

-- Replace (fails if key doesn't exist)
SELECT memcache_replace('user:1:name', 'John Smith');

-- Get a value
SELECT memcache_get('user:1:name');  -- returns text or NULL

-- Get multiple values
SELECT key, value FROM memcache_get_multi('{key1,key2,key3}'::text[]);
```

### Atomic Counters

```sql
SELECT memcache_incr('counter');        -- increment by 1
SELECT memcache_incr('counter', 5);     -- increment by 5
SELECT memcache_decr('counter');        -- decrement by 1
SELECT memcache_decr('counter', 3);     -- decrement by 3
```

### Deleting and Flushing

```sql
SELECT memcache_delete('user:1:name');
SELECT memcache_flush_all();  -- flush all servers
```

### Statistics

```sql
SELECT memcache_stats();  -- returns stats from all servers
```

### Trigger Example

Invalidate cache on table updates:

```sql
CREATE OR REPLACE FUNCTION auth_passwd_upd()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    IF OLD.passwd <> NEW.passwd THEN
        PERFORM memcache_delete('user_id_' || NEW.user_id || '_password');
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER auth_passwd_upd_trg AFTER UPDATE ON passwd
    FOR EACH ROW EXECUTE PROCEDURE auth_passwd_upd();
```
