---
title: "redis"
linkTitle: "redis"
description: "Send redis pub/sub messages to Redis from PostgreSQL Directly"
weight: 8720
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/brettlaforge/pg_redis_pubsub">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">brettlaforge/pg_redis_pubsub</div>
    <div class="ext-card__desc">https://github.com/brettlaforge/pg_redis_pubsub</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_redis_pubsub-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_redis_pubsub-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_redis_pubsub-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_redis_pubsub`**](/ext/e/redis) | `0.0.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8720  | [**`redis`**](/ext/e/redis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgmq`](/ext/e/pgmq) [`pgmb`](/ext/e/pgmb) [`redis_fdw`](/ext/e/redis_fdw) [`ulak`](/ext/e/ulak) [`pgq`](/ext/e/pgq) [`pgmqtt`](/ext/e/pgmqtt) [`tcn`](/ext/e/tcn) [`pgmemcache`](/ext/e/pgmemcache) [`pg_durable`](/ext/e/pg_durable) [`kafka_fdw`](/ext/e/kafka_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_redis_pubsub` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_redis_pubsub_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-redis-pubsub` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_redis_pubsub_18 pg_redis_pubsub_18-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_redis_pubsub_18-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_redis_pubsub_18 pg_redis_pubsub_18-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 14.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_redis_pubsub_18-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_redis_pubsub_18 pg_redis_pubsub_18-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_redis_pubsub_18-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_redis_pubsub_18 pg_redis_pubsub_18-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_redis_pubsub_18-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_redis_pubsub_18 pg_redis_pubsub_18-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_redis_pubsub_18-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_redis_pubsub_18 pg_redis_pubsub_18-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_redis_pubsub_18-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-redis-pubsub postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-18-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_redis_pubsub_17 pg_redis_pubsub_17-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_redis_pubsub_17-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_redis_pubsub_17 pg_redis_pubsub_17-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 14.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_redis_pubsub_17-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_redis_pubsub_17 pg_redis_pubsub_17-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_redis_pubsub_17-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_redis_pubsub_17 pg_redis_pubsub_17-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_redis_pubsub_17-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_redis_pubsub_17 pg_redis_pubsub_17-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_redis_pubsub_17-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_redis_pubsub_17 pg_redis_pubsub_17-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_redis_pubsub_17-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-redis-pubsub postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-17-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_redis_pubsub_16 pg_redis_pubsub_16-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_redis_pubsub_16-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_redis_pubsub_16 pg_redis_pubsub_16-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 14.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_redis_pubsub_16-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_redis_pubsub_16 pg_redis_pubsub_16-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_redis_pubsub_16-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_redis_pubsub_16 pg_redis_pubsub_16-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_redis_pubsub_16-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_redis_pubsub_16 pg_redis_pubsub_16-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_redis_pubsub_16-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_redis_pubsub_16 pg_redis_pubsub_16-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_redis_pubsub_16-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-redis-pubsub postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-16-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_redis_pubsub_15 pg_redis_pubsub_15-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_redis_pubsub_15-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_redis_pubsub_15 pg_redis_pubsub_15-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 14.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_redis_pubsub_15-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_redis_pubsub_15 pg_redis_pubsub_15-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_redis_pubsub_15-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_redis_pubsub_15 pg_redis_pubsub_15-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_redis_pubsub_15-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_redis_pubsub_15 pg_redis_pubsub_15-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_redis_pubsub_15-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_redis_pubsub_15 pg_redis_pubsub_15-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 14.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_redis_pubsub_15-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-redis-pubsub postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-15-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_redis_pubsub_14 pg_redis_pubsub_14-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_redis_pubsub_14-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_redis_pubsub_14 pg_redis_pubsub_14-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 14.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_redis_pubsub_14-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_redis_pubsub_14 pg_redis_pubsub_14-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_redis_pubsub_14-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_redis_pubsub_14 pg_redis_pubsub_14-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_redis_pubsub_14-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_redis_pubsub_14 pg_redis_pubsub_14-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_redis_pubsub_14-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_redis_pubsub_14 pg_redis_pubsub_14-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 14.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_redis_pubsub_14-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-redis-pubsub postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-redis-pubsub/postgresql-14-pg-redis-pubsub_0.0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_redis_pubsub` using `pig build`:

```bash
pig build pkg pg_redis_pubsub         # build RPM / DEB packages
```


## Install

You can install `pg_redis_pubsub` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_redis_pubsub;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_redis_pubsub -v 18  # PG 18
pig ext install -y pg_redis_pubsub -v 17  # PG 17
pig ext install -y pg_redis_pubsub -v 16  # PG 16
pig ext install -y pg_redis_pubsub -v 15  # PG 15
pig ext install -y pg_redis_pubsub -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_redis_pubsub_18       # PG 18
dnf install -y pg_redis_pubsub_17       # PG 17
dnf install -y pg_redis_pubsub_16       # PG 16
dnf install -y pg_redis_pubsub_15       # PG 15
dnf install -y pg_redis_pubsub_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-redis-pubsub   # PG 18
apt install -y postgresql-17-pg-redis-pubsub   # PG 17
apt install -y postgresql-16-pg-redis-pubsub   # PG 16
apt install -y postgresql-15-pg-redis-pubsub   # PG 15
apt install -y postgresql-14-pg-redis-pubsub   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION redis;
```




## Usage

> [redis: Send Redis pub/sub messages to Redis from PostgreSQL directly](https://github.com/brettlaforge/pg_redis_pubsub)

The `redis` extension (pg_redis_pubsub) allows PostgreSQL to publish messages to Redis pub/sub channels. Currently, only the publish side is supported.

### Configuration

Set the Redis connection parameters via GUC variables:

```sql
ALTER SYSTEM SET redis.host = '127.0.0.1';
ALTER SYSTEM SET redis.port = '6379';
SELECT pg_reload_conf();
```

These can also be set at the database, role, or session level:

```sql
SET redis.host = '127.0.0.1';
SET redis.port = '6379';
```

### Basic Usage

```sql
CREATE EXTENSION redis;

SELECT redis_connect();
SELECT redis_publish('mychannel', 'Hello World');
SELECT redis_disconnect();
```

### Available Functions

| Function | Description |
|----------|-------------|
| `redis_connect()` | Connect to Redis using `redis.host` and `redis.port` settings |
| `redis_disconnect()` | Disconnect from Redis |
| `redis_publish(channel text, message text)` | Publish a message on the specified channel |
| `redis_status()` | Return the status of the Redis client |

Note: `redis_publish` automatically connects if no connection exists.

### Trigger Example

Publish change events to Redis whenever a table is modified:

```sql
CREATE OR REPLACE FUNCTION notify_changes()
RETURNS TRIGGER AS $$
BEGIN
  PERFORM redis_publish(
    'products:' || NEW.id::text,
    to_jsonb(NEW)::text
  );
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER on_product_change
  AFTER INSERT OR UPDATE ON products
  FOR EACH ROW EXECUTE PROCEDURE notify_changes();
```

This allows external subscribers listening on Redis channels to react to PostgreSQL data changes in real time.
