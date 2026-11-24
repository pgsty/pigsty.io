---
title: "fsm_core"
linkTitle: "fsm_core"
description: "Finite state machine toolkit for PostgreSQL"
weight: 2690
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgfsm/fsm/tree/main/packages/database-src-extension/fsm_core">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">database-src-extension/fsm_core</div>
    <div class="ext-card__desc">https://github.com/pgfsm/fsm/tree/main/packages/database-src-extension/fsm_core</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/fsm_core-1.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">fsm_core-1.2.0.tar.gz</div>
    <div class="ext-card__desc">fsm_core-1.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`fsm_core`**](/ext/e/fsm_core) | `1.2.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2690  | [**`fsm_core`**](/ext/e/fsm_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsm_core` |
{.ext-table .wide .expand}

| **Related** | [`ltree`](/ext/e/ltree) [`pgmq`](/ext/e/pgmq) [`pgmq`](/ext/e/pgmq) [`ulak`](/ext/e/ulak) [`pgmb`](/ext/e/pgmb) [`pg_durable`](/ext/e/pg_durable) [`redis`](/ext/e/redis) [`pg_task`](/ext/e/pg_task) [`pg_background`](/ext/e/pg_background) [`pgq`](/ext/e/pgq) [`redis_fdw`](/ext/e/redis_fdw) [`tcn`](/ext/e/tcn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG15+; requires ltree, pgmq, and pg_jsonschema


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "19,18,17,16,15" >}} | `fsm_core` | `ltree`, `pgmq` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "19,18,17,16,15" >}} | `fsm_core_$v` | `pgmq_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-fsm-core` | `postgresql-$v-pgmq`, `postgresql-$v-pg-jsonschema` |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
@ el9.x86_64 19 fsm_core_19 fsm_core_19-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_19-1.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 19 fsm_core_19 fsm_core_19-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_19-1.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 19 fsm_core_19 fsm_core_19-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_19-1.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 19 fsm_core_19 fsm_core_19-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_19-1.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 19 postgresql-19-fsm-core postgresql-19-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-19-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 18 fsm_core_18 fsm_core_18-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_18-1.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 fsm_core_18 fsm_core_18-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_18-1.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 fsm_core_18 fsm_core_18-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_18-1.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 fsm_core_18 fsm_core_18-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_18-1.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 fsm_core_18 fsm_core_18-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_18-1.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 fsm_core_18 fsm_core_18-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_18-1.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-fsm-core postgresql-18-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-18-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 17 fsm_core_17 fsm_core_17-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_17-1.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 fsm_core_17 fsm_core_17-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_17-1.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 fsm_core_17 fsm_core_17-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_17-1.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 fsm_core_17 fsm_core_17-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_17-1.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 fsm_core_17 fsm_core_17-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_17-1.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 fsm_core_17 fsm_core_17-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_17-1.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-fsm-core postgresql-17-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-17-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 16 fsm_core_16 fsm_core_16-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_16-1.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 fsm_core_16 fsm_core_16-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_16-1.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 fsm_core_16 fsm_core_16-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_16-1.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 fsm_core_16 fsm_core_16-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_16-1.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 fsm_core_16 fsm_core_16-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_16-1.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 fsm_core_16 fsm_core_16-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_16-1.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-fsm-core postgresql-16-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-16-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 15 fsm_core_15 fsm_core_15-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fsm_core_15-1.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 fsm_core_15 fsm_core_15-1.2.0-1PGSTY.el8.noarch.rpm pigsty 1.2.0 63.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fsm_core_15-1.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 fsm_core_15 fsm_core_15-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fsm_core_15-1.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 fsm_core_15 fsm_core_15-1.2.0-1PGSTY.el9.noarch.rpm pigsty 1.2.0 58.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fsm_core_15-1.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 fsm_core_15 fsm_core_15-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fsm_core_15-1.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 fsm_core_15 fsm_core_15-1.2.0-1PGSTY.el10.noarch.rpm pigsty 1.2.0 58.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fsm_core_15-1.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~bookworm_all.deb pigsty 1.2.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~trixie_all.deb pigsty 1.2.0 52.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~jammy_all.deb pigsty 1.2.0 53.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~noble_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-fsm-core postgresql-15-fsm-core_1.2.0-1PGSTY~resolute_all.deb pigsty 1.2.0 53.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fsm-core/postgresql-15-fsm-core_1.2.0-1PGSTY~resolute_all.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install fsm_core;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y fsm_core -v 19  # PG 19
pig ext install -y fsm_core -v 18  # PG 18
pig ext install -y fsm_core -v 17  # PG 17
pig ext install -y fsm_core -v 16  # PG 16
pig ext install -y fsm_core -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y fsm_core_19       # PG 19
dnf install -y fsm_core_18       # PG 18
dnf install -y fsm_core_17       # PG 17
dnf install -y fsm_core_16       # PG 16
dnf install -y fsm_core_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-fsm-core   # PG 19
apt install -y postgresql-18-fsm-core   # PG 18
apt install -y postgresql-17-fsm-core   # PG 17
apt install -y postgresql-16-fsm-core   # PG 16
apt install -y postgresql-15-fsm-core   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION fsm_core CASCADE;  -- requires: ltree, pgmq
```

## Usage

Sources:

- [fsm_core-v1.2.0](https://github.com/pgfsm/fsm/releases/tag/fsm_core-v1.2.0)
- [README.md](https://github.com/pgfsm/fsm/blob/fsm_core-v1.2.0/packages/database-src/README.md)
- [fsm_core-1.2.0.zip](https://github.com/pgfsm/fsm/releases/download/fsm_core-v1.2.0/fsm_core-1.2.0.zip)


`fsm_core` 1.2.0 stores finite-state-machine definitions, instances, transitions and event history in PostgreSQL. Its SQL interface loads validated JSON, creates instances by name and version, and submits events through `pgmq` queues.

### Install and Configure

The release requires PostgreSQL 15 or later and was tested on 15–18. Required extensions are `ltree` 1.2+, `pgmq` 1.4.4+ and `pg_cron` 1.5+. Add `pg_cron` to the existing `shared_preload_libraries`, restart PostgreSQL if that setting changes, and install into the database selected by `cron.database_name`.

After installing the matching extension files, a superuser can enable the fixed, nonrelocatable `fsm_core` schema:

```sql
CREATE EXTENSION fsm_core CASCADE;
SELECT fsm_core.version();
```

Installation creates `fsm_*` roles and the `fsm_schedule_all_pending` scheduler job, which runs every five seconds. Inspect role memberships, queue permissions and the scheduler before granting application access. `pg_jsonschema` is optional: if its validation helper exists in `fsm_core`, the loader reports schema problems but does not reject a definition on that check alone.

### Load a Definition

Validate the machine with the upstream compiler and set the psql variable fsm_json to that JSON before this call. The 1.2.0 signature has no input_fsm_type argument:

```sql
SELECT fsm_core.load_fsm_from_json_v2(
  json_input        := :'fsm_json'::jsonb,
  root_node_text    := 'root',
  input_fsm_name    := 'creditCheck',
  input_fsm_version := 'v01'
);
```

Concurrent loads of the same name and version are serialized by an advisory transaction lock. Identical JSON returns the cached definition; different JSON under an existing name and version raises an error. Use a new version for a changed machine. The optional input_dependent_children argument records child-machine dependencies.

### Create an Instance and Send Events

```sql
SELECT fsm_core.create_fsm_instance_from_name_v2(
  input_fsm_name    := 'creditCheck',
  input_fsm_version := 'v01',
  input_fsm_context := '{"applicant_id":"a-42"}'::jsonb,
  create_pgmq_queue := true
) AS creation_result
\gset
SELECT :'creation_result'::jsonb AS creation_status;
SELECT :'creation_result'::jsonb ->> 'fsm_instance_id' AS fsm_instance_id
\gset
```

The returned JSON includes `fsm_instance_id`, `queue_created`, `send_event_result`, `message` and `extra_message`. Check these before submitting work: queue creation and initial-event failures can be reported in the result. Initial context is shallow-merged with the definition's static context, with supplied object keys taking precedence.

For this top-level machine, submit an event declared by its definition:

```sql
SELECT fsm_core.send_event_to_fsm_queue_with_event_logs_v2(
  input_fsm_instance_id            := :'fsm_instance_id'::uuid,
  input_fsm_instance_id_fsm_type   := 'fsm',
  input_fsm_instance_id_fsm_version := 'v01',
  input_event_name                 := 'APPROVE',
  input_event_action_type          := 'user',
  input_event_data                 := '{"approved_by":"manager"}'::jsonb,
  input_event_delay                := 0
);
```

The helper queues the event and writes event history. The old parent-queue parameters are absent from this release's signature. Queuing an event is not proof that a worker has processed it; monitor scheduler activity, queue backlog and instance state.

### Objects and Upgrade Boundaries

`fsm_json`, `fsm_states` and `fsm_transitions` hold definitions; `fsm_instance` holds instances; `fsm_instance_queue_event_logs` records queue events. `resolve_state_value_v2` and `macrostep_v2` expose lower-level state resolution and transition logic. Prefer the verified v2 entry points and restrict access to security-definer functions and underlying tables.

The release notes describe sequential upgrade scripts guarded by `require_version`, but the reviewed 1.2.0 ZIP contains the full install script and no version-to-version upgrade scripts. Preserve populated databases and obtain a verified upgrade artifact before upgrading an existing installation. Do not rerun the full install or assume `ALTER EXTENSION ... UPDATE` has an available upgrade path.
