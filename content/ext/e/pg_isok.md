---
title: "pg_isok"
linkTitle: "pg_isok"
description: "Query-based data integrity management and soft alerting for PostgreSQL"
weight: 4340
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/kop/pg_isok">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/kop/pg_isok</div>
    <div class="ext-card__desc">https://codeberg.org/kop/pg_isok</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_isok-1.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_isok-1.4.1.tar.gz</div>
    <div class="ext-card__desc">pg_isok-1.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_isok`**](/ext/e/pg_isok) | `1.4.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4340  | [**`pg_isok`**](/ext/e/pg_isok) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> superuser=false, but this is not a trusted extension.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_isok` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_isok_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-isok` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
@ el8.x86_64 18 pg_isok_18 pg_isok_18-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_isok_18-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_isok_18 pg_isok_18-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_isok_18-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_isok_18 pg_isok_18-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_isok_18-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_isok_18 pg_isok_18-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_isok_18-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_isok_18 pg_isok_18-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_isok_18-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_isok_18 pg_isok_18-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_isok_18-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-isok postgresql-18-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-18-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_isok_17 pg_isok_17-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_isok_17-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_isok_17 pg_isok_17-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_isok_17-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_isok_17 pg_isok_17-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_isok_17-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_isok_17 pg_isok_17-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_isok_17-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_isok_17 pg_isok_17-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_isok_17-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_isok_17 pg_isok_17-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_isok_17-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-isok postgresql-17-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-17-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_isok_16 pg_isok_16-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_isok_16-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_isok_16 pg_isok_16-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_isok_16-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_isok_16 pg_isok_16-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_isok_16-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_isok_16 pg_isok_16-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_isok_16-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_isok_16 pg_isok_16-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_isok_16-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_isok_16 pg_isok_16-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_isok_16-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-isok postgresql-16-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-16-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_isok_15 pg_isok_15-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_isok_15-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_isok_15 pg_isok_15-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_isok_15-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_isok_15 pg_isok_15-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_isok_15-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_isok_15 pg_isok_15-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_isok_15-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_isok_15 pg_isok_15-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_isok_15-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_isok_15 pg_isok_15-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_isok_15-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-isok postgresql-15-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-15-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_isok_14 pg_isok_14-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 63.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_isok_14-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_isok_14 pg_isok_14-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_isok_14-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_isok_14 pg_isok_14-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_isok_14-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_isok_14 pg_isok_14-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 60.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_isok_14-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_isok_14 pg_isok_14-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_isok_14-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_isok_14 pg_isok_14-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 60.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_isok_14-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 56.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 57.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-isok postgresql-14-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 56.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-isok/postgresql-14-pg-isok_1.4.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_isok` using `pig build`:

```bash
pig build pkg pg_isok         # build RPM / DEB packages
```


## Install

You can install `pg_isok` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_isok;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_isok -v 18  # PG 18
pig ext install -y pg_isok -v 17  # PG 17
pig ext install -y pg_isok -v 16  # PG 16
pig ext install -y pg_isok -v 15  # PG 15
pig ext install -y pg_isok -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_isok_18       # PG 18
dnf install -y pg_isok_17       # PG 17
dnf install -y pg_isok_16       # PG 16
dnf install -y pg_isok_15       # PG 15
dnf install -y pg_isok_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-isok   # PG 18
apt install -y postgresql-17-pg-isok   # PG 17
apt install -y postgresql-16-pg-isok   # PG 16
apt install -y postgresql-15-pg-isok   # PG 15
apt install -y postgresql-14-pg-isok   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_isok;
```

## Usage

Sources: [official repo](https://codeberg.org/kop/pg_isok), [official docs home](https://codeberg.org/kop/pg_isok/src/branch/main/doc_src/index.html), [official reference source](https://codeberg.org/kop/pg_isok/src/branch/main/doc_src/isok.xml)

`pg_isok` is a query-based data integrity and monitoring extension. Instead of only reporting rows that currently look questionable, it stores prior results and focuses later runs on unresolved or undeferred changes.

```sql
CREATE SCHEMA isok;
CREATE EXTENSION pg_isok SCHEMA isok;

SELECT *
FROM isok.run_isok_queries()
AS problems;
```

### Core Objects

- `ISOK_QUERIES` stores the monitoring queries and their execution settings.
- `ISOK_RESULTS` stores the reported rows, including whether they were resolved or deferred.
- `run_isok_queries()` runs every active check.
- `run_isok_queries($$VALUES ('check_name')$$)` runs only selected checks.

### Typical Workflow

Run one named check:

```sql
SELECT *
FROM isok.run_isok_queries($$VALUES ('new_countries')$$)
AS problems;
```

Accept or postpone a known warning by updating `ISOK_RESULTS`:

```sql
UPDATE isok.isok_results
SET deferred_to = 'infinity'
WHERE iqname = 'new_countries';
```

Use `resolved` when the condition is no longer a concern, or `deferred_to` when it should stay hidden until a later date.

### Where It Fits

- data cleanup after imports
- monitoring unusual but sometimes acceptable patterns
- "soft trigger" style review workflows where hard constraints are too strict

### Caveats

- Upstream recommends installing it in a dedicated schema and qualifying calls accordingly.
- The docs describe it as pure SQL, which is useful on managed PostgreSQL services where C extensions may be restricted.
- The package metadata in this repo says `superuser=false`, but this is not documented upstream as a trusted extension; treat installation privileges conservatively.
