---
title: "pg_try_cast"
linkTitle: "pg_try_cast"
description: "Text conversion with NULL or a typed fallback on conversion errors."
weight: 4855
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Mazuco/pg_try_cast">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Mazuco/pg_try_cast</div>
    <div class="ext-card__desc">https://github.com/Mazuco/pg_try_cast</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_try_cast-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_try_cast-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_try_cast-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_try_cast`**](/ext/e/pg_try_cast) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4855  | [**`pg_try_cast`**](/ext/e/pg_try_cast) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> Release 1.0.0 installs control/SQL 1.0; META provides.version says 1.0.0. PG16+ required, CI covers 16-18; input types without soft-error support may still raise errors.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "16,17,18" >}} | `pg_try_cast` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "16,17,18" >}} | `pg_try_cast_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-try-cast` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_try_cast_18 pg_try_cast_18-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_try_cast_18-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_try_cast_18 pg_try_cast_18-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_try_cast_18-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_try_cast_18 pg_try_cast_18-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_try_cast_18-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_try_cast_18 pg_try_cast_18-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 21.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_try_cast_18-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_try_cast_18 pg_try_cast_18-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_try_cast_18-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_try_cast_18 pg_try_cast_18-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_try_cast_18-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-try-cast postgresql-18-pg-try-cast_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-try-cast/postgresql-18-pg-try-cast_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_try_cast_17 pg_try_cast_17-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_try_cast_17-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_try_cast_17 pg_try_cast_17-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_try_cast_17-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_try_cast_17 pg_try_cast_17-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_try_cast_17-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_try_cast_17 pg_try_cast_17-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_try_cast_17-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_try_cast_17 pg_try_cast_17-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_try_cast_17-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_try_cast_17 pg_try_cast_17-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_try_cast_17-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-try-cast postgresql-17-pg-try-cast_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-try-cast/postgresql-17-pg-try-cast_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_try_cast_16 pg_try_cast_16-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_try_cast_16-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_try_cast_16 pg_try_cast_16-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_try_cast_16-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_try_cast_16 pg_try_cast_16-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_try_cast_16-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_try_cast_16 pg_try_cast_16-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 21.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_try_cast_16-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_try_cast_16 pg_try_cast_16-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 21.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_try_cast_16-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_try_cast_16 pg_try_cast_16-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 21.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_try_cast_16-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 13.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-try-cast postgresql-16-pg-try-cast_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 13.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-try-cast/postgresql-16-pg-try-cast_1.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_try_cast` using `pig build`:

```bash
pig build pkg pg_try_cast         # build RPM / DEB packages
```


## Install

You can install `pg_try_cast` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_try_cast;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_try_cast -v 18  # PG 18
pig ext install -y pg_try_cast -v 17  # PG 17
pig ext install -y pg_try_cast -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_try_cast_18       # PG 18
dnf install -y pg_try_cast_17       # PG 17
dnf install -y pg_try_cast_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-try-cast   # PG 18
apt install -y postgresql-17-pg-try-cast   # PG 17
apt install -y postgresql-16-pg-try-cast   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_try_cast;
```

## Usage

Sources:

- [README.md](https://github.com/Mazuco/pg_try_cast/blob/d8013ce29c39e53c7317725927f003379743292c/README.md)
- [pg_try_cast--1.0.sql](https://github.com/Mazuco/pg_try_cast/blob/d8013ce29c39e53c7317725927f003379743292c/pg_try_cast--1.0.sql)
- [src/pg_try_cast.c](https://github.com/Mazuco/pg_try_cast/blob/d8013ce29c39e53c7317725927f003379743292c/src/pg_try_cast.c)
- [.github/workflows/ci.yml](https://github.com/Mazuco/pg_try_cast/blob/d8013ce29c39e53c7317725927f003379743292c/.github/workflows/ci.yml)
- [pg_try_cast.control](https://github.com/Mazuco/pg_try_cast/blob/d8013ce29c39e53c7317725927f003379743292c/pg_try_cast.control)

`pg_try_cast` provides `try_cast` and `try_convert` for converting text without aborting a query on supported input errors. Release 1.0.0 installs SQL version 1.0. PostgreSQL 16 or later is required; upstream CI covers 16–18. It is trusted and relocatable, with no preload requirement.

### Core Workflow

```sql
CREATE EXTENSION pg_try_cast;
SELECT try_cast('42', NULL::integer);
SELECT try_cast('invalid', 0);
SELECT try_convert(NULL::date, '2026-02-30');
```

### Operational Boundaries

`try_cast(value text, fallback anyelement)` takes its result type and error fallback from the second argument; `try_convert(fallback anyelement, value text)` reverses the order. NULL input returns NULL. Give the fallback an explicit type. Type modifiers and domain constraints are checked. This covers text input, not arbitrary native casts. Input functions without soft-error support can still raise an error, including malformed type names passed to regtype. A role with CREATE privilege on the database can install this trusted extension after its files are installed.
