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

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`http`](/ext/e/http) [`pgmq`](/ext/e/pgmq) [`pgq`](/ext/e/pgq) [`pg_task`](/ext/e/pg_task) [`pg_cron`](/ext/e/pg_cron) [`pg_background`](/ext/e/pg_background) [`pg_later`](/ext/e/pg_later) [`pg_net`](/ext/e/pg_net) [`kafka_fdw`](/ext/e/kafka_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmb` | `pg_cron`, `http` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgmb_$v` | `pg_cron_$v`, `pg_http_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmb` | `postgresql-$v-cron`, `postgresql-$v-http` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
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
@ el8.x86_64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmb_18 pgmb_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_18-1.0.0-1PIGSTY.el10.x86_64.rpm
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
@ el8.x86_64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmb_17 pgmb_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_17-1.0.0-1PIGSTY.el10.x86_64.rpm
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
@ el8.x86_64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmb_16 pgmb_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_16-1.0.0-1PIGSTY.el10.x86_64.rpm
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
@ el8.x86_64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmb_15 pgmb_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_15-1.0.0-1PIGSTY.el10.x86_64.rpm
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
@ el8.x86_64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmb_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 12.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmb_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmb_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 12.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmb_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmb_14 pgmb_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 12.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmb_14-1.0.0-1PIGSTY.el10.x86_64.rpm
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmb;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmb -v 18  # PG 18
pig ext install -y pgmb -v 17  # PG 17
pig ext install -y pgmb -v 16  # PG 16
pig ext install -y pgmb -v 15  # PG 15
pig ext install -y pgmb -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmb_18       # PG 18
dnf install -y pgmb_17       # PG 17
dnf install -y pgmb_16       # PG 16
dnf install -y pgmb_15       # PG 15
dnf install -y pgmb_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmb   # PG 18
apt install -y postgresql-17-pgmb   # PG 17
apt install -y postgresql-16-pgmb   # PG 16
apt install -y postgresql-15-pgmb   # PG 15
apt install -y postgresql-14-pgmb   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmb CASCADE;  -- requires: pg_cron, http
```




## Usage

> [pgmb: A lightweight message broker system built inside PostgreSQL](https://github.com/fraruiz/pgmb)

The `pgmb` extension provides an in-database message broker with HTTP-based worker dispatch, automatic retries, dead letter queues, and pattern-based routing.

```sql
CREATE EXTENSION pgmb;  -- requires pg_cron and http extensions
```

### Register a Worker

```sql
SELECT pgmb.worker(
    'order_processor',                     -- worker name
    'http://localhost:8080/process',       -- endpoint URL
    100                                    -- requests per second limit
);
-- Returns: worker UUID
```

### Create a Queue

```sql
SELECT pgmb.create(
    'order_queue',                         -- queue name
    'order.*',                             -- binding key pattern (supports * wildcard)
    5,                                     -- max retries
    '550e8400-e29b-41d4-a716-446655440000' -- worker UUID
);
-- Returns: queue UUID
```

### Send Messages

```sql
-- Simple message
SELECT pgmb.send(
    gen_random_uuid(),
    'order.created',
    '{"order_id": 123, "amount": 45.67}'::jsonb
);

-- With custom headers
SELECT pgmb.send(
    gen_random_uuid(),
    'order.created',
    '{"order_id": 123}'::jsonb,
    '{"source": "web", "priority": "high"}'::jsonb
);

-- Delayed message (by timestamp or seconds)
SELECT pgmb.send(
    gen_random_uuid(),
    'order.created',
    '{"order_id": 123}'::jsonb,
    '{}'::jsonb,
    now() + interval '10 minutes'
);
```

### API Reference

| Function | Description |
|----------|-------------|
| `pgmb.worker(name, endpoint, rps)` | Register an HTTP worker endpoint |
| `pgmb.create(name, binding_key, max_retries, worker_id)` | Create a queue with routing pattern |
| `pgmb.send(id, routing_key, body)` | Send a message |
| `pgmb.send(id, routing_key, body, headers)` | Send a message with headers |
| `pgmb.send(id, routing_key, body, headers, delay)` | Send a delayed message |

### How It Works

1. Messages are inserted into `pgmb.messages` via `pgmb.send()`
2. A trigger routes messages to matching queues based on routing key patterns
3. `pg_cron` dispatches messages via HTTP POST to worker endpoints every second
4. Failed messages are retried; after max retries they move to a dead letter queue

### Monitoring

```sql
SELECT * FROM pgmb.workers;
SELECT * FROM pgmb.queues;
SELECT COUNT(*) FROM pgmb.order_queue WHERE acknoledge = false;
SELECT * FROM pgmb.order_dead_letter_queue;
```
