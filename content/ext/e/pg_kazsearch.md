---
title: "pg_kazsearch"
linkTitle: "pg_kazsearch"
description: "Kazakh full-text search extension for PostgreSQL"
weight: 2200
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/darkhanakh/pg-kazsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">darkhanakh/pg-kazsearch</div>
    <div class="ext-card__desc">https://github.com/darkhanakh/pg-kazsearch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_kazsearch-2.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_kazsearch-2.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_kazsearch-2.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_kazsearch`**](/ext/e/pg_kazsearch) | `2.2.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2200  | [**`pg_kazsearch`**](/ext/e/pg_kazsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> Upstream release/package version is 2.0.0; extension control version is 0.1.0; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16" >}} | `pg_kazsearch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16" >}} | `pg_kazsearch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-kazsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | AVAIL PIGSTY 2.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_18-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 986.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_18-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_18-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_18-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_18-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 1009.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_18-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 837.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 731.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 838.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 732.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 935.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 861.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 927.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 848.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 921.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 847.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_17-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 983.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_17-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_17-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_17-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_17-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 1009.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_17-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 837.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 730.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 836.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 731.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 936.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 858.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 928.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 848.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 919.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 845.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_16-2.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.2.0 983.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_16-2.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_16-2.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_16-2.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.2.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_16-2.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.2.0 1009.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_16-2.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~bookworm_amd64.deb pigsty 2.2.0 835.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~bookworm_arm64.deb pigsty 2.2.0 729.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~trixie_amd64.deb pigsty 2.2.0 834.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~trixie_arm64.deb pigsty 2.2.0 730.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~jammy_amd64.deb pigsty 2.2.0 933.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~jammy_arm64.deb pigsty 2.2.0 859.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~noble_amd64.deb pigsty 2.2.0 926.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~noble_arm64.deb pigsty 2.2.0 846.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~resolute_amd64.deb pigsty 2.2.0 919.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~resolute_arm64.deb pigsty 2.2.0 843.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.2.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_kazsearch` using `pig build`:

```bash
pig build pkg pg_kazsearch         # build RPM / DEB packages
```


## Install

You can install `pg_kazsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_kazsearch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_kazsearch -v 18  # PG 18
pig ext install -y pg_kazsearch -v 17  # PG 17
pig ext install -y pg_kazsearch -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_kazsearch_18       # PG 18
dnf install -y pg_kazsearch_17       # PG 17
dnf install -y pg_kazsearch_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-kazsearch   # PG 18
apt install -y postgresql-17-pg-kazsearch   # PG 17
apt install -y postgresql-16-pg-kazsearch   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_kazsearch;
```

## Usage

Sources: [README](https://github.com/darkhanakh/pg-kazsearch/blob/main/README.md), [v2.0.0 release](https://github.com/darkhanakh/pg-kazsearch/releases/tag/v2.0.0), [v2.1.0 release](https://github.com/darkhanakh/pg-kazsearch/releases/tag/v2.1.0)

`pg_kazsearch` is a PostgreSQL full-text search extension for the Kazakh language. The README says it supports PostgreSQL 16-18 and creates a ready-to-use text search configuration `kazakh_cfg` and dictionary `pg_kazsearch_dict`.

### Quick start

```sql
CREATE EXTENSION pg_kazsearch;

SELECT ts_lexize('pg_kazsearch_dict', 'алмаларымыздағы');
-- {алма}

SELECT to_tsvector('kazakh_cfg', 'президенттің жарлығы');
-- 'жарлық':2 'президент':1
```

### Add Kazakh FTS to a table

```sql
ALTER TABLE articles ADD COLUMN fts tsvector
    GENERATED ALWAYS AS (
        setweight(to_tsvector('kazakh_cfg', title), 'A') ||
        setweight(to_tsvector('kazakh_cfg', body), 'B')
    ) STORED;

CREATE INDEX idx_fts ON articles USING GIN (fts);

SELECT title
FROM articles
WHERE fts @@ websearch_to_tsquery('kazakh_cfg', 'президенттің жарлығы')
ORDER BY ts_rank_cd(fts, websearch_to_tsquery('kazakh_cfg', 'президенттің жарлығы')) DESC
LIMIT 10;
```

### Tuning

The README documents runtime dictionary tuning without restart:

```sql
ALTER TEXT SEARCH DICTIONARY pg_kazsearch_dict
  (w_deriv = 3.5, w_short_char = 100.0);
```

### Release and packaging notes

- This project's CSV tracks extension control version `0.1.0`, package/source version `2.0.0`, `pgrx` `0.17.0`, and PostgreSQL versions 16-18.
- Upstream release `v2.0.0` introduced the current Rust / `pgrx` PostgreSQL extension packaging.
- Upstream release `v2.1.0` adds an Elasticsearch plugin alongside the PostgreSQL extension; the PostgreSQL SQL usage in the README is unchanged.

### Caveat

The PostgreSQL-facing docs are concise and focused on stemming plus FTS usage. For this stub, avoid inferring extra SQL objects beyond `kazakh_cfg`, `pg_kazsearch_dict`, and the documented examples above.
