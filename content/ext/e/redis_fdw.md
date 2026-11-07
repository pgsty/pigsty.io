---
title: "redis_fdw"
linkTitle: "redis_fdw"
description: "Foreign data wrapper for querying a Redis server"
weight: 8710
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pg-redis-fdw/redis_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pg-redis-fdw/redis_fdw</div>
    <div class="ext-card__desc">https://github.com/pg-redis-fdw/redis_fdw</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/redis_fdw-2.0+git20260808.ff37a7c8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">redis_fdw-2.0+git20260808.ff37a7c8.tar.gz</div>
    <div class="ext-card__desc">redis_fdw-2.0+git20260808.ff37a7c8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`redis_fdw`**](/ext/e/redis_fdw) | `2.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8710  | [**`redis_fdw`**](/ext/e/redis_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgmq`](/ext/e/pgmq) [`redis`](/ext/e/redis) [`pgmb`](/ext/e/pgmb) [`pgmemcache`](/ext/e/pgmemcache) [`ulak`](/ext/e/ulak) [`pgq`](/ext/e/pgq) [`tcn`](/ext/e/tcn) [`pgmqtt`](/ext/e/pgmqtt) [`mongo_fdw`](/ext/e/mongo_fdw) [`pg_durable`](/ext/e/pg_durable) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `redis_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `redis_fdw_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-redis-fdw` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
@ el8.x86_64 18 redis_fdw_18 redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm pigsty 2.0 95.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 redis_fdw_18 redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm pigsty 2.0 93.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 redis_fdw_18 redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm pigsty 2.0 97.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 redis_fdw_18 redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm pigsty 2.0 95.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 redis_fdw_18 redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm pigsty 2.0 97.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 redis_fdw_18 redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm pigsty 2.0 96.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/redis_fdw_18-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb pigsty 2.0 87.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb pigsty 2.0 84.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb pigsty 2.0 87.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb pigsty 2.0 85.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb pigsty 2.0 93.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb pigsty 2.0 92.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb pigsty 2.0 90.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb pigsty 2.0 89.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb pigsty 2.0 89.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-redis-fdw postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb pigsty 2.0 88.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-18-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 redis_fdw_17 redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm pigsty 2.0 95.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 redis_fdw_17 redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm pigsty 2.0 93.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 redis_fdw_17 redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm pigsty 2.0 97.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 redis_fdw_17 redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm pigsty 2.0 95.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 redis_fdw_17 redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm pigsty 2.0 97.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 redis_fdw_17 redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm pigsty 2.0 96.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/redis_fdw_17-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb pigsty 2.0 87.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb pigsty 2.0 84.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb pigsty 2.0 87.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb pigsty 2.0 85.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb pigsty 2.0 102.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb pigsty 2.0 101.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb pigsty 2.0 90.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb pigsty 2.0 89.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb pigsty 2.0 89.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-redis-fdw postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb pigsty 2.0 88.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-17-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 redis_fdw_16 redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm pigsty 2.0 95.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 redis_fdw_16 redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm pigsty 2.0 93.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 redis_fdw_16 redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm pigsty 2.0 97.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 redis_fdw_16 redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm pigsty 2.0 95.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 redis_fdw_16 redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm pigsty 2.0 97.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 redis_fdw_16 redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm pigsty 2.0 96.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/redis_fdw_16-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb pigsty 2.0 87.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb pigsty 2.0 84.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb pigsty 2.0 87.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb pigsty 2.0 85.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb pigsty 2.0 101.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb pigsty 2.0 100.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb pigsty 2.0 90.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb pigsty 2.0 90.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb pigsty 2.0 89.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-redis-fdw postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb pigsty 2.0 88.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-16-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 redis_fdw_15 redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm pigsty 2.0 95.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 redis_fdw_15 redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm pigsty 2.0 93.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 redis_fdw_15 redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm pigsty 2.0 96.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 redis_fdw_15 redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm pigsty 2.0 95.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 redis_fdw_15 redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm pigsty 2.0 97.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 redis_fdw_15 redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm pigsty 2.0 95.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/redis_fdw_15-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb pigsty 2.0 87.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb pigsty 2.0 94.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb pigsty 2.0 87.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb pigsty 2.0 84.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb pigsty 2.0 101.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb pigsty 2.0 100.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb pigsty 2.0 90.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb pigsty 2.0 88.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb pigsty 2.0 89.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-redis-fdw postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb pigsty 2.0 88.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-15-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 redis_fdw_14 redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm pigsty 2.0 95.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 redis_fdw_14 redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm pigsty 2.0 93.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 redis_fdw_14 redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm pigsty 2.0 97.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 redis_fdw_14 redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm pigsty 2.0 95.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 redis_fdw_14 redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm pigsty 2.0 97.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 redis_fdw_14 redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm pigsty 2.0 95.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/redis_fdw_14-2.0-1.git20260808.ff37a7c8PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb pigsty 2.0 87.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb pigsty 2.0 84.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb pigsty 2.0 87.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb pigsty 2.0 84.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb pigsty 2.0 101.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb pigsty 2.0 100.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb pigsty 2.0 90.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb pigsty 2.0 88.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb pigsty 2.0 89.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-redis-fdw postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb pigsty 2.0 87.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/redis-fdw/postgresql-14-redis-fdw_2.0+git20260808.ff37a7c8-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `redis_fdw` using `pig build`:

```bash
pig build pkg redis_fdw         # build RPM / DEB packages
```


## Install

You can install `redis_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install redis_fdw;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y redis_fdw -v 18  # PG 18
pig ext install -y redis_fdw -v 17  # PG 17
pig ext install -y redis_fdw -v 16  # PG 16
pig ext install -y redis_fdw -v 15  # PG 15
pig ext install -y redis_fdw -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y redis_fdw_18       # PG 18
dnf install -y redis_fdw_17       # PG 17
dnf install -y redis_fdw_16       # PG 16
dnf install -y redis_fdw_15       # PG 15
dnf install -y redis_fdw_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-redis-fdw   # PG 18
apt install -y postgresql-17-redis-fdw   # PG 17
apt install -y postgresql-16-redis-fdw   # PG 16
apt install -y postgresql-15-redis-fdw   # PG 15
apt install -y postgresql-14-redis-fdw   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION redis_fdw;
```




## Usage

> [redis_fdw: Foreign data wrapper for querying a Redis server](https://github.com/pg-redis-fdw/redis_fdw)

### Create Server

```sql
CREATE EXTENSION redis_fdw;

CREATE SERVER redis_server FOREIGN DATA WRAPPER redis_fdw
  OPTIONS (address '127.0.0.1', port '6379');
```

**Server Options:** `address` (default `127.0.0.1`), `port` (default `6379`).

### Create User Mapping

```sql
CREATE USER MAPPING FOR pguser SERVER redis_server
  OPTIONS (password 'secret');
```

### Scalar Key-Value Pairs

```sql
CREATE FOREIGN TABLE redis_db0 (
  key text,
  val text
)
SERVER redis_server
OPTIONS (database '0');

SELECT * FROM redis_db0;
```

### Hash Tables (with Key Prefix)

```sql
CREATE FOREIGN TABLE redis_hash (
  key text,
  val text[]
)
SERVER redis_server
OPTIONS (database '0', tabletype 'hash', tablekeyprefix 'mytable:');

INSERT INTO redis_hash VALUES ('mytable:r1', '{prop1,val1,prop2,val2}');
UPDATE redis_hash SET val = '{prop3,val3}' WHERE key = 'mytable:r1';
DELETE FROM redis_hash WHERE key = 'mytable:r1';
SELECT * FROM redis_hash;
```

### Hash Tables (Singleton Key)

```sql
CREATE FOREIGN TABLE redis_singleton (
  key text,
  val text
)
SERVER redis_server
OPTIONS (database '0', tabletype 'hash', singleton_key 'myhash');

INSERT INTO redis_singleton VALUES ('field1', 'value1');
UPDATE redis_singleton SET val = 'newvalue' WHERE key = 'field1';
DELETE FROM redis_singleton WHERE key = 'field1';
```

### Table Options

| Option | Description |
|--------|-------------|
| `database` | Redis database number (default `0`) |
| `tabletype` | `hash`, `list`, `set`, or `zset` (omit for scalar key-value) |
| `tablekeyprefix` | Filter items by key prefix |
| `tablekeyset` | Fetch keys from a specific Redis set |
| `singleton_key` | Access all values from a single Redis key |

Use only one of `tablekeyset` or `tablekeyprefix`. Do not combine them with `singleton_key`.

Hash values are returned as alternating key-value pairs in a `text[]` array. Lists, sets, and sorted sets also return values as arrays.
