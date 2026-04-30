---
title: "convert"
linkTitle: "convert"
description: "conversion functions for spatial, routing and other specialized uses"
weight: 4850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rustprooflabs/convert">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rustprooflabs/convert</div>
    <div class="ext-card__desc">https://github.com/rustprooflabs/convert</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/convert-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">convert-0.1.0.tar.gz</div>
    <div class="ext-card__desc">convert-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_convert`**](/ext/e/convert) | `0.1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4850  | [**`convert`**](/ext/e/convert) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `convert` |
{.ext-table}

| **Related** | [`unit`](/ext/e/unit) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_convert` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_convert_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-convert` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_convert_18 pg_convert_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 293.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_convert_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_convert_18 pg_convert_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 189.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_convert_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_convert_18 pg_convert_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 308.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_convert_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_convert_18 pg_convert_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_convert_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_convert_18 pg_convert_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 308.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_convert_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_convert_18 pg_convert_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_convert_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 241.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 242.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 273.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 170.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 271.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-convert postgresql-18-convert_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 168.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-18-convert_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_convert_17 pg_convert_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 293.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_convert_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_convert_17 pg_convert_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 189.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_convert_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_convert_17 pg_convert_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 308.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_convert_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_convert_17 pg_convert_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_convert_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_convert_17 pg_convert_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 309.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_convert_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_convert_17 pg_convert_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_convert_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 242.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 242.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 145.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 273.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 170.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 271.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-convert postgresql-17-convert_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 168.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-17-convert_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_convert_16 pg_convert_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 293.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_convert_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_convert_16 pg_convert_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 189.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_convert_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_convert_16 pg_convert_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 308.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_convert_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_convert_16 pg_convert_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_convert_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_convert_16 pg_convert_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 308.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_convert_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_convert_16 pg_convert_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_convert_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 241.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 241.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 273.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 169.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 271.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-convert postgresql-16-convert_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 168.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-16-convert_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_convert_15 pg_convert_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 292.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_convert_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_convert_15 pg_convert_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 189.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_convert_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_convert_15 pg_convert_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 308.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_convert_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_convert_15 pg_convert_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_convert_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_convert_15 pg_convert_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 308.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_convert_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_convert_15 pg_convert_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_convert_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 242.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 145.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 242.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 273.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 169.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 271.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-convert postgresql-15-convert_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 168.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-15-convert_0.1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_convert_14 pg_convert_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 293.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_convert_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_convert_14 pg_convert_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 189.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_convert_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_convert_14 pg_convert_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 308.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_convert_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_convert_14 pg_convert_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 203.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_convert_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_convert_14 pg_convert_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 308.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_convert_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_convert_14 pg_convert_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 203.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_convert_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 241.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 242.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 146.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 273.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 169.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 270.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-convert postgresql-14-convert_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 168.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/convert/postgresql-14-convert_0.1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_convert` using `pig build`:

```bash
pig build pkg pg_convert         # build RPM / DEB packages
```


## Install

You can install `pg_convert` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_convert;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_convert -v 18  # PG 18
pig ext install -y pg_convert -v 17  # PG 17
pig ext install -y pg_convert -v 16  # PG 16
pig ext install -y pg_convert -v 15  # PG 15
pig ext install -y pg_convert -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_convert_18       # PG 18
dnf install -y pg_convert_17       # PG 17
dnf install -y pg_convert_16       # PG 16
dnf install -y pg_convert_15       # PG 15
dnf install -y pg_convert_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-convert   # PG 18
apt install -y postgresql-17-convert   # PG 17
apt install -y postgresql-16-convert   # PG 16
apt install -y postgresql-15-convert   # PG 15
apt install -y postgresql-14-convert   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION convert;
```



## Usage

> [convert: common unit conversion functions for PostgreSQL](https://github.com/rustprooflabs/convert)

Provides functions for common unit conversions: distance, speed, time-to-travel, power, area, and temperature.

```sql
CREATE EXTENSION convert;
```

### Distance Functions

| Function | Description |
|---|---|
| `dist_mi_to_ft(miles)` | Miles to feet |
| `dist_ft_to_mi(feet)` | Feet to miles |
| `dist_ft_to_m(feet)` | Feet to meters |
| `dist_m_to_ft(meters)` | Meters to feet |
| `dist_m_to_km(meters)` | Meters to kilometers |
| `dist_km_to_m(km)` | Kilometers to meters |
| `dist_mi_to_km(miles)` | Miles to kilometers |
| `dist_m_to_mi(meters)` | Meters to miles |
| `dist_km_to_mi(km)` | Kilometers to miles |

### Speed Functions

| Function | Description |
|---|---|
| `speed_mph_to_kmhr(mph)` | MPH to km/h |
| `speed_kmhr_to_mph(kmhr)` | km/h to MPH |
| `speed_kmhr_to_m_s(kmhr)` | km/h to m/s |
| `speed_mph_to_m_s(mph)` | MPH to m/s |
| `speed_m_s_to_kmhr(m_s)` | m/s to km/h |
| `speed_m_s_to_mph(m_s)` | m/s to MPH |

### Area Functions

| Function | Description |
|---|---|
| `area_m2_to_km2(m2)` | sq meters to sq km |
| `area_m2_to_ft2(m2)` | sq meters to sq feet |
| `area_ft2_to_m2(ft2)` | sq feet to sq meters |
| `area_ft2_to_mi2(ft2)` | sq feet to sq miles |
| `area_mi2_to_ft2(mi2)` | sq miles to sq feet |
| `area_mi2_to_acre(mi2)` | sq miles to acres |
| `area_acre_to_mi2(acres)` | Acres to sq miles |
| `area_acre_to_km2(acres)` | Acres to sq km |

### Temperature Functions

| Function | Description |
|---|---|
| `temp_c_to_f(celsius)` | Celsius to Fahrenheit |
| `temp_f_to_c(fahrenheit)` | Fahrenheit to Celsius |

### Power Functions

| Function | Description |
|---|---|
| `power_dbm_to_watts(dbm)` | dBm to watts |
| `power_watts_to_dbm(watts)` | Watts to dBm |

### Examples

```sql
SELECT dist_mi_to_km(26.2);      -- 42.16 (marathon in km)
SELECT temp_f_to_c(98.6);         -- 37.0
SELECT speed_mph_to_kmhr(60.0);   -- 96.56
SELECT area_acre_to_km2(640.0);   -- ~2.59
```
