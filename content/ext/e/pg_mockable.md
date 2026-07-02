---
title: "pg_mockable"
linkTitle: "pg_mockable"
description: "Create mockable wrappers for PostgreSQL functions in tests"
weight: 3120
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_mockable">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_mockable</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_mockable</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_mockable-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_mockable-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_mockable-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_mockable`**](/ext/e/pg_mockable) | `1.1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3120  | [**`pg_mockable`**](/ext/e/pg_mockable) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `mockable` |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mockable` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mockable_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-mockable` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 18 pg_mockable_18 pg_mockable_18-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mockable_18-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_mockable_18 pg_mockable_18-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mockable_18-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_mockable_18 pg_mockable_18-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mockable_18-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_mockable_18 pg_mockable_18-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mockable_18-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_mockable_18 pg_mockable_18-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mockable_18-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_mockable_18 pg_mockable_18-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mockable_18-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-mockable postgresql-18-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-18-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_mockable_17 pg_mockable_17-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mockable_17-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_mockable_17 pg_mockable_17-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mockable_17-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_mockable_17 pg_mockable_17-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mockable_17-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_mockable_17 pg_mockable_17-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mockable_17-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_mockable_17 pg_mockable_17-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mockable_17-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_mockable_17 pg_mockable_17-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mockable_17-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-mockable postgresql-17-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-17-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_mockable_16 pg_mockable_16-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mockable_16-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_mockable_16 pg_mockable_16-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mockable_16-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_mockable_16 pg_mockable_16-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mockable_16-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_mockable_16 pg_mockable_16-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mockable_16-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_mockable_16 pg_mockable_16-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mockable_16-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_mockable_16 pg_mockable_16-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mockable_16-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-mockable postgresql-16-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-16-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_mockable_15 pg_mockable_15-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mockable_15-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_mockable_15 pg_mockable_15-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mockable_15-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_mockable_15 pg_mockable_15-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mockable_15-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_mockable_15 pg_mockable_15-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mockable_15-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_mockable_15 pg_mockable_15-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mockable_15-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_mockable_15 pg_mockable_15-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mockable_15-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-mockable postgresql-15-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-15-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pg_mockable_14 pg_mockable_14-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mockable_14-1.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_mockable_14 pg_mockable_14-1.1.0-1PIGSTY.el8.noarch.rpm pigsty 1.1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mockable_14-1.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_mockable_14 pg_mockable_14-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mockable_14-1.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_mockable_14 pg_mockable_14-1.1.0-1PIGSTY.el9.noarch.rpm pigsty 1.1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mockable_14-1.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_mockable_14 pg_mockable_14-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mockable_14-1.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_mockable_14 pg_mockable_14-1.1.0-1PIGSTY.el10.noarch.rpm pigsty 1.1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mockable_14-1.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb pigsty 1.1.0 22.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb pigsty 1.1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~noble_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-mockable postgresql-14-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb pigsty 1.1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mockable/postgresql-14-pg-mockable_1.1.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_mockable` using `pig build`:

```bash
pig build pkg pg_mockable         # build DEB packages
```


## Install

You can install `pg_mockable` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_mockable;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_mockable -v 18  # PG 18
pig ext install -y pg_mockable -v 17  # PG 17
pig ext install -y pg_mockable -v 16  # PG 16
pig ext install -y pg_mockable -v 15  # PG 15
pig ext install -y pg_mockable -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_mockable_18       # PG 18
dnf install -y pg_mockable_17       # PG 17
dnf install -y pg_mockable_16       # PG 16
dnf install -y pg_mockable_15       # PG 15
dnf install -y pg_mockable_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-mockable   # PG 18
apt install -y postgresql-17-pg-mockable   # PG 17
apt install -y postgresql-16-pg-mockable   # PG 16
apt install -y postgresql-15-pg-mockable   # PG 15
apt install -y postgresql-14-pg-mockable   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_mockable;
```




## Usage

> Sources: [pg_mockable upstream README](https://github.com/bigsmoke/pg_mockable/blob/v1.1.0/README.md), [v1.1.0 tag](https://github.com/bigsmoke/pg_mockable/tree/v1.1.0), [PGXN pg_mockable](https://pgxn.org/dist/pg_mockable/), [local metadata](../db/extension.csv), local source tarball `pg_mockable-1.1.0.tar.gz`.

`pg_mockable` creates mockable wrapper functions for PostgreSQL routines. It is mainly useful in database tests where application code should call a stable wrapper, while tests temporarily replace the wrapper's return value.

```sql
CREATE EXTENSION pg_mockable CASCADE;
```

The extension installs into the fixed `mockable` schema and is not relocatable.

### Mock Built-In Time Functions

`mockable.now()` is pre-created because mocking `now()` also covers the related current-time wrappers exposed by this extension.

```sql
SELECT mockable.now();

SELECT mockable.mock(
  'pg_catalog.now()',
  '2026-06-17 10:00:00+08'::timestamptz
);

SELECT mockable.now();
SELECT mockable.current_timestamp();
SELECT mockable.current_date();

CALL mockable.unmock('pg_catalog.now()');
```

`mockable.mock(regprocedure, anyelement)` stores the mock value and returns it. `mockable.unmock(regprocedure)` clears the mock and restores the wrapper to call the original routine.

### Wrap Application Functions

Use `mockable.wrap_function()` to create a thin wrapper in the `mockable` schema:

```sql
CREATE SCHEMA app;

CREATE FUNCTION app.answer()
RETURNS int
LANGUAGE sql
RETURN 42;

SELECT mockable.wrap_function('app.answer()');

SELECT mockable.answer();                 -- 42
SELECT mockable.mock('app.answer()', 7);   -- 7
SELECT mockable.answer();                 -- 7

CALL mockable.unmock('app.answer()');
SELECT mockable.answer();                 -- 42
```

The first argument is a `regprocedure`, so include argument types when the function is overloaded:

```sql
SELECT mockable.wrap_function('pg_catalog.current_setting(text, boolean)');
```

If automatic wrapper generation is not sufficient, pass the exact `CREATE OR REPLACE FUNCTION` statement as the second argument:

```sql
SELECT mockable.wrap_function(
  'app.answer()',
  $$
  CREATE OR REPLACE FUNCTION mockable.answer()
  RETURNS int
  LANGUAGE sql
  RETURN app.answer();
  $$
);
```

Version 1.1.0 also adds optional debug logging for wrapped/mockable routines through `raise_debug_messages$` on `mockable.wrap_function(...)` and the `mock_memory.raise_debug_messages` column.

### Mock Lifetime

The default mock lifetime is transaction-scoped. For values that must survive dump/restore or later transactions, create the wrapper with a persistent lifetime:

```sql
SELECT mockable.wrap_function(
  'app.answer()',
  mock_duration$ => 'PERSISTENT'
);
```

Persistent mocks should be explicitly cleared when the test fixture no longer needs them:

```sql
CALL mockable.unmock('app.answer()');
```

### Search Path Caveat

Application code must actually call the wrapper, for example `mockable.now()` or `mockable.answer()`, for the mock to apply. Some PL/pgSQL code can be redirected by adjusting `search_path`, but expressions such as table defaults are compiled to function OIDs; adding `mockable` to `search_path` later does not rewrite those references. Prefer explicit `mockable.*` calls in code that is meant to be testable.

### Caveats

- Version 1.1.0 supports PostgreSQL 14-18. It is a SQL extension and does not need `shared_preload_libraries`.
- `pg_mockable` owns the `mockable` schema; installing it in another schema is not supported by the control file.
- Wrapper privileges are derived from the wrapped routine. The tests verify that wrapping a private function does not grant execute privilege to roles that could not call the original function.
