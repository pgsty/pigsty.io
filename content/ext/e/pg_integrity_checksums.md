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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_integrity_checksums-2.9.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_integrity_checksums-2.9.1.tar.gz</div>
    <div class="ext-card__desc">pg_integrity_checksums-2.9.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_integrity_checksums`**](/ext/e/pg_integrity_checksums) | `2.9.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5115  | [**`pg_integrity_checksums`**](/ext/e/pg_integrity_checksums) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`amcheck`](/ext/e/amcheck) [`pg_checksums`](/ext/e/pg_checksums) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> 2.2.0 adds FNV-1a 64-bit overloads; superuser; recompute affected baselines.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.9.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_integrity_checksums` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.9.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_integrity_checksums_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.9.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-integrity-checksums` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| el9.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| el9.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| el10.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| el10.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| d12.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| d12.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| d13.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| d13.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| u22.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| u22.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| u24.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| u24.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| u26.x86_64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
| u26.aarch64 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 | AVAIL PIGSTY 2.9.1 1 |
@ el9.x86_64 19 pg_integrity_checksums_19 pg_integrity_checksums_19-2.9.1-1PGSTY.el9.x86_64.rpm pigsty 2.9.1 212.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_19-2.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_integrity_checksums_19 pg_integrity_checksums_19-2.9.1-1PGSTY.el9.aarch64.rpm pigsty 2.9.1 208.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_19-2.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_integrity_checksums_19 pg_integrity_checksums_19-2.9.1-1PGSTY.el10.x86_64.rpm pigsty 2.9.1 214.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_19-2.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_integrity_checksums_19 pg_integrity_checksums_19-2.9.1-1PGSTY.el10.aarch64.rpm pigsty 2.9.1 213.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_19-2.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb pigsty 2.9.1 192.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb pigsty 2.9.1 188.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb pigsty 2.9.1 192.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb pigsty 2.9.1 188.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb pigsty 2.9.1 207.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb pigsty 2.9.1 205.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb pigsty 2.9.1 198.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb pigsty 2.9.1 198.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb pigsty 2.9.1 201.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-integrity-checksums postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb pigsty 2.9.1 200.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-19-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.9.1-1PGSTY.el8.x86_64.rpm pigsty 2.9.1 211.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_18-2.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.9.1-1PGSTY.el8.aarch64.rpm pigsty 2.9.1 205.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_18-2.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.9.1-1PGSTY.el9.x86_64.rpm pigsty 2.9.1 212.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_18-2.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.9.1-1PGSTY.el9.aarch64.rpm pigsty 2.9.1 208.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_18-2.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.9.1-1PGSTY.el10.x86_64.rpm pigsty 2.9.1 214.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_18-2.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_integrity_checksums_18 pg_integrity_checksums_18-2.9.1-1PGSTY.el10.aarch64.rpm pigsty 2.9.1 212.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_18-2.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb pigsty 2.9.1 192.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb pigsty 2.9.1 188.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb pigsty 2.9.1 192.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb pigsty 2.9.1 188.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb pigsty 2.9.1 207.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb pigsty 2.9.1 205.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb pigsty 2.9.1 198.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb pigsty 2.9.1 198.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb pigsty 2.9.1 200.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-integrity-checksums postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb pigsty 2.9.1 200.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-18-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.9.1-1PGSTY.el8.x86_64.rpm pigsty 2.9.1 211.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_17-2.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.9.1-1PGSTY.el8.aarch64.rpm pigsty 2.9.1 205.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_17-2.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.9.1-1PGSTY.el9.x86_64.rpm pigsty 2.9.1 209.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_17-2.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.9.1-1PGSTY.el9.aarch64.rpm pigsty 2.9.1 208.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_17-2.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.9.1-1PGSTY.el10.x86_64.rpm pigsty 2.9.1 214.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_17-2.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_integrity_checksums_17 pg_integrity_checksums_17-2.9.1-1PGSTY.el10.aarch64.rpm pigsty 2.9.1 212.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_17-2.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb pigsty 2.9.1 191.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb pigsty 2.9.1 187.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb pigsty 2.9.1 192.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb pigsty 2.9.1 188.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb pigsty 2.9.1 244.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb pigsty 2.9.1 243.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb pigsty 2.9.1 198.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb pigsty 2.9.1 197.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb pigsty 2.9.1 200.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-integrity-checksums postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb pigsty 2.9.1 200.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-17-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.9.1-1PGSTY.el8.x86_64.rpm pigsty 2.9.1 211.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_16-2.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.9.1-1PGSTY.el8.aarch64.rpm pigsty 2.9.1 206.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_16-2.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.9.1-1PGSTY.el9.x86_64.rpm pigsty 2.9.1 210.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_16-2.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.9.1-1PGSTY.el9.aarch64.rpm pigsty 2.9.1 208.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_16-2.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.9.1-1PGSTY.el10.x86_64.rpm pigsty 2.9.1 214.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_16-2.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_integrity_checksums_16 pg_integrity_checksums_16-2.9.1-1PGSTY.el10.aarch64.rpm pigsty 2.9.1 213.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_16-2.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb pigsty 2.9.1 192.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb pigsty 2.9.1 188.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb pigsty 2.9.1 192.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb pigsty 2.9.1 188.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb pigsty 2.9.1 240.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb pigsty 2.9.1 239.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb pigsty 2.9.1 198.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb pigsty 2.9.1 198.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb pigsty 2.9.1 201.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-integrity-checksums postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb pigsty 2.9.1 201.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-16-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.9.1-1PGSTY.el8.x86_64.rpm pigsty 2.9.1 211.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_integrity_checksums_15-2.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.9.1-1PGSTY.el8.aarch64.rpm pigsty 2.9.1 205.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_integrity_checksums_15-2.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.9.1-1PGSTY.el9.x86_64.rpm pigsty 2.9.1 211.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_integrity_checksums_15-2.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.9.1-1PGSTY.el9.aarch64.rpm pigsty 2.9.1 210.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_integrity_checksums_15-2.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.9.1-1PGSTY.el10.x86_64.rpm pigsty 2.9.1 214.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_integrity_checksums_15-2.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_integrity_checksums_15 pg_integrity_checksums_15-2.9.1-1PGSTY.el10.aarch64.rpm pigsty 2.9.1 212.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_integrity_checksums_15-2.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb pigsty 2.9.1 193.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb pigsty 2.9.1 189.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb pigsty 2.9.1 193.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb pigsty 2.9.1 189.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb pigsty 2.9.1 243.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb pigsty 2.9.1 242.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb pigsty 2.9.1 200.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb pigsty 2.9.1 200.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb pigsty 2.9.1 201.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-integrity-checksums postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb pigsty 2.9.1 201.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-integrity-checksums/postgresql-15-pg-integrity-checksums_2.9.1-1PGSTY~resolute_arm64.deb
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
pig ext install -y pg_integrity_checksums -v 19  # PG 19
pig ext install -y pg_integrity_checksums -v 18  # PG 18
pig ext install -y pg_integrity_checksums -v 17  # PG 17
pig ext install -y pg_integrity_checksums -v 16  # PG 16
pig ext install -y pg_integrity_checksums -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_integrity_checksums_19       # PG 19
dnf install -y pg_integrity_checksums_18       # PG 18
dnf install -y pg_integrity_checksums_17       # PG 17
dnf install -y pg_integrity_checksums_16       # PG 16
dnf install -y pg_integrity_checksums_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-integrity-checksums   # PG 19
apt install -y postgresql-18-pg-integrity-checksums   # PG 18
apt install -y postgresql-17-pg-integrity-checksums   # PG 17
apt install -y postgresql-16-pg-integrity-checksums   # PG 16
apt install -y postgresql-15-pg-integrity-checksums   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_integrity_checksums;
```

## Usage

Sources:

- [Current version source](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.1/README.md)
- [Current version source](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.1/pg_integrity_checksums.control)
- [Current version source](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.1/Changes)
- [Current version source](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.1/pg_integrity_checksums--2.9.0--2.9.1.sql)

- [2.9.0 Changes](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.0/Changes)
- [2.8.0 to 2.9.0 SQL](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.0/pg_integrity_checksums--2.8.0--2.9.0.sql)
- [2.9.0 control](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.0/pg_integrity_checksums.control)
- [2.9.0 function reference](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.9.0/docs/functions.md)
- [Current upstream](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/Changes)
- [Current upstream](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/pg_integrity_checksums--2.6.0--2.7.0.sql)

- [PGXN metadata](https://api.pgxn.org/dist/pg_integrity_checksums/2.7.0/META.json)
- [Official README](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/README.md)
- [Control file](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/pg_integrity_checksums.control)
- [Function reference](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/docs/functions.md)
- [Operations guide](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/docs/operations.md)
- [2.5 to 2.6 upgrade SQL](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/pg_integrity_checksums--2.5.0--2.6.0.sql)
- [2.4 upgrade SQL](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/pg_integrity_checksums--2.3.0--2.4.0.sql)
- [2.5 upgrade SQL](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/pg_integrity_checksums--2.4.0--2.5.0.sql)
- [Migration guide](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/MIGRATION.md)
- [Upgrade and baseline guide](https://api.pgxn.org/src/pg_integrity_checksums/pg_integrity_checksums-2.7.0/docs/installation.md)

`pg_integrity_checksums` computes physical and logical checksums for PostgreSQL pages, cells, tuples, tables, indexes and databases. This C extension supports PostgreSQL 12–19 upstream; the catalog's Pigsty packages target PostgreSQL 14–18. Installation and database-wide checks require a superuser.

### Install and migrate

```sql
CREATE EXTENSION pg_integrity_checksums;
```

### Version 2.3.0 and page verification

Version 2.3.0 adds `pg_page_checksum_status(regclass, integer)`, which compares a page's calculated 16-bit checksum with its stored `pd_checksum`. The following checks remain available after the upgrade:

```sql
SHOW data_checksums;
SELECT pg_page_checksum_status('public.orders'::regclass, 0);
```

The relation must exist and contain the requested block. Results are `ok` for a match, `mismatch` for a difference, `new` for an uninitialized page, or `checksums_disabled` when stored page checksums are disabled. Stored-page verification requires `data_checksums = on`; an invalid relation or block raises an error.

`pg_page_checksum()` only calculates PostgreSQL's 16-bit page checksum; it does not compare the stored value. Its result of zero can mean an uninitialized page or a calculated zero, so zero alone does not establish validity. The status function reads relation storage directly and reports the page it reads, rather than a persistent guarantee about later writes.

The FNV-1a 32/64-bit overloads introduced in 2.2.0 still return raw `bytea` digests alongside the legacy 32-bit SQL API. They are separate from PostgreSQL's 16-bit page-checksum format. Changing the selected algorithm or overload requires a matching baseline; the 2.3.0 page-status addition does not itself require recomputing all existing baselines.

### Migration from the old extension name

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

Relation-level functions require table-level `SELECT` and reject row-level-security protected relations because direct storage scans cannot apply RLS; column-only grants are insufficient. Database-level functions are superuser-only. `pg_integrity_checksums.workers` controls parallel scans; `pg_integrity_checksums.strict` makes database scans fail when a relation cannot be checked instead of skipping it. The extension does not require shared preload. Preserve a known-good baseline for the same algorithm and compatible schema, and account for physical rewrites when comparing physical checksums. These checksums are not cryptographic authentication.

### Upgrade and baseline changes in 2.7.0

Install matching files, reconnect and apply the SQL upgrade:

```sql
ALTER EXTENSION pg_integrity_checksums UPDATE TO '2.7.0';
SHOW pg_integrity_checksums.strict;
```

Database-level logical checksums now include qualified relation names, so every database logical baseline changes even if row contents do not. Some physical index baselines also change after index metadata masking was corrected. Recompute and review these baselines; physical checksums are still sensitive to real storage changes, including row locks and rolled-back writes. A checksum difference alone does not establish data corruption.

Tuple and cell checksums now check MVCC visibility and return NULL for invisible rows. Index expressions execute as the table owner in a restricted context, and serializable scans take the required conflict locks. Page-status checks retry disk mismatches; a relation dropped during a database scan is skipped with NOTICE even in strict mode. Other unreadable relations still follow `pg_integrity_checksums.strict`, which defaults to on. These semantics differ from the earlier 2.6.0 masking and baseline rules.

### 2.9.0 Algorithms, Sequences and Baselines

```sql
ALTER EXTENSION pg_integrity_checksums UPDATE TO '2.9.0';
```

Version 2.9.0 adds `crc32c` and `xxh3` to the generic algorithm functions and extends parallel workers to `pg_table_bucket_checksums()`. New sequence logical checksums compare a sequence's definition with `last_value` and `is_called`; new relation-page status functions verify all pages and forks in one call.

When `include_system = false`, database logical and physical checksums now exclude `information_schema` as well as `pg_catalog`. Because `information_schema` content varies by PostgreSQL version, every non-system database checksum from an older release changes after this correction: recompute and replace those stored baselines. Table, index and sequence checksum values are not changed by this fix, and CLI baselines already excluded `information_schema`.


### 2.9.1 Scan Changes

On PostgreSQL 17+, table, index, bucket and database scans use read streams; PostgreSQL 18 can use asynchronous I/O. Parallel workers process larger ranges. Version 2.9.1 does not change checksum values. Install the matching library and apply `ALTER EXTENSION pg_integrity_checksums UPDATE TO '2.9.1'`; the older 2.9.0 information_schema exclusion still requires replacing affected non-system database baselines.
