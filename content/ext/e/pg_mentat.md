---
title: "pg_mentat"
linkTitle: "pg_mentat"
description: "Datomic-compatible data model and Datalog query engine inside PostgreSQL"
weight: 2980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/mentat">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/mentat</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/mentat</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_mentat-1.18.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_mentat-1.18.0.tar.gz</div>
    <div class="ext-card__desc">pg_mentat-1.18.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_mentat`**](/ext/e/pg_mentat) | `1.18.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2980  | [**`pg_mentat`**](/ext/e/pg_mentat) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `mentat` |
{.ext-table}

| **Related** | [`pg_fts`](/ext/e/pg_fts) [`pg_tre`](/ext/e/pg_tre) [`rum`](/ext/e/rum) [`pg_trgm`](/ext/e/pg_trgm) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`vector`](/ext/e/vector) [`postgis`](/ext/e/postgis) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> 1.18.0 repairs named stores; upgrading rebuilds old named-store layouts while retaining old schemas, and adds indexes that can block writes. Trusted-installation fix from 1.17.2 remains required. Upstream supports PG13-19; PGSTY packages support PG14-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.18.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mentat` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.18.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_mentat_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.18.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-mentat` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 |
| el8.aarch64 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 |
| el9.x86_64 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 |
| el9.aarch64 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 |
| el10.x86_64 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 |
| el10.aarch64 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 | AVAIL PIGSTY 1.18.0 2 |
| d12.x86_64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 | AVAIL PIGSTY 1.18.0 1 |
@ el8.x86_64 18 pg_mentat_18 pg_mentat_18-1.18.0-1PGSTY.el8.x86_64.rpm pigsty 1.18.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_18-1.18.0-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_mentat_18 pg_mentat_18-1.17.2-1PGSTY.el8.x86_64.rpm pigsty 1.17.2 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_18-1.17.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_mentat_18 pg_mentat_18-1.18.0-1PGSTY.el8.aarch64.rpm pigsty 1.18.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_18-1.18.0-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_mentat_18 pg_mentat_18-1.17.2-1PGSTY.el8.aarch64.rpm pigsty 1.17.2 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_18-1.17.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_mentat_18 pg_mentat_18-1.18.0-1PGSTY.el9.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_18-1.18.0-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_mentat_18 pg_mentat_18-1.17.2-1PGSTY.el9.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_18-1.17.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_mentat_18 pg_mentat_18-1.18.0-1PGSTY.el9.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_18-1.18.0-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_mentat_18 pg_mentat_18-1.17.2-1PGSTY.el9.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_18-1.17.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_mentat_18 pg_mentat_18-1.18.0-1PGSTY.el10.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_18-1.18.0-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_mentat_18 pg_mentat_18-1.17.2-1PGSTY.el10.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_18-1.17.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_mentat_18 pg_mentat_18-1.18.0-1PGSTY.el10.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_18-1.18.0-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_mentat_18 pg_mentat_18-1.17.2-1PGSTY.el10.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_18-1.17.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_mentat_17 pg_mentat_17-1.18.0-1PGSTY.el8.x86_64.rpm pigsty 1.18.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_17-1.18.0-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_mentat_17 pg_mentat_17-1.17.2-1PGSTY.el8.x86_64.rpm pigsty 1.17.2 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_17-1.17.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_mentat_17 pg_mentat_17-1.18.0-1PGSTY.el8.aarch64.rpm pigsty 1.18.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_17-1.18.0-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_mentat_17 pg_mentat_17-1.17.2-1PGSTY.el8.aarch64.rpm pigsty 1.17.2 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_17-1.17.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_mentat_17 pg_mentat_17-1.18.0-1PGSTY.el9.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_17-1.18.0-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_mentat_17 pg_mentat_17-1.17.2-1PGSTY.el9.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_17-1.17.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_mentat_17 pg_mentat_17-1.18.0-1PGSTY.el9.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_17-1.18.0-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_mentat_17 pg_mentat_17-1.17.2-1PGSTY.el9.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_17-1.17.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_mentat_17 pg_mentat_17-1.18.0-1PGSTY.el10.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_17-1.18.0-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_mentat_17 pg_mentat_17-1.17.2-1PGSTY.el10.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_17-1.17.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_mentat_17 pg_mentat_17-1.18.0-1PGSTY.el10.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_17-1.18.0-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_mentat_17 pg_mentat_17-1.17.2-1PGSTY.el10.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_17-1.17.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_mentat_16 pg_mentat_16-1.18.0-1PGSTY.el8.x86_64.rpm pigsty 1.18.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_16-1.18.0-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_mentat_16 pg_mentat_16-1.17.2-1PGSTY.el8.x86_64.rpm pigsty 1.17.2 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_16-1.17.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_mentat_16 pg_mentat_16-1.18.0-1PGSTY.el8.aarch64.rpm pigsty 1.18.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_16-1.18.0-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_mentat_16 pg_mentat_16-1.17.2-1PGSTY.el8.aarch64.rpm pigsty 1.17.2 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_16-1.17.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_mentat_16 pg_mentat_16-1.18.0-1PGSTY.el9.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_16-1.18.0-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_mentat_16 pg_mentat_16-1.17.2-1PGSTY.el9.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_16-1.17.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_mentat_16 pg_mentat_16-1.18.0-1PGSTY.el9.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_16-1.18.0-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_mentat_16 pg_mentat_16-1.17.2-1PGSTY.el9.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_16-1.17.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_mentat_16 pg_mentat_16-1.18.0-1PGSTY.el10.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_16-1.18.0-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_mentat_16 pg_mentat_16-1.17.2-1PGSTY.el10.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_16-1.17.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_mentat_16 pg_mentat_16-1.18.0-1PGSTY.el10.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_16-1.18.0-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_mentat_16 pg_mentat_16-1.17.2-1PGSTY.el10.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_16-1.17.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_mentat_15 pg_mentat_15-1.18.0-1PGSTY.el8.x86_64.rpm pigsty 1.18.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_15-1.18.0-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_mentat_15 pg_mentat_15-1.17.2-1PGSTY.el8.x86_64.rpm pigsty 1.17.2 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_15-1.17.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_mentat_15 pg_mentat_15-1.18.0-1PGSTY.el8.aarch64.rpm pigsty 1.18.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_15-1.18.0-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_mentat_15 pg_mentat_15-1.17.2-1PGSTY.el8.aarch64.rpm pigsty 1.17.2 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_15-1.17.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_mentat_15 pg_mentat_15-1.18.0-1PGSTY.el9.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_15-1.18.0-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_mentat_15 pg_mentat_15-1.17.2-1PGSTY.el9.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_15-1.17.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_mentat_15 pg_mentat_15-1.18.0-1PGSTY.el9.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_15-1.18.0-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_mentat_15 pg_mentat_15-1.17.2-1PGSTY.el9.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_15-1.17.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_mentat_15 pg_mentat_15-1.18.0-1PGSTY.el10.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_15-1.18.0-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_mentat_15 pg_mentat_15-1.17.2-1PGSTY.el10.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_15-1.17.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_mentat_15 pg_mentat_15-1.18.0-1PGSTY.el10.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_15-1.18.0-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_mentat_15 pg_mentat_15-1.17.2-1PGSTY.el10.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_15-1.17.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_mentat_14 pg_mentat_14-1.18.0-1PGSTY.el8.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_14-1.18.0-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_mentat_14 pg_mentat_14-1.17.2-1PGSTY.el8.x86_64.rpm pigsty 1.17.2 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_14-1.17.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_mentat_14 pg_mentat_14-1.18.0-1PGSTY.el8.aarch64.rpm pigsty 1.18.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_14-1.18.0-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_mentat_14 pg_mentat_14-1.17.2-1PGSTY.el8.aarch64.rpm pigsty 1.17.2 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_14-1.17.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_mentat_14 pg_mentat_14-1.18.0-1PGSTY.el9.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_14-1.18.0-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_mentat_14 pg_mentat_14-1.17.2-1PGSTY.el9.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_14-1.17.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_mentat_14 pg_mentat_14-1.18.0-1PGSTY.el9.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_14-1.18.0-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_mentat_14 pg_mentat_14-1.17.2-1PGSTY.el9.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_14-1.17.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_mentat_14 pg_mentat_14-1.18.0-1PGSTY.el10.x86_64.rpm pigsty 1.18.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_14-1.18.0-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_mentat_14 pg_mentat_14-1.17.2-1PGSTY.el10.x86_64.rpm pigsty 1.17.2 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_14-1.17.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_mentat_14 pg_mentat_14-1.18.0-1PGSTY.el10.aarch64.rpm pigsty 1.18.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_14-1.18.0-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_mentat_14 pg_mentat_14-1.17.2-1PGSTY.el10.aarch64.rpm pigsty 1.17.2 2.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_14-1.17.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb pigsty 1.18.0 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb pigsty 1.18.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb pigsty 1.18.0 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.18.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_mentat` using `pig build`:

```bash
pig build pkg pg_mentat         # build RPM / DEB packages
```


## Install

You can install `pg_mentat` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_mentat;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_mentat -v 18  # PG 18
pig ext install -y pg_mentat -v 17  # PG 17
pig ext install -y pg_mentat -v 16  # PG 16
pig ext install -y pg_mentat -v 15  # PG 15
pig ext install -y pg_mentat -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_mentat_18       # PG 18
dnf install -y pg_mentat_17       # PG 17
dnf install -y pg_mentat_16       # PG 16
dnf install -y pg_mentat_15       # PG 15
dnf install -y pg_mentat_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-mentat   # PG 18
apt install -y postgresql-17-pg-mentat   # PG 17
apt install -y postgresql-16-pg-mentat   # PG 16
apt install -y postgresql-15-pg-mentat   # PG 15
apt install -y postgresql-14-pg-mentat   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_mentat;
```

## Usage

Sources:

- [v1.18.0 README](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/README.md)
- [v1.18.0 extension control](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/pg_mentat.control)
- [v1.18.0 changelog](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/CHANGELOG.md)
- [v1.9.1 dump repair](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/sql/pg_mentat--1.9.0--1.9.1.sql)
- [v1.18.0 SQL aliases](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/sql/07_function_aliases.sql)
- [v1.18.0 history functions](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/src/functions/time_travel.rs)
- [v1.18.0 excision function](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/src/functions/excision.rs)
- [v1.18.0 transaction functions](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/src/functions/transact.rs)
- [v1.18.0 subscriptions](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/src/functions/subscriptions.rs)
- [1.18.0 upgrade SQL](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/sql/pg_mentat--1.17.2--1.18.0.sql)
- [1.18.0 named-store guide](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/docs/src/multi-tenancy.md)
- [1.18.0 query functions](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/src/functions/query.rs)
- [1.18.0 pull functions](https://api.pgxn.org/src/pg_mentat/pg_mentat-1.18.0/crates/pg/pg_mentat/src/functions/pull.rs)

`pg_mentat` 1.18.0 implements a Datomic-compatible data model and Datalog query engine inside PostgreSQL. It stores immutable facts as typed datoms and exposes schema transactions, Datalog queries, pull expressions, time travel, transaction history, and permanent excision through SQL functions. Use it for applications that need this model; it is not a transparent replacement for relational tables or SQL.

### Install and Define a Schema

```sql
CREATE EXTENSION pg_mentat;

SELECT mentat.t('[
  {:db/ident       :person/name
   :db/valueType   :db.type/string
   :db/cardinality :db.cardinality/one}
  {:db/ident       :person/age
   :db/valueType   :db.type/long
   :db/cardinality :db.cardinality/one}
]');
```

The recommended convenience aliases live in schema `mentat`. Schema must be transacted before facts use the new attributes.

### Transact and Query Data

```sql
SELECT mentat.t('[
  {:person/name "Alice" :person/age 30}
  {:person/name "Bob"   :person/age 25}
]');

SELECT mentat.q('
  [:find ?name ?age
   :where [?e :person/name ?name]
          [?e :person/age ?age]
          [(> ?age 28)]]
');
```

`mentat.t(edn)` applies an ACID transaction and returns its transaction report. `mentat.q(query, inputs)` compiles a Datalog query to PostgreSQL execution. Use EDN parameters and input bindings rather than interpolating application strings into a query.

### Pull, History, and What-If Transactions

```sql
SELECT mentat.pull('[*]', 1000001);
SELECT public.log('default', 1000000000001, 1000000000010);
SELECT public.diff(
  'default', 1000000000003, 1000000000007,
  '[:find ?name :where [?e :person/name ?name]]',
  '{}'::jsonb
);

SELECT public.mentat_with('[
  {:person/name "Alice" :person/age 31}
]');
```

`mentat.pull` returns entity-shaped JSON. `public.log` returns history for a transaction interval, while `public.diff` compares the results of a supplied Datalog query at two transaction points and requires all five arguments. `public.mentat_with` evaluates a transaction without persisting it. These secondary functions are exported in the public schema in 1.18.0; they have no mentat-schema aliases. Use entity and transaction IDs from your own store.

Version 1.18.0 also supports historical pull through a three-argument overload:

```sql
SELECT public.edn_pull(
  '[*]', 1000001, '{"asOf": 1000000000003}'::jsonb
);
```

`asOf` reads the state at a transaction; `since` selects current facts asserted after a transaction, not every intervening historical value. Combining them restricts assertions to the requested interval that remain present at its upper bound. The option keys are case-sensitive; misspellings such as `as_of` now fail rather than silently returning current data.

Permanent excision is intentionally separate from normal immutable history:

```sql
SELECT public.mentat_excise(ARRAY[1000042]::bigint[], 'default', NULL);
```

Review the target entities and backups before excision; it permanently removes datoms and is intended for requirements such as privacy erasure. The first argument is an array of entity IDs. The containing partition must allow excision; schema entities are protected, and references from entities outside the same excision batch can block the operation.

### Important Objects

- `mentat.t(edn)`: transact schema or data.
- `mentat.q(query, inputs)`: execute Datalog.
- `mentat.pull(pattern, eid)` and `mentat.pull_many(pattern, eids)`: entity-shaped reads.
- `mentat.entity(eid)` and `mentat.schema()`: inspect an entity or current schema.
- `public.log(...)` and `public.diff(...)`: inspect transaction history and query-result changes.
- `mentat.stats()`, `mentat.storage()`, and `mentat.cache_stats()`: operational inspection.
- `public.subscribe(...)`: reactive query notifications through PostgreSQL `LISTEN`/`NOTIFY`.

The extension stores typed datoms in narrow tables under schema `mentat`, including reference, integer, string, boolean, floating-point, instant, keyword, UUID, and byte values.

### Earlier Security Fixes

Version 1.6.2 fixes deeply nested EDN causing stack exhaustion, non-superuser query failures when setting restricted limits, and incorrect UTC decoding. The optional `script` build feature adds Clojure-style evaluation; it is disabled by default. Upstream reports that all earlier releases, including 1.5.7, are affected by the EDN nesting flaw: a backend crash can disconnect all clients and trigger crash recovery. Verify the installed extension version when upgrading an existing deployment.

### Requirements and Caveats

- Upstream v1.18.0 declares PostgreSQL 13-19 Cargo features and uses pgrx 0.19.3. Pigsty's 1.18.0 packages target PostgreSQL 14-18.
- The extension is not relocatable and does not require `shared_preload_libraries`.
- The optional `mentatd` HTTP/Datomic-wire daemon is an upstream companion program and is not included in the Pigsty `pg_mentat` package. SQL use of the extension does not require it.
- Datalog compilation, pull recursion, full-text attributes, subscriptions, and history can have very different cost profiles. Inspect generated SQL with the documented explain helper and benchmark representative data.
- Excision bypasses the normal immutable-history model. Restrict privileges and audit its use.

### APIs and Indexes

The core names are `edn_t`, `edn_q`, `edn_pull`, and optional scripting entry point `edn_eval`; convenience aliases `mentat.t` and `mentat.q` remain available, while the older `mentat_transact`, `mentat_query`, `mentat_pull` and optional `mentat_eval` are deprecated.

`edn_q_rows` returns one JSONB array per row. In 1.18.0 it fetches batches into a PostgreSQL tuplestore that can spill to temporary files beyond `work_mem`, instead of retaining the whole result in backend memory. It still materializes the result before returning and honors `mentat.max_result_rows`.

```sql
SELECT row_data->>0 AS person_name
FROM public.edn_q_rows(
  '[:find ?name :where [?e :person/name ?name]]',
  '{}'::jsonb
) AS r(row_data);
```

`mentat.auto_index` accepts `off`, `schema` (default), or `adaptive`. Current-value tables receive AVET indexes; adaptive mode manages partial history-attribute indexes recorded in `mentat.managed_indexes`. `mentat_tune_indexes` reports a plan by default and applies it only when dry-run is explicitly disabled. It drops only its managed indexes, with a default idle window of seven days.

Aggregates now follow Datalog set semantics: summing 1, 1, 1, 3 yields 4 instead of 6. Add `:with ?e` when entity multiplicity must be preserved, and review queries that rely on the old result before upgrading.

### Upgrade and Logical Backups

1.9.1 fixes an important backup defect: earlier versions did not register extension-member table data, so logical `pg_dump` backups omitted mentat data and restored empty stores. Take and verify a new logical backup immediately after upgrading; older backups are not repaired retroactively. Physical backups are unaffected by this defect.

After installing the new files, update through the upgrade chain to 1.18.0. The upgrade builds indexes and can block writes; schedule a maintenance window:

```sql
ALTER EXTENSION pg_mentat UPDATE TO '1.18.0';
```

Deployed databases still need the SQL extension update and a verified new logical backup.

### 1.13–1.14 Integration and Transaction Functions

Optional `pg_fts` and `pg_turbovec` integrations add `mentat.create_fts_index`, `mentat.attach_turbovec_attribute` and `mentat.create_turbovec_index`; neither extension is mandatory. Version 1.14.0 fixes the vector helper to use a dimension CHECK constraint, and adds `bm25-match` / `turbovec-near` Datalog joins. TurboVec dimensions must be divisible by 8.

In `script` builds, `:db/fn` defines a transaction function that returns transaction data and sees the database at transaction start. It runs under `mentat.script_max_*` limits and `mentat.txfn_max_depth` (default 16). `:db/retractEntity` now retracts inbound references while retaining the referring entities. EXPLAIN helpers now honor collection, tuple and relation inputs. Upgrading to 1.14.0 adds the function attribute and replaces the vector helper without a data migration.

From 1.17.0, controls use `superuser = true` with `trusted = true`, fixing trusted installation by ordinary users. The installer receives schema usage and grantable table/sequence privileges; public access is not granted automatically. The failure caused by combining `superuser = false` with the trust flag in older releases no longer describes the new release.

### Query and Privilege Boundaries in 1.17.1

Version 1.17.0 fixes predicates over computed values and `get-else` / `missing?` in multi-clause queries. Version 1.17.1 primarily updates the separate DuckDB backend and build dependencies, with no PostgreSQL behavior change. Trusted installation does not open every administrative operation to ordinary roles; enabling row security and applying index tuning still have owner or superuser restrictions.

The named-store write limitation in earlier versions is repaired in 1.18.0; review the migration below. Non-superuser dump/restore workflows still need the correct owner role and verification of data and privileges.

### 1.17.2 Installation Security Fix

1.17.2 fixes a trusted-installation privilege escalation affecting 1.17.0–1.17.1: unqualified calls in the install script could resolve to functions planted by a database owner and execute as superuser. The fix qualifies built-ins and pins the search path. The upgrade step changes no schema, but cannot undo an installation that was already exploited. If a non-superuser installed an affected version where it could create public-schema functions, audit matching functions outside the system schema and superuser roles. This upstream fix does not imply that older packaged releases were updated.

### 1.18.0 Named Stores and Historical Reads

`create_store` now creates writable named stores with the same table layout as the default store. Use the public functions with a store argument; the mentat-schema convenience aliases continue to address the default store.

```sql
SELECT public.create_store('tenant_demo');
SELECT public.t('tenant_demo', '[
  {:db/ident :sensor/value
   :db/valueType :db.type/long
   :db/cardinality :db.cardinality/one}
]');
SELECT public.t('tenant_demo', '[{:sensor/value 42}]');
SELECT public.q(
  'tenant_demo',
  '[:find ?value :where [?e :sensor/value ?value]]',
  '{}'::jsonb
);
```

Historical `pull` and query operations honor `asOf` and `since`; unknown option keys are rejected. Named stores still reject the documented vector, geometry and user transaction-function paths that would read the default store. New stores inherit the default store's grants; separate schemas alone do not establish tenant access isolation.

Transaction reports now expose `datoms_asserted` and `datoms_retracted`. Reasserting an unchanged value counts as no change; replacing a single-valued attribute reports both a retraction and an assertion. Consumers of transaction reports should account for the corrected changed-datom semantics.

The upgrade retains each old named-store schema as `mentat_<name>_pre118` and creates a new empty replacement, with warnings for skipped stores and dependent subscriptions/materialized views. Inspect these warnings and recreate affected subscriptions/views; do not assume old data was migrated into the replacement. The new `(store_id, tx)` indexes use ordinary CREATE INDEX and can block writes. Large installations may prebuild the exact documented indexes concurrently and verify validity before upgrading.
