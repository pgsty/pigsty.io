---
title: "pg_turbovec"
linkTitle: "pg_turbovec"
description: "TurboQuant-compressed vector type and ANN index access method for PostgreSQL."
weight: 1980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/pg_turbovec">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/pg_turbovec</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/pg_turbovec</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_turbovec-2.10.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_turbovec-2.10.3.tar.gz</div>
    <div class="ext-card__desc">pg_turbovec-2.10.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_turbovec`**](/ext/e/pg_turbovec) | `2.10.3` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1980  | [**`pg_turbovec`**](/ext/e/pg_turbovec) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `turbovec` |
{.ext-table}

| **Related** | `pg_turboquant` [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Built with locked pgrx 0.19.2; 1.x indexes require REINDEX after upgrading to wire v8.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.10.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_turbovec` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.10.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_turbovec_$v` | `openblas` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.10.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-turbovec` | `libopenblas0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| el8.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| el9.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| el9.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| el10.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| el10.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| d12.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| d12.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| d13.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| d13.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| u22.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| u22.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| u24.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| u24.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| u26.x86_64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
| u26.aarch64 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 | AVAIL PIGSTY 2.10.3 1 |
@ el8.x86_64 18 pg_turbovec_18 pg_turbovec_18-2.10.3-1PGSTY.el8.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_18-2.10.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_turbovec_18 pg_turbovec_18-2.10.3-1PGSTY.el8.aarch64.rpm pigsty 2.10.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_18-2.10.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_turbovec_18 pg_turbovec_18-2.10.3-1PGSTY.el9.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_18-2.10.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_turbovec_18 pg_turbovec_18-2.10.3-1PGSTY.el9.aarch64.rpm pigsty 2.10.3 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_18-2.10.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_turbovec_18 pg_turbovec_18-2.10.3-1PGSTY.el10.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_18-2.10.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_turbovec_18 pg_turbovec_18-2.10.3-1PGSTY.el10.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_18-2.10.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb pigsty 2.10.3 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_turbovec_17 pg_turbovec_17-2.10.3-1PGSTY.el8.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_17-2.10.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_turbovec_17 pg_turbovec_17-2.10.3-1PGSTY.el8.aarch64.rpm pigsty 2.10.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_17-2.10.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_turbovec_17 pg_turbovec_17-2.10.3-1PGSTY.el9.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_17-2.10.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_turbovec_17 pg_turbovec_17-2.10.3-1PGSTY.el9.aarch64.rpm pigsty 2.10.3 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_17-2.10.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_turbovec_17 pg_turbovec_17-2.10.3-1PGSTY.el10.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_17-2.10.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_turbovec_17 pg_turbovec_17-2.10.3-1PGSTY.el10.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_17-2.10.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb pigsty 2.10.3 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_turbovec_16 pg_turbovec_16-2.10.3-1PGSTY.el8.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_16-2.10.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_turbovec_16 pg_turbovec_16-2.10.3-1PGSTY.el8.aarch64.rpm pigsty 2.10.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_16-2.10.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_turbovec_16 pg_turbovec_16-2.10.3-1PGSTY.el9.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_16-2.10.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_turbovec_16 pg_turbovec_16-2.10.3-1PGSTY.el9.aarch64.rpm pigsty 2.10.3 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_16-2.10.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_turbovec_16 pg_turbovec_16-2.10.3-1PGSTY.el10.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_16-2.10.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_turbovec_16 pg_turbovec_16-2.10.3-1PGSTY.el10.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_16-2.10.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb pigsty 2.10.3 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_turbovec_15 pg_turbovec_15-2.10.3-1PGSTY.el8.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_15-2.10.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_turbovec_15 pg_turbovec_15-2.10.3-1PGSTY.el8.aarch64.rpm pigsty 2.10.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_15-2.10.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_turbovec_15 pg_turbovec_15-2.10.3-1PGSTY.el9.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_15-2.10.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_turbovec_15 pg_turbovec_15-2.10.3-1PGSTY.el9.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_15-2.10.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_turbovec_15 pg_turbovec_15-2.10.3-1PGSTY.el10.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_15-2.10.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_turbovec_15 pg_turbovec_15-2.10.3-1PGSTY.el10.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_15-2.10.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_turbovec_14 pg_turbovec_14-2.10.3-1PGSTY.el8.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_14-2.10.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_turbovec_14 pg_turbovec_14-2.10.3-1PGSTY.el8.aarch64.rpm pigsty 2.10.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_14-2.10.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_turbovec_14 pg_turbovec_14-2.10.3-1PGSTY.el9.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_14-2.10.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_turbovec_14 pg_turbovec_14-2.10.3-1PGSTY.el9.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_14-2.10.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_turbovec_14 pg_turbovec_14-2.10.3-1PGSTY.el10.x86_64.rpm pigsty 2.10.3 1.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_14-2.10.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_turbovec_14 pg_turbovec_14-2.10.3-1PGSTY.el10.aarch64.rpm pigsty 2.10.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_14-2.10.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb pigsty 2.10.3 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb pigsty 2.10.3 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb pigsty 2.10.3 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_2.10.3-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_turbovec` using `pig build`:

```bash
pig build pkg pg_turbovec         # build RPM / DEB packages
```


## Install

You can install `pg_turbovec` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_turbovec;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_turbovec -v 18  # PG 18
pig ext install -y pg_turbovec -v 17  # PG 17
pig ext install -y pg_turbovec -v 16  # PG 16
pig ext install -y pg_turbovec -v 15  # PG 15
pig ext install -y pg_turbovec -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_turbovec_18       # PG 18
dnf install -y pg_turbovec_17       # PG 17
dnf install -y pg_turbovec_16       # PG 16
dnf install -y pg_turbovec_15       # PG 15
dnf install -y pg_turbovec_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-turbovec   # PG 18
apt install -y postgresql-17-pg-turbovec   # PG 17
apt install -y postgresql-16-pg-turbovec   # PG 16
apt install -y postgresql-15-pg-turbovec   # PG 15
apt install -y postgresql-14-pg-turbovec   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_turbovec;
```

## Usage

Sources:

- [v2.10.3 README](https://codeberg.org/gregburd/pg_turbovec/src/tag/v2.10.3/README.md)
- [v2.10.3 changelog](https://codeberg.org/gregburd/pg_turbovec/src/tag/v2.10.3/CHANGELOG.md)
- [Upgrade matrix](https://codeberg.org/gregburd/pg_turbovec/src/tag/v2.10.3/docs/UPGRADING.md)
- [Control file](https://codeberg.org/gregburd/pg_turbovec/src/tag/v2.10.3/pg_turbovec.control)
- [Filtering guide](https://codeberg.org/gregburd/pg_turbovec/src/tag/v2.10.3/docs/FILTERING.md)

`pg_turbovec` 2.10.3 provides the `turbovec.vector` type and compact vector indexes with candidate reranking against the original heap vectors. Flat search scans quantized codes; IVF additionally searches selected cells. Both are approximate unless the candidate set contains every true neighbour. **Upgrading any 1.x index to 2.x requires rebuilding it.**

### Create and Query Vectors

```sql
CREATE EXTENSION pg_turbovec;
SET search_path = public, turbovec;

CREATE TABLE items (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  embedding turbovec.vector CHECK (turbovec.vector_dims(embedding) = 8)
);
INSERT INTO items (embedding) VALUES
  ('[1,2,3,4,5,6,7,8]'),
  ('[2,1,3,5,4,7,6,8]'),
  ('[8,7,6,5,4,3,2,1]');
CREATE INDEX items_embedding_idx ON items
USING turbovec (embedding turbovec.vec_cosine_ops)
WITH (bit_width = 4);

SELECT id, embedding <=> '[1,2,3,4,5,6,7,8]'::turbovec.vector AS distance
FROM items
ORDER BY embedding <=> '[1,2,3,4,5,6,7,8]'::turbovec.vector
LIMIT 3;
```

Indexed vectors must have a consistent dimension that is a multiple of 8; the type accepts up to 16,000 coordinates. The example uses eight-dimensional vectors so it is valid for indexing. Use `turbovec.vec_cosine_ops` with `<=>` and `turbovec.vec_ip_ops` with `<#>`; `<->` and `<+>` also provide exact distance operators.

### Choose an Index and Tune Queries

- `lists = 0` is the default flat quantized scan. Candidate reranking does not guarantee exact recall for every dataset.
- `WITH (lists = N)` enables IVF. Train on enough representative rows, choose the cell count for the corpus, and measure recall against an exact baseline; increasing the cell count alone does not ensure faster queries.
- `bit_width = 4` is the default. Two- and three-bit quantization are also available. `bit_width = 1` uses centered sign binary quantization, supports IVF, and reranks from the heap; it is a different scheme from TurboQuant.
- `WITH (graph = true)` is deprecated. Prefer flat or IVF for new indexes and consult the upstream migration guide for an existing graph index.

Indexes and queries can run without preload, but upstream recommends adding the library to `shared_preload_libraries` for its tuning GUCs. Merge it with existing entries and restart PostgreSQL; do not replace other required libraries:

```conf
shared_preload_libraries = 'pg_turbovec'
```

```sql
SELECT count(*) FROM pg_settings WHERE name LIKE 'turbovec.%';
SET turbovec.probes = 16;
SET turbovec.search_k = 64;
```

The settings query must return a nonzero count. A custom dotted parameter accepted by SET is not proof that the extension's GUC registered. Important controls are `turbovec.probes`, `turbovec.search_k`, `turbovec.oversample`, `turbovec.iterative_scan` and `turbovec.cache_size_mb`. Use partial indexes for stable filters or the documented allowlist/iterative-scan paths; compare filtered results with an exact baseline. Native partitions have separate indexes that must each be maintained.

### Upgrade from 1.x to 2.10.3

Schedule a maintenance window and retain the heap vectors plus a verified backup. Install the matching new binaries, update the SQL extension, and restart PostgreSQL so every backend uses the new library:

```sql
ALTER EXTENSION pg_turbovec UPDATE TO '2.10.3';
```

The index format changed from 7 to 8 in 2.0.0. Old indexes cannot be read in place: **rebuild every TurboVec index from the heap before resuming queries**, including every partition's index. In psql, generate and run the rebuild statements:

```sql
SELECT format('REINDEX INDEX %I.%I;', n.nspname, c.relname)
FROM pg_class c
JOIN pg_am a ON a.oid = c.relam
JOIN pg_namespace n ON n.oid = c.relnamespace
WHERE a.amname = 'turbovec';
\gexec
```

This is ordinary blocking REINDEX. If choosing concurrent rebuilding, issue each command as a separate top-level statement, outside a transaction block or DO function, and plan for old-format scans to fail until the rebuilt index is available. Do not treat the SQL extension update alone as a completed 1.x migration.

The 2.10.2-to-2.10.3 patch preserves format 8 and does not itself require reindexing. Earlier transitions still need the actions in the upstream upgrade matrix. An already corrupted index needs repair even when a patch preserves its format; `turbovec.turbovec_check(regclass)` reports detected corruption and a reason.

### Compatibility and Maintenance

The control file fixes objects in schema `turbovec`, sets `superuser = false`, and is not relocatable. Upstream covers PostgreSQL 13–18 and labels PostgreSQL 19 experimental in this release; current Pigsty packages cover 14–18. Binary replacement, tuning preload and major-format migration have separate restart/rebuild requirements. Version 2.10.3 parallelizes cold-backend code repacking; it does not change existing index bytes. Budget index-build memory, temporary space, WAL and vacuum work from the actual corpus, rather than treating upstream benchmark numbers as guarantees.
