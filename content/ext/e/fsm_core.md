---
title: "fsm_core"
linkTitle: "fsm_core"
description: "Finite state machine toolkit for PostgreSQL"
weight: 2690
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Nirajkashyap/fsm/tree/main/packages/database-src-extension/fsm_core">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">database-src-extension/fsm_core</div>
    <div class="ext-card__desc">https://github.com/Nirajkashyap/fsm/tree/main/packages/database-src-extension/fsm_core</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/fsm_core-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">fsm_core-1.1.0.tar.gz</div>
    <div class="ext-card__desc">fsm_core-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`fsm_core`**](/ext/e/fsm_core) | `1.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2690  | [**`fsm_core`**](/ext/e/fsm_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsm_core` |
{.ext-table}

| **Related** | [`ltree`](/ext/e/ltree) [`pgmq`](/ext/e/pgmq) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`pgmq`](/ext/e/pgmq) [`ulak`](/ext/e/ulak) [`pgmb`](/ext/e/pgmb) [`pg_durable`](/ext/e/pg_durable) [`redis`](/ext/e/redis) [`pg_task`](/ext/e/pg_task) [`pg_background`](/ext/e/pg_background) [`pgq`](/ext/e/pgq) [`redis_fdw`](/ext/e/redis_fdw) [`tcn`](/ext/e/tcn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG15+; requires ltree, pgmq, and pg_jsonschema


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "15,16,17,18" >}} | `fsm_core` | `ltree`, `pgmq`, `pg_jsonschema` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "15,16,17,18" >}} | `fsm_core_$v` | `pgmq_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "15,16,17,18" >}} | `postgresql-$v-fsm-core` | `postgresql-$v-pgmq`, `postgresql-$v-pg-jsonschema` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 fsm_core_18 fsm_core_18-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_18-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 fsm_core_18 fsm_core_18-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_18-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 fsm_core_18 fsm_core_18-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_18-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 fsm_core_18 fsm_core_18-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 30.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_18-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 fsm_core_18 fsm_core_18-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_18-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 fsm_core_18 fsm_core_18-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_18-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-18-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 fsm_core_17 fsm_core_17-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_17-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 fsm_core_17 fsm_core_17-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_17-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 fsm_core_17 fsm_core_17-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 30.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_17-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 fsm_core_17 fsm_core_17-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 30.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_17-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 fsm_core_17 fsm_core_17-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_17-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 fsm_core_17 fsm_core_17-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_17-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-17-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 fsm_core_16 fsm_core_16-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_16-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 fsm_core_16 fsm_core_16-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_16-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 fsm_core_16 fsm_core_16-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_16-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 fsm_core_16 fsm_core_16-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 30.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_16-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 fsm_core_16 fsm_core_16-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_16-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 fsm_core_16 fsm_core_16-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_16-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-16-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 fsm_core_15 fsm_core_15-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_15-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 fsm_core_15 fsm_core_15-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_15-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 fsm_core_15 fsm_core_15-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 30.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_15-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 fsm_core_15 fsm_core_15-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 30.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_15-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 fsm_core_15 fsm_core_15-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_15-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 fsm_core_15 fsm_core_15-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_15-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 24.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-15-fsm-core_1.1.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `fsm_core` using `pig build`:

```bash
pig build pkg fsm_core         # build RPM / DEB packages
```


## Install

You can install `fsm_core` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install fsm_core;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y fsm_core -v 18  # PG 18
pig ext install -y fsm_core -v 17  # PG 17
pig ext install -y fsm_core -v 16  # PG 16
pig ext install -y fsm_core -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y fsm_core_18       # PG 18
dnf install -y fsm_core_17       # PG 17
dnf install -y fsm_core_16       # PG 16
dnf install -y fsm_core_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-fsm-core   # PG 18
apt install -y postgresql-17-fsm-core   # PG 17
apt install -y postgresql-16-fsm-core   # PG 16
apt install -y postgresql-15-fsm-core   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION fsm_core CASCADE;  -- requires: ltree, pgmq, pg_jsonschema
```




## Usage

Sources:

- [fsm_core PGXN README](https://github.com/pgfsm/fsm/blob/main/packages/database-src/pgxn-dist/README.md)
- [PGXN control file](https://github.com/pgfsm/fsm/blob/main/packages/database-src/pgxn-dist/fsm_core.control)
- [1.1.0 SQL definition](https://github.com/pgfsm/fsm/blob/main/packages/database-src/pgxn-dist/fsm_core--1.1.0.sql)
- [Supabase 1.1.1-1.1.3 migrations](https://github.com/pgfsm/fsm/tree/main/packages/database-src/supabase/migrations)
- [worker execution ADR](https://github.com/pgfsm/fsm/blob/main/apps/fsm-core-worker-ts/docs/ADR-001-worker-execution-model.md)
- [example definitions README](https://github.com/pgfsm/fsm/blob/main/apps/fsm-core-example/README.md)

`fsm_core` is a finite-state-machine toolkit that stores FSM definitions, instances, transitions, dispatch queues, and event logs inside PostgreSQL. A machine definition is loaded from JSON, instances are created by name and version, and events are sent through SQL functions with optional `pgmq` queues or the newer scheduler dispatch path.

The PGXN packaged extension still declares `default_version = '1.1.0'` and requires PostgreSQL 15+, `ltree`, and `pgmq`. The repository's `packages/database-src` project is at `1.1.3` and contains Supabase migration files through `fsm_core--1.1.2--1.1.3.sql`; the Rust/pgrx directory is explicitly marked not currently used. Treat the PGXN distribution as the packaged source and the Supabase migrations as main-branch material.

### Core Tables and Types

`fsm_core` creates an enum `fsm_state_type` with `atomic`, `compound`, `parallel`, `final`, and `history`, plus tables including:

- `fsm_core.fsm_json` for loaded FSM definitions.
- `fsm_core.fsm_states` for expanded state nodes and ltree paths.
- `fsm_core.fsm_transitions` for transition rules.
- `fsm_core.fsm_instance` for running instances.
- `fsm_core.fsm_instance_lock` for advisory/concurrency state.
- `fsm_core.fsm_instance_queue_event_logs` and `fsm_core.fsm_promise_queue_event_logs` for queued event history.
- `fsm_core.fsm_dispatch_queue` and `fsm_core.fsm_daemon_node` in the main-branch scheduler path.

### Load a Machine Definition

```sql
SELECT fsm_core.load_fsm_from_json_v2(
  json_input        := :'fsm_json'::jsonb,
  root_node_text    := 'root',
  input_fsm_type    := 'workflow',
  input_fsm_name    := 'creditCheck',
  input_fsm_version := 'v01'
);
```

`load_fsm_from_json_v2()` validates JSON with `fsm_core.fsm_json_schema()`, caches the raw definition in `fsm_json`, then expands states and transitions. Upstream examples keep immutable version folders such as `fsm/creditCheck/v01/xstate-fsm.json` and `fsm/creditCheck/v02/xstate-fsm.json`; keep deployed versions immutable so existing instances continue against their original definition.

### Create an Instance

```sql
SELECT fsm_core.create_fsm_instance_from_name_v2(
  input_fsm_name     := 'creditCheck',
  input_fsm_version  := 'v01',
  input_fsm_context  := '{"applicant_id":"a-42"}'::jsonb,
  create_pgmq_queue  := true
);
```

The PGXN 1.1.0 function checks that the named FSM exists, inserts an `fsm_instance`, copies transition authorization rows for that instance, and, when `create_pgmq_queue` is true, creates a `pgmq` queue named by the instance UUID and sends `initialTransition_event`.

The main-branch Supabase schema also has a scheduler-oriented path where instance creation can enqueue work through `fsm_core.enqueue_fsm_dispatch_v2()` instead of relying only on per-instance `pgmq` queues.

### Send Events

```sql
SELECT fsm_core.send_event_to_fsm_queue_with_event_logs_v2(
  input_fsm_instance_id                 := '00000000-0000-0000-0000-000000000000'::uuid,
  input_fsm_instance_id_fsm_type         := 'workflow',
  input_fsm_instance_id_fsm_version      := 'v01',
  input_send_to_parent_queue_id          := fsm_core.pg_system_queue_uuid(),
  input_send_to_parent_queue_type        := fsm_core.pg_system_queue_type(),
  input_send_to_parent_queue_id_event_name := fsm_core.pg_system_event_name(),
  input_event_name                       := 'APPROVE',
  input_event_action_type                := 'user',
  input_event_data                       := '{"approved_by":"manager"}'::jsonb,
  input_event_delay                      := 0
);
```

This helper writes to the instance queue with `pgmq.send()` and records the event in `fsm_instance_queue_event_logs`. For nested FSM and promise flows, `send_event_to_queue_from_fsm_instance_id_v2()` dispatches to the child-FSM or promise queue helper based on `fsmtype`.

### Scheduler Dispatch Path

```sql
SELECT fsm_core.enqueue_fsm_dispatch_v2(
  input_instance_id   := '00000000-0000-0000-0000-000000000000'::uuid,
  input_fsm_name      := 'creditCheck',
  input_fsm_version   := 'v01',
  input_dispatch_type := 'start'
);

SELECT fsm_core.schedule_next_pending();
```

The newer worker design uses `fsm_dispatch_queue` as the source of pending work and `fsm_daemon_node` as the registry of available fsmlet nodes. `enqueue_fsm_dispatch_v2()` inserts a pending dispatch row and emits `pg_notify('fsm_scheduler_work', instance_id)`. `schedule_next_pending()` selects pending rows with `FOR UPDATE SKIP LOCKED`, chooses a daemon under its concurrency limit, marks the row scheduled, and notifies `fsm_fsmlet_work_<daemon_id>`.

This scheduler path appears in the main-branch Supabase schema and worker ADR, not in the PGXN 1.1.0 packaged SQL.

### Resolve and Step State

```sql
SELECT fsm_core.resolve_state_value_v2(
  input_json        := '{"value":"pending"}'::jsonb,
  input_fsm_name    := 'creditCheck',
  input_fsm_version := 'v01'
);

SELECT fsm_core.macrostep_v2(
  event_name        := 'APPROVE',
  input_state_value := ARRAY['pending']::text[],
  fsm_name_param    := 'creditCheck',
  fsm_version_param := 'v01'
);
```

The SQL surface also includes lower-level `microstep_v2()`, `fsm_worker_v2()`, lock helpers, archive helpers, and v1 compatibility functions. Prefer v2 entry points for new usage when both versions are present.

### Dependency and Source Caveats

- Enable `ltree` and `pgmq` before `fsm_core`; account for `pg_jsonschema` because upstream Supabase setup and Pigsty package dependencies list it, even though the PGXN control file only declares `ltree, pgmq`.
- `pgmq` queues and `fsm_dispatch_queue` rows are part of the async execution model, so queue names, retention, and scheduler cleanup should be operated like application data.
- The upstream repo has no release tag for `1.1.0` or `1.1.3`; the authoritative packaged source for PGXN is `packages/database-src/pgxn-dist`.
- The `packages/database-src-extension` Rust/pgrx tree is exploratory and marked not currently used. Do not treat it as the active extension implementation.
- Public docs are sparse compared with the SQL surface. Treat unlisted helper functions as internal unless the SQL definition, Supabase migration, or worker ADR demonstrates their role.
