---
title: "pg_synonym"
linkTitle: "pg_synonym"
description: "Table and view aliases synchronized with target DDL."
weight: 9220
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Mazuco/pg_synonym">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Mazuco/pg_synonym</div>
    <div class="ext-card__desc">https://github.com/Mazuco/pg_synonym</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_synonym-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_synonym-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_synonym-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_synonym`**](/ext/e/pg_synonym) | `1.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9220  | [**`pg_synonym`**](/ext/e/pg_synonym) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `synonym` |
{.ext-table}


> Release 1.0.0 installs SQL 1.0. Requires PG15+ and superuser installation for event triggers; no preload. Invoker-security views retain target privileges/RLS; manual synonym view edits can break synchronization.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "15,16,17,18" >}} | `pg_synonym` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "15,16,17,18" >}} | `pg_synonym_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "15,16,17,18" >}} | `postgresql-$v-pg-synonym` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_synonym_18 pg_synonym_18-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 29.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_synonym_18-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_synonym_18 pg_synonym_18-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_synonym_18-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_synonym_18 pg_synonym_18-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_synonym_18-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_synonym_18 pg_synonym_18-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_synonym_18-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_synonym_18 pg_synonym_18-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_synonym_18-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_synonym_18 pg_synonym_18-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_synonym_18-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 22.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 22.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 22.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 22.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 22.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-synonym postgresql-18-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 22.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-18-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_synonym_17 pg_synonym_17-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_synonym_17-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_synonym_17 pg_synonym_17-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_synonym_17-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_synonym_17 pg_synonym_17-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_synonym_17-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_synonym_17 pg_synonym_17-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_synonym_17-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_synonym_17 pg_synonym_17-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_synonym_17-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_synonym_17 pg_synonym_17-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_synonym_17-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 22.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-synonym postgresql-17-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 22.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-17-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_synonym_16 pg_synonym_16-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_synonym_16-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_synonym_16 pg_synonym_16-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_synonym_16-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_synonym_16 pg_synonym_16-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_synonym_16-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_synonym_16 pg_synonym_16-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_synonym_16-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_synonym_16 pg_synonym_16-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_synonym_16-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_synonym_16 pg_synonym_16-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_synonym_16-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 22.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 22.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-synonym postgresql-16-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 22.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-16-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_synonym_15 pg_synonym_15-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_synonym_15-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_synonym_15 pg_synonym_15-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_synonym_15-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_synonym_15 pg_synonym_15-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_synonym_15-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_synonym_15 pg_synonym_15-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_synonym_15-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_synonym_15 pg_synonym_15-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 29.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_synonym_15-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_synonym_15 pg_synonym_15-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_synonym_15-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 22.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 22.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 22.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 22.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-synonym postgresql-15-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 22.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-synonym/postgresql-15-pg-synonym_1.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_synonym` using `pig build`:

```bash
pig build pkg pg_synonym         # build RPM / DEB packages
```


## Install

You can install `pg_synonym` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_synonym;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_synonym -v 18  # PG 18
pig ext install -y pg_synonym -v 17  # PG 17
pig ext install -y pg_synonym -v 16  # PG 16
pig ext install -y pg_synonym -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_synonym_18       # PG 18
dnf install -y pg_synonym_17       # PG 17
dnf install -y pg_synonym_16       # PG 16
dnf install -y pg_synonym_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-synonym   # PG 18
apt install -y postgresql-17-pg-synonym   # PG 17
apt install -y postgresql-16-pg-synonym   # PG 16
apt install -y postgresql-15-pg-synonym   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_synonym;
```

## Usage

Sources:

- [Official source](https://github.com/Mazuco/pg_synonym/blob/77fa1f92327d2c26f21000293b623941f946dd2f/README.md)
- [Official source](https://github.com/Mazuco/pg_synonym/blob/77fa1f92327d2c26f21000293b623941f946dd2f/pg_synonym.control)
- [Official source](https://github.com/Mazuco/pg_synonym/blob/77fa1f92327d2c26f21000293b623941f946dd2f/pg_synonym--1.0.sql)

`pg_synonym` maintains table and view aliases as invoker-security views. Release 1.0.0 installs extension version 1.0; PostgreSQL 15 or later and superuser installation are required. It needs no preload or server restart.

### Core Workflow

```sql
CREATE EXTENSION pg_synonym;
CREATE SCHEMA app;
CREATE SCHEMA erp;
CREATE TABLE erp.customers (id bigint PRIMARY KEY, name text);
SELECT synonym.create('app.customer', 'erp.customers');
INSERT INTO app.customer VALUES (1, 'Ada');
SELECT * FROM app.customer;
SELECT * FROM synonym.list;
```

All helpers live in the `synonym` schema.

### Operations and Permissions

`synonym.create` can register an alias before its target exists; event triggers resolve it later. Target renames follow the object identity, and supported column changes rebuild the alias. `synonym.refresh()` reconciles aliases manually. `synonym.drop` removes one, with optional `if_exists => true`.

Access through an alias still checks target permissions and row security. Creating an alias requires creation rights in its schema and usage rights on the target schema. Removing one requires ownership, role membership or superuser rights.

### Boundaries

Targets include ordinary, partitioned and foreign tables, views and materialized views. Aliases to aliases, cross-database objects, functions and sequences are unsupported. Use a query for copying data out; the alias is not a substitute for target DDL or truncation. Merging through a view requires PostgreSQL 17 or later.

Manual changes to an alias view can break synchronization. Dependent views may block destructive target changes, and rebuilding an alias can reset grants applied directly to it. Dropping the extension leaves ordinary alias views behind; plan their cleanup separately.
