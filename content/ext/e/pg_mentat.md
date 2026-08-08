---
title: "pg_mentat"
linkTitle: "pg_mentat"
description: "Datomic-compatible data model and Datalog query engine inside PostgreSQL"
weight: 2980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/pg_mentat">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/pg_mentat</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/pg_mentat</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_mentat-1.5.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_mentat-1.5.7.tar.gz</div>
    <div class="ext-card__desc">pg_mentat-1.5.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_mentat`**](/ext/e/pg_mentat) | `1.5.7` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2980  | [**`pg_mentat`**](/ext/e/pg_mentat) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `mentat` |
{.ext-table}

| **Related** | [`pg_fts`](/ext/e/pg_fts) `pg_tre` `pg_infer` [`rum`](/ext/e/rum) [`pg_trgm`](/ext/e/pg_trgm) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`vector`](/ext/e/vector) [`postgis`](/ext/e/postgis) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> The PIGSTY package omits optional mentatd and installs no user-facing binary; listed integrations are soft dependencies. Effective build uses pgrx 0.19.1, migrated from upstream 0.17.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.7` | {{< pgvers "18,17,16,15,14" >}} | `pg_mentat` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.7` | {{< pgvers "18,17,16,15,14" >}} | `pg_mentat_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-mentat` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| el8.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| el9.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| el9.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| el10.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| el10.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| d12.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| d12.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| d13.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| d13.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| u22.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| u22.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| u24.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| u24.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| u26.x86_64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
| u26.aarch64 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 | AVAIL PIGSTY 1.5.7 1 |
@ el8.x86_64 18 pg_mentat_18 pg_mentat_18-1.5.7-1PIGSTY.el8.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_18-1.5.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_mentat_18 pg_mentat_18-1.5.7-1PIGSTY.el8.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_18-1.5.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_mentat_18 pg_mentat_18-1.5.7-1PIGSTY.el9.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_18-1.5.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_mentat_18 pg_mentat_18-1.5.7-1PIGSTY.el9.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_18-1.5.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_mentat_18 pg_mentat_18-1.5.7-1PIGSTY.el10.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_18-1.5.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_mentat_18 pg_mentat_18-1.5.7-1PIGSTY.el10.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_18-1.5.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb pigsty 1.5.7 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb pigsty 1.5.7 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb pigsty 1.5.7 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb pigsty 1.5.7 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-mentat postgresql-18-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-18-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_mentat_17 pg_mentat_17-1.5.7-1PIGSTY.el8.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_17-1.5.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_mentat_17 pg_mentat_17-1.5.7-1PIGSTY.el8.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_17-1.5.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_mentat_17 pg_mentat_17-1.5.7-1PIGSTY.el9.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_17-1.5.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_mentat_17 pg_mentat_17-1.5.7-1PIGSTY.el9.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_17-1.5.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_mentat_17 pg_mentat_17-1.5.7-1PIGSTY.el10.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_17-1.5.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_mentat_17 pg_mentat_17-1.5.7-1PIGSTY.el10.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_17-1.5.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb pigsty 1.5.7 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb pigsty 1.5.7 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb pigsty 1.5.7 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-mentat postgresql-17-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-17-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_mentat_16 pg_mentat_16-1.5.7-1PIGSTY.el8.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_16-1.5.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_mentat_16 pg_mentat_16-1.5.7-1PIGSTY.el8.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_16-1.5.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_mentat_16 pg_mentat_16-1.5.7-1PIGSTY.el9.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_16-1.5.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_mentat_16 pg_mentat_16-1.5.7-1PIGSTY.el9.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_16-1.5.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_mentat_16 pg_mentat_16-1.5.7-1PIGSTY.el10.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_16-1.5.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_mentat_16 pg_mentat_16-1.5.7-1PIGSTY.el10.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_16-1.5.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb pigsty 1.5.7 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb pigsty 1.5.7 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb pigsty 1.5.7 2.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-mentat postgresql-16-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-16-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_mentat_15 pg_mentat_15-1.5.7-1PIGSTY.el8.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_15-1.5.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_mentat_15 pg_mentat_15-1.5.7-1PIGSTY.el8.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_15-1.5.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_mentat_15 pg_mentat_15-1.5.7-1PIGSTY.el9.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_15-1.5.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_mentat_15 pg_mentat_15-1.5.7-1PIGSTY.el9.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_15-1.5.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_mentat_15 pg_mentat_15-1.5.7-1PIGSTY.el10.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_15-1.5.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_mentat_15 pg_mentat_15-1.5.7-1PIGSTY.el10.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_15-1.5.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb pigsty 1.5.7 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb pigsty 1.5.7 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-mentat postgresql-15-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-15-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_mentat_14 pg_mentat_14-1.5.7-1PIGSTY.el8.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_mentat_14-1.5.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_mentat_14 pg_mentat_14-1.5.7-1PIGSTY.el8.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_mentat_14-1.5.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_mentat_14 pg_mentat_14-1.5.7-1PIGSTY.el9.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_mentat_14-1.5.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_mentat_14 pg_mentat_14-1.5.7-1PIGSTY.el9.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_mentat_14-1.5.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_mentat_14 pg_mentat_14-1.5.7-1PIGSTY.el10.x86_64.rpm pigsty 1.5.7 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_mentat_14-1.5.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_mentat_14 pg_mentat_14-1.5.7-1PIGSTY.el10.aarch64.rpm pigsty 1.5.7 1.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_mentat_14-1.5.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb pigsty 1.5.7 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb pigsty 1.5.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb pigsty 1.5.7 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb pigsty 1.5.7 2.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-mentat postgresql-14-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb pigsty 1.5.7 1.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-mentat/postgresql-14-pg-mentat_1.5.7-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_mentat;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_mentat -v 18  # PG 18
pig ext install -y pg_mentat -v 17  # PG 17
pig ext install -y pg_mentat -v 16  # PG 16
pig ext install -y pg_mentat -v 15  # PG 15
pig ext install -y pg_mentat -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_mentat_18       # PG 18
dnf install -y pg_mentat_17       # PG 17
dnf install -y pg_mentat_16       # PG 16
dnf install -y pg_mentat_15       # PG 15
dnf install -y pg_mentat_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-mentat   # PG 18
apt install -y postgresql-17-pg-mentat   # PG 17
apt install -y postgresql-16-pg-mentat   # PG 16
apt install -y postgresql-15-pg-mentat   # PG 15
apt install -y postgresql-14-pg-mentat   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_mentat;
```

## Usage

Sources:

- [pg_mentat v1.5.7 README](https://codeberg.org/gregburd/pg_mentat/src/tag/v1.5.7/README.md)
- [pg_mentat v1.5.7 control file](https://codeberg.org/gregburd/pg_mentat/src/tag/v1.5.7/pg_mentat/pg_mentat.control)
- [pg_mentat v1.5.6 to v1.5.7 upgrade SQL](https://codeberg.org/gregburd/pg_mentat/src/tag/v1.5.7/pg_mentat/sql/pg_mentat--1.5.6--1.5.7.sql)
- [Pigsty package matrix](https://pgext.cloud/ext/pg_mentat)

`pg_mentat` implements a Datomic-compatible data model and Datalog query engine inside PostgreSQL. It stores immutable facts as typed datoms and exposes schema transactions, Datalog queries, pull expressions, time travel, transaction history, and permanent excision through SQL functions. Use it for applications that need this model; it is not a transparent replacement for relational tables or SQL.

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
SELECT mentat.pull('[*]', 10001);
SELECT mentat.log('default', 1000001, 1000010);
SELECT mentat.diff('default', 1000003, 1000007);

SELECT mentat.mentat_with('[
  {:person/name "Alice" :person/age 31}
]');
```

`mentat.pull` returns entity-shaped JSON. `mentat.log` and `mentat.diff` expose transaction history, and `mentat.mentat_with` evaluates a transaction without persisting it. Queries can also be evaluated as of or since a transaction by using the documented database arguments.

Permanent excision is intentionally separate from normal immutable history:

```sql
SELECT mentat.mentat_excise('default', 10042, NULL);
```

Review the target entity and backups before excision; it permanently removes datoms and is intended for requirements such as privacy erasure.

### Important Objects

- `mentat.t(edn)`: transact schema or data.
- `mentat.q(query, inputs)`: execute Datalog.
- `mentat.pull(pattern, eid)` and `mentat.pull_many(pattern, eids)`: entity-shaped reads.
- `mentat.entity(eid)` and `mentat.schema()`: inspect an entity or current schema.
- `mentat.log(...)` and `mentat.diff(...)`: inspect transaction history.
- `mentat.stats()`, `mentat.storage()`, and `mentat.cache_stats()`: operational inspection.
- `mentat.subscribe(...)`: reactive query notifications through PostgreSQL `LISTEN`/`NOTIFY`.

The extension stores typed datoms in narrow tables under schema `mentat`, including reference, integer, string, boolean, floating-point, instant, keyword, UUID, and byte values.

### Requirements and Caveats

- Upstream v1.5.7 supports PostgreSQL 13-18. Current Pigsty packages target PostgreSQL 14-18 and are rebuilt with pgrx 0.19.1; upstream's tagged source declares pgrx 0.17. Treat the packaged binary as the compatibility boundary.
- The extension is not relocatable and does not require `shared_preload_libraries`.
- The optional `mentatd` HTTP/Datomic-wire daemon is an upstream companion program and is not included in the Pigsty `pg_mentat` package. SQL use of the extension does not require it.
- Datalog compilation, pull recursion, full-text attributes, subscriptions, and history can have very different cost profiles. Inspect generated SQL with the documented explain helper and benchmark representative data.
- Excision bypasses the normal immutable-history model. Restrict privileges and audit its use.
