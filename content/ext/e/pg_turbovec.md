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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_turbovec-1.29.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_turbovec-1.29.0.tar.gz</div>
    <div class="ext-card__desc">pg_turbovec-1.29.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_turbovec`**](/ext/e/pg_turbovec) | `1.29.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1980  | [**`pg_turbovec`**](/ext/e/pg_turbovec) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `turbovec` |
{.ext-table}

| **Related** | `pg_turboquant` [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream v1.29.0 supports PostgreSQL 13-18 with PG19 experimental; PIGSTY RPM and DEB ship 1.29.0 for PostgreSQL 14-18, built with pgrx 0.19.1 against OpenBLAS.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.29.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_turbovec` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.29.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_turbovec_$v` | `openblas` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.29.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-turbovec` | `libopenblas0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 | AVAIL PIGSTY 1.29.0 1 |
@ el8.x86_64 18 pg_turbovec_18 pg_turbovec_18-1.29.0-1PIGSTY.el8.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_18-1.29.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_turbovec_18 pg_turbovec_18-1.29.0-1PIGSTY.el8.aarch64.rpm pigsty 1.29.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_18-1.29.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_turbovec_18 pg_turbovec_18-1.29.0-1PIGSTY.el9.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_18-1.29.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_turbovec_18 pg_turbovec_18-1.29.0-1PIGSTY.el9.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_18-1.29.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_turbovec_18 pg_turbovec_18-1.29.0-1PIGSTY.el10.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_18-1.29.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_turbovec_18 pg_turbovec_18-1.29.0-1PIGSTY.el10.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_18-1.29.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb pigsty 1.29.0 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb pigsty 1.29.0 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-turbovec postgresql-18-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-18-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_turbovec_17 pg_turbovec_17-1.29.0-1PIGSTY.el8.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_17-1.29.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_turbovec_17 pg_turbovec_17-1.29.0-1PIGSTY.el8.aarch64.rpm pigsty 1.29.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_17-1.29.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_turbovec_17 pg_turbovec_17-1.29.0-1PIGSTY.el9.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_17-1.29.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_turbovec_17 pg_turbovec_17-1.29.0-1PIGSTY.el9.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_17-1.29.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_turbovec_17 pg_turbovec_17-1.29.0-1PIGSTY.el10.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_17-1.29.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_turbovec_17 pg_turbovec_17-1.29.0-1PIGSTY.el10.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_17-1.29.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb pigsty 1.29.0 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb pigsty 1.29.0 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-turbovec postgresql-17-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-17-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_turbovec_16 pg_turbovec_16-1.29.0-1PIGSTY.el8.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_16-1.29.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_turbovec_16 pg_turbovec_16-1.29.0-1PIGSTY.el8.aarch64.rpm pigsty 1.29.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_16-1.29.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_turbovec_16 pg_turbovec_16-1.29.0-1PIGSTY.el9.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_16-1.29.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_turbovec_16 pg_turbovec_16-1.29.0-1PIGSTY.el9.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_16-1.29.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_turbovec_16 pg_turbovec_16-1.29.0-1PIGSTY.el10.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_16-1.29.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_turbovec_16 pg_turbovec_16-1.29.0-1PIGSTY.el10.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_16-1.29.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb pigsty 1.29.0 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb pigsty 1.29.0 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-turbovec postgresql-16-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-16-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_turbovec_15 pg_turbovec_15-1.29.0-1PIGSTY.el8.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_15-1.29.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_turbovec_15 pg_turbovec_15-1.29.0-1PIGSTY.el8.aarch64.rpm pigsty 1.29.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_15-1.29.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_turbovec_15 pg_turbovec_15-1.29.0-1PIGSTY.el9.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_15-1.29.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_turbovec_15 pg_turbovec_15-1.29.0-1PIGSTY.el9.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_15-1.29.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_turbovec_15 pg_turbovec_15-1.29.0-1PIGSTY.el10.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_15-1.29.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_turbovec_15 pg_turbovec_15-1.29.0-1PIGSTY.el10.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_15-1.29.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb pigsty 1.29.0 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb pigsty 1.29.0 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-turbovec postgresql-15-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-15-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_turbovec_14 pg_turbovec_14-1.29.0-1PIGSTY.el8.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_turbovec_14-1.29.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_turbovec_14 pg_turbovec_14-1.29.0-1PIGSTY.el8.aarch64.rpm pigsty 1.29.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_turbovec_14-1.29.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_turbovec_14 pg_turbovec_14-1.29.0-1PIGSTY.el9.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_turbovec_14-1.29.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_turbovec_14 pg_turbovec_14-1.29.0-1PIGSTY.el9.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_turbovec_14-1.29.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_turbovec_14 pg_turbovec_14-1.29.0-1PIGSTY.el10.x86_64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_turbovec_14-1.29.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_turbovec_14 pg_turbovec_14-1.29.0-1PIGSTY.el10.aarch64.rpm pigsty 1.29.0 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_turbovec_14-1.29.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb pigsty 1.29.0 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb pigsty 1.29.0 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb pigsty 1.29.0 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb pigsty 1.29.0 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-turbovec postgresql-14-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb pigsty 1.29.0 1.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-turbovec/postgresql-14-pg-turbovec_1.29.0-1PGSTY~resolute_arm64.deb
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

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_turbovec;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_turbovec -v 18  # PG 18
pig ext install -y pg_turbovec -v 17  # PG 17
pig ext install -y pg_turbovec -v 16  # PG 16
pig ext install -y pg_turbovec -v 15  # PG 15
pig ext install -y pg_turbovec -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_turbovec_18       # PG 18
dnf install -y pg_turbovec_17       # PG 17
dnf install -y pg_turbovec_16       # PG 16
dnf install -y pg_turbovec_15       # PG 15
dnf install -y pg_turbovec_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-turbovec   # PG 18
apt install -y postgresql-17-pg-turbovec   # PG 17
apt install -y postgresql-16-pg-turbovec   # PG 16
apt install -y postgresql-15-pg-turbovec   # PG 15
apt install -y postgresql-14-pg-turbovec   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_turbovec;
```

## Usage

Sources:

- [pg_turbovec v1.29.0 README](https://codeberg.org/gregburd/pg_turbovec/src/tag/v1.29.0/README.md)
- [pg_turbovec v1.29.0 changelog](https://codeberg.org/gregburd/pg_turbovec/src/tag/v1.29.0/CHANGELOG.md)
- [pg_turbovec v1.29.0 control file](https://codeberg.org/gregburd/pg_turbovec/src/tag/v1.29.0/pg_turbovec.control)
- [Partitioned-scale guide](https://codeberg.org/gregburd/pg_turbovec/src/tag/v1.29.0/docs/PARTITIONED_SCALE.md)
- [Filtering guide](https://codeberg.org/gregburd/pg_turbovec/src/tag/v1.29.0/docs/FILTERING.md)
- [Pigsty package matrix](https://pgext.cloud/ext/pg_turbovec)

`pg_turbovec` 1.29.0 provides a dense `turbovec.vector` type and a `turbovec` nearest-neighbor index access method. It quantizes floating-point coordinates to 2, 3, or 4 bits and reranks candidates against heap vectors. Use it for storage-constrained cosine or inner-product search; choose the index kind deliberately because the default flat scan is linear in row count.

### Create and Query Vectors

```sql
CREATE EXTENSION pg_turbovec;
SET search_path = public, turbovec;

CREATE TABLE items (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  embedding turbovec.vector
);

INSERT INTO items (embedding)
VALUES ('[1,2,3]'), ('[4,5,6]');

SELECT id, embedding <=> '[3,1,2]'::turbovec.vector AS cosine_distance
FROM items
ORDER BY embedding <=> '[3,1,2]'::turbovec.vector
LIMIT 10;
```

Distance operators are `<->` for L2, `<#>` for negative inner product, `<=>` for cosine distance, and `<+>` for L1. The current index supports inner-product and cosine ordering; L2 and L1 are exact-only operations.

The `turbovec.vector` type accepts 1–16,000 coordinates. Indexed vectors must have a fixed dimension that is a multiple of 8; use a check constraint or application validation when the column itself is variable-dimensional.

### Choose and Build an Index Kind

```sql
-- Default flat quantized scan
CREATE INDEX items_embedding_flat_idx ON items
USING turbovec (embedding vec_cosine_ops)
WITH (bit_width = 4);

-- Out-of-core IVF alternative
CREATE INDEX items_embedding_ivf_idx ON items
USING turbovec (embedding vec_cosine_ops)
WITH (bit_width = 4, lists = 1024);

-- Navigable-graph alternative
CREATE INDEX items_embedding_graph_idx ON items
USING turbovec (embedding vec_cosine_ops)
WITH (bit_width = 4, graph = true);

SET turbovec.probes = 32;

SELECT id
FROM items
ORDER BY embedding <=> '[3,1,2]'::turbovec.vector
LIMIT 10;
```

These `CREATE INDEX` statements are alternatives, not a recommendation to keep all three. The default flat kind performs an `O(n * dim)` quantized scan and can reach exact recall after heap reranking, but it is a poor latency choice at large row counts. `WITH (lists = N)` enables an out-of-core IVF layer; `WITH (graph = true)` enables the Vamana graph for lower-latency ANN at moderate scale.

Use `vec_cosine_ops` with `<=>` or `vec_ip_ops` with `<#>`. `bit_width = 4` is the default and generally favors recall; 2-bit indexes are smaller but need workload-specific recall testing. Three-bit indexes are also supported. `CREATE INDEX CONCURRENTLY` is supported.

Important tuning controls include `turbovec.probes`, `turbovec.search_k`, `turbovec.oversample`, `turbovec.hi_dim_rerank`, `turbovec.iterative_scan`, and `turbovec.cache_size_mb`. Change one dimension at a time and compare approximate results with an exact baseline.

### Filtering and Partitioning

Use PostgreSQL partial indexes for stable filter values, the documented `turbovec.knn(..., allowed)` surface for an explicit candidate allowlist, or iterative scan for normal filtered `ORDER BY ... LIMIT` queries.

Version 1.29 documents native PostgreSQL partitioning for larger-than-single-table datasets. A parent query can use `Merge Append` across per-partition TurboVec indexes:

```sql
SELECT id
FROM partitioned_items
ORDER BY embedding <=> $1::turbovec.vector
LIMIT 20;
```

Build, vacuum, and reindex each partition independently. Partition pruning based on a coarse vector quantizer is only a design in 1.29.0, not a shipped feature.

### Version and Integrity Boundaries

- The control file installs objects in schema `turbovec`, is not relocatable, and does not require `shared_preload_libraries` or a server restart.
- Upstream v1.29 targets PostgreSQL 13-18 and labels PostgreSQL 19 support experimental; current Pigsty 1.29.0 packages cover PostgreSQL 14-18 and provide the matching OpenBLAS-linked binary.
- Upstream 1.28.4 fixes persisted row-count drift that could corrupt the index ID table and adds `turbovec.turbovec_check(regclass)`. An already corrupt index still needs `REINDEX` or drop/recreate recovery.
- Version 1.29.0 is additive, keeps wire format 7, and does not require reindexing when upgrading from a healthy 1.28.4 index. `ALTER EXTENSION pg_turbovec UPDATE TO '1.29.0'` is sufficient after the new files are installed.
- Although the 1.29 reloption parser accepts `bit_width = 1`, end-to-end one-bit indexing is not implemented and `CREATE INDEX` intentionally errors. Use `bit_width = 2`, `bit_width = 3`, or `bit_width = 4`.
- The on-disk ID table still has a documented crash-safety gap after an unclean shutdown. Treat integrity errors as actionable and follow the upstream recovery guidance.

```sql
SELECT *
FROM turbovec.turbovec_check('items_embedding_flat_idx'::regclass);

REINDEX INDEX CONCURRENTLY items_embedding_flat_idx;
```

Only the index owner can run the integrity checker. Alert on `is_corrupt` and rebuild the affected index when the checker or a scan reports corruption; a successful version upgrade does not repair an already damaged index.
