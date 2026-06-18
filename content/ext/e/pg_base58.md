---
title: "pg_base58"
linkTitle: "pg_base58"
description: "Base58 Encoder/Decoder Extension for PostgreSQL"
weight: 4830
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Fell-x27/pg_base58">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Fell-x27/pg_base58</div>
    <div class="ext-card__desc">https://github.com/Fell-x27/pg_base58</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_base58-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_base58-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_base58-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_base58`**](/ext/e/pg_base58) | `0.0.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4830  | [**`pg_base58`**](/ext/e/pg_base58) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`url_encode`](/ext/e/url_encode) [`pg_cardano`](/ext/e/pg_cardano) [`base36`](/ext/e/base36) [`base62`](/ext/e/base62) [`pg_polyline`](/ext/e/pg_polyline) [`uri`](/ext/e/uri) [`pg_curl`](/ext/e/pg_curl) [`pg_rewrite`](/ext/e/pg_rewrite) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_base58` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_base58_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-base58` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_base58_18 pg_base58_18-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 288.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_base58_18-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_base58_18 pg_base58_18-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 184.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_base58_18-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_base58_18 pg_base58_18-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 303.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_base58_18-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_base58_18 pg_base58_18-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 197.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_base58_18-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_base58_18 pg_base58_18-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 303.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_base58_18-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_base58_18 pg_base58_18-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 196.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_base58_18-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 236.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 236.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 141.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 267.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 163.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 265.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 162.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb pigsty 0.0.1 740.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-base58 postgresql-18-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb pigsty 0.0.1 656.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-18-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_base58_17 pg_base58_17-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 288.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_base58_17-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_base58_17 pg_base58_17-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 184.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_base58_17-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_base58_17 pg_base58_17-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 302.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_base58_17-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_base58_17 pg_base58_17-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 197.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_base58_17-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_base58_17 pg_base58_17-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 303.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_base58_17-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_base58_17 pg_base58_17-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 196.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_base58_17-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 236.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 236.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 141.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 267.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 163.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 264.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 162.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb pigsty 0.0.1 737.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-base58 postgresql-17-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb pigsty 0.0.1 653.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-17-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_base58_16 pg_base58_16-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 288.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_base58_16-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_base58_16 pg_base58_16-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 184.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_base58_16-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_base58_16 pg_base58_16-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 302.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_base58_16-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_base58_16 pg_base58_16-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 197.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_base58_16-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_base58_16 pg_base58_16-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 303.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_base58_16-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_base58_16 pg_base58_16-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 196.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_base58_16-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 236.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 236.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 141.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 267.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 164.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 265.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 163.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb pigsty 0.0.1 737.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-base58 postgresql-16-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb pigsty 0.0.1 653.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-16-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_base58_15 pg_base58_15-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 287.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_base58_15-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_base58_15 pg_base58_15-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 184.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_base58_15-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_base58_15 pg_base58_15-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 302.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_base58_15-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_base58_15 pg_base58_15-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 197.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_base58_15-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_base58_15 pg_base58_15-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 302.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_base58_15-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_base58_15 pg_base58_15-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 196.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_base58_15-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 236.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 236.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 141.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 267.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 163.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 264.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 163.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb pigsty 0.0.1 730.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-base58 postgresql-15-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb pigsty 0.0.1 646.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-15-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_base58_14 pg_base58_14-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 287.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_base58_14-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_base58_14 pg_base58_14-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 184.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_base58_14-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_base58_14 pg_base58_14-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 302.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_base58_14-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_base58_14 pg_base58_14-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 196.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_base58_14-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_base58_14 pg_base58_14-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 302.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_base58_14-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_base58_14 pg_base58_14-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 196.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_base58_14-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 236.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 141.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 236.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 141.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 267.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 163.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 265.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 162.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb pigsty 0.0.1 726.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-4PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-base58 postgresql-14-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb pigsty 0.0.1 645.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-base58/postgresql-14-pg-base58_0.0.1-4PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_base58` using `pig build`:

```bash
pig build pkg pg_base58         # build RPM / DEB packages
```


## Install

You can install `pg_base58` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_base58;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_base58 -v 18  # PG 18
pig ext install -y pg_base58 -v 17  # PG 17
pig ext install -y pg_base58 -v 16  # PG 16
pig ext install -y pg_base58 -v 15  # PG 15
pig ext install -y pg_base58 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_base58_18       # PG 18
dnf install -y pg_base58_17       # PG 17
dnf install -y pg_base58_16       # PG 16
dnf install -y pg_base58_15       # PG 15
dnf install -y pg_base58_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-base58   # PG 18
apt install -y postgresql-17-pg-base58   # PG 17
apt install -y postgresql-16-pg-base58   # PG 16
apt install -y postgresql-15-pg-base58   # PG 15
apt install -y postgresql-14-pg-base58   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_base58;
```



## Usage

> [pg_base58: base58 encoding/decoding for PostgreSQL](https://github.com/Fell-x27/pg_base58)

Provides functions to encode and decode data using Base58 encoding.

```sql
CREATE EXTENSION pg_base58;
```

### Functions

| Function | Description |
|---|---|
| `base58_encode(bytea)` | Encode bytea data to Base58 text |
| `base58_decode(text)` | Decode Base58 text back to bytea |

### Examples

```sql
-- Encode a string to Base58
SELECT base58_encode('hello'::bytea);
-- 'Cn8eVZg'

-- Decode a Base58 string back
SELECT base58_decode('Cn8eVZg');
-- '\x68656c6c6f'  (i.e., 'hello')

-- Round-trip
SELECT convert_from(base58_decode(base58_encode('hello'::bytea)), 'UTF8');
-- 'hello'
```
