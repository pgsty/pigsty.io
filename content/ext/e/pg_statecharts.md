---
title: "pg_statecharts"
linkTitle: "pg_statecharts"
description: "Hierarchical state machines and transactional event handling"
weight: 2695
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/kronor-io/statecharts">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">kronor-io/statecharts</div>
    <div class="ext-card__desc">https://github.com/kronor-io/statecharts</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_statecharts-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_statecharts-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_statecharts-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_statecharts`**](/ext/e/pg_statecharts) | `0.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2695  | [**`pg_statecharts`**](/ext/e/pg_statecharts) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsm` |
| 2696  | [**`pg_statecharts_dev`**](/ext/e/pg_statecharts_dev) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsm` |
{.ext-table .wide .expand}

| **Related** | [`ltree`](/ext/e/ltree) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_statecharts_dev`](/ext/e/pg_statecharts_dev) |
{.ext-table .ext-table--rel}


> ltree in public


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "16,17,18" >}} | `pg_statecharts` | `ltree` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "16,17,18" >}} | `pg_statecharts_$v` | `postgresql$v-contrib` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-statecharts` | `postgresql-$v` |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_statecharts_18 pg_statecharts_18-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statecharts_18-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_statecharts_18 pg_statecharts_18-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statecharts_18-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_statecharts_18 pg_statecharts_18-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statecharts_18-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_statecharts_18 pg_statecharts_18-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statecharts_18-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_statecharts_18 pg_statecharts_18-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statecharts_18-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_statecharts_18 pg_statecharts_18-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statecharts_18-0.1.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-statecharts postgresql-18-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statecharts/postgresql-18-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pg_statecharts_17 pg_statecharts_17-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statecharts_17-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_statecharts_17 pg_statecharts_17-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statecharts_17-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_statecharts_17 pg_statecharts_17-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statecharts_17-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_statecharts_17 pg_statecharts_17-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statecharts_17-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_statecharts_17 pg_statecharts_17-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statecharts_17-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_statecharts_17 pg_statecharts_17-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statecharts_17-0.1.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-statecharts postgresql-17-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statecharts/postgresql-17-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pg_statecharts_16 pg_statecharts_16-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_statecharts_16-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_statecharts_16 pg_statecharts_16-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 31.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_statecharts_16-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_statecharts_16 pg_statecharts_16-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_statecharts_16-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_statecharts_16 pg_statecharts_16-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 30.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_statecharts_16-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_statecharts_16 pg_statecharts_16-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_statecharts_16-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_statecharts_16 pg_statecharts_16-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 30.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_statecharts_16-0.1.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-statecharts postgresql-16-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-statecharts/postgresql-16-pg-statecharts_0.1.0-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_statecharts` using `pig build`:

```bash
pig build pkg pg_statecharts         # build RPM / DEB packages
```


## Install

You can install `pg_statecharts` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_statecharts;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_statecharts -v 18  # PG 18
pig ext install -y pg_statecharts -v 17  # PG 17
pig ext install -y pg_statecharts -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_statecharts_18       # PG 18
dnf install -y pg_statecharts_17       # PG 17
dnf install -y pg_statecharts_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-statecharts   # PG 18
apt install -y postgresql-17-pg-statecharts   # PG 17
apt install -y postgresql-16-pg-statecharts   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_statecharts CASCADE;  -- requires: ltree
```

## Usage

Sources:

- [PGXN 0.1.0 distribution](https://pgxn.org/dist/pg_statecharts/0.1.0/)
- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts/README.md)
- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts/pg_statecharts.control)
- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts/sql/function/start_machine_with_latest_statechart.sql)
- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts/sql/table/state_machine_event.sql)

`pg_statecharts` 0.1.0 runs hierarchical state machines and their events transactionally inside PostgreSQL. This release is pure SQL, tested on PostgreSQL 16–18, and needs no preload or restart.

### Core Workflow

Install `ltree` in `public`, then install the extension with a role that has the required object-creation privileges:

```sql
CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;
CREATE EXTENSION pg_statecharts;
```

Deploy a statechart definition through SQL migrations or the development companion before starting a machine. For an already deployed chart named order, this starts its latest version and returns the machine row:

```sql
SELECT * FROM fsm.start_machine_with_latest_statechart(1, 'order', '{}');
```

Events are inserted into `fsm.state_machine_event` with the shard, machine identifier, event name and JSON data. Its triggers process the event in the inserting transaction, including entry and exit callbacks. Callers must have the appropriate table and function privileges; chart callbacks are application code that needs its own review.

### Catalog and Versions

Definitions and running machines live in `fsm`. `fsm.to_semver` parses numeric chart versions and `fsm.semver_text` renders them; stored versions are integer arrays so their native ordering remains numeric. Do not sort a textual rendering when version precedence matters.

### Backups and Legacy Migration

The reviewed 0.1.0 source registers state tables and sequences for database dumps. The event inbox is intentionally omitted to avoid replaying callbacks during restoration. Backups made with 0.0.0 omitted machine state; take a fresh, restore-tested backup after upgrading.

An earlier 0.1.0 installation may predate dump registration, so check the installed catalog instead of trusting its version string. Do not drop a populated extension merely to refresh registration. Legacy Rust or Sqitch migrations require superuser work and the old semver dependency during conversion; follow the migration guide and rehearse on a restored copy. The old 0.0.0 path is no longer independently exercised upstream.
