---
title: "pg_cardano"
linkTitle: "pg_cardano"
description: "A suite of Cardano-related tools"
weight: 2920
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Fell-x27/pg_cardano">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Fell-x27/pg_cardano</div>
    <div class="ext-card__desc">https://github.com/Fell-x27/pg_cardano</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_cardano-1.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_cardano-1.1.1.tar.gz</div>
    <div class="ext-card__desc">pg_cardano-1.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_cardano`**](/ext/e/pg_cardano) | `1.1.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2920  | [**`pg_cardano`**](/ext/e/pg_cardano) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 fix by https://github.com/Vonng/pg_cardano


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_cardano` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_cardano_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-cardano` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
@ el8.x86_64 18 pg_cardano_18 pg_cardano_18-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 523.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_18-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_cardano_18 pg_cardano_18-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 378.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_18-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_cardano_18 pg_cardano_18-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 540.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_18-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_cardano_18 pg_cardano_18-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 402.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_18-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_cardano_18 pg_cardano_18-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 539.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_18-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_cardano_18 pg_cardano_18-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 403.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_18-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 445.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 311.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 445.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 312.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 493.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 356.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 488.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 352.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_cardano_17 pg_cardano_17-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 522.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_17-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_cardano_17 pg_cardano_17-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 379.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_17-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_cardano_17 pg_cardano_17-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 540.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_17-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_cardano_17 pg_cardano_17-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 402.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_17-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_cardano_17 pg_cardano_17-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 539.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_17-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_cardano_17 pg_cardano_17-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 403.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_17-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 444.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 311.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 445.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 311.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 493.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 357.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 488.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 352.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_cardano_16 pg_cardano_16-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 522.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_16-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_cardano_16 pg_cardano_16-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 378.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_16-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_cardano_16 pg_cardano_16-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 539.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_16-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_cardano_16 pg_cardano_16-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 402.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_16-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_cardano_16 pg_cardano_16-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 539.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_16-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_cardano_16 pg_cardano_16-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 403.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_16-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 445.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 312.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 445.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 311.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 494.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 357.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 488.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 352.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_cardano_15 pg_cardano_15-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 522.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_15-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_cardano_15 pg_cardano_15-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 379.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_15-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_cardano_15 pg_cardano_15-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 539.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_15-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_cardano_15 pg_cardano_15-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 402.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_15-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_cardano_15 pg_cardano_15-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 538.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_15-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_cardano_15 pg_cardano_15-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 403.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_15-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 445.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 311.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 445.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 312.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 494.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 357.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 488.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 352.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_cardano_14 pg_cardano_14-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 522.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_14-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_cardano_14 pg_cardano_14-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 379.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_14-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_cardano_14 pg_cardano_14-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 539.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_14-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_cardano_14 pg_cardano_14-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 402.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_14-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_cardano_14 pg_cardano_14-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 538.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_14-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_cardano_14 pg_cardano_14-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 403.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_14-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 445.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 311.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 445.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 311.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 494.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 357.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 488.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-cardano postgresql-14-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 351.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-14-pg-cardano_1.1.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_cardano` using `pig build`:

```bash
pig build pkg pg_cardano         # build RPM / DEB packages
```


## Install

You can install `pg_cardano` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_cardano;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_cardano -v 18  # PG 18
pig ext install -y pg_cardano -v 17  # PG 17
pig ext install -y pg_cardano -v 16  # PG 16
pig ext install -y pg_cardano -v 15  # PG 15
pig ext install -y pg_cardano -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_cardano_18       # PG 18
dnf install -y pg_cardano_17       # PG 17
dnf install -y pg_cardano_16       # PG 16
dnf install -y pg_cardano_15       # PG 15
dnf install -y pg_cardano_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-cardano   # PG 18
apt install -y postgresql-17-pg-cardano   # PG 17
apt install -y postgresql-16-pg-cardano   # PG 16
apt install -y postgresql-15-pg-cardano   # PG 15
apt install -y postgresql-14-pg-cardano   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_cardano;
```




## Usage

> [pg_cardano: Cardano blockchain data types and cryptographic functions for PostgreSQL](https://github.com/Fell-x27/pg_cardano)

The `pg_cardano` extension provides cryptographic and utility functions for working with Cardano blockchain data in PostgreSQL, including Base58, Bech32, CBOR, Blake2b, Ed25519, and Shelley address utilities.

```sql
CREATE EXTENSION pg_cardano;
```

### Base58 Encoding/Decoding

```sql
SELECT cardano.base58_encode('Cardano'::bytea);
-- '3Z6ioYHE3x'

SELECT cardano.base58_decode('3Z6ioYHE3x');
-- '\x43617264616e6f'
```

### Bech32 Encoding/Decoding

```sql
SELECT cardano.bech32_encode('ada', 'is amazing'::bytea);
-- 'ada1d9ejqctdv9axjmn8dypl4d'

SELECT cardano.bech32_decode_prefix('ada1d9ejqctdv9axjmn8dypl4d');
-- 'ada'

SELECT cardano.bech32_decode_data('ada1d9ejqctdv9axjmn8dypl4d');
-- '\x697320616d617a696e67'
```

### CBOR Encoding/Decoding

Simple CBOR (lightweight, sufficient for most Cardano tasks):

```sql
SELECT cardano.cbor_decode_jsonb('\xa3636164616b...'::bytea);
SELECT cardano.cbor_encode_jsonb('{"ada": "is amazing!", "bytes": "\\xdeadbeef"}'::jsonb);
```

Extended CBOR (full support, no limitations):

```sql
SELECT cardano.cbor_decode_jsonb_ext('\xa3636164616b...'::bytea);
SELECT cardano.cbor_encode_jsonb_ext('{"type":"map","value":[...]}'::jsonb);
```

### Blake2b Hashing

```sql
SELECT cardano.blake2b_hash('Cardano is amazing!'::bytea, 32);
-- '\x2244d5c9699fa93b...'
```

### Ed25519 Signing and Verification

```sql
SELECT cardano.ed25519_sign_message(
    '\x43D68AEC...'::bytea,       -- signing key
    'Cardano is amazing!'::bytea   -- message
);

SELECT cardano.ed25519_verify_signature(
    '\x432753BD...'::bytea,        -- verification key
    'Cardano is amazing!'::bytea,  -- message
    '\x74265f96...'::bytea         -- signature
);
-- true
```

### dRep View ID Builders (CIP-105/CIP-129)

```sql
SELECT cardano.tools_drep_id_encode_cip105('\x28111ae1...'::bytea, FALSE);
-- 'drep_vkh19qg34ctllr7lh48nnj4akfc978qzqzuwzkgsdu6r3zc42lnl6a0'

SELECT cardano.tools_drep_id_encode_cip129('\x28111ae1...'::bytea, TRUE);
-- 'drep1yv5pzxhp0lu0m7757ww2hke8qhcuqgqt3c2ezphngwytz4gj324g7'
```

### Shelley Address Utilities

```sql
-- Build a base address
SELECT cardano.tools_shelley_address_build(
    '\x7415251f...'::bytea, FALSE,  -- payment cred, is_script
    '\x7c3ae2f2...'::bytea, FALSE,  -- stake cred, is_script
    0                                -- network id
);

-- Extract payment/stake credentials
SELECT cardano.tools_shelley_addr_extract_payment_cred('addr_test1qp6p2fgl...');
SELECT cardano.tools_shelley_addr_extract_stake_cred('addr_test1qp6p2fgl...');

-- Get address type
SELECT cardano.tools_shelley_addr_get_type('addr_test1vp6p2fgl...');
-- 'PMT_KEY:NONE'
```

### Asset Name Conversion

```sql
SELECT cardano.tools_read_asset_name('hello'::bytea);
-- 'hello' (valid UTF-8 returned as string)

SELECT cardano.tools_read_asset_name('\xdeadbeef'::bytea);
-- 'deadbeef' (non-UTF-8 returned as hex)
```

### CIP-88 Pool Key Registration Verification

```sql
SELECT cardano.tools_verify_cip88_pool_key_registration('\xa119...'::bytea);
-- true
```
