---
title: "pg_local_cache"
linkTitle: "pg_local_cache"
description: "Transaction-aware shared-memory cache for ordinary PostgreSQL primary-key reads"
weight: 2890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/profundium/pg_local_cache">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">profundium/pg_local_cache</div>
    <div class="ext-card__desc">https://github.com/profundium/pg_local_cache</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_local_cache-1.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_local_cache-1.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_local_cache-1.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_local_cache`**](/ext/e/pg_local_cache) | `1.3.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2890  | [**`pg_local_cache`**](/ext/e/pg_local_cache) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `local_cache` |
{.ext-table}


> Requires shared_preload_libraries=pg_local_cache and a restart; CREATE EXTENSION requires superuser; v1.3.0 supports PostgreSQL 14-18, one configured database, and one writable primary.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_local_cache` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_local_cache_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-local-cache` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 | AVAIL PIGSTY 1.3.0 1 |
@ el8.x86_64 18 pg_local_cache_18 pg_local_cache_18-1.3.0-1PIGSTY.el8.x86_64.rpm pigsty 1.3.0 91.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_18-1.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_local_cache_18 pg_local_cache_18-1.3.0-1PIGSTY.el8.aarch64.rpm pigsty 1.3.0 88.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_18-1.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_local_cache_18 pg_local_cache_18-1.3.0-1PIGSTY.el9.x86_64.rpm pigsty 1.3.0 88.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_18-1.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_local_cache_18 pg_local_cache_18-1.3.0-1PIGSTY.el9.aarch64.rpm pigsty 1.3.0 87.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_18-1.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_local_cache_18 pg_local_cache_18-1.3.0-1PIGSTY.el10.x86_64.rpm pigsty 1.3.0 89.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_18-1.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_local_cache_18 pg_local_cache_18-1.3.0-1PIGSTY.el10.aarch64.rpm pigsty 1.3.0 88.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_18-1.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 211.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 205.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 213.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 206.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 230.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 226.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 221.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 219.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 218.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-local-cache postgresql-18-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 216.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-18-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_local_cache_17 pg_local_cache_17-1.3.0-1PIGSTY.el8.x86_64.rpm pigsty 1.3.0 91.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_17-1.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_local_cache_17 pg_local_cache_17-1.3.0-1PIGSTY.el8.aarch64.rpm pigsty 1.3.0 88.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_17-1.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_local_cache_17 pg_local_cache_17-1.3.0-1PIGSTY.el9.x86_64.rpm pigsty 1.3.0 88.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_17-1.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_local_cache_17 pg_local_cache_17-1.3.0-1PIGSTY.el9.aarch64.rpm pigsty 1.3.0 87.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_17-1.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_local_cache_17 pg_local_cache_17-1.3.0-1PIGSTY.el10.x86_64.rpm pigsty 1.3.0 89.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_17-1.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_local_cache_17 pg_local_cache_17-1.3.0-1PIGSTY.el10.aarch64.rpm pigsty 1.3.0 88.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_17-1.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 211.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 205.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 212.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 206.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 251.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 247.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 221.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 219.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 218.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-local-cache postgresql-17-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 215.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-17-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_local_cache_16 pg_local_cache_16-1.3.0-1PIGSTY.el8.x86_64.rpm pigsty 1.3.0 91.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_16-1.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_local_cache_16 pg_local_cache_16-1.3.0-1PIGSTY.el8.aarch64.rpm pigsty 1.3.0 88.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_16-1.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_local_cache_16 pg_local_cache_16-1.3.0-1PIGSTY.el9.x86_64.rpm pigsty 1.3.0 88.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_16-1.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_local_cache_16 pg_local_cache_16-1.3.0-1PIGSTY.el9.aarch64.rpm pigsty 1.3.0 87.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_16-1.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_local_cache_16 pg_local_cache_16-1.3.0-1PIGSTY.el10.x86_64.rpm pigsty 1.3.0 89.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_16-1.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_local_cache_16 pg_local_cache_16-1.3.0-1PIGSTY.el10.aarch64.rpm pigsty 1.3.0 88.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_16-1.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 211.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 206.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 212.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 206.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 251.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 246.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 220.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 219.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 218.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-local-cache postgresql-16-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 215.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-16-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_local_cache_15 pg_local_cache_15-1.3.0-1PIGSTY.el8.x86_64.rpm pigsty 1.3.0 93.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_15-1.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_local_cache_15 pg_local_cache_15-1.3.0-1PIGSTY.el8.aarch64.rpm pigsty 1.3.0 90.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_15-1.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_local_cache_15 pg_local_cache_15-1.3.0-1PIGSTY.el9.x86_64.rpm pigsty 1.3.0 90.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_15-1.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_local_cache_15 pg_local_cache_15-1.3.0-1PIGSTY.el9.aarch64.rpm pigsty 1.3.0 90.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_15-1.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_local_cache_15 pg_local_cache_15-1.3.0-1PIGSTY.el10.x86_64.rpm pigsty 1.3.0 91.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_15-1.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_local_cache_15 pg_local_cache_15-1.3.0-1PIGSTY.el10.aarch64.rpm pigsty 1.3.0 90.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_15-1.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 213.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 207.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 213.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 207.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 252.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 249.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 222.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 221.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 220.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-local-cache postgresql-15-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 217.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-15-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_local_cache_14 pg_local_cache_14-1.3.0-1PIGSTY.el8.x86_64.rpm pigsty 1.3.0 93.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_local_cache_14-1.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_local_cache_14 pg_local_cache_14-1.3.0-1PIGSTY.el8.aarch64.rpm pigsty 1.3.0 90.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_local_cache_14-1.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_local_cache_14 pg_local_cache_14-1.3.0-1PIGSTY.el9.x86_64.rpm pigsty 1.3.0 90.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_local_cache_14-1.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_local_cache_14 pg_local_cache_14-1.3.0-1PIGSTY.el9.aarch64.rpm pigsty 1.3.0 91.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_local_cache_14-1.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_local_cache_14 pg_local_cache_14-1.3.0-1PIGSTY.el10.x86_64.rpm pigsty 1.3.0 91.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_local_cache_14-1.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_local_cache_14 pg_local_cache_14-1.3.0-1PIGSTY.el10.aarch64.rpm pigsty 1.3.0 91.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_local_cache_14-1.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb pigsty 1.3.0 212.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb pigsty 1.3.0 207.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb pigsty 1.3.0 213.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb pigsty 1.3.0 208.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb pigsty 1.3.0 248.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb pigsty 1.3.0 246.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb pigsty 1.3.0 222.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb pigsty 1.3.0 222.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb pigsty 1.3.0 219.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-local-cache postgresql-14-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb pigsty 1.3.0 218.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-local-cache/postgresql-14-pg-local-cache_1.3.0-1PGSTY~resolute_arm64.deb
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

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
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

- [pg_local_cache 1.3.0 on PGXN](https://pgxn.org/dist/pg_local_cache/1.3.0/)
- [pg_local_cache v1.3.0 README](https://github.com/profundium/pg_local_cache/blob/v1.3.0/README.md)
- [pg_local_cache v1.3.0 control file](https://github.com/profundium/pg_local_cache/blob/v1.3.0/pg_local_cache.control)
- [pg_local_cache 1.3.0 extension SQL](https://github.com/profundium/pg_local_cache/blob/v1.3.0/sql/pg_local_cache--1.3.0.sql)
- [Technical reference](https://github.com/profundium/pg_local_cache/blob/v1.3.0/docs/TECHNICAL.md)
- [Existing-server installation guide](https://github.com/profundium/pg_local_cache/blob/v1.3.0/docs/INSTALL_EXISTING.md)
- [pg_local_cache v1.3.0 release](https://github.com/profundium/pg_local_cache/releases/tag/v1.3.0)
- [Pigsty package matrix](https://pgext.cloud/ext/pg_local_cache)

`pg_local_cache` 1.3.0 is a transaction-aware, in-process cache for repeated PostgreSQL primary-key reads. It keeps bounded whole-row entries in shared memory and can transparently accelerate eligible ordinary `SELECT` statements while retaining the original PostgreSQL primary-key plan as the authoritative fallback. Use it for a hot working set on one writable primary; it is not a general query-result cache, a durability layer, or a distributed Redis/Valkey replacement.

### Core Workflow

The library must be loaded at postmaster startup. This SQL-only configuration disables the optional RESP listener and serves one application database:

```conf
shared_preload_libraries = 'pg_local_cache'
pg_local_cache.database = 'app'
pg_local_cache.port = 0
pg_local_cache.cache_entries = 16384
pg_local_cache.memory_budget_mb = 384
```

Add `pg_local_cache` to any existing comma-separated preload list instead of replacing other libraries, validate the configuration, and perform a controlled PostgreSQL restart. The control file fixes the extension in schema `local_cache`, sets `superuser=true`, and is not relocatable, so a superuser must create it in each database where it is used:

```sql
CREATE EXTENSION pg_local_cache;
```

Create an eligible permanent table, then attach it. `attach_table` takes a `ShareRowExclusiveLock`, records the complete primary key in `local_cache.mapping`, installs extension-owned invalidation triggers, and publishes the mapping to shared memory. Use a bounded lock timeout on a live system:

```sql
CREATE TABLE public.items (
    id bigint PRIMARY KEY,
    value text NOT NULL,
    enabled boolean NOT NULL DEFAULT true,
    metadata jsonb
);

INSERT INTO public.items VALUES
    (1, 'hello', true, '{"source":"postgres"}');

BEGIN;
SET LOCAL lock_timeout = '2s';
SELECT local_cache.attach_table('public.items'::regclass);
COMMIT;
```

The default `p_writable=false` disables RESP `SET` and `DEL`; it does not prevent normal PostgreSQL DML. Applications keep using their existing PostgreSQL connection, row types, and SQL:

```sql
SELECT * FROM public.items WHERE id = $1::bigint;

SELECT value, metadata
FROM public.items
WHERE id = ANY($1::bigint[]);

EXPLAIN (ANALYZE, COSTS OFF)
SELECT * FROM public.items WHERE id = 1;
```

An eligible plan appears as `Custom Scan (pg_local_cache_sql)`. A cache miss or any unsafe or unsupported condition executes the retained primary-key index plan; PostgreSQL remains the source of truth.

### Explicit JSON APIs

Ordinary SQL is the canonical tuple-returning interface. Callers that deliberately want a cache-shaped JSON API can use these `SECURITY INVOKER` functions:

```sql
SELECT local_cache.get('public.items'::regclass, 1::bigint);

SELECT local_cache.mget(
    'public.items'::regclass,
    ARRAY[1, 7, 1]::bigint[]
);
```

`get(regclass, anyelement)` returns complete-row JSON as `text`; `mget(regclass, anyarray)` returns a `text[]` aligned with its input, preserving duplicate and `NULL` positions. For a composite or heterogeneous primary key, call `get(regclass, text[])` with components in the key order recorded by `attach_table`. Explicit API callers need `USAGE` on schema `local_cache`, `EXECUTE` on the chosen overload, and normal `SELECT` privilege on the source table.

### Important Objects and Controls

- `local_cache.attach_table(regclass, boolean, text)` validates and registers a table. Set `p_writable=true` only when the optional RESP worker should be allowed to write the source relation; `p_namespace` overrides the generated mapping name.
- `local_cache.detach_table(regclass)` removes the mapping, managed triggers, shared entry state, and direct worker-role privileges. It returns `false` when the relation was not attached.
- `local_cache.reconcile_table(regclass)` and `local_cache.reconcile_all()` revalidate relation shape, primary keys, trigger provenance, and worker grants after controlled DDL or privilege changes.
- `local_cache.mapping` is the extension-owned mapping registry and is included in extension configuration dumps. Do not edit it as a substitute for the administrative functions.
- `local_cache.metrics()` returns typed counters and memory/worker gauges, `local_cache.health()` returns a compact JSON readiness assessment, and `local_cache.stats()` returns detailed JSON diagnostics. These and the administrative functions are revoked from `PUBLIC`; grant them only to designated deploy or monitoring roles.
- `local_cache.invalidate(namespace)` invalidates one mapping namespace and returns the affected-entry count. Normal DML, `TRUNCATE`, and relevant DDL use automatic transactional invalidation.

Key settings are:

| Setting | Default | Effect |
|---|---:|---|
| `pg_local_cache.port` | `6380` | RESP2 port; set `0` for SQL-only mode. |
| `pg_local_cache.database` | `postgres` | The one database served by this extension instance. |
| `pg_local_cache.cache_entries` | `16384` | Shared row-cache entry capacity. |
| `pg_local_cache.relation_states` | `1024` | Shared relation-version state capacity. |
| `pg_local_cache.memory_budget_mb` | `384` | Startup budget for deterministic extension allocations. |
| `pg_local_cache.max_dirty_keys` | `4096` | Per-transaction key bound before invalidation widens to the relation. |
| `pg_local_cache.sql_cache` | `on` | `USERSET` switch for the ordinary-SQL fast path; no restart is required. |

Except for `pg_local_cache.sql_cache`, the documented GUCs are postmaster settings. The memory budget covers the extension's deterministic shared hashes and optional RESP buffers, not `shared_buffers`, backend memory, the operating system, or other services.

### Fast-Path and Consistency Boundaries

The transparent path is deliberately narrow. It requires `READ COMMITTED`, one attached base table, direct column projections, and equality predicates for every primary-key column. A single-column primary key also supports bounded `IN` and `= ANY(array)` queries. Joins, CTEs, subqueries, aggregates, grouping, ordering, row locks, extra predicates, recovery, parallel execution, `REPEATABLE READ`, and `SERIALIZABLE` use normal PostgreSQL plans. Scalar lookups may use no `LIMIT` or constant `LIMIT 1`; batch lookups may not use `LIMIT`.

For `IN`/`ANY`, the executor deduplicates at most 1,024 non-null keys and copies at most 16 MiB of validated rows into query-local memory. The batch is all-or-nothing: one miss, unsafe snapshot, malformed entry, or budget overflow runs the complete source plan rather than merging cached and source rows.

Source-table writes remain ordinary PostgreSQL transactions. Managed triggers collect changed keys, and the pre-commit callback publishes invalidation fences before the transaction becomes visible. A rollback never publishes uncommitted row data. After the current transaction writes an attached relation, subsequent reads in that transaction bypass the cache to preserve read-your-own-write behavior. `PREPARE TRANSACTION` is rejected after such a write.

Entries have no TTL. They remain until invalidation, eviction, replacement, corruption detection, or an MVCC safety check retires them. Encoded cache values are limited to 8 KiB; a wider row simply uses PostgreSQL instead of becoming an entry.

### Table and Deployment Requirements

Version 1.3.0 supports PostgreSQL 14–18, one configured database, and one writable primary. Upstream's own published binary and existing-server instructions cover Linux amd64 with glibc or musl; the current Pigsty package matrix separately includes validated x86_64 and aarch64 builds. Treat those as different evidence layers and verify the exact package platform before installation. Attached relations must be permanent, non-partitioned tables with no inheritance or row-level security and with an immediate, non-partial B-tree primary key. Supported key columns are `int2`, `int4`, `int8`, `text`, `varchar`, `bpchar`, and `uuid`; composite keys may contain 1–16 columns. Temporary or unlogged tables, views, partitioned tables, expression or partial primary keys, nondeterministic key collations, and non-default primary-key operator classes are rejected.

At most 128 mappings are published per instance. Dropping a table forgets its mapping; recreating a table with the same name does not reattach it. The cache is not served on standbys and provides no multi-primary coordination, TTL, clustering, Pub/Sub, or general range/join/aggregate caching.

### Version 1.3.0 Upgrade

Version 1.3.0 changes the shared library, packaging, or documentation; its SQL objects are unchanged from 1.2.1. Because the library is loaded at postmaster startup, install the matching files, perform a controlled restart, then record the extension version:

```sql
ALTER EXTENSION pg_local_cache UPDATE TO '1.3.0';
SELECT extversion
FROM pg_extension
WHERE extname = 'pg_local_cache';
```

After restart, check `local_cache.health()`, `local_cache.metrics()`, attached mappings, and an `EXPLAIN (ANALYZE, COSTS OFF)` fast-path query before returning traffic. Do not infer runtime readiness from the extension version alone.

### Optional RESP2 Security Boundary

RESP mode exposes whole-row `GET`, `SET`, and `DEL` through a limited RESP2 protocol, but it uses one shared token and one `LOGIN NOSUPERUSER NOINHERIT` worker role for every accepted mapping. It has no TLS and no per-client PostgreSQL identity or ACL context. Keep `pg_local_cache.port=0` unless this interface is required. If enabled, retain the default loopback bind or place remote access behind network isolation and authenticated TLS, store the token in a PostgreSQL OS-user-owned mode `0400` or `0600` file through `pg_local_cache.auth_token_file`, and never treat a lost write reply as proof that the PostgreSQL transaction did not commit.
