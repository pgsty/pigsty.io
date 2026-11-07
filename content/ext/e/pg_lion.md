---
title: "pg_lion"
linkTitle: "pg_lion"
description: "Roaring bitmap inverted indexes for filtering, counts and aggregates"
weight: 2715
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cgkanchi/pg_lion">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cgkanchi/pg_lion</div>
    <div class="ext-card__desc">https://github.com/cgkanchi/pg_lion</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_lion-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_lion-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_lion-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_lion`**](/ext/e/pg_lion) | `0.3.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2715  | [**`pg_lion`**](/ext/e/pg_lion) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 2716  | [**`pg_lion_citext`**](/ext/e/pg_lion_citext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 2717  | [**`pg_lion_vector`**](/ext/e/pg_lion_vector) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** |  |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_lion_citext`](/ext/e/pg_lion_citext) [`pg_lion_vector`](/ext/e/pg_lion_vector) |
{.ext-table .ext-table--rel}


> Custom WAL requires preload.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "16,17,18" >}} | `pg_lion` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "16,17,18" >}} | `pg_lion_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-lion` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_lion_18 pg_lion_18-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lion_18-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_lion_18 pg_lion_18-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lion_18-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_lion_18 pg_lion_18-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lion_18-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_lion_18 pg_lion_18-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lion_18-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_lion_18 pg_lion_18-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lion_18-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_lion_18 pg_lion_18-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lion_18-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-lion postgresql-18-pg-lion_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lion/postgresql-18-pg-lion_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_lion_17 pg_lion_17-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lion_17-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_lion_17 pg_lion_17-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lion_17-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_lion_17 pg_lion_17-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lion_17-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_lion_17 pg_lion_17-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lion_17-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_lion_17 pg_lion_17-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lion_17-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_lion_17 pg_lion_17-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lion_17-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-lion postgresql-17-pg-lion_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lion/postgresql-17-pg-lion_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_lion_16 pg_lion_16-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lion_16-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_lion_16 pg_lion_16-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lion_16-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_lion_16 pg_lion_16-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lion_16-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_lion_16 pg_lion_16-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lion_16-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_lion_16 pg_lion_16-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lion_16-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_lion_16 pg_lion_16-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 2.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lion_16-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-lion postgresql-16-pg-lion_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-lion/postgresql-16-pg-lion_0.3.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_lion` using `pig build`:

```bash
pig build pkg pg_lion         # build RPM / DEB packages
```


## Install

You can install `pg_lion` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_lion;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_lion -v 18  # PG 18
pig ext install -y pg_lion -v 17  # PG 17
pig ext install -y pg_lion -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_lion_18       # PG 18
dnf install -y pg_lion_17       # PG 17
dnf install -y pg_lion_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-lion   # PG 18
apt install -y postgresql-17-pg-lion   # PG 17
apt install -y postgresql-16-pg-lion   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_lion;
```

## Usage

Sources:

- [README](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/README.md)
- [Reference](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/docs/REFERENCE.md)
- [Control file](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/pg_lion.control)

`pg_lion` 0.3.0 adds roaring bitmap inverted indexes for filtering, counts and grouped aggregates on PostgreSQL 16 and later. It works on heap tables and uses ordinary PostgreSQL operators; it does not require preloading for its default generic WAL mode.

### Core Workflow

Create `lion` indexes on the columns used by filters and groups. Vacuumed, all-visible pages let counts avoid heap visits; recently changed pages may need visibility checks in the heap.

```sql
CREATE EXTENSION pg_lion;
CREATE TABLE lion_events (country text, amount integer);
INSERT INTO lion_events VALUES ('JP', 10), ('JP', 20), ('NZ', 30);
CREATE INDEX lion_country ON lion_events USING lion (country);
CREATE INDEX lion_amount ON lion_events USING lion (amount) WITH (slices = on);
VACUUM ANALYZE lion_events;
SELECT count(*), sum(amount) FROM lion_events WHERE country = 'JP';
SELECT country, count(*) FROM lion_events GROUP BY country;
```

Scalar equality, ranges, `IN`, null tests and combined predicates are supported. `lion` also indexes arrays, `jsonb` and `tsvector`; `lion_bm25_score` ranks full-text matches. An expression index on a JSON field can support grouping that a default `jsonb` index cannot.

### Options and Diagnostics

| Object | Purpose |
| --- | --- |
| `summaries = auto` | Pre-merge bitmaps to accelerate ranges with many distinct values. |
| `slices = on` | Store bit slices for filtered aggregates on integer, date and time values; adds write and storage cost. |
| `lion_index_count(index, key)` | Count a key through a named index. |
| `lion_index_stats(index)` | Inspect index statistics; initially granted to `pg_stat_scan_tables`. |
| `lion_index_verify(index, true)` | Check structure and heap coverage; restricted diagnostic function. |
| `lion_index_wal_mode(index)` | Report `generic` or `rmgr`; restricted diagnostic function. |

`pg_lion_citext` adds the `citext` operator class. `pg_lion_vector` adds the `lionvec` access method and requires pgvector 0.7 or later. Both companions ship with the parent distribution and are enabled separately.

### WAL and Operational Boundaries

Creating the extensions requires a superuser. Optional `shared_preload_libraries = 'pg_lion'` plus a server restart enables the custom WAL resource manager (default ID 170). Indexes built in that mode require the preload for writes and `VACUUM` until rebuilt; check `lion_index_wal_mode` before changing the setting.

Keep the library preloaded wherever old custom WAL may still be replayed, including standbys and archive recovery. `REINDEX` does not rewrite historical WAL. Before removing the preload, rebuild every `rmgr` index with `wal_mode = generic` while the library is still preloaded, and account for WAL replay consumers.

There are no unique indexes or `INCLUDE` columns, and only heap tables are supported. Keep B-tree indexes for uniqueness and ordinary ordered scans. Loading the library installs planner hooks and can affect estimates for other queries. Measure write-heavy workloads before adding indexes or slices.

The on-disk format may change before 1.0; follow release-specific `REINDEX` requirements. Builds predating 0.3.0 have no extension update path: upstream requires recreating the extensions and their indexes. Version 0.3.0 supplies installation scripts only.
