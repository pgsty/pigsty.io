---
title: "plv8"
linkTitle: "plv8"
description: "PL/JavaScript (v8) trusted procedural language"
weight: 3010
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/plv8/plv8">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">plv8/plv8</div>
    <div class="ext-card__desc">https://github.com/plv8/plv8</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plv8-3.2.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plv8-3.2.5.tar.gz</div>
    <div class="ext-card__desc">plv8-3.2.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plv8`**](/ext/e/plv8) | `3.2.5` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3010  | [**`plv8`**](/ext/e/plv8) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pljs`](/ext/e/pljs) [`pllua`](/ext/e/pllua) [`pgwasm`](/ext/e/pgwasm) [`pg_tle`](/ext/e/pg_tle) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2.5` | {{< pgvers "18,17,16,15,14" >}} | `plv8` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2.5` | {{< pgvers "18,17,16,15,14" >}} | `plv8_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plv8` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| el8.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| el9.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| el9.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| el10.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| el10.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| d12.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| d12.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| d13.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| d13.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| u22.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| u22.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| u24.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| u24.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| u26.x86_64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
| u26.aarch64 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 | AVAIL PIGSTY 3.2.5 1 |
@ el8.x86_64 18 plv8_18 plv8_18-3.2.5-1PGSTY.el8.x86_64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plv8_18-3.2.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 plv8_18 plv8_18-3.2.5-1PGSTY.el8.aarch64.rpm pigsty 3.2.5 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plv8_18-3.2.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 plv8_18 plv8_18-3.2.5-1PGSTY.el9.x86_64.rpm pigsty 3.2.5 7.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plv8_18-3.2.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 plv8_18 plv8_18-3.2.5-1PGSTY.el9.aarch64.rpm pigsty 3.2.5 7.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plv8_18-3.2.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 plv8_18 plv8_18-3.2.5-1PGSTY.el10.x86_64.rpm pigsty 3.2.5 7.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plv8_18-3.2.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 plv8_18 plv8_18-3.2.5-1PGSTY.el10.aarch64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plv8_18-3.2.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~bookworm_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~bookworm_arm64.deb pigsty 3.2.5 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~trixie_amd64.deb pigsty 3.2.5 6.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~trixie_arm64.deb pigsty 3.2.5 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~jammy_amd64.deb pigsty 3.2.5 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~jammy_arm64.deb pigsty 3.2.5 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~noble_amd64.deb pigsty 3.2.5 7.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~noble_arm64.deb pigsty 3.2.5 7.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~resolute_amd64.deb pigsty 3.2.5 7.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-plv8 postgresql-18-plv8_3.2.5-1PGSTY~resolute_arm64.deb pigsty 3.2.5 7.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-18-plv8_3.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 plv8_17 plv8_17-3.2.5-1PGSTY.el8.x86_64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plv8_17-3.2.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 plv8_17 plv8_17-3.2.5-1PGSTY.el8.aarch64.rpm pigsty 3.2.5 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plv8_17-3.2.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 plv8_17 plv8_17-3.2.5-1PGSTY.el9.x86_64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plv8_17-3.2.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 plv8_17 plv8_17-3.2.5-1PGSTY.el9.aarch64.rpm pigsty 3.2.5 7.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plv8_17-3.2.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 plv8_17 plv8_17-3.2.5-1PGSTY.el10.x86_64.rpm pigsty 3.2.5 7.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plv8_17-3.2.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 plv8_17 plv8_17-3.2.5-1PGSTY.el10.aarch64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plv8_17-3.2.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~bookworm_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~bookworm_arm64.deb pigsty 3.2.5 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~trixie_amd64.deb pigsty 3.2.5 6.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~trixie_arm64.deb pigsty 3.2.5 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~jammy_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~jammy_arm64.deb pigsty 3.2.5 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~noble_amd64.deb pigsty 3.2.5 7.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~noble_arm64.deb pigsty 3.2.5 7.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~resolute_amd64.deb pigsty 3.2.5 7.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-plv8 postgresql-17-plv8_3.2.5-1PGSTY~resolute_arm64.deb pigsty 3.2.5 7.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-17-plv8_3.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 plv8_16 plv8_16-3.2.5-1PGSTY.el8.x86_64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plv8_16-3.2.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 plv8_16 plv8_16-3.2.5-1PGSTY.el8.aarch64.rpm pigsty 3.2.5 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plv8_16-3.2.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 plv8_16 plv8_16-3.2.5-1PGSTY.el9.x86_64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plv8_16-3.2.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 plv8_16 plv8_16-3.2.5-1PGSTY.el9.aarch64.rpm pigsty 3.2.5 7.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plv8_16-3.2.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 plv8_16 plv8_16-3.2.5-1PGSTY.el10.x86_64.rpm pigsty 3.2.5 7.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plv8_16-3.2.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 plv8_16 plv8_16-3.2.5-1PGSTY.el10.aarch64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plv8_16-3.2.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~bookworm_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~bookworm_arm64.deb pigsty 3.2.5 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~trixie_amd64.deb pigsty 3.2.5 6.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~trixie_arm64.deb pigsty 3.2.5 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~jammy_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~jammy_arm64.deb pigsty 3.2.5 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~noble_amd64.deb pigsty 3.2.5 7.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~noble_arm64.deb pigsty 3.2.5 7.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~resolute_amd64.deb pigsty 3.2.5 7.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-plv8 postgresql-16-plv8_3.2.5-1PGSTY~resolute_arm64.deb pigsty 3.2.5 7.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-16-plv8_3.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 plv8_15 plv8_15-3.2.5-1PGSTY.el8.x86_64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plv8_15-3.2.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 plv8_15 plv8_15-3.2.5-1PGSTY.el8.aarch64.rpm pigsty 3.2.5 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plv8_15-3.2.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 plv8_15 plv8_15-3.2.5-1PGSTY.el9.x86_64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plv8_15-3.2.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 plv8_15 plv8_15-3.2.5-1PGSTY.el9.aarch64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plv8_15-3.2.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 plv8_15 plv8_15-3.2.5-1PGSTY.el10.x86_64.rpm pigsty 3.2.5 7.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plv8_15-3.2.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 plv8_15 plv8_15-3.2.5-1PGSTY.el10.aarch64.rpm pigsty 3.2.5 7.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plv8_15-3.2.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~bookworm_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~bookworm_arm64.deb pigsty 3.2.5 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~trixie_amd64.deb pigsty 3.2.5 6.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~trixie_arm64.deb pigsty 3.2.5 6.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~jammy_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~jammy_arm64.deb pigsty 3.2.5 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~noble_amd64.deb pigsty 3.2.5 7.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~noble_arm64.deb pigsty 3.2.5 7.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~resolute_amd64.deb pigsty 3.2.5 7.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-plv8 postgresql-15-plv8_3.2.5-1PGSTY~resolute_arm64.deb pigsty 3.2.5 7.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-15-plv8_3.2.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 plv8_14 plv8_14-3.2.5-1PGSTY.el8.x86_64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plv8_14-3.2.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 plv8_14 plv8_14-3.2.5-1PGSTY.el8.aarch64.rpm pigsty 3.2.5 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plv8_14-3.2.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 plv8_14 plv8_14-3.2.5-1PGSTY.el9.x86_64.rpm pigsty 3.2.5 7.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plv8_14-3.2.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 plv8_14 plv8_14-3.2.5-1PGSTY.el9.aarch64.rpm pigsty 3.2.5 7.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plv8_14-3.2.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 plv8_14 plv8_14-3.2.5-1PGSTY.el10.x86_64.rpm pigsty 3.2.5 7.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plv8_14-3.2.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 plv8_14 plv8_14-3.2.5-1PGSTY.el10.aarch64.rpm pigsty 3.2.5 7.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plv8_14-3.2.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~bookworm_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~bookworm_arm64.deb pigsty 3.2.5 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~trixie_amd64.deb pigsty 3.2.5 6.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~trixie_arm64.deb pigsty 3.2.5 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~jammy_amd64.deb pigsty 3.2.5 6.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~jammy_arm64.deb pigsty 3.2.5 6.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~noble_amd64.deb pigsty 3.2.5 7.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~noble_arm64.deb pigsty 3.2.5 7.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~resolute_amd64.deb pigsty 3.2.5 7.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-plv8 postgresql-14-plv8_3.2.5-1PGSTY~resolute_arm64.deb pigsty 3.2.5 7.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plv8/postgresql-14-plv8_3.2.5-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `plv8` using `pig build`:

```bash
pig build pkg plv8         # build RPM / DEB packages
```


## Install

You can install `plv8` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install plv8;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y plv8 -v 18  # PG 18
pig ext install -y plv8 -v 17  # PG 17
pig ext install -y plv8 -v 16  # PG 16
pig ext install -y plv8 -v 15  # PG 15
pig ext install -y plv8 -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y plv8_18       # PG 18
dnf install -y plv8_17       # PG 17
dnf install -y plv8_16       # PG 16
dnf install -y plv8_15       # PG 15
dnf install -y plv8_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-plv8   # PG 18
apt install -y postgresql-17-plv8   # PG 17
apt install -y postgresql-16-plv8   # PG 16
apt install -y postgresql-15-plv8   # PG 15
apt install -y postgresql-14-plv8   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION plv8;
```

## Usage

Sources:

- [README](https://github.com/plv8/plv8/blob/v3.2.5/README.md)
- [Built-ins](https://github.com/plv8/plv8/blob/v3.2.5/docs/BUILTINS.md)
- [Configuration](https://github.com/plv8/plv8/blob/v3.2.5/docs/CONFIGURATION.md)
- [Changes](https://github.com/plv8/plv8/blob/v3.2.5/Changes)
- [Control](https://github.com/plv8/plv8/blob/v3.2.5/plv8.control.common)
- [SQL template](https://github.com/plv8/plv8/blob/v3.2.5/plv8.sql.common)

`plv8` provides a trusted JavaScript procedural language powered by V8. This page follows upstream 3.2.5, including its effective-user crash fixes and PostgreSQL 19 support.

### Basic use

```sql
CREATE EXTENSION plv8;

SELECT plv8_version();
SELECT plv8_info();

DO $$ plv8.elog(NOTICE, plv8.version); $$ LANGUAGE plv8;

CREATE FUNCTION plv8_test(keys text[], vals text[]) RETURNS json AS $$
  let out = {};
  for (let i = 0; i < keys.length; i++) out[keys[i]] = vals[i];
  return out;
$$ LANGUAGE plv8 IMMUTABLE STRICT;
```

### Common built-ins

- `plv8.elog(level, ...)`: emit PostgreSQL log or client messages.
- `plv8.execute(sql [, args])`: run SQL and return rows or affected-row count.
- `plv8.prepare(...)`, `PreparedPlan.execute()`, `PreparedPlan.cursor()`: prepared SPI access.
- `plv8.subtransaction(fn)`: run a group of SPI operations atomically.
- `plv8.find_function(...)`: call another PLV8 function by name.
- `plv8.memory_usage()`: inspect V8 heap usage for the current session.
- `plv8.run_script(source, name)`: evaluate named script text.

### Runtime settings

```sql
SET plv8.start_proc = 'plv8_init';
SET plv8.execution_timeout = 60;
SET plv8.memory_limit = 512;
```

- `plv8.start_proc`
- `plv8.v8_flags`
- `plv8.execution_timeout`
- `plv8.memory_limit`

### Caveats

- The 3.2.5 CI matrix covers PostgreSQL 14–19. PostgreSQL-major support is separate from the versions available in downstream packages.
- Creating the extension requires a superuser; the installed JavaScript language is trusted, which does not make the extension itself installable by an unprivileged user. `plv8_info()` has its public execution privilege revoked by the installation SQL.
- Version 3.2.5 fixes crashes when a cached function runs under a different effective user via `SECURITY DEFINER` or `SET ROLE`, or after `plv8_reset()`, and when an exception message cannot be converted to a string.
- Each session has its own global JavaScript runtime; switching roles initializes a separate runtime context.
- `plv8.execution_timeout` only applies when the extension is compiled with execution-timeout support.
