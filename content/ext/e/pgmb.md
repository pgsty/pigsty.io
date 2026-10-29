---
title: "pgmb"
linkTitle: "pgmb"
description: "A simple PostgreSQL Message Broker system"
weight: 2670
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fraruiz/pgmb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fraruiz/pgmb</div>
    <div class="ext-card__desc">https://github.com/fraruiz/pgmb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmb-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmb-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pgmb-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmb`**](/ext/e/pgmb) | `1.0.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2670  | [**`pgmb`**](/ext/e/pgmb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgmb` |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`http`](/ext/e/http) [`pgmq`](/ext/e/pgmq) [`redis`](/ext/e/redis) [`ulak`](/ext/e/ulak) [`pgq`](/ext/e/pgq) [`pgmqtt`](/ext/e/pgmqtt) [`redis_fdw`](/ext/e/redis_fdw) [`tcn`](/ext/e/tcn) [`pg_durable`](/ext/e/pg_durable) [`fsm_core`](/ext/e/fsm_core) [`kafka_fdw`](/ext/e/kafka_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Archived upstream. Requires pg_cron and http; preload pg_cron in its configured database. RPM 1.0.0-2PGSTY fixes schema creation and requires pgsql_http; existing DEBs retain the upstream schema-creation failure. Delay arguments do not delay dispatch; retries have no exponential backoff.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmb` | `pg_cron`, `http` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmb_$v` | `pg_cron_$v`, `pgsql_http_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmb` | `postgresql-$v-cron`, `postgresql-$v-http` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 | AVAIL PIGSTY 1.0.0 2 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pgmb_18 pgmb_18-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_18-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.x86_64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmb_18 pgmb_18-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_18-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmb_18 pgmb_18-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_18-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.x86_64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmb_18 pgmb_18-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_18-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmb_18 pgmb_18-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_18-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.x86_64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmb_18 pgmb_18-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_18-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgmb postgresql-18-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-18-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgmb_17 pgmb_17-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_17-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.x86_64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmb_17 pgmb_17-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_17-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmb_17 pgmb_17-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_17-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.x86_64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmb_17 pgmb_17-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_17-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmb_17 pgmb_17-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_17-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.x86_64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmb_17 pgmb_17-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_17-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgmb postgresql-17-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-17-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgmb_16 pgmb_16-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_16-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.x86_64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmb_16 pgmb_16-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_16-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmb_16 pgmb_16-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_16-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.x86_64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmb_16 pgmb_16-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_16-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmb_16 pgmb_16-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_16-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.x86_64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmb_16 pgmb_16-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_16-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgmb postgresql-16-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-16-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgmb_15 pgmb_15-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_15-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.x86_64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmb_15 pgmb_15-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_15-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmb_15 pgmb_15-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_15-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.x86_64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmb_15 pgmb_15-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_15-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmb_15 pgmb_15-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_15-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.x86_64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmb_15 pgmb_15-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_15-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 8.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgmb postgresql-15-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-15-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgmb_14 pgmb_14-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_14-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.x86_64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmb_14 pgmb_14-1.0.0-2PGSTY.el8.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_14-1.0.0-2PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmb_14 pgmb_14-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_14-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.x86_64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmb_14 pgmb_14-1.0.0-2PGSTY.el9.noarch.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_14-1.0.0-2PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmb_14 pgmb_14-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_14-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.x86_64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmb_14 pgmb_14-1.0.0-2PGSTY.el10.noarch.rpm pigsty 1.0.0 12.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_14-1.0.0-2PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmb_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 8.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 8.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgmb postgresql-14-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmb/postgresql-14-pgmb_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmb` using `pig build`:

```bash
pig build pkg pgmb         # build RPM / DEB packages
```


## Install

You can install `pgmb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgmb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgmb -v 18  # PG 18
pig ext install -y pgmb -v 17  # PG 17
pig ext install -y pgmb -v 16  # PG 16
pig ext install -y pgmb -v 15  # PG 15
pig ext install -y pgmb -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgmb_18       # PG 18
dnf install -y pgmb_17       # PG 17
dnf install -y pgmb_16       # PG 16
dnf install -y pgmb_15       # PG 15
dnf install -y pgmb_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgmb   # PG 18
apt install -y postgresql-17-pgmb   # PG 17
apt install -y postgresql-16-pgmb   # PG 16
apt install -y postgresql-15-pgmb   # PG 15
apt install -y postgresql-14-pgmb   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgmb CASCADE;  -- requires: pg_cron, http
```

## Usage

Sources:
- [README](https://github.com/fraruiz/pgmb/blob/release/README.md)
- [Control](https://github.com/fraruiz/pgmb/blob/release/pgmb.control)
- [SQL](https://github.com/fraruiz/pgmb/blob/release/pgmb--1.0.0.sql)
- [META.json](https://github.com/fraruiz/pgmb/blob/release/META.json)

`pgmb` implements a SQL message broker with worker endpoints, routing-key patterns, queues and HTTP dispatch scheduled through `pg_cron`. The upstream repository is archived.

### Installation and compatibility

The RPM revision `1.0.0-2PGSTY` requires `pgsql_http_N` and removes a redundant schema-creation statement. Earlier RPMs and existing DEB packages retain the upstream SQL and can fail at `CREATE EXTENSION pgmb` because the control file and install script both create the schema. Package installation alone does not establish that the extension can be created.

Install as a superuser. The required extensions are `pg_cron` and `http`; `pgmb` itself does not require preload. Configure the scheduler for the database in which the extension will be used:

```ini
shared_preload_libraries = 'pg_cron'
cron.database_name = 'postgres'
```

Restart PostgreSQL, connect to that database, and create the dependencies before the extension:

```sql
CREATE EXTENSION pg_cron;
CREATE EXTENSION http;
CREATE EXTENSION pgmb;
```

### Register a queue and send a message

The worker endpoint receives HTTP requests from the database server. Use a trusted endpoint and restrict who can register workers.

```sql
SELECT pgmb.create(
    'orders', 'order.*', 3,
    pgmb.worker('order_worker', 'http://127.0.0.1:8080/worker', 100)
);

SELECT pgmb.send(
    gen_random_uuid(), 'order.created', '{"order_id": 123}'::jsonb
);

SELECT * FROM pgmb.workers;
SELECT * FROM pgmb.queues;
SELECT * FROM pgmb.orders_queue;
SELECT * FROM pgmb.orders_dead_letter_queue;
```

The argument order for `pgmb.create` is name, binding pattern, maximum retries, then worker UUID. A trigger routes messages to matching queues, and queue creation registers a scheduler job.

### API

| Function | Purpose |
|---|---|
| `pgmb.worker(name, endpoint, rps)` | Register a worker and return its UUID; rps limits the batch size per dispatch. |
| `pgmb.create(name, binding_key, max_retries, worker_id)` | Create a queue, its dead-letter table and scheduler job; return the queue UUID. |
| `pgmb.send(id, routing_key, body)` | Store a JSONB message and route it to matching queues. |
| `pgmb.send` overloads | Accept optional headers and an integer-seconds or timestamp delay. |
| `pgmb.dispatch_messages(queue_id)` | Dispatch a batch; mark successful HTTP responses acknowledged, retry failures and move exhausted messages to the dead-letter table. |

### Limits of version 1.0.0

- Delays populate `enqueued_at`, but the dispatcher does not filter out future timestamps; the overloads do not guarantee delayed delivery.
- Headers are stored with messages, but the dispatcher sends only the body using `http_post`; they are not forwarded as custom HTTP headers.
- Retries use a counter on subsequent dispatches. The SQL does not implement exponential backoff.
- HTTP effects are external to the database transaction. Review delivery and retention requirements before relying on this archived project.
