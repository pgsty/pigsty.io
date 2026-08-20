---
title: "pg_later"
linkTitle: "pg_later"
description: "Run queries now and get results later"
weight: 1090
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ChuckHend/pg_later">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ChuckHend/pg_later</div>
    <div class="ext-card__desc">https://github.com/ChuckHend/pg_later</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_later-0.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_later-0.4.0.tar.gz</div>
    <div class="ext-card__desc">pg_later-0.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_later`**](/ext/e/pg_later) | `0.4.0` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1090  | [**`pg_later`**](/ext/e/pg_later) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglater` |
{.ext-table}

| **Related** | [`pgmq`](/ext/e/pgmq) [`pg_task`](/ext/e/pg_task) [`pg_cron`](/ext/e/pg_cron) [`pg_dispatch`](/ext/e/pg_dispatch) [`pgagent`](/ext/e/pgagent) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_background`](/ext/e/pg_background) [`pg_durable`](/ext/e/pg_durable) [`omni_worker`](/ext/e/omni_worker) [`pg_jobmon`](/ext/e/pg_jobmon) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_later` | `pgmq` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_later_$v` | `pgmq_$v` |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-later` | `postgresql-$v-pgmq` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
@ el8.x86_64 18 pg_later_18 pg_later_18-0.4.0-4PIGSTY.el8.x86_64.rpm pigsty 0.4.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_later_18-0.4.0-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_later_18 pg_later_18-0.4.0-4PIGSTY.el8.aarch64.rpm pigsty 0.4.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_later_18-0.4.0-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_later_18 pg_later_18-0.4.0-4PIGSTY.el9.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_later_18-0.4.0-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_later_18 pg_later_18-0.4.0-4PIGSTY.el9.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_later_18-0.4.0-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_later_18 pg_later_18-0.4.0-4PIGSTY.el10.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_later_18-0.4.0-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_later_18 pg_later_18-0.4.0-4PIGSTY.el10.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_later_18-0.4.0-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~noble_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~noble_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-later postgresql-18-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-18-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_later_17 pg_later_17-0.4.0-4PIGSTY.el8.x86_64.rpm pigsty 0.4.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_later_17-0.4.0-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_later_17 pg_later_17-0.4.0-4PIGSTY.el8.aarch64.rpm pigsty 0.4.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_later_17-0.4.0-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_later_17 pg_later_17-0.4.0-4PIGSTY.el9.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_later_17-0.4.0-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_later_17 pg_later_17-0.4.0-4PIGSTY.el9.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_later_17-0.4.0-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_later_17 pg_later_17-0.4.0-4PIGSTY.el10.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_later_17-0.4.0-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_later_17 pg_later_17-0.4.0-4PIGSTY.el10.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_later_17-0.4.0-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~noble_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~noble_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-later postgresql-17-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-17-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_later_16 pg_later_16-0.4.0-4PIGSTY.el8.x86_64.rpm pigsty 0.4.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_later_16-0.4.0-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_later_16 pg_later_16-0.4.0-4PIGSTY.el8.aarch64.rpm pigsty 0.4.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_later_16-0.4.0-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_later_16 pg_later_16-0.4.0-4PIGSTY.el9.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_later_16-0.4.0-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_later_16 pg_later_16-0.4.0-4PIGSTY.el9.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_later_16-0.4.0-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_later_16 pg_later_16-0.4.0-4PIGSTY.el10.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_later_16-0.4.0-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_later_16 pg_later_16-0.4.0-4PIGSTY.el10.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_later_16-0.4.0-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~noble_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~noble_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-later postgresql-16-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-16-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_later_15 pg_later_15-0.4.0-4PIGSTY.el8.x86_64.rpm pigsty 0.4.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_later_15-0.4.0-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_later_15 pg_later_15-0.4.0-4PIGSTY.el8.aarch64.rpm pigsty 0.4.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_later_15-0.4.0-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_later_15 pg_later_15-0.4.0-4PIGSTY.el9.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_later_15-0.4.0-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_later_15 pg_later_15-0.4.0-4PIGSTY.el9.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_later_15-0.4.0-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_later_15 pg_later_15-0.4.0-4PIGSTY.el10.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_later_15-0.4.0-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_later_15 pg_later_15-0.4.0-4PIGSTY.el10.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_later_15-0.4.0-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~noble_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~noble_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-later postgresql-15-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-15-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_later_14 pg_later_14-0.4.0-4PIGSTY.el8.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_later_14-0.4.0-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_later_14 pg_later_14-0.4.0-4PIGSTY.el8.aarch64.rpm pigsty 0.4.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_later_14-0.4.0-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_later_14 pg_later_14-0.4.0-4PIGSTY.el9.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_later_14-0.4.0-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_later_14 pg_later_14-0.4.0-4PIGSTY.el9.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_later_14-0.4.0-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_later_14 pg_later_14-0.4.0-4PIGSTY.el10.x86_64.rpm pigsty 0.4.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_later_14-0.4.0-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_later_14 pg_later_14-0.4.0-4PIGSTY.el10.aarch64.rpm pigsty 0.4.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_later_14-0.4.0-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb pigsty 0.4.0 2.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb pigsty 0.4.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~noble_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~noble_arm64.deb pigsty 0.4.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb pigsty 0.4.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-later postgresql-14-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb pigsty 0.4.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-later/postgresql-14-pg-later_0.4.0-4PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_later` using `pig build`:

```bash
pig build pkg pg_later         # build RPM / DEB packages
```


## Install

You can install `pg_later` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_later;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_later -v 18  # PG 18
pig ext install -y pg_later -v 17  # PG 17
pig ext install -y pg_later -v 16  # PG 16
pig ext install -y pg_later -v 15  # PG 15
pig ext install -y pg_later -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_later_18       # PG 18
dnf install -y pg_later_17       # PG 17
dnf install -y pg_later_16       # PG 16
dnf install -y pg_later_15       # PG 15
dnf install -y pg_later_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-later   # PG 18
apt install -y postgresql-17-pg-later   # PG 17
apt install -y postgresql-16-pg-later   # PG 16
apt install -y postgresql-15-pg-later   # PG 15
apt install -y postgresql-14-pg-later   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_later';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_later CASCADE;  -- requires: pgmq
```




## Usage

> [pg_later: Execute SQL now and get the results later](https://github.com/tembo-io/pg_later)

A PostgreSQL extension to execute queries asynchronously. Built on [pgmq](https://github.com/pgmq/pgmq).

### Getting Started

Initialize the extension's backend:

```sql
CREATE EXTENSION pg_later CASCADE;
SELECT pglater.init();
```

Execute a SQL query now:

```sql
SELECT pglater.exec(
  'SELECT * FROM pg_available_extensions ORDER BY name LIMIT 2'
) AS job_id;
```

```text
 job_id
--------
     1
```

Come back at some later time, and retrieve the results by providing the job id:

```sql
SELECT pglater.fetch_results(1);
```

```json
{
  "query": "select * from pg_available_extensions order by name limit 2",
  "job_id": 1,
  "result": [
    {
      "name": "adminpack",
      "comment": "administrative functions for PostgreSQL",
      "default_version": "2.1",
      "installed_version": null
    },
    {
      "name": "amcheck",
      "comment": "functions for verifying relation integrity",
      "default_version": "1.3",
      "installed_version": null
    }
  ],
  "status": "success"
}
```
