---
title: "pg_warren"
linkTitle: "pg_warren"
description: "Versioned graph traversal and computation over PostgreSQL tables"
weight: 2645
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ExaDev/pg_warren">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ExaDev/pg_warren</div>
    <div class="ext-card__desc">https://github.com/ExaDev/pg_warren</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_warren-0.8.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_warren-0.8.0.tar.gz</div>
    <div class="ext-card__desc">pg_warren-0.8.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_warren`**](/ext/e/pg_warren) | `0.8.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2645  | [**`pg_warren`**](/ext/e/pg_warren) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `warren` |
{.ext-table .wide .expand}


> Shared cache preload on PG15–16


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.0` | {{< pgvers "15,16,17,18" >}} | `pg_warren` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.0` | {{< pgvers "15,16,17,18" >}} | `pg_warren_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.0` | {{< pgvers "15,16,17,18" >}} | `postgresql-$v-pg-warren` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | AVAIL PIGSTY 0.8.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_warren_18 pg_warren_18-0.8.0-1PGSTY.el8.x86_64.rpm pigsty 0.8.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_warren_18-0.8.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_warren_18 pg_warren_18-0.8.0-1PGSTY.el8.aarch64.rpm pigsty 0.8.0 2.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_warren_18-0.8.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_warren_18 pg_warren_18-0.8.0-1PGSTY.el9.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_warren_18-0.8.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_warren_18 pg_warren_18-0.8.0-1PGSTY.el9.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_warren_18-0.8.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_warren_18 pg_warren_18-0.8.0-1PGSTY.el10.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_warren_18-0.8.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_warren_18 pg_warren_18-0.8.0-1PGSTY.el10.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_warren_18-0.8.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb pigsty 0.8.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~noble_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~noble_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-warren postgresql-18-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-18-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_warren_17 pg_warren_17-0.8.0-1PGSTY.el8.x86_64.rpm pigsty 0.8.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_warren_17-0.8.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_warren_17 pg_warren_17-0.8.0-1PGSTY.el8.aarch64.rpm pigsty 0.8.0 2.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_warren_17-0.8.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_warren_17 pg_warren_17-0.8.0-1PGSTY.el9.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_warren_17-0.8.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_warren_17 pg_warren_17-0.8.0-1PGSTY.el9.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_warren_17-0.8.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_warren_17 pg_warren_17-0.8.0-1PGSTY.el10.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_warren_17-0.8.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_warren_17 pg_warren_17-0.8.0-1PGSTY.el10.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_warren_17-0.8.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb pigsty 0.8.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~noble_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~noble_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-warren postgresql-17-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-17-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_warren_16 pg_warren_16-0.8.0-1PGSTY.el8.x86_64.rpm pigsty 0.8.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_warren_16-0.8.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_warren_16 pg_warren_16-0.8.0-1PGSTY.el8.aarch64.rpm pigsty 0.8.0 2.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_warren_16-0.8.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_warren_16 pg_warren_16-0.8.0-1PGSTY.el9.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_warren_16-0.8.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_warren_16 pg_warren_16-0.8.0-1PGSTY.el9.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_warren_16-0.8.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_warren_16 pg_warren_16-0.8.0-1PGSTY.el10.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_warren_16-0.8.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_warren_16 pg_warren_16-0.8.0-1PGSTY.el10.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_warren_16-0.8.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb pigsty 0.8.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~noble_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~noble_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-warren postgresql-16-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-16-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_warren_15 pg_warren_15-0.8.0-1PGSTY.el8.x86_64.rpm pigsty 0.8.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_warren_15-0.8.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_warren_15 pg_warren_15-0.8.0-1PGSTY.el8.aarch64.rpm pigsty 0.8.0 2.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_warren_15-0.8.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_warren_15 pg_warren_15-0.8.0-1PGSTY.el9.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_warren_15-0.8.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_warren_15 pg_warren_15-0.8.0-1PGSTY.el9.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_warren_15-0.8.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_warren_15 pg_warren_15-0.8.0-1PGSTY.el10.x86_64.rpm pigsty 0.8.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_warren_15-0.8.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_warren_15 pg_warren_15-0.8.0-1PGSTY.el10.aarch64.rpm pigsty 0.8.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_warren_15-0.8.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb pigsty 0.8.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb pigsty 0.8.0 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb pigsty 0.8.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~noble_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~noble_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb pigsty 0.8.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-warren postgresql-15-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb pigsty 0.8.0 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-warren/postgresql-15-pg-warren_0.8.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_warren` using `pig build`:

```bash
pig build pkg pg_warren         # build RPM / DEB packages
```


## Install

You can install `pg_warren` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_warren;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_warren -v 18  # PG 18
pig ext install -y pg_warren -v 17  # PG 17
pig ext install -y pg_warren -v 16  # PG 16
pig ext install -y pg_warren -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_warren_18       # PG 18
dnf install -y pg_warren_17       # PG 17
dnf install -y pg_warren_16       # PG 16
dnf install -y pg_warren_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-warren   # PG 18
apt install -y postgresql-17-pg-warren   # PG 17
apt install -y postgresql-16-pg-warren   # PG 16
apt install -y postgresql-15-pg-warren   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_warren;
```

## Usage

Sources:

- [README](https://github.com/ExaDev/pg_warren/blob/v0.8.0/README.md)
- [Control file](https://github.com/ExaDev/pg_warren/blob/v0.8.0/crates/pg_warren/pg_warren.control)
- [SQL API](https://github.com/ExaDev/pg_warren/blob/v0.8.0/sql/pg_warren--0.8.0.sql)
- [Limits and shared cache](https://github.com/ExaDev/pg_warren/blob/v0.8.0/docs/limits.md)

`pg_warren` 0.8.0 builds versioned adjacency snapshots from ordinary PostgreSQL tables for graph traversal and computation. It supports PostgreSQL 15–18 and keeps graph versions, vectors and their changes within PostgreSQL transactions. Traversal reads a built snapshot; source-table changes require an explicit refresh.

### Core Workflow

This is a trusted extension: a role with `CREATE` privilege on the database can install it. A basic graph needs node and edge queries:

```sql
CREATE EXTENSION pg_warren;
CREATE TABLE people (id bigint PRIMARY KEY, name text);
CREATE TABLE follows (src bigint, dst bigint);
INSERT INTO people VALUES (1, 'Ada'), (2, 'Bob'), (3, 'Cy');
INSERT INTO follows VALUES (1, 2), (2, 3);
SELECT warren.create_graph('social',
  'SELECT id FROM public.people', 'SELECT src, dst FROM public.follows');
SELECT warren.refresh('social');
SELECT * FROM warren.bfs('social', ARRAY[1::bigint], 3);
SELECT warren.pagerank('social', 'rank');
SELECT * FROM warren.vector_topk('social', 'rank', 3, NULL::bigint);
```

The graph stores its source queries. Run `warren.refresh` after changing the source tables; use `warren.info` to inspect versions and `warren.diff` to compare them. Building and promoting versions rolls back with the surrounding transaction.

### Traversal and Computation

| Interface | Purpose |
| --- | --- |
| `warren.bfs`, `warren.shortest_path` | Breadth-first traversal and shortest paths |
| `warren.pagerank`, `warren.components` | Rank nodes and find connected components |
| `warren.leiden` | Detect communities |
| `warren.spmv`, `warren.gather` | Compose graph calculations with SQL |
| `warren.vector_topk` | Read the largest values from a stored vector |
| `warren.shared_cache`, `warren.backends` | Inspect shared entries and backend cache usage |

Identifier types must agree with the graph. Functions without a node identifier argument may require a type witness such as `NULL::bigint`. In 0.8.0, PageRank and Leiden use native kernels; they write their results to named vectors.

### Memory and Preload

PostgreSQL 17–18 initialize the shared cache on first use. PostgreSQL 15–16 need the following setting and a server restart to share graph data between backends:

```ini
shared_preload_libraries = 'pg_warren'
```

Without preload on PostgreSQL 15–16, graph operations still work using private backend caches. Add the library to any existing preload list.

`warren.shared_cache_memory` limits the cluster-wide shared cache and takes effect on configuration reload. `warren.max_cache_memory`, `warren.max_compute_memory` and `warren.max_build_memory` limit distinct private-cache, computation and build allocations; they are not one combined memory budget. `warren.threads` controls computation parallelism. On Linux, shared entries also need sufficient `/dev/shm`; entries that do not fit fall back to private caches.

### Access, Backups and Upgrades

Source queries run as the graph owner with the stored `search_path`. Use schema-qualified source objects and controlled schemas. Public functions enforce graph access; installation does not grant direct access to private catalog tables.

Dump as a superuser to include graph catalogs, versions and vectors, and restore the required owner/reader roles first. Rebuilding from source tables does not preserve historical graph versions. After installing newer library files, run `ALTER EXTENSION pg_warren UPDATE` in each database using the extension. Dropping it removes stored graphs. The project remains pre-1.0 and does not maintain graph snapshots incrementally.
