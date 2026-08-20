---
title: "pljs"
linkTitle: "pljs"
description: "PL/JS trusted procedural language"
weight: 3011
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/plv8/pljs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">plv8/pljs</div>
    <div class="ext-card__desc">https://github.com/plv8/pljs</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pljs-1.0.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pljs-1.0.5.tar.gz</div>
    <div class="ext-card__desc">pljs-1.0.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pljs`**](/ext/e/pljs) | `1.0.5` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3011  | [**`pljs`**](/ext/e/pljs) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`plv8`](/ext/e/plv8) [`pllua`](/ext/e/pllua) [`pgwasm`](/ext/e/pgwasm) [`pg_tle`](/ext/e/pg_tle) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> with submodules, hot fix with CONFIG_VERSION


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pljs` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pljs_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pljs` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| d12.x86_64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| d12.aarch64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| d13.x86_64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| d13.aarch64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| u22.x86_64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| u22.aarch64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| u24.x86_64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| u24.aarch64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| u26.x86_64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
| u26.aarch64 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 | AVAIL PGDG 1.0.5 2 |
@ el8.x86_64 18 pljs_18 pljs_18-1.0.5-1PIGSTY.el8.x86_64.rpm pigsty 1.0.5 381.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pljs_18-1.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pljs_18 pljs_18-1.0.5-1PIGSTY.el8.aarch64.rpm pigsty 1.0.5 349.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pljs_18-1.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pljs_18 pljs_18-1.0.5-1PIGSTY.el9.x86_64.rpm pigsty 1.0.5 388.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pljs_18-1.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pljs_18 pljs_18-1.0.5-1PIGSTY.el9.aarch64.rpm pigsty 1.0.5 370.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pljs_18-1.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pljs_18 pljs_18-1.0.5-1PIGSTY.el10.x86_64.rpm pigsty 1.0.5 413.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pljs_18-1.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pljs_18 pljs_18-1.0.5-1PIGSTY.el10.aarch64.rpm pigsty 1.0.5 380.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pljs_18-1.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg12+1_amd64.deb pgdg 1.0.5 410.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb pigsty 1.0.5 409.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg12+1_arm64.deb pgdg 1.0.5 375.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb pigsty 1.0.5 374.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg13+1_amd64.deb pgdg 1.0.5 429.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~trixie_amd64.deb pigsty 1.0.5 428.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg13+1_arm64.deb pgdg 1.0.5 381.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~trixie_arm64.deb pigsty 1.0.5 380.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg22.04+1_amd64.deb pgdg 1.0.5 407.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~jammy_amd64.deb pigsty 1.0.5 434.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg22.04+1_arm64.deb pgdg 1.0.5 373.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~jammy_arm64.deb pigsty 1.0.5 424.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg24.04+1_amd64.deb pgdg 1.0.5 408.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~noble_amd64.deb pigsty 1.0.5 432.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg24.04+1_arm64.deb pgdg 1.0.5 376.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~noble_arm64.deb pigsty 1.0.5 422.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg26.04+1_amd64.deb pgdg 1.0.5 429.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~resolute_amd64.deb pigsty 1.0.5 453.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1.pgdg26.04+1_arm64.deb pgdg 1.0.5 381.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pljs postgresql-18-pljs_1.0.5-1PIGSTY~resolute_arm64.deb pigsty 1.0.5 429.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-18-pljs_1.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pljs_17 pljs_17-1.0.5-1PIGSTY.el8.x86_64.rpm pigsty 1.0.5 381.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pljs_17-1.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pljs_17 pljs_17-1.0.5-1PIGSTY.el8.aarch64.rpm pigsty 1.0.5 349.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pljs_17-1.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pljs_17 pljs_17-1.0.5-1PIGSTY.el9.x86_64.rpm pigsty 1.0.5 388.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pljs_17-1.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pljs_17 pljs_17-1.0.5-1PIGSTY.el9.aarch64.rpm pigsty 1.0.5 370.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pljs_17-1.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pljs_17 pljs_17-1.0.5-1PIGSTY.el10.x86_64.rpm pigsty 1.0.5 413.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pljs_17-1.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pljs_17 pljs_17-1.0.5-1PIGSTY.el10.aarch64.rpm pigsty 1.0.5 379.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pljs_17-1.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg12+1_amd64.deb pgdg 1.0.5 410.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb pigsty 1.0.5 408.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg12+1_arm64.deb pgdg 1.0.5 375.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb pigsty 1.0.5 373.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg13+1_amd64.deb pgdg 1.0.5 429.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~trixie_amd64.deb pigsty 1.0.5 427.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg13+1_arm64.deb pgdg 1.0.5 381.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~trixie_arm64.deb pigsty 1.0.5 380.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg22.04+1_amd64.deb pgdg 1.0.5 422.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~jammy_amd64.deb pigsty 1.0.5 450.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg22.04+1_arm64.deb pgdg 1.0.5 389.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~jammy_arm64.deb pigsty 1.0.5 440.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg24.04+1_amd64.deb pgdg 1.0.5 407.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~noble_amd64.deb pigsty 1.0.5 431.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg24.04+1_arm64.deb pgdg 1.0.5 375.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~noble_arm64.deb pigsty 1.0.5 422.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg26.04+1_amd64.deb pgdg 1.0.5 428.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~resolute_amd64.deb pigsty 1.0.5 453.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1.pgdg26.04+1_arm64.deb pgdg 1.0.5 382.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pljs postgresql-17-pljs_1.0.5-1PIGSTY~resolute_arm64.deb pigsty 1.0.5 429.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-17-pljs_1.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pljs_16 pljs_16-1.0.5-1PIGSTY.el8.x86_64.rpm pigsty 1.0.5 381.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pljs_16-1.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pljs_16 pljs_16-1.0.5-1PIGSTY.el8.aarch64.rpm pigsty 1.0.5 349.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pljs_16-1.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pljs_16 pljs_16-1.0.5-1PIGSTY.el9.x86_64.rpm pigsty 1.0.5 388.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pljs_16-1.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pljs_16 pljs_16-1.0.5-1PIGSTY.el9.aarch64.rpm pigsty 1.0.5 370.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pljs_16-1.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pljs_16 pljs_16-1.0.5-1PIGSTY.el10.x86_64.rpm pigsty 1.0.5 413.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pljs_16-1.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pljs_16 pljs_16-1.0.5-1PIGSTY.el10.aarch64.rpm pigsty 1.0.5 379.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pljs_16-1.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg12+1_amd64.deb pgdg 1.0.5 410.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb pigsty 1.0.5 408.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg12+1_arm64.deb pgdg 1.0.5 375.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb pigsty 1.0.5 374.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg13+1_amd64.deb pgdg 1.0.5 429.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~trixie_amd64.deb pigsty 1.0.5 427.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg13+1_arm64.deb pgdg 1.0.5 381.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~trixie_arm64.deb pigsty 1.0.5 380.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg22.04+1_amd64.deb pgdg 1.0.5 421.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~jammy_amd64.deb pigsty 1.0.5 449.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg22.04+1_arm64.deb pgdg 1.0.5 387.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~jammy_arm64.deb pigsty 1.0.5 439.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg24.04+1_amd64.deb pgdg 1.0.5 408.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~noble_amd64.deb pigsty 1.0.5 431.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg24.04+1_arm64.deb pgdg 1.0.5 375.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~noble_arm64.deb pigsty 1.0.5 422.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg26.04+1_amd64.deb pgdg 1.0.5 428.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~resolute_amd64.deb pigsty 1.0.5 453.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1.pgdg26.04+1_arm64.deb pgdg 1.0.5 381.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pljs postgresql-16-pljs_1.0.5-1PIGSTY~resolute_arm64.deb pigsty 1.0.5 429.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-16-pljs_1.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pljs_15 pljs_15-1.0.5-1PIGSTY.el8.x86_64.rpm pigsty 1.0.5 382.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pljs_15-1.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pljs_15 pljs_15-1.0.5-1PIGSTY.el8.aarch64.rpm pigsty 1.0.5 349.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pljs_15-1.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pljs_15 pljs_15-1.0.5-1PIGSTY.el9.x86_64.rpm pigsty 1.0.5 389.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pljs_15-1.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pljs_15 pljs_15-1.0.5-1PIGSTY.el9.aarch64.rpm pigsty 1.0.5 372.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pljs_15-1.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pljs_15 pljs_15-1.0.5-1PIGSTY.el10.x86_64.rpm pigsty 1.0.5 414.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pljs_15-1.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pljs_15 pljs_15-1.0.5-1PIGSTY.el10.aarch64.rpm pigsty 1.0.5 381.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pljs_15-1.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg12+1_amd64.deb pgdg 1.0.5 409.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb pigsty 1.0.5 408.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg12+1_arm64.deb pgdg 1.0.5 375.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb pigsty 1.0.5 374.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg13+1_amd64.deb pgdg 1.0.5 429.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~trixie_amd64.deb pigsty 1.0.5 428.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg13+1_arm64.deb pgdg 1.0.5 381.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~trixie_arm64.deb pigsty 1.0.5 380.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg22.04+1_amd64.deb pgdg 1.0.5 421.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~jammy_amd64.deb pigsty 1.0.5 449.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg22.04+1_arm64.deb pgdg 1.0.5 388.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~jammy_arm64.deb pigsty 1.0.5 439.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg24.04+1_amd64.deb pgdg 1.0.5 408.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~noble_amd64.deb pigsty 1.0.5 432.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg24.04+1_arm64.deb pgdg 1.0.5 376.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~noble_arm64.deb pigsty 1.0.5 423.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg26.04+1_amd64.deb pgdg 1.0.5 429.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~resolute_amd64.deb pigsty 1.0.5 453.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1.pgdg26.04+1_arm64.deb pgdg 1.0.5 382.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pljs postgresql-15-pljs_1.0.5-1PIGSTY~resolute_arm64.deb pigsty 1.0.5 430.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-15-pljs_1.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pljs_14 pljs_14-1.0.5-1PIGSTY.el8.x86_64.rpm pigsty 1.0.5 382.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pljs_14-1.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pljs_14 pljs_14-1.0.5-1PIGSTY.el8.aarch64.rpm pigsty 1.0.5 349.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pljs_14-1.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pljs_14 pljs_14-1.0.5-1PIGSTY.el9.x86_64.rpm pigsty 1.0.5 388.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pljs_14-1.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pljs_14 pljs_14-1.0.5-1PIGSTY.el9.aarch64.rpm pigsty 1.0.5 372.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pljs_14-1.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pljs_14 pljs_14-1.0.5-1PIGSTY.el10.x86_64.rpm pigsty 1.0.5 414.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pljs_14-1.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pljs_14 pljs_14-1.0.5-1PIGSTY.el10.aarch64.rpm pigsty 1.0.5 381.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pljs_14-1.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg12+1_amd64.deb pgdg 1.0.5 410.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb pigsty 1.0.5 409.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg12+1_arm64.deb pgdg 1.0.5 375.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb pigsty 1.0.5 374.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg13+1_amd64.deb pgdg 1.0.5 429.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~trixie_amd64.deb pigsty 1.0.5 428.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg13+1_arm64.deb pgdg 1.0.5 381.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~trixie_arm64.deb pigsty 1.0.5 381.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg22.04+1_amd64.deb pgdg 1.0.5 422.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~jammy_amd64.deb pigsty 1.0.5 450.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg22.04+1_arm64.deb pgdg 1.0.5 388.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~jammy_arm64.deb pigsty 1.0.5 439.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg24.04+1_amd64.deb pgdg 1.0.5 408.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~noble_amd64.deb pigsty 1.0.5 432.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg24.04+1_arm64.deb pgdg 1.0.5 376.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~noble_arm64.deb pigsty 1.0.5 423.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg26.04+1_amd64.deb pgdg 1.0.5 429.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~resolute_amd64.deb pigsty 1.0.5 453.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1.pgdg26.04+1_arm64.deb pgdg 1.0.5 382.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pljs postgresql-14-pljs_1.0.5-1PIGSTY~resolute_arm64.deb pigsty 1.0.5 430.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pljs/postgresql-14-pljs_1.0.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pljs` using `pig build`:

```bash
pig build pkg pljs         # build RPM / DEB packages
```


## Install

You can install `pljs` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pljs;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pljs -v 18  # PG 18
pig ext install -y pljs -v 17  # PG 17
pig ext install -y pljs -v 16  # PG 16
pig ext install -y pljs -v 15  # PG 15
pig ext install -y pljs -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pljs_18       # PG 18
dnf install -y pljs_17       # PG 17
dnf install -y pljs_16       # PG 16
dnf install -y pljs_15       # PG 15
dnf install -y pljs_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pljs   # PG 18
apt install -y postgresql-17-pljs   # PG 17
apt install -y postgresql-16-pljs   # PG 16
apt install -y postgresql-15-pljs   # PG 15
apt install -y postgresql-14-pljs   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pljs;
```




## Usage

> [pljs: PL/JavaScript trusted procedural language](https://github.com/plv8/pljs)

`pljs` enables writing PostgreSQL functions in JavaScript using the QuickJS engine.

```sql
CREATE EXTENSION pljs;
DO $$ pljs.elog(NOTICE, "Hello, World!") $$ LANGUAGE pljs;
```

### Create Functions

```sql
CREATE FUNCTION pljs_add(a int, b int) RETURNS int AS $$
  return a + b;
$$ LANGUAGE pljs;

SELECT pljs_add(1, 2);  -- 3
```

### Database Access

```sql
CREATE FUNCTION get_users() RETURNS SETOF json AS $$
  var rows = pljs.execute('SELECT * FROM users');
  for (var i = 0; i < rows.length; i++) {
    pljs.return_next(JSON.stringify(rows[i]));
  }
$$ LANGUAGE pljs;
```

Execute with arguments:

```js
var rows = pljs.execute('SELECT * FROM tbl WHERE id = $1', [42]);
var affected = pljs.execute('DELETE FROM tbl WHERE price > $1', [1000]);
```

### Prepared Statements

```js
var plan = pljs.prepare('SELECT * FROM tbl WHERE col = $1', ['int']);
var rows = plan.execute([1]);
plan.free();
```

### Cursors

```js
var plan = pljs.prepare('SELECT * FROM tbl WHERE col = $1', ['int']);
var cursor = plan.cursor([1]);
var row;
while (row = cursor.fetch()) {
    // process row
}
cursor.close();
plan.free();
```

### Subtransactions

```js
try {
  pljs.subtransaction(function() {
    pljs.execute("INSERT INTO tbl VALUES(1)");
    pljs.execute("INSERT INTO tbl VALUES(1/0)"); // error - rolls back
  });
} catch(e) {
  // handle error
}
```

### Logging

```js
pljs.elog(DEBUG1, 'debug message');
pljs.elog(NOTICE, 'notice message');
pljs.elog(WARNING, 'warning message');
pljs.elog(ERROR, 'error message');
```

### Find Other PLJS Functions

```sql
CREATE FUNCTION callee(a int) RETURNS int AS $$ return a * a $$ LANGUAGE pljs;
CREATE FUNCTION caller(a int, t int) RETURNS int AS $$
  var func = pljs.find_function("callee");
  return func(a);
$$ LANGUAGE pljs;
```

### Window Functions

```sql
CREATE FUNCTION my_window_func(val int) RETURNS int AS $$
  var winobj = pljs.get_window_object();
  var pos = winobj.get_current_position();
  var total = winobj.get_partition_row_count();
  return winobj.get_func_arg_in_current(0);
$$ LANGUAGE pljs WINDOW;
```

Window object methods: `get_current_position()`, `get_partition_row_count()`, `set_mark_position(pos)`, `rows_are_peers(pos1, pos2)`, `get_func_arg_in_partition(argno, relpos, seektype, mark_pos)`, `get_func_arg_in_frame(argno, relpos, seektype, mark_pos)`, `get_func_arg_in_current(argno)`, `get_partition_local()`, `set_partition_local(obj)`.

### Utility Functions

```sql
SELECT pljs_info();     -- memory and stack usage as JSON
SELECT pljs_version();  -- extension version
```
