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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_cardano-1.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_cardano-1.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_cardano-1.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_cardano`**](/ext/e/pg_cardano) | `1.2.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2920  | [**`pg_cardano`**](/ext/e/pg_cardano) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 fix by https://github.com/Vonng/pg_cardano; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15" >}} | `pg_cardano` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15" >}} | `pg_cardano_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-cardano` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_cardano_18 pg_cardano_18-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 518.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_18-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_cardano_18 pg_cardano_18-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 379.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_18-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_cardano_18 pg_cardano_18-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 536.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_18-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_cardano_18 pg_cardano_18-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 404.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_18-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_cardano_18 pg_cardano_18-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 537.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_18-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_cardano_18 pg_cardano_18-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 404.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_18-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 434.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 305.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 434.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 305.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 483.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 351.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 478.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 346.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb pigsty 1.2.0 924.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-cardano postgresql-18-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb pigsty 1.2.0 818.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-18-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_cardano_17 pg_cardano_17-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 518.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_17-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_cardano_17 pg_cardano_17-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 379.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_17-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_cardano_17 pg_cardano_17-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 535.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_17-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_cardano_17 pg_cardano_17-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 404.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_17-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_cardano_17 pg_cardano_17-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 536.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_17-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_cardano_17 pg_cardano_17-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 403.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_17-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 434.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 305.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 434.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 304.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 482.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 351.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 477.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 345.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb pigsty 1.2.0 924.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-cardano postgresql-17-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb pigsty 1.2.0 816.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-17-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_cardano_16 pg_cardano_16-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 518.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_16-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_cardano_16 pg_cardano_16-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 379.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_16-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_cardano_16 pg_cardano_16-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 536.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_16-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_cardano_16 pg_cardano_16-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 404.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_16-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_cardano_16 pg_cardano_16-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 537.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_16-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_cardano_16 pg_cardano_16-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 404.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_16-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 434.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 305.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 434.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 305.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 483.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 351.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 478.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 346.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb pigsty 1.2.0 923.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-cardano postgresql-16-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb pigsty 1.2.0 815.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-16-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_cardano_15 pg_cardano_15-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 518.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cardano_15-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_cardano_15 pg_cardano_15-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 379.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cardano_15-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_cardano_15 pg_cardano_15-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 536.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cardano_15-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_cardano_15 pg_cardano_15-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 403.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cardano_15-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_cardano_15 pg_cardano_15-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 536.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cardano_15-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_cardano_15 pg_cardano_15-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 403.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cardano_15-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 433.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 305.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 433.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 304.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 483.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 351.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 477.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 345.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb pigsty 1.2.0 918.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-cardano postgresql-15-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb pigsty 1.2.0 809.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cardano/postgresql-15-pg-cardano_1.2.0-2PIGSTY~resolute_arm64.deb
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
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_cardano_18       # PG 18
dnf install -y pg_cardano_17       # PG 17
dnf install -y pg_cardano_16       # PG 16
dnf install -y pg_cardano_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-cardano   # PG 18
apt install -y postgresql-17-pg-cardano   # PG 17
apt install -y postgresql-16-pg-cardano   # PG 16
apt install -y postgresql-15-pg-cardano   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_cardano;
```




## Usage

Sources: [README](https://github.com/Fell-x27/pg_cardano/blob/master/README.md), [Cargo.toml version 1.2.0](https://github.com/Fell-x27/pg_cardano/blob/master/Cargo.toml), [releases page](https://github.com/Fell-x27/pg_cardano/releases)

`pg_cardano` is a Rust extension for Cardano-oriented binary and crypto utilities inside PostgreSQL. The upstream repo does not publish GitHub releases or tags, but the current crate version on the default branch is `1.2.0`.

```sql
CREATE EXTENSION pg_cardano;
```

### Core Capabilities

- Base58 encode/decode.
- Bech32 encode/decode.
- CBOR to and from `jsonb`, with both simple and extended pipelines.
- Blake2b hashing.
- Ed25519 signing and signature verification.
- dRep ID helpers for CIP-105 and CIP-129.
- Shelley address builders and parsers.
- Asset-name decoding and CIP-88 pool key registration verification.

### Common Patterns

Base58 and Bech32:

```sql
SELECT cardano.base58_encode('Cardano'::bytea);
SELECT cardano.base58_decode('3Z6ioYHE3x');
SELECT cardano.bech32_encode('ada', 'is amazing'::bytea);
SELECT cardano.bech32_decode_prefix('ada1d9ejqctdv9axjmn8dypl4d');
SELECT cardano.bech32_decode_data('ada1d9ejqctdv9axjmn8dypl4d');
```

CBOR conversion:

```sql
SELECT cardano.cbor_decode_jsonb('\xa3636164616b...'::bytea);
SELECT cardano.cbor_encode_jsonb('{"ada": "is amazing!", "bytes": "\\xdeadbeef"}'::jsonb);
SELECT cardano.cbor_decode_jsonb_ext('\xa3636164616b...'::bytea);
SELECT cardano.cbor_encode_jsonb_ext('{"type":"map","value":[...]}'::jsonb);
```

Hashing and signatures:

```sql
SELECT cardano.blake2b_hash('Cardano is amazing!'::bytea, 32);
SELECT cardano.ed25519_verify_signature(
  '\x432753BD...'::bytea,
  'Cardano is amazing!'::bytea,
  '\x74265f96...'::bytea
);
```

Address and governance helpers:

```sql
SELECT cardano.tools_drep_id_encode_cip105('\x28111ae1...'::bytea, FALSE);
SELECT cardano.tools_drep_id_encode_cip129('\x28111ae1...'::bytea, TRUE);
SELECT cardano.tools_shelley_address_build(
  '\x7415251f...'::bytea, FALSE,
  '\x7c3ae2f2...'::bytea, FALSE,
  0
);
SELECT cardano.tools_shelley_addr_get_type('addr_test1vp6p2fgl...');
```

### Caveats

- Upstream documents PostgreSQL 12+ and Linux builds via `pgrx`, but the current crate features and this repo's package matrix target PostgreSQL 15 through 18, with `pg18` as the default feature.
- This repo packages `pg_cardano` 1.2.0 with `pgrx` 0.17.0 and the PG18 fix noted in `extension.csv`.
- The simple CBOR helpers are intentionally lossy for some CBOR constructs; use the `*_ext` functions when exact structural round-tripping matters.
