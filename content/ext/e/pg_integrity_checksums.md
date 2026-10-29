---
title: "pg_integrity_checksums"
linkTitle: "pg_integrity_checksums"
description: "Physical and logical checksums for PostgreSQL pages, rows, tables, indexes and databases."
weight: 5115
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/VictorNagibator/pg_integrity_checksums">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">VictorNagibator/pg_integrity_checksums</div>
    <div class="ext-card__desc">https://github.com/VictorNagibator/pg_integrity_checksums</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_integrity_checksums-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_integrity_checksums-2.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_integrity_checksums-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_integrity_checksums`**](/ext/e/pg_integrity_checksums) | `2.0.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5115  | [**`pg_integrity_checksums`**](/ext/e/pg_integrity_checksums) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`amcheck`](/ext/e/amcheck) [`pg_checksums`](/ext/e/pg_checksums) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Former pg_checksums SQL extension, unrelated to the core/PGDG utility. Old/new extensions cannot share a schema; follow MIGRATION.md. Superuser install; relation checks enforce SELECT and reject RLS; database checks require superuser. Logical checksums compare content; physical checksums depend on storage. PG14-18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_integrity_checksums` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_integrity_checksums_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-integrity-checksums` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
@ el8.x86_64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.0.0-1PGSTY.el8.x86_64.rpm pigsty 2.0.0 89.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_18-2.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.0.0-1PGSTY.el8.aarch64.rpm pigsty 2.0.0 87.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_18-2.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.0.0-1PGSTY.el9.x86_64.rpm pigsty 2.0.0 91.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_18-2.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.0.0-1PGSTY.el9.aarch64.rpm pigsty 2.0.0 89.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_18-2.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.0.0-1PGSTY.el10.x86_64.rpm pigsty 2.0.0 91.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_18-2.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.0.0-1PGSTY.el10.aarch64.rpm pigsty 2.0.0 90.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_18-2.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb pigsty 2.0.0 82.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb pigsty 2.0.0 81.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb pigsty 2.0.0 82.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb pigsty 2.0.0 81.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb pigsty 2.0.0 88.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb pigsty 2.0.0 87.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb pigsty 2.0.0 85.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb pigsty 2.0.0 85.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb pigsty 2.0.0 85.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb pigsty 2.0.0 83.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.0.0-1PGSTY.el8.x86_64.rpm pigsty 2.0.0 89.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_17-2.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.0.0-1PGSTY.el8.aarch64.rpm pigsty 2.0.0 87.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_17-2.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.0.0-1PGSTY.el9.x86_64.rpm pigsty 2.0.0 90.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_17-2.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.0.0-1PGSTY.el9.aarch64.rpm pigsty 2.0.0 89.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_17-2.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.0.0-1PGSTY.el10.x86_64.rpm pigsty 2.0.0 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_17-2.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.0.0-1PGSTY.el10.aarch64.rpm pigsty 2.0.0 89.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_17-2.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb pigsty 2.0.0 82.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb pigsty 2.0.0 80.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb pigsty 2.0.0 82.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb pigsty 2.0.0 81.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb pigsty 2.0.0 94.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb pigsty 2.0.0 93.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb pigsty 2.0.0 85.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb pigsty 2.0.0 85.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb pigsty 2.0.0 85.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb pigsty 2.0.0 83.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.0.0-1PGSTY.el8.x86_64.rpm pigsty 2.0.0 90.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_16-2.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.0.0-1PGSTY.el8.aarch64.rpm pigsty 2.0.0 87.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_16-2.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.0.0-1PGSTY.el9.x86_64.rpm pigsty 2.0.0 91.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_16-2.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.0.0-1PGSTY.el9.aarch64.rpm pigsty 2.0.0 89.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_16-2.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.0.0-1PGSTY.el10.x86_64.rpm pigsty 2.0.0 92.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_16-2.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.0.0-1PGSTY.el10.aarch64.rpm pigsty 2.0.0 90.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_16-2.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb pigsty 2.0.0 82.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb pigsty 2.0.0 81.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb pigsty 2.0.0 83.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb pigsty 2.0.0 81.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb pigsty 2.0.0 95.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb pigsty 2.0.0 93.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb pigsty 2.0.0 85.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb pigsty 2.0.0 86.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb pigsty 2.0.0 85.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb pigsty 2.0.0 83.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.0.0-1PGSTY.el8.x86_64.rpm pigsty 2.0.0 89.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_15-2.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.0.0-1PGSTY.el8.aarch64.rpm pigsty 2.0.0 87.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_15-2.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.0.0-1PGSTY.el9.x86_64.rpm pigsty 2.0.0 90.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_15-2.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.0.0-1PGSTY.el9.aarch64.rpm pigsty 2.0.0 89.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_15-2.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.0.0-1PGSTY.el10.x86_64.rpm pigsty 2.0.0 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_15-2.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.0.0-1PGSTY.el10.aarch64.rpm pigsty 2.0.0 89.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_15-2.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb pigsty 2.0.0 82.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb pigsty 2.0.0 87.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb pigsty 2.0.0 82.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb pigsty 2.0.0 80.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb pigsty 2.0.0 94.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb pigsty 2.0.0 93.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb pigsty 2.0.0 85.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb pigsty 2.0.0 85.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb pigsty 2.0.0 85.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb pigsty 2.0.0 83.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_integrity_checksums_14 pg_integrity_checksums_14-2.0.0-1PGSTY.el8.x86_64.rpm pigsty 2.0.0 89.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_14-2.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_integrity_checksums_14 pg_integrity_checksums_14-2.0.0-1PGSTY.el8.aarch64.rpm pigsty 2.0.0 87.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_14-2.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_integrity_checksums_14 pg_integrity_checksums_14-2.0.0-1PGSTY.el9.x86_64.rpm pigsty 2.0.0 91.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_14-2.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_integrity_checksums_14 pg_integrity_checksums_14-2.0.0-1PGSTY.el9.aarch64.rpm pigsty 2.0.0 89.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_14-2.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_integrity_checksums_14 pg_integrity_checksums_14-2.0.0-1PGSTY.el10.x86_64.rpm pigsty 2.0.0 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_14-2.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_integrity_checksums_14 pg_integrity_checksums_14-2.0.0-1PGSTY.el10.aarch64.rpm pigsty 2.0.0 90.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_14-2.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb pigsty 2.0.0 82.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb pigsty 2.0.0 80.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb pigsty 2.0.0 82.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb pigsty 2.0.0 81.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb pigsty 2.0.0 94.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb pigsty 2.0.0 93.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb pigsty 2.0.0 85.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb pigsty 2.0.0 85.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb pigsty 2.0.0 85.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-integrity-checksums postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb pigsty 2.0.0 83.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-14-pg-integrity-checksums_2.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_integrity_checksums` using `pig build`:

```bash
pig build pkg pg_integrity_checksums         # build RPM / DEB packages
```


## Install

You can install `pg_integrity_checksums` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_integrity_checksums;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_integrity_checksums -v 18  # PG 18
pig ext install -y pg_integrity_checksums -v 17  # PG 17
pig ext install -y pg_integrity_checksums -v 16  # PG 16
pig ext install -y pg_integrity_checksums -v 15  # PG 15
pig ext install -y pg_integrity_checksums -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_integrity_checksums_18       # PG 18
dnf install -y pg_integrity_checksums_17       # PG 17
dnf install -y pg_integrity_checksums_16       # PG 16
dnf install -y pg_integrity_checksums_15       # PG 15
dnf install -y pg_integrity_checksums_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-integrity-checksums   # PG 18
apt install -y postgresql-17-pg-integrity-checksums   # PG 17
apt install -y postgresql-16-pg-integrity-checksums   # PG 16
apt install -y postgresql-15-pg-integrity-checksums   # PG 15
apt install -y postgresql-14-pg-integrity-checksums   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_integrity_checksums;
```

## Usage

Sources:

- [PGXN metadata](https://api.pgxn.org/dist/pg_integrity_checksums/2.0.0/META.json)
- [Official README](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.0.0/README.md)
- [Control file](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.0.0/pg_integrity_checksums.control)
- [Migration guide](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.0.0/MIGRATION.md)

`pg_integrity_checksums` computes physical and logical checksums for PostgreSQL pages, cells, tuples, tables, indexes and databases. It is a C extension for PostgreSQL 12–18 and reads relation storage directly, so installation and database-wide checks require a superuser.

### Install and migrate

```sql
CREATE EXTENSION pg_integrity_checksums;
```

Version 2.0.0 is the renamed continuation of the earlier `pg_checksums` extension. PostgreSQL has no `ALTER EXTENSION ... RENAME`; review dependent objects, drop the old extension, create the new one, and change the GUC prefix before using the new name:

```sql
DROP EXTENSION pg_checksums;
CREATE EXTENSION pg_integrity_checksums;
SET pg_integrity_checksums.workers = 4;
SET pg_integrity_checksums.strict = on;
```

The old and new names cannot coexist because they define the same SQL functions. The unrelated core `pg_checksums` utility is a separate program.

### Checksum levels

Use logical checksums for content comparison and physical checksums for storage integrity. Logical table checksums do not require a primary key, preserve duplicate rows, and exclude relation and tuple identifiers. Logical index checksums are derived from visible table rows and the index definition, so they are stable across `VACUUM`, `CLUSTER` and `REINDEX`.

```sql
SELECT pg_table_logical_checksum('public.orders'::regclass);
SELECT pg_index_logical_checksum('public.orders_pkey'::regclass);
SELECT pg_database_logical_checksum(false, true);
```

Physical checksums include storage details and can change after `VACUUM FULL`, `CLUSTER`, `REINDEX` or other physical rewrites. Use the page, tuple and table physical functions when those changes are relevant to the integrity baseline.

### Privileges and maintenance

Relation-level functions require `SELECT` on the relation and reject row-level-security protected relations because direct storage scans cannot apply RLS. Database-level functions are superuser-only. `pg_integrity_checksums.workers` controls parallel scans; `pg_integrity_checksums.strict` makes database scans fail when a relation cannot be checked instead of skipping it. The extension does not require shared preload, but physical baselines must be recomputed after the changes described in the release notes.
