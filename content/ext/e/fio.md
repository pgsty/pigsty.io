---
title: "fio"
linkTitle: "fio"
description: "PostgreSQL File I/O Functions"
weight: 5230
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/csimsek/pgsql-fio">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">csimsek/pgsql-fio</div>
    <div class="ext-card__desc">https://github.com/csimsek/pgsql-fio</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_fio-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_fio-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_fio-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_fio`**](/ext/e/fio) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5230  | [**`fio`**](/ext/e/fio) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgfincore`](/ext/e/pgfincore) [`adminpack`](/ext/e/adminpack) [`file_fdw`](/ext/e/file_fdw) [`pageinspect`](/ext/e/pageinspect) [`pgstattuple`](/ext/e/pgstattuple) [`pg_repack`](/ext/e/pg_repack) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_squeeze`](/ext/e/pg_squeeze) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_fio` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_fio_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-fio` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 pg_fio_18 pg_fio_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fio_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_fio_18 pg_fio_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fio_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_fio_18 pg_fio_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fio_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_fio_18 pg_fio_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fio_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_fio_18 pg_fio_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fio_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_fio_18 pg_fio_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fio_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 24.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 24.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-fio postgresql-18-pg-fio_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-18-pg-fio_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_fio_17 pg_fio_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fio_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_fio_17 pg_fio_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fio_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_fio_17 pg_fio_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fio_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_fio_17 pg_fio_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fio_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_fio_17 pg_fio_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fio_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_fio_17 pg_fio_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fio_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 28.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 24.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-fio postgresql-17-pg-fio_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-17-pg-fio_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_fio_16 pg_fio_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fio_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_fio_16 pg_fio_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fio_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_fio_16 pg_fio_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fio_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_fio_16 pg_fio_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fio_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_fio_16 pg_fio_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fio_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_fio_16 pg_fio_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fio_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 28.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 27.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-fio postgresql-16-pg-fio_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 23.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-16-pg-fio_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_fio_15 pg_fio_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fio_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_fio_15 pg_fio_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fio_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_fio_15 pg_fio_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fio_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_fio_15 pg_fio_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fio_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_fio_15 pg_fio_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fio_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_fio_15 pg_fio_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fio_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 28.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 27.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 24.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-fio postgresql-15-pg-fio_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-15-pg-fio_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_fio_14 pg_fio_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fio_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_fio_14 pg_fio_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fio_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_fio_14 pg_fio_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fio_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_fio_14 pg_fio_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fio_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_fio_14 pg_fio_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fio_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_fio_14 pg_fio_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fio_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 22.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 23.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 22.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 28.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 27.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 24.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-fio postgresql-14-pg-fio_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 24.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fio/postgresql-14-pg-fio_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_fio` using `pig build`:

```bash
pig build pkg pg_fio         # build RPM / DEB packages
```


## Install

You can install `pg_fio` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_fio;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_fio -v 18  # PG 18
pig ext install -y pg_fio -v 17  # PG 17
pig ext install -y pg_fio -v 16  # PG 16
pig ext install -y pg_fio -v 15  # PG 15
pig ext install -y pg_fio -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_fio_18       # PG 18
dnf install -y pg_fio_17       # PG 17
dnf install -y pg_fio_16       # PG 16
dnf install -y pg_fio_15       # PG 15
dnf install -y pg_fio_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-fio   # PG 18
apt install -y postgresql-17-pg-fio   # PG 17
apt install -y postgresql-16-pg-fio   # PG 16
apt install -y postgresql-15-pg-fio   # PG 15
apt install -y postgresql-14-pg-fio   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION fio;
```




## Usage

> [fio: PostgreSQL File I/O Functions](https://github.com/csimsek/pgsql-fio)

The `fio` extension provides file system I/O functions accessible from SQL, enabling reading, writing, and managing files and directories directly from PostgreSQL.

### File Operations

```sql
-- Read file contents (returns bytea)
SELECT fio_readfile('/etc/hostname');

-- Write content to file
SELECT fio_writefile('/tmp/output.txt', 'Hello World'::bytea);

-- Write with auto-create directory and overwrite
SELECT fio_writefile('/tmp/newdir/output.txt', 'data'::bytea, true, true);

-- Remove a file
SELECT fio_removefile('/tmp/output.txt');

-- Rename / move a file
SELECT fio_renamefile('/tmp/old.txt', '/tmp/new.txt');
```

### Directory Operations

```sql
-- List directory contents
SELECT fio_readdir('/usr/', '*');

-- List with pattern filter
SELECT fio_readdir('/var/log/', '*.log');

-- Create a directory with permissions
SELECT fio_mkdir('/tmp/mydir', '0755');

-- Create nested directories recursively
SELECT fio_mkdir('/tmp/a/b/c', '0755', true);

-- Change file/directory permissions
SELECT fio_chmod('/tmp/mydir', '0700');
```

### Function Reference

| Function | Description |
|----------|-------------|
| `fio_readfile(path)` | Read file contents as bytea |
| `fio_writefile(path, content, mkdir, overwrite)` | Write bytea content to file |
| `fio_removefile(path)` | Delete a file |
| `fio_renamefile(old, new)` | Rename or move a file |
| `fio_readdir(path, pattern)` | List directory entries matching pattern |
| `fio_mkdir(path, mode, recursive)` | Create directory with permissions |
| `fio_chmod(path, mode)` | Change file/directory permissions |
