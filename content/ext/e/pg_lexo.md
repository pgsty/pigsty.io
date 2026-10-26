---
title: "pg_lexo"
linkTitle: "pg_lexo"
description: "Lexicographic position type for inserting and reordering list items"
weight: 3530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Blad3Mak3r/pg_lexo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Blad3Mak3r/pg_lexo</div>
    <div class="ext-card__desc">https://github.com/Blad3Mak3r/pg_lexo</div>
  </a>
  <div class="ext-card ext-card--source">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title"><a href="https://repo.pigsty.io/ext/src/pg_lexo-0.6.1.tar.gz">pg_lexo-0.6.1.tar.gz</a></div>
    <div class="ext-card__desc"><a href="https://repo.pigsty.io/ext/src/pg_lexo-0.6.1-Cargo.lock">pg_lexo-0.6.1-Cargo.lock</a>
    </div>
  </div>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_lexo`**](/ext/e/pg_lexo) | `0.6.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3530  | [**`pg_lexo`**](/ext/e/pg_lexo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`base62`](/ext/e/base62) [`pg_hashids`](/ext/e/pg_hashids) [`typeid`](/ext/e/typeid) [`sequential_uuids`](/ext/e/sequential_uuids) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release/package 0.6.1 ships SQL/control version 0.6.0. Objects use the chosen installation schema; the old lexo schema was removed. superuser=false is not trusted=true. PGSTY patches lexo_next for native-type ordering and empty tables, and lexo_rebalance to preserve order independently of text collation.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.0` | {{< pgvers "18,17,16" >}} | `pg_lexo` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.1` | {{< pgvers "18,17,16" >}} | `pg_lexo_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.1` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-lexo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | AVAIL PIGSTY 0.6.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_lexo_18 pg_lexo_18-0.6.1-1PGSTY.el8.x86_64.rpm pigsty 0.6.1 378.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lexo_18-0.6.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_lexo_18 pg_lexo_18-0.6.1-1PGSTY.el8.aarch64.rpm pigsty 0.6.1 265.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lexo_18-0.6.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_lexo_18 pg_lexo_18-0.6.1-1PGSTY.el9.x86_64.rpm pigsty 0.6.1 395.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lexo_18-0.6.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_lexo_18 pg_lexo_18-0.6.1-1PGSTY.el9.aarch64.rpm pigsty 0.6.1 284.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lexo_18-0.6.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_lexo_18 pg_lexo_18-0.6.1-1PGSTY.el10.x86_64.rpm pigsty 0.6.1 395.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lexo_18-0.6.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_lexo_18 pg_lexo_18-0.6.1-1PGSTY.el10.aarch64.rpm pigsty 0.6.1 285.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lexo_18-0.6.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~bookworm_amd64.deb pigsty 0.6.1 323.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~bookworm_arm64.deb pigsty 0.6.1 216.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~trixie_amd64.deb pigsty 0.6.1 323.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~trixie_arm64.deb pigsty 0.6.1 216.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~jammy_amd64.deb pigsty 0.6.1 364.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~jammy_arm64.deb pigsty 0.6.1 251.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~noble_amd64.deb pigsty 0.6.1 357.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~noble_arm64.deb pigsty 0.6.1 250.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~resolute_amd64.deb pigsty 0.6.1 356.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-lexo postgresql-18-pg-lexo_0.6.1-1PGSTY~resolute_arm64.deb pigsty 0.6.1 249.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lexo/postgresql-18-pg-lexo_0.6.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_lexo_17 pg_lexo_17-0.6.1-1PGSTY.el8.x86_64.rpm pigsty 0.6.1 378.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lexo_17-0.6.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_lexo_17 pg_lexo_17-0.6.1-1PGSTY.el8.aarch64.rpm pigsty 0.6.1 265.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lexo_17-0.6.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_lexo_17 pg_lexo_17-0.6.1-1PGSTY.el9.x86_64.rpm pigsty 0.6.1 395.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lexo_17-0.6.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_lexo_17 pg_lexo_17-0.6.1-1PGSTY.el9.aarch64.rpm pigsty 0.6.1 285.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lexo_17-0.6.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_lexo_17 pg_lexo_17-0.6.1-1PGSTY.el10.x86_64.rpm pigsty 0.6.1 395.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lexo_17-0.6.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_lexo_17 pg_lexo_17-0.6.1-1PGSTY.el10.aarch64.rpm pigsty 0.6.1 285.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lexo_17-0.6.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~bookworm_amd64.deb pigsty 0.6.1 323.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~bookworm_arm64.deb pigsty 0.6.1 215.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~trixie_amd64.deb pigsty 0.6.1 323.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~trixie_arm64.deb pigsty 0.6.1 215.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~jammy_amd64.deb pigsty 0.6.1 364.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~jammy_arm64.deb pigsty 0.6.1 250.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~noble_amd64.deb pigsty 0.6.1 357.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~noble_arm64.deb pigsty 0.6.1 250.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~resolute_amd64.deb pigsty 0.6.1 356.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-lexo postgresql-17-pg-lexo_0.6.1-1PGSTY~resolute_arm64.deb pigsty 0.6.1 249.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lexo/postgresql-17-pg-lexo_0.6.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_lexo_16 pg_lexo_16-0.6.1-1PGSTY.el8.x86_64.rpm pigsty 0.6.1 378.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lexo_16-0.6.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_lexo_16 pg_lexo_16-0.6.1-1PGSTY.el8.aarch64.rpm pigsty 0.6.1 265.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lexo_16-0.6.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_lexo_16 pg_lexo_16-0.6.1-1PGSTY.el9.x86_64.rpm pigsty 0.6.1 395.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lexo_16-0.6.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_lexo_16 pg_lexo_16-0.6.1-1PGSTY.el9.aarch64.rpm pigsty 0.6.1 284.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lexo_16-0.6.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_lexo_16 pg_lexo_16-0.6.1-1PGSTY.el10.x86_64.rpm pigsty 0.6.1 395.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lexo_16-0.6.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_lexo_16 pg_lexo_16-0.6.1-1PGSTY.el10.aarch64.rpm pigsty 0.6.1 285.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lexo_16-0.6.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~bookworm_amd64.deb pigsty 0.6.1 329.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~bookworm_arm64.deb pigsty 0.6.1 222.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~trixie_amd64.deb pigsty 0.6.1 329.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~trixie_arm64.deb pigsty 0.6.1 222.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~jammy_amd64.deb pigsty 0.6.1 370.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~jammy_arm64.deb pigsty 0.6.1 257.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~noble_amd64.deb pigsty 0.6.1 364.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~noble_arm64.deb pigsty 0.6.1 256.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~resolute_amd64.deb pigsty 0.6.1 362.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-lexo postgresql-16-pg-lexo_0.6.1-1PGSTY~resolute_arm64.deb pigsty 0.6.1 256.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lexo/postgresql-16-pg-lexo_0.6.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_lexo` using `pig build`:

```bash
pig build pkg pg_lexo         # build RPM / DEB packages
```


## Install

You can install `pg_lexo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_lexo;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_lexo -v 18  # PG 18
pig ext install -y pg_lexo -v 17  # PG 17
pig ext install -y pg_lexo -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_lexo_18       # PG 18
dnf install -y pg_lexo_17       # PG 17
dnf install -y pg_lexo_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-lexo   # PG 18
apt install -y postgresql-17-pg-lexo   # PG 17
apt install -y postgresql-16-pg-lexo   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_lexo;
```

## Usage

Sources:

- [Official README](https://github.com/blad3mak3r/pg_lexo/blob/v0.6.1/README.md)
- [Version 0.6 SQL notes](https://github.com/blad3mak3r/pg_lexo/blob/v0.6.1/sql/pg_lexo--0.6.0.sql)
- [Public function implementation](https://github.com/blad3mak3r/pg_lexo/blob/v0.6.1/src/schema.rs)

`pg_lexo` 0.6.0 provides a Base62 `lexo` type for stable user-controlled ordering. It generates short values before, after, or between existing positions, allowing an item to move without renumbering every row. The type has comparison operators plus default B-tree and hash operator classes.

### Core Workflow

```sql
CREATE EXTENSION pg_lexo;

CREATE TABLE items (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title text NOT NULL,
    position lexo NOT NULL UNIQUE DEFERRABLE
);

INSERT INTO items (title, position)
VALUES ('first', lexo_first());

INSERT INTO items (title, position)
SELECT 'last', lexo_after(position)
FROM items ORDER BY position DESC LIMIT 1;

INSERT INTO items (title, position)
VALUES ('middle', lexo_between('H'::lexo, 'I'::lexo));

SELECT * FROM items ORDER BY position;
```

`lexo_first()` starts at `H`. `lexo_after(lexo)`, `lexo_before(lexo)`, and `lexo_between(lexo, lexo)` generate neighboring positions; either argument to `lexo_between` may be NULL to represent an open end. Inputs contain only `0-9`, `A-Z`, and `a-z`, whose ASCII order matches the type's ordering.

### Table Helpers

`lexo_next(table, position_column, key_column, key_value)` finds the current maximum and returns the next position, optionally within a group. `lexo_add_column(table, column)` adds a `lexo` column. `lexo_rebalance(table, position_column, key_column, key_value)` rewrites matching rows with evenly distributed positions and returns the number updated.

The helpers issue dynamic SQL and require the caller to have the corresponding table privileges. Rebalancing updates every selected row and should run with application writers coordinated. If positions have a unique constraint, use a deferrable constraint and defer it within the rebalancing transaction to allow intermediate values to overlap. Position generation itself does not reserve a value: concurrent sessions can derive the same position, so enforce a suitable unique constraint and retry or serialize conflicting moves. When no Base62 value exists between adjacent positions (or before the minimum), rebalance first.

### Version 0.6 Boundary

Version 0.6 removed the dedicated `lexo` schema. The former `lexo.lexorank` type became `lexo`, and schema-qualified functions such as `lexo.first()` became names such as `lexo_first()`. Older examples are incompatible until migrated. Release/package 0.6.1 retains SQL/control version 0.6.0 and targets PostgreSQL 16–18 through pgrx 0.16.1. Pigsty packages patch `lexo_next` to use native ordering instead of the unavailable `max(lexo)` aggregate, and keep `lexo_rebalance` ordering independent of text collation.
