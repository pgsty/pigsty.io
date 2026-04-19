---
title: "pg_liquid"
linkTitle: "pg_liquid"
description: "Liquid-inspired Datalog graph query extension for PostgreSQL"
weight: 2610
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/michael-golfi/pg_liquid">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">michael-golfi/pg_liquid</div>
    <div class="ext-card__desc">https://github.com/michael-golfi/pg_liquid</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_liquid-0.1.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_liquid-0.1.7.tar.gz</div>
    <div class="ext-card__desc">pg_liquid-0.1.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_liquid`**](/ext/e/pg_liquid) | `0.1.7` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2610  | [**`pg_liquid`**](/ext/e/pg_liquid) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `liquid` |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`jsquery`](/ext/e/jsquery) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`pg_search`](/ext/e/pg_search) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.7` | {{< pgvers "18,17,16,15,14" >}} | `pg_liquid` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.7` | {{< pgvers "18,17,16,15,14" >}} | `pg_liquid_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-liquid` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
@ el8.x86_64 18 pg_liquid_18 pg_liquid_18-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 64.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_liquid_18-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_liquid_18 pg_liquid_18-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 62.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_liquid_18-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_liquid_18 pg_liquid_18-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 62.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_liquid_18-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_liquid_18 pg_liquid_18-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_liquid_18-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_liquid_18 pg_liquid_18-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 65.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_liquid_18-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_liquid_18 pg_liquid_18-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_liquid_18-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb pigsty 0.1.7 383.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb pigsty 0.1.7 378.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb pigsty 0.1.7 383.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb pigsty 0.1.7 378.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb pigsty 0.1.7 429.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb pigsty 0.1.7 427.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb pigsty 0.1.7 407.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-liquid postgresql-18-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb pigsty 0.1.7 402.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-18-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_liquid_17 pg_liquid_17-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 64.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_liquid_17-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_liquid_17 pg_liquid_17-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 62.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_liquid_17-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_liquid_17 pg_liquid_17-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 62.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_liquid_17-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_liquid_17 pg_liquid_17-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_liquid_17-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_liquid_17 pg_liquid_17-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 65.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_liquid_17-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_liquid_17 pg_liquid_17-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_liquid_17-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb pigsty 0.1.7 379.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb pigsty 0.1.7 376.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb pigsty 0.1.7 379.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb pigsty 0.1.7 377.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb pigsty 0.1.7 450.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb pigsty 0.1.7 450.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb pigsty 0.1.7 400.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-liquid postgresql-17-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb pigsty 0.1.7 401.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-17-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_liquid_16 pg_liquid_16-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 64.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_liquid_16-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_liquid_16 pg_liquid_16-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 62.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_liquid_16-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_liquid_16 pg_liquid_16-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 62.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_liquid_16-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_liquid_16 pg_liquid_16-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 61.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_liquid_16-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_liquid_16 pg_liquid_16-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 64.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_liquid_16-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_liquid_16 pg_liquid_16-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_liquid_16-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb pigsty 0.1.7 372.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb pigsty 0.1.7 368.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb pigsty 0.1.7 372.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb pigsty 0.1.7 368.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb pigsty 0.1.7 437.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb pigsty 0.1.7 436.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb pigsty 0.1.7 393.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-liquid postgresql-16-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb pigsty 0.1.7 391.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-16-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_liquid_15 pg_liquid_15-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_liquid_15-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_liquid_15 pg_liquid_15-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 62.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_liquid_15-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_liquid_15 pg_liquid_15-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 64.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_liquid_15-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_liquid_15 pg_liquid_15-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 62.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_liquid_15-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_liquid_15 pg_liquid_15-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 66.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_liquid_15-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_liquid_15 pg_liquid_15-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 63.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_liquid_15-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb pigsty 0.1.7 370.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb pigsty 0.1.7 367.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb pigsty 0.1.7 370.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb pigsty 0.1.7 368.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb pigsty 0.1.7 434.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb pigsty 0.1.7 435.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb pigsty 0.1.7 391.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-liquid postgresql-15-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb pigsty 0.1.7 391.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-15-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_liquid_14 pg_liquid_14-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_liquid_14-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_liquid_14 pg_liquid_14-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 62.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_liquid_14-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_liquid_14 pg_liquid_14-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 64.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_liquid_14-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_liquid_14 pg_liquid_14-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 62.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_liquid_14-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_liquid_14 pg_liquid_14-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 66.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_liquid_14-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_liquid_14 pg_liquid_14-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 63.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_liquid_14-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb pigsty 0.1.7 366.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb pigsty 0.1.7 363.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb pigsty 0.1.7 367.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb pigsty 0.1.7 364.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb pigsty 0.1.7 427.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb pigsty 0.1.7 429.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb pigsty 0.1.7 387.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-liquid postgresql-14-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb pigsty 0.1.7 388.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-liquid/postgresql-14-pg-liquid_0.1.7-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_liquid` using `pig build`:

```bash
pig build pkg pg_liquid         # build RPM / DEB packages
```


## Install

You can install `pg_liquid` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_liquid;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_liquid -v 18  # PG 18
pig ext install -y pg_liquid -v 17  # PG 17
pig ext install -y pg_liquid -v 16  # PG 16
pig ext install -y pg_liquid -v 15  # PG 15
pig ext install -y pg_liquid -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_liquid_18       # PG 18
dnf install -y pg_liquid_17       # PG 17
dnf install -y pg_liquid_16       # PG 16
dnf install -y pg_liquid_15       # PG 15
dnf install -y pg_liquid_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-liquid   # PG 18
apt install -y postgresql-17-pg-liquid   # PG 17
apt install -y postgresql-16-pg-liquid   # PG 16
apt install -y postgresql-15-pg-liquid   # PG 15
apt install -y postgresql-14-pg-liquid   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_liquid;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION pg_liquid;
> SELECT liquid.query('Edge("a","b"). Edge("b","c"). Path(X,Y) :- Edge(X,Y). Path(X,Y) :- Edge(X,Z), Path(Z,Y). Path("a",Y)?');
> ```
>
> Sources: [README](https://github.com/michael-golfi/pg_liquid), [Docs site](https://michael-golfi.github.io/pg_liquid/)

`pg_liquid` maps the Liquid blog language and data model onto native PostgreSQL storage and execution. The extension exposes SQL entry points for running Liquid-style programs, querying as a principal, and managing row normalizers that project relational rows into Liquid compounds.

## Core Functions

The upstream README lists these main functions:

- `liquid.query(program text)`
- `liquid.query_as(principal text, program text)`
- `liquid.read_as(principal text, program text)`

These support plain execution, principal-aware querying, and CLS-aware reads.

## Language Features

The current README says supported program features include:

- `%` comments
- assertions and rule definitions terminated with `.`
- one terminal `?` query
- `Edge(...)`
- named compounds such as `Type@(cid=..., role=...)`
- query-local recursive rules

## Example Shape

Programs are passed as text and can define facts, rules, and a final query:

```sql
SELECT liquid.query($$
  Edge("a","b").
  Edge("b","c").
  Path(X,Y) :- Edge(X,Y).
  Path(X,Y) :- Edge(X,Z), Path(Z,Y).
  Path("a",Y)?
$$);
```

## Notes

The project README points to the VitePress documentation site as the main documentation surface and notes that operational rollout details are also documented there. The extension is currently published as PGXN package version `0.1.1` and validated against PostgreSQL 14 through 18.
