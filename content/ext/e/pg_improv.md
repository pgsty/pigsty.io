---
title: "pg_improv"
linkTitle: "pg_improv"
description: "Incremental multidimensional models and formula functions over PostgreSQL tables."
weight: 2580
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/improv">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/improv</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/improv</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/improv-0.12.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">improv-0.12.2.tar.gz</div>
    <div class="ext-card__desc">improv-0.12.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_improv`**](/ext/e/pg_improv) | `0.12.2` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20 or mit" href="/ext/license#apache20ormit">Apache-2.0 OR MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2580  | [**`pg_improv`**](/ext/e/pg_improv) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `improv` |
{.ext-table}


> Superuser install; commit mode needs preload. Logical mode needs preload/restart, wal_level=logical and a worker DB; slots retain WAL. PG15-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.12.2` | {{< pgvers "15,16,17,18" >}} | `pg_improv` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.12.2` | {{< pgvers "15,16,17,18" >}} | `pg_improv_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.12.1` | {{< pgvers "15,16,17,18" >}} | `postgresql-$v-pg-improv` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | AVAIL PIGSTY 0.12.2 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_improv_18 pg_improv_18-0.12.2-1PGSTY.el8.x86_64.rpm pigsty 0.12.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_improv_18-0.12.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_improv_18 pg_improv_18-0.12.2-1PGSTY.el8.aarch64.rpm pigsty 0.12.2 4.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_improv_18-0.12.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_improv_18 pg_improv_18-0.12.2-1PGSTY.el9.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_improv_18-0.12.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_improv_18 pg_improv_18-0.12.2-1PGSTY.el9.aarch64.rpm pigsty 0.12.2 4.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_improv_18-0.12.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_improv_18 pg_improv_18-0.12.2-1PGSTY.el10.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_improv_18-0.12.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_improv_18 pg_improv_18-0.12.2-1PGSTY.el10.aarch64.rpm pigsty 0.12.2 4.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_improv_18-0.12.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~noble_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~noble_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-improv postgresql-18-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-18-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_improv_17 pg_improv_17-0.12.2-1PGSTY.el8.x86_64.rpm pigsty 0.12.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_improv_17-0.12.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_improv_17 pg_improv_17-0.12.2-1PGSTY.el8.aarch64.rpm pigsty 0.12.2 4.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_improv_17-0.12.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_improv_17 pg_improv_17-0.12.2-1PGSTY.el9.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_improv_17-0.12.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_improv_17 pg_improv_17-0.12.2-1PGSTY.el9.aarch64.rpm pigsty 0.12.2 4.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_improv_17-0.12.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_improv_17 pg_improv_17-0.12.2-1PGSTY.el10.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_improv_17-0.12.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_improv_17 pg_improv_17-0.12.2-1PGSTY.el10.aarch64.rpm pigsty 0.12.2 4.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_improv_17-0.12.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~noble_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~noble_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-improv postgresql-17-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-17-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_improv_16 pg_improv_16-0.12.2-1PGSTY.el8.x86_64.rpm pigsty 0.12.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_improv_16-0.12.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_improv_16 pg_improv_16-0.12.2-1PGSTY.el8.aarch64.rpm pigsty 0.12.2 4.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_improv_16-0.12.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_improv_16 pg_improv_16-0.12.2-1PGSTY.el9.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_improv_16-0.12.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_improv_16 pg_improv_16-0.12.2-1PGSTY.el9.aarch64.rpm pigsty 0.12.2 4.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_improv_16-0.12.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_improv_16 pg_improv_16-0.12.2-1PGSTY.el10.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_improv_16-0.12.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_improv_16 pg_improv_16-0.12.2-1PGSTY.el10.aarch64.rpm pigsty 0.12.2 4.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_improv_16-0.12.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~noble_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~noble_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-improv postgresql-16-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-16-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_improv_15 pg_improv_15-0.12.2-1PGSTY.el8.x86_64.rpm pigsty 0.12.2 5.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_improv_15-0.12.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_improv_15 pg_improv_15-0.12.2-1PGSTY.el8.aarch64.rpm pigsty 0.12.2 4.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_improv_15-0.12.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_improv_15 pg_improv_15-0.12.2-1PGSTY.el9.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_improv_15-0.12.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_improv_15 pg_improv_15-0.12.2-1PGSTY.el9.aarch64.rpm pigsty 0.12.2 4.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_improv_15-0.12.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_improv_15 pg_improv_15-0.12.2-1PGSTY.el10.x86_64.rpm pigsty 0.12.2 5.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_improv_15-0.12.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_improv_15 pg_improv_15-0.12.2-1PGSTY.el10.aarch64.rpm pigsty 0.12.2 4.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_improv_15-0.12.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb pigsty 0.12.1 3.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb pigsty 0.12.1 4.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~noble_amd64.deb pigsty 0.12.1 4.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~noble_arm64.deb pigsty 0.12.1 4.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb pigsty 0.12.1 4.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-improv postgresql-15-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb pigsty 0.12.1 4.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-improv/postgresql-15-pg-improv_0.12.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_improv` using `pig build`:

```bash
pig build pkg pg_improv         # build RPM / DEB packages
```


## Install

You can install `pg_improv` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_improv;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_improv -v 18  # PG 18
pig ext install -y pg_improv -v 17  # PG 17
pig ext install -y pg_improv -v 16  # PG 16
pig ext install -y pg_improv -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_improv_18       # PG 18
dnf install -y pg_improv_17       # PG 17
dnf install -y pg_improv_16       # PG 16
dnf install -y pg_improv_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-improv   # PG 18
apt install -y postgresql-17-pg-improv   # PG 17
apt install -y postgresql-16-pg-improv   # PG 16
apt install -y postgresql-15-pg-improv   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_improv;
```

## Usage

Sources:

- [Release changelog](https://api.pgxn.org/src/pg_improv/pg_improv-0.12.2/CHANGELOG.md)

- [Official source](https://api.pgxn.org/src/pg_improv/pg_improv-0.12.2/crates/pg_improv/README.md)
- [Official source](https://api.pgxn.org/src/pg_improv/pg_improv-0.12.2/crates/pg_improv/pg_improv.control)
- [Official source](https://api.pgxn.org/src/pg_improv/pg_improv-0.12.2/crates/pg_improv/Cargo.toml)

`pg_improv` 0.12.2 binds PostgreSQL tables to multidimensional models, evaluates formulas and materializes results. It supports PostgreSQL 15–18 and requires superuser installation. This example uses manual synchronization, which works without preloading the library.

### Core Workflow

```sql
CREATE EXTENSION pg_improv;
CREATE TABLE sales (quarter text, price float8, qty float8);
INSERT INTO sales VALUES ('Q1', 10, 100), ('Q2', 12, 200);
SELECT improv.create_model('plan');
SELECT improv.set_sync_mode('plan', 'manual');
SELECT improv.bind_category('plan', 'Time', 'sales', 'quarter');
SELECT improv.bind_measure('plan', 'Price', 'sales', 'price');
SELECT improv.bind_measure('plan', 'Quantity', 'sales', 'qty');
SELECT improv.define('plan', 'Revenue = Price * Quantity');
SELECT improv.recalc('plan');
SELECT * FROM improv_plan.revenue;
SELECT * FROM improv.status('plan');
```

Bind categories before their measures. Duplicate coordinates require an explicit aggregate; null values do not create model cells. Result tables live in a model-specific schema. `improv.define` accepts `replace => true` to replace a formula, and `improv.recalc` returns the number of changed result rows.

### Synchronization Modes

`improv.set_sync_mode` chooses manual, trigger, commit or logical synchronization. Trigger mode works without preloading; commit mode needs session or server preloading. The default logical mode needs `shared_preload_libraries`, a server restart, `wal_level=logical` and the appropriate `improv.database` worker setting. Logical results arrive asynchronously; use explicit recalculation when a transaction must immediately see current results.

Monitor `improv.status` and cap retained WAL with `max_slot_wal_keep_size`. Logical replication slots can retain WAL while a worker stalls. Binding tables can create publications and change replica identity; account for those effects before enabling logical mode.

### Formula and Maintenance Boundaries

The `improv` language supports scalar formulas as well as model expressions, but not arbitrary SQL calls or external I/O. Formula errors normally become null; `improv.raise_errors` changes that policy. Numeric values and large integers pass through floating-point evaluation, so precision beyond 2^53 needs care. `improv.max_cells` limits loaded input cells.

Back up model definitions and result state with database dumps and rehearse restoration; logical mode needs a fresh slot and recomputation after restore. Library upgrades require restarting preloaded processes and updating the extension SQL. Model computation is distinct from an application transaction's source-of-truth tables.

### Ownership and Database-Wide Logical Sync since 0.11.0

Each model now reads and writes as its owner; row-level security protects its catalog, items and cells. Only a superuser or a role allowed to act as the owner may change or recalculate that model. Grant improv_user to a model creator and grant the source-table privileges it needs; the administrator role does not automatically become every model owner. A shared result table still needs ordinary grants. what_if can reveal owner-visible data, so grant access deliberately. Logical models in one database now share one slot and publication. Upgrade with the matching library and SQL scripts, restore roles before model dumps, and monitor retained WAL.

### 0.12.2 Release Note

Release 0.12.2 fixes idle logical-sync workers so they no longer reread the model catalog on every poll; there are no other code changes in this release. The Pigsty build uses pgrx 0.19.3 for the current package, while upstream source metadata still declares pgrx 0.17.0.

### 0.12.1 Release Note

The 0.12.0 SQL migration adds `improv.measure.format` for persisted display formatting; update the extension before saving formats. Release 0.12.1 changes the version from 0.12.0 without additional code changes and restores RHEL 8 (glibc 2.28) compatible artifacts. Upstream still uses pgrx 0.17.0. Logical synchronization still requires `shared_preload_libraries`, `wal_level=logical` and a restart; trigger and manual modes do not.
