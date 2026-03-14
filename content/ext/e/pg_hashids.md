---
title: "pg_hashids"
linkTitle: "pg_hashids"
description: "Short unique id generator for PostgreSQL, using hashids"
weight: 4560
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/iCyberon/pg_hashids">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">iCyberon/pg_hashids</div>
    <div class="ext-card__desc">https://github.com/iCyberon/pg_hashids</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_hashids-1.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_hashids-1.3.tar.gz</div>
    <div class="ext-card__desc">pg_hashids-1.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_hashids`**](/ext/e/pg_hashids) | `1.3` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4560  | [**`pg_hashids`**](/ext/e/pg_hashids) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pg_base58`](/ext/e/pg_base58) [`pgx_ulid`](/ext/e/pgx_ulid) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`permuteseq`](/ext/e/permuteseq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_hashids` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_hashids_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-hashids` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
@ el8.x86_64 18 pg_hashids_18 pg_hashids_18-1.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3 18.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashids_18-1.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_hashids_18 pg_hashids_18-1.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashids_18-1.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_hashids_18 pg_hashids_18-1.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashids_18-1.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_hashids_18 pg_hashids_18-1.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashids_18-1.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_hashids_18 pg_hashids_18-1.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashids_18-1.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_hashids_18 pg_hashids_18-1.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashids_18-1.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb pigsty 1.3 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb pigsty 1.3 26.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 27.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 26.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-hashids postgresql-18-pg-hashids_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 26.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-18-pg-hashids_1.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_hashids_17 pg_hashids_17-1.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3 18.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashids_17-1.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_hashids_17 pg_hashids_17-1.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashids_17-1.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_hashids_17 pg_hashids_17-1.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashids_17-1.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_hashids_17 pg_hashids_17-1.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashids_17-1.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_hashids_17 pg_hashids_17-1.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashids_17-1.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_hashids_17 pg_hashids_17-1.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashids_17-1.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 26.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb pigsty 1.3 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb pigsty 1.3 26.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 28.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 27.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-hashids postgresql-17-pg-hashids_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 26.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-17-pg-hashids_1.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_hashids_16 pg_hashids_16-1.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3 18.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashids_16-1.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_hashids_16 pg_hashids_16-1.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashids_16-1.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_hashids_16 pg_hashids_16-1.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashids_16-1.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_hashids_16 pg_hashids_16-1.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashids_16-1.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_hashids_16 pg_hashids_16-1.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3 17.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashids_16-1.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_hashids_16 pg_hashids_16-1.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashids_16-1.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb pigsty 1.3 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb pigsty 1.3 26.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 28.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 27.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-hashids postgresql-16-pg-hashids_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 26.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-16-pg-hashids_1.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_hashids_15 pg_hashids_15-1.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashids_15-1.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_hashids_15 pg_hashids_15-1.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashids_15-1.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_hashids_15 pg_hashids_15-1.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashids_15-1.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_hashids_15 pg_hashids_15-1.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashids_15-1.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_hashids_15 pg_hashids_15-1.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3 18.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashids_15-1.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_hashids_15 pg_hashids_15-1.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3 18.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashids_15-1.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 27.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 26.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb pigsty 1.3 27.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb pigsty 1.3 26.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 29.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-hashids postgresql-15-pg-hashids_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 28.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-15-pg-hashids_1.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_hashids_14 pg_hashids_14-1.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashids_14-1.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_hashids_14 pg_hashids_14-1.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashids_14-1.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_hashids_14 pg_hashids_14-1.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashids_14-1.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_hashids_14 pg_hashids_14-1.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashids_14-1.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_hashids_14 pg_hashids_14-1.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3 18.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashids_14-1.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_hashids_14 pg_hashids_14-1.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3 18.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashids_14-1.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 27.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 26.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb pigsty 1.3 27.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb pigsty 1.3 26.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 29.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-hashids postgresql-14-pg-hashids_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 28.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashids/postgresql-14-pg-hashids_1.3-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_hashids` using `pig build`:

```bash
pig build pkg pg_hashids         # build RPM / DEB packages
```


## Install

You can install `pg_hashids` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_hashids;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_hashids -v 18  # PG 18
pig ext install -y pg_hashids -v 17  # PG 17
pig ext install -y pg_hashids -v 16  # PG 16
pig ext install -y pg_hashids -v 15  # PG 15
pig ext install -y pg_hashids -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_hashids_18       # PG 18
dnf install -y pg_hashids_17       # PG 17
dnf install -y pg_hashids_16       # PG 16
dnf install -y pg_hashids_15       # PG 15
dnf install -y pg_hashids_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-hashids   # PG 18
apt install -y postgresql-17-pg-hashids   # PG 17
apt install -y postgresql-16-pg-hashids   # PG 16
apt install -y postgresql-15-pg-hashids   # PG 15
apt install -y postgresql-14-pg-hashids   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_hashids;
```



## Usage

> [pg_hashids: generate short unique ids from integers](https://github.com/iCyberon/pg_hashids)

Converts numbers like 347 into strings like "yr8". Useful for obfuscating database primary keys.

```sql
CREATE EXTENSION pg_hashids;
```

### Functions

| Function | Description |
|---|---|
| `id_encode(number [, salt [, min_length [, alphabet]]])` | Encode an integer to a hashid string |
| `id_decode(hash, salt, min_length [, alphabet])` | Decode a hashid string back to integer array |
| `id_decode_once(hash [, salt [, min_length [, alphabet]]])` | Decode a hashid string back to a single integer |

### Examples

```sql
-- Basic encoding
SELECT id_encode(1001);                                    -- 'jNl'
SELECT id_encode(1234567, 'This is my salt');              -- 'Pdzxp'
SELECT id_encode(1234567, 'This is my salt', 10);          -- 'PlRPdzxpR7'

-- Custom alphabet
SELECT id_encode(1234567, 'This is my salt', 10, 'abcdefghijABCDxFGHIJ1234567890');
-- '3GJ956J9B9'

-- Decoding (use the same salt!)
SELECT id_decode('PlRPdzxpR7', 'This is my salt', 10);     -- 1234567
SELECT id_decode_once('jNl');                               -- 1001
SELECT id_decode_once('Pdzxp', 'This is my salt');          -- 1234567
```
