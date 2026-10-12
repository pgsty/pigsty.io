---
title: "pg_local_cache"
linkTitle: "pg_local_cache"
description: "Transaction-aware shared-memory cache serving PostgreSQL primary-key rows over RESP2 MGET"
weight: 2890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/profundium/pg_local_cache">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">profundium/pg_local_cache</div>
    <div class="ext-card__desc">https://github.com/profundium/pg_local_cache</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_local_cache-3.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_local_cache-3.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_local_cache-3.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_local_cache`**](/ext/e/pg_local_cache) | `3.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2890  | [**`pg_local_cache`**](/ext/e/pg_local_cache) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `local_cache` |
{.ext-table}


> PG14-18; requires preload.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_local_cache` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_local_cache_$v` | `openssl-libs` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-local-cache` | `libssl3 | libssl3t64` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 | AVAIL PIGSTY 2.0.4 1 |
@ el8.x86_64 18 pg_local_cache_18 pg_local_cache_18-2.0.4-1PGSTY.el8.x86_64.rpm pigsty 2.0.4 187.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_18-2.0.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_local_cache_18 pg_local_cache_18-2.0.4-1PGSTY.el8.aarch64.rpm pigsty 2.0.4 182.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_18-2.0.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_local_cache_18 pg_local_cache_18-2.0.4-1PGSTY.el9.x86_64.rpm pigsty 2.0.4 189.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_18-2.0.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_local_cache_18 pg_local_cache_18-2.0.4-1PGSTY.el9.aarch64.rpm pigsty 2.0.4 185.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_18-2.0.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_local_cache_18 pg_local_cache_18-2.0.4-1PGSTY.el10.x86_64.rpm pigsty 2.0.4 190.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_18-2.0.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_local_cache_18 pg_local_cache_18-2.0.4-1PGSTY.el10.aarch64.rpm pigsty 2.0.4 185.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_18-2.0.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb pigsty 2.0.4 173.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb pigsty 2.0.4 168.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb pigsty 2.0.4 173.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb pigsty 2.0.4 168.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb pigsty 2.0.4 187.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb pigsty 2.0.4 182.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb pigsty 2.0.4 180.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb pigsty 2.0.4 177.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb pigsty 2.0.4 178.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb pigsty 2.0.4 175.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_local_cache_17 pg_local_cache_17-2.0.4-1PGSTY.el8.x86_64.rpm pigsty 2.0.4 187.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_17-2.0.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_local_cache_17 pg_local_cache_17-2.0.4-1PGSTY.el8.aarch64.rpm pigsty 2.0.4 182.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_17-2.0.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_local_cache_17 pg_local_cache_17-2.0.4-1PGSTY.el9.x86_64.rpm pigsty 2.0.4 188.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_17-2.0.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_local_cache_17 pg_local_cache_17-2.0.4-1PGSTY.el9.aarch64.rpm pigsty 2.0.4 185.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_17-2.0.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_local_cache_17 pg_local_cache_17-2.0.4-1PGSTY.el10.x86_64.rpm pigsty 2.0.4 189.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_17-2.0.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_local_cache_17 pg_local_cache_17-2.0.4-1PGSTY.el10.aarch64.rpm pigsty 2.0.4 185.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_17-2.0.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb pigsty 2.0.4 173.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb pigsty 2.0.4 167.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb pigsty 2.0.4 173.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb pigsty 2.0.4 168.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb pigsty 2.0.4 204.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb pigsty 2.0.4 200.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb pigsty 2.0.4 180.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb pigsty 2.0.4 177.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb pigsty 2.0.4 177.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb pigsty 2.0.4 175.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_local_cache_16 pg_local_cache_16-2.0.4-1PGSTY.el8.x86_64.rpm pigsty 2.0.4 187.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_16-2.0.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_local_cache_16 pg_local_cache_16-2.0.4-1PGSTY.el8.aarch64.rpm pigsty 2.0.4 182.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_16-2.0.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_local_cache_16 pg_local_cache_16-2.0.4-1PGSTY.el9.x86_64.rpm pigsty 2.0.4 188.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_16-2.0.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_local_cache_16 pg_local_cache_16-2.0.4-1PGSTY.el9.aarch64.rpm pigsty 2.0.4 185.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_16-2.0.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_local_cache_16 pg_local_cache_16-2.0.4-1PGSTY.el10.x86_64.rpm pigsty 2.0.4 189.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_16-2.0.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_local_cache_16 pg_local_cache_16-2.0.4-1PGSTY.el10.aarch64.rpm pigsty 2.0.4 185.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_16-2.0.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb pigsty 2.0.4 173.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb pigsty 2.0.4 167.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb pigsty 2.0.4 173.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb pigsty 2.0.4 168.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb pigsty 2.0.4 203.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb pigsty 2.0.4 199.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb pigsty 2.0.4 180.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb pigsty 2.0.4 177.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb pigsty 2.0.4 178.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb pigsty 2.0.4 174.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_local_cache_15 pg_local_cache_15-2.0.4-1PGSTY.el8.x86_64.rpm pigsty 2.0.4 188.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_15-2.0.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_local_cache_15 pg_local_cache_15-2.0.4-1PGSTY.el8.aarch64.rpm pigsty 2.0.4 183.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_15-2.0.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_local_cache_15 pg_local_cache_15-2.0.4-1PGSTY.el9.x86_64.rpm pigsty 2.0.4 190.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_15-2.0.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_local_cache_15 pg_local_cache_15-2.0.4-1PGSTY.el9.aarch64.rpm pigsty 2.0.4 188.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_15-2.0.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_local_cache_15 pg_local_cache_15-2.0.4-1PGSTY.el10.x86_64.rpm pigsty 2.0.4 191.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_15-2.0.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_local_cache_15 pg_local_cache_15-2.0.4-1PGSTY.el10.aarch64.rpm pigsty 2.0.4 188.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_15-2.0.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb pigsty 2.0.4 174.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb pigsty 2.0.4 169.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb pigsty 2.0.4 174.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb pigsty 2.0.4 169.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb pigsty 2.0.4 204.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb pigsty 2.0.4 201.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb pigsty 2.0.4 182.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb pigsty 2.0.4 179.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb pigsty 2.0.4 180.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb pigsty 2.0.4 176.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_local_cache_14 pg_local_cache_14-2.0.4-1PGSTY.el8.x86_64.rpm pigsty 2.0.4 188.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_14-2.0.4-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_local_cache_14 pg_local_cache_14-2.0.4-1PGSTY.el8.aarch64.rpm pigsty 2.0.4 184.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_14-2.0.4-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_local_cache_14 pg_local_cache_14-2.0.4-1PGSTY.el9.x86_64.rpm pigsty 2.0.4 190.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_14-2.0.4-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_local_cache_14 pg_local_cache_14-2.0.4-1PGSTY.el9.aarch64.rpm pigsty 2.0.4 189.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_14-2.0.4-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_local_cache_14 pg_local_cache_14-2.0.4-1PGSTY.el10.x86_64.rpm pigsty 2.0.4 191.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_14-2.0.4-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_local_cache_14 pg_local_cache_14-2.0.4-1PGSTY.el10.aarch64.rpm pigsty 2.0.4 189.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_14-2.0.4-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb pigsty 2.0.4 174.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb pigsty 2.0.4 169.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb pigsty 2.0.4 174.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb pigsty 2.0.4 170.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb pigsty 2.0.4 200.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb pigsty 2.0.4 199.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb pigsty 2.0.4 182.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb pigsty 2.0.4 181.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb pigsty 2.0.4 179.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb pigsty 2.0.4 178.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_2.0.4-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_local_cache` using `pig build`:

```bash
pig build pkg pg_local_cache         # build RPM / DEB packages
```


## Install

You can install `pg_local_cache` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_local_cache;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_local_cache -v 18  # PG 18
pig ext install -y pg_local_cache -v 17  # PG 17
pig ext install -y pg_local_cache -v 16  # PG 16
pig ext install -y pg_local_cache -v 15  # PG 15
pig ext install -y pg_local_cache -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_local_cache_18       # PG 18
dnf install -y pg_local_cache_17       # PG 17
dnf install -y pg_local_cache_16       # PG 16
dnf install -y pg_local_cache_15       # PG 15
dnf install -y pg_local_cache_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-local-cache   # PG 18
apt install -y postgresql-17-pg-local-cache   # PG 17
apt install -y postgresql-16-pg-local-cache   # PG 16
apt install -y postgresql-15-pg-local-cache   # PG 15
apt install -y postgresql-14-pg-local-cache   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_local_cache';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_local_cache;
```

## Usage

Sources:

- [README.md](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/README.md)
- [pg_local_cache.control](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/pg_local_cache.control)
- [sql/pg_local_cache--3.1.0.sql](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/sql/pg_local_cache--3.1.0.sql)
- [sql/pg_local_cache--2.0.4--3.0.0.sql](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/sql/pg_local_cache--2.0.4--3.0.0.sql)
- [docs/UPGRADING.md](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/docs/UPGRADING.md)
- [CHANGELOG.md](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/CHANGELOG.md)
- [3.0.0 to 3.1.0 upgrade](https://api.pgxn.org/src/pg_local_cache/pg_local_cache-3.1.0/sql/pg_local_cache--3.0.0--3.1.0.sql)

`pg_local_cache` 3.1.0 caches whole rows by their complete primary key in bounded shared memory. Cached reads now use authenticated RESP MGET; SQL `local_cache.mget` is removed and ordinary SELECT queries are not rewritten. PostgreSQL remains the durable source of truth.

### Core Workflow

```ini
shared_preload_libraries = 'pg_local_cache'
pg_local_cache.database = 'app'
pg_local_cache.role = 'local_cache_worker'
pg_local_cache.bind_address = '127.0.0.1'
pg_local_cache.port = 6380
pg_local_cache.auth_token_file = '/secure/path/token'
```

```sql
CREATE EXTENSION pg_local_cache;
CREATE TABLE public.items (id bigint PRIMARY KEY, value text);
INSERT INTO public.items VALUES (42, 'example');
SELECT local_cache.attach_table('public.items'::regclass);
SELECT local_cache.health();
```

After authenticating the RESP connection:

```text
MGET CRUD:app.public.items:{"id":42} CRUD:app.public.items:{"id":7}
```

### Operational Boundaries

Append the library to existing preload entries, provision a dedicated worker role and its documented metadata/table grants, secure the token file, and restart. A superuser creates the extension in fixed schema `local_cache`. Attach only supported permanent primary-key tables. RESP MGET preserves order and duplicate keys and returns null for missing rows. Workers use the configured database role, not the client’s SQL privileges, transaction or snapshot. Keep joins, projections, row locks and session-sensitive reads in ordinary SQL.

`local_cache.attach_table` installs invalidation triggers; `local_cache.detach_table` removes a mapping; `local_cache.reconcile_table` revalidates it after DDL or privilege changes. `local_cache.health`, `local_cache.stats` and `local_cache.metrics` report readiness and resource use. Normal PostgreSQL writes invalidate affected cache entries. RLS, partitioned and inherited tables are outside the documented workload. There is no TTL or distributed cache coordination.

Supports PostgreSQL 14–18 on one writable primary. Non-loopback listeners require `pg_local_cache.tls` or explicit `pg_local_cache.allow_plaintext_network` opt-in. TLS uses separate certificate/key settings; a CA setting enables mutual TLS. The reloadable `pg_local_cache.enabled` switch disables caching.

Before upgrading from 2.x, move SQL MGET callers to the RESP authorization model. Install matching 3.1.0 files, configure listener security, restart, confirm the library version and listener readiness, then run `ALTER EXTENSION pg_local_cache UPDATE` in each affected database. Dependencies on removed functions or the replaced metrics return type can block migration; the script deliberately avoids CASCADE. No downgrade script is supplied.

### Upgrade from 3.0.0 to 3.1.0

Version 3.1.0 changes the shared-memory layout and fixes stale-read races and worker memory leaks. Restart PostgreSQL after installing the matching library, then update the extension in each database; the SQL migration itself changes no objects or attached-table mappings. Verify `pg_local_cache.binary_version` and `local_cache.health()` afterward.

`pg_local_cache.cache_entries` now counts descriptors, while byte capacity comes from slab storage. Review `pg_local_cache.lock_partitions`, dirty-marker limits, the new `pg_local_cache.max_deferred_misses`, client slots and the process file-descriptor limit before restarting. MGET deduplicates misses, but single-flight waiters can use later transactions; a complete response is not guaranteed to share one snapshot.
