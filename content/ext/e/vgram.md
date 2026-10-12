---
title: "vgram"
linkTitle: "vgram"
description: "Variable-length gram GIN indexes and statistics for LIKE/ILIKE search"
weight: 2130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/akorotkov/vgram">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">akorotkov/vgram</div>
    <div class="ext-card__desc">https://github.com/akorotkov/vgram</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/vgram-1.0-babae3775c9c.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">vgram-1.0-babae3775c9c.tar.gz</div>
    <div class="ext-card__desc">vgram-1.0-babae3775c9c.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`vgram`**](/ext/e/vgram) | `1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2130  | [**`vgram`**](/ext/e/vgram) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`pg_bigm`](/ext/e/pg_bigm) [`biscuit`](/ext/e/biscuit) [`pgroonga`](/ext/e/pgroonga) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Collect corpus-specific q-gram statistics before creating the GIN index; upstream supports PostgreSQL 13+.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `vgram` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `vgram_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-vgram` | - |
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
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 vgram_18 vgram_18-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 49.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vgram_18-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vgram_18 vgram_18-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 49.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vgram_18-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vgram_18 vgram_18-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 50.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vgram_18-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vgram_18 vgram_18-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vgram_18-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vgram_18 vgram_18-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 50.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vgram_18-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vgram_18 vgram_18-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 50.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vgram_18-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 38.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 38.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 40.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 40.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 39.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 39.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 39.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vgram postgresql-18-vgram_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 39.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-18-vgram_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 vgram_17 vgram_17-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 49.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vgram_17-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vgram_17 vgram_17-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 49.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vgram_17-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vgram_17 vgram_17-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vgram_17-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vgram_17 vgram_17-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vgram_17-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vgram_17 vgram_17-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vgram_17-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vgram_17 vgram_17-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vgram_17-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 43.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 43.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 39.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-vgram postgresql-17-vgram_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 39.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-17-vgram_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 vgram_16 vgram_16-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 49.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vgram_16-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vgram_16 vgram_16-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 49.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vgram_16-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vgram_16 vgram_16-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vgram_16-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vgram_16 vgram_16-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vgram_16-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vgram_16 vgram_16-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vgram_16-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vgram_16 vgram_16-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 50.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vgram_16-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 37.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 38.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 43.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 43.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 39.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-vgram postgresql-16-vgram_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 39.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-16-vgram_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 vgram_15 vgram_15-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 49.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vgram_15-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vgram_15 vgram_15-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vgram_15-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vgram_15 vgram_15-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vgram_15-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vgram_15 vgram_15-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vgram_15-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vgram_15 vgram_15-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 50.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vgram_15-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vgram_15 vgram_15-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 50.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vgram_15-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 38.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 37.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 38.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 38.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 44.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 44.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 39.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 40.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 39.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-vgram postgresql-15-vgram_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 39.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-15-vgram_1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 vgram_14 vgram_14-1.0-1PGSTY.el8.x86_64.rpm pigsty 1.0 49.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vgram_14-1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vgram_14 vgram_14-1.0-1PGSTY.el8.aarch64.rpm pigsty 1.0 49.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vgram_14-1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vgram_14 vgram_14-1.0-1PGSTY.el9.x86_64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vgram_14-1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vgram_14 vgram_14-1.0-1PGSTY.el9.aarch64.rpm pigsty 1.0 50.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vgram_14-1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vgram_14 vgram_14-1.0-1PGSTY.el10.x86_64.rpm pigsty 1.0 50.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vgram_14-1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vgram_14 vgram_14-1.0-1PGSTY.el10.aarch64.rpm pigsty 1.0 50.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vgram_14-1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~bookworm_amd64.deb pigsty 1.0 41.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~bookworm_arm64.deb pigsty 1.0 41.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~trixie_amd64.deb pigsty 1.0 41.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~trixie_arm64.deb pigsty 1.0 41.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~jammy_amd64.deb pigsty 1.0 47.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~jammy_arm64.deb pigsty 1.0 47.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~noble_amd64.deb pigsty 1.0 43.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~noble_arm64.deb pigsty 1.0 43.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~resolute_amd64.deb pigsty 1.0 42.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-vgram postgresql-14-vgram_1.0-1PGSTY~resolute_arm64.deb pigsty 1.0 42.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vgram/postgresql-14-vgram_1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `vgram` using `pig build`:

```bash
pig build pkg vgram         # build RPM / DEB packages
```


## Install

You can install `vgram` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install vgram;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y vgram -v 18  # PG 18
pig ext install -y vgram -v 17  # PG 17
pig ext install -y vgram -v 16  # PG 16
pig ext install -y vgram -v 15  # PG 15
pig ext install -y vgram -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y vgram_18       # PG 18
dnf install -y vgram_17       # PG 17
dnf install -y vgram_16       # PG 16
dnf install -y vgram_15       # PG 15
dnf install -y vgram_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-vgram   # PG 18
apt install -y postgresql-17-vgram   # PG 17
apt install -y postgresql-16-vgram   # PG 16
apt install -y postgresql-15-vgram   # PG 15
apt install -y postgresql-14-vgram   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION vgram;
```

## Usage

Sources:

- [Official README](https://github.com/akorotkov/vgram/blob/babae3775c9c21bcf66f55c434642af3eeb0ce0d/README.md)
- [Official extension SQL](https://github.com/akorotkov/vgram/blob/babae3775c9c21bcf66f55c434642af3eeb0ce0d/vgram--1.0.sql)
- [Official GIN implementation](https://github.com/akorotkov/vgram/blob/babae3775c9c21bcf66f55c434642af3eeb0ce0d/vgram_gin.c)

`vgram` accelerates `LIKE` and `ILIKE` substring searches with GIN indexes built from variable-length q-grams. Unlike fixed trigrams, it learns frequent short grams from the target corpus and indexes longer or rarer grams, which can improve selectivity for a particular data distribution.

### Build a Corpus-Specific Index

Version `1.0` requires PostgreSQL 13 or later. In psql, collect frequent grams, save the result, and pass it to the `vgram_gin_ops` options:

```sql
CREATE EXTENSION vgram;

SELECT qgram_stat(title, 2, 4, 0.05) AS vgrams
FROM documents
\gset

CREATE INDEX documents_title_vgram_idx
ON documents USING gin (
  title vgram_gin_ops (minq=2, maxq=4, vgrams=:'vgrams')
);

SELECT *
FROM documents
WHERE title ILIKE '%indexing%';
```

`minq` and `maxq` bound extracted gram lengths. The threshold passed to `qgram_stat()` marks grams at or above that corpus frequency as too common to index. Use `get_vgrams()` to inspect extraction for a candidate value and learned gram array.

### Objects and Advanced Statistics

- `qgram_stat(text, int, int, float8)` aggregates frequent q-grams.
- `get_vgrams(text, int, int, text[])` shows the grams selected for text.
- `vgram_gin_ops` indexes ordinary `text` for `LIKE` and `ILIKE`.
- `vgram_text` is text-compatible but installs custom frequency statistics and selectivity estimation.
- `vgram_gin_ops2` is the GIN operator class for `vgram_text`.

### Maintenance Boundaries

The learned option array is embedded in the index definition and can be very large. It reflects the sample at build time; major language or distribution changes require new statistics, comparison of recall/plans, and usually `REINDEX` or a replacement index. GIN candidates are rechecked, but overly common or too-short patterns may still fall back to broad scans. Benchmark build time, index size, write amplification, pending-list behavior, VACUUM, collation, multibyte text, case folding, and planner estimates. Keep the training query and parameters reproducible so replicas and rebuilt environments use the same operator-class options.
