---
title: "pg_dispatch"
linkTitle: "pg_dispatch"
description: "Asynchronous SQL dispatcher built on pg_cron"
weight: 1100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Snehil-Shah/pg_dispatch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Snehil-Shah/pg_dispatch</div>
    <div class="ext-card__desc">https://github.com/Snehil-Shah/pg_dispatch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_dispatch-0.1.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_dispatch-0.1.5.tar.gz</div>
    <div class="ext-card__desc">pg_dispatch-0.1.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_dispatch`**](/ext/e/pg_dispatch) | `0.1.5` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1100  | [**`pg_dispatch`**](/ext/e/pg_dispatch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgcrypto`](/ext/e/pgcrypto) [`pg_cron`](/ext/e/pg_cron) [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pgagent`](/ext/e/pgagent) [`pg_later`](/ext/e/pg_later) [`pg_dbms_job`](/ext/e/pg_dbms_job) [`pg_background`](/ext/e/pg_background) [`pg_durable`](/ext/e/pg_durable) [`pg_jobmon`](/ext/e/pg_jobmon) [`omni_worker`](/ext/e/omni_worker) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Pure SQL extension; runtime also needs pgcrypto from contrib in addition to pg_cron.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_dispatch` | `pgcrypto`, `pg_cron` |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_dispatch_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-dispatch` | `postgresql-$v-cron` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
@ el8.x86_64 18 pg_dispatch_18 pg_dispatch_18-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dispatch_18-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_dispatch_18 pg_dispatch_18-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dispatch_18-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_dispatch_18 pg_dispatch_18-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dispatch_18-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_dispatch_18 pg_dispatch_18-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dispatch_18-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_dispatch_18 pg_dispatch_18-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dispatch_18-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_dispatch_18 pg_dispatch_18-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dispatch_18-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-dispatch postgresql-18-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-18-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_dispatch_17 pg_dispatch_17-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dispatch_17-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_dispatch_17 pg_dispatch_17-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dispatch_17-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_dispatch_17 pg_dispatch_17-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dispatch_17-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_dispatch_17 pg_dispatch_17-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dispatch_17-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_dispatch_17 pg_dispatch_17-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dispatch_17-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_dispatch_17 pg_dispatch_17-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dispatch_17-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-dispatch postgresql-17-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-17-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_dispatch_16 pg_dispatch_16-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dispatch_16-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_dispatch_16 pg_dispatch_16-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dispatch_16-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_dispatch_16 pg_dispatch_16-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dispatch_16-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_dispatch_16 pg_dispatch_16-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dispatch_16-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_dispatch_16 pg_dispatch_16-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dispatch_16-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_dispatch_16 pg_dispatch_16-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dispatch_16-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-dispatch postgresql-16-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-16-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_dispatch_15 pg_dispatch_15-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dispatch_15-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_dispatch_15 pg_dispatch_15-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dispatch_15-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_dispatch_15 pg_dispatch_15-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dispatch_15-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_dispatch_15 pg_dispatch_15-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dispatch_15-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_dispatch_15 pg_dispatch_15-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dispatch_15-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_dispatch_15 pg_dispatch_15-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dispatch_15-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-dispatch postgresql-15-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-15-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_dispatch_14 pg_dispatch_14-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_dispatch_14-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_dispatch_14 pg_dispatch_14-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_dispatch_14-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_dispatch_14 pg_dispatch_14-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 10.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_dispatch_14-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_dispatch_14 pg_dispatch_14-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 10.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_dispatch_14-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_dispatch_14 pg_dispatch_14-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_dispatch_14-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_dispatch_14 pg_dispatch_14-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_dispatch_14-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 4.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-dispatch postgresql-14-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb pigsty 0.1.5 3.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-dispatch/postgresql-14-pg-dispatch_0.1.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_dispatch` using `pig build`:

```bash
pig build pkg pg_dispatch         # build RPM / DEB packages
```


## Install

You can install `pg_dispatch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_dispatch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_dispatch -v 18  # PG 18
pig ext install -y pg_dispatch -v 17  # PG 17
pig ext install -y pg_dispatch -v 16  # PG 16
pig ext install -y pg_dispatch -v 15  # PG 15
pig ext install -y pg_dispatch -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_dispatch_18       # PG 18
dnf install -y pg_dispatch_17       # PG 17
dnf install -y pg_dispatch_16       # PG 16
dnf install -y pg_dispatch_15       # PG 15
dnf install -y pg_dispatch_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-dispatch   # PG 18
apt install -y postgresql-17-pg-dispatch   # PG 17
apt install -y postgresql-16-pg-dispatch   # PG 16
apt install -y postgresql-15-pg-dispatch   # PG 15
apt install -y postgresql-14-pg-dispatch   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_dispatch CASCADE;  -- requires: pgcrypto, pg_cron
```




## Usage

Source: [README](https://github.com/Snehil-Shah/pg_dispatch/blob/master/README.md), [database.dev page](https://database.dev/Snehil_Shah/pg_dispatch)

`pg_dispatch` is a TLE-compatible async SQL dispatcher built on `pg_cron`. It is intended for deferring side effects out of the caller's main transaction in sandboxed environments such as RDS or Supabase.

### Requirements and install

- PostgreSQL 13+
- `pg_cron` 1.5.0+
- `pgcrypto`

```sql
SELECT dbdev.install(Snehil_Shah@pg_dispatch);
CREATE EXTENSION "Snehil_Shah@pg_dispatch";
```

The extension installs into the `pgdispatch` schema.

### Main functions

```sql
SELECT pgdispatch.fire('SELECT pg_sleep(40);');
SELECT pgdispatch.snooze('SELECT pg_sleep(20);', '20 seconds');
```

- `pgdispatch.fire(command text)`: enqueue SQL for immediate async execution.
- `pgdispatch.snooze(command text, delay interval)`: enqueue SQL for delayed async execution.

### Typical use

The official README positions `pg_dispatch` for PL/pgSQL or trigger-based workflows where a foreground RPC should commit quickly while notifications, analytics updates, or other expensive SQL run later in a separate transaction.

### Caveats

- The runtime dependency on `pgcrypto` is in addition to `pg_cron`.
- The `delay` argument truncates to seconds precision.
- The project documents TLE/database.dev installation first; manual PGXN installation is also linked from the README.
