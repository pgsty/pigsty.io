---
title: "colnames"
linkTitle: "colnames"
description: "Return column names of a record or composite value"
weight: 4360
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/theory/colnames">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">theory/colnames</div>
    <div class="ext-card__desc">https://github.com/theory/colnames</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/colnames-1.7.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">colnames-1.7.1.tar.gz</div>
    <div class="ext-card__desc">colnames-1.7.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`colnames`**](/ext/e/colnames) | `1.7.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4360  | [**`colnames`**](/ext/e/colnames) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_describe`](/ext/e/pg_describe) `describe_resultset` `get_column` `pltoolbox` [`hstore`](/ext/e/hstore) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Distribution 1.7.1 retains extension version 1.7.0; colnames(record) returns name[]. No preload or runtime extension dependencies. Upstream release lists PG8.2-17; PG14-18 verified across all 16 PGSTY target platforms.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "14,15,16,17,18" >}} | `colnames` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.1` | {{< pgvers "18,17,16,15,14" >}} | `colnames_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-colnames` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 | AVAIL PIGSTY 1.7.1 1 |
@ el8.x86_64 18 colnames_18 colnames_18-1.7.1-1PGSTY.el8.x86_64.rpm pigsty 1.7.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/colnames_18-1.7.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 colnames_18 colnames_18-1.7.1-1PGSTY.el8.aarch64.rpm pigsty 1.7.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/colnames_18-1.7.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 colnames_18 colnames_18-1.7.1-1PGSTY.el9.x86_64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/colnames_18-1.7.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 colnames_18 colnames_18-1.7.1-1PGSTY.el9.aarch64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/colnames_18-1.7.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 colnames_18 colnames_18-1.7.1-1PGSTY.el10.x86_64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/colnames_18-1.7.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 colnames_18 colnames_18-1.7.1-1PGSTY.el10.aarch64.rpm pigsty 1.7.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/colnames_18-1.7.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~bookworm_amd64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~bookworm_arm64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~trixie_amd64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~trixie_arm64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~jammy_amd64.deb pigsty 1.7.1 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~jammy_arm64.deb pigsty 1.7.1 7.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~noble_amd64.deb pigsty 1.7.1 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~noble_arm64.deb pigsty 1.7.1 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~resolute_amd64.deb pigsty 1.7.1 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-colnames postgresql-18-colnames_1.7.1-1PGSTY~resolute_arm64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-18-colnames_1.7.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 colnames_17 colnames_17-1.7.1-1PGSTY.el8.x86_64.rpm pigsty 1.7.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/colnames_17-1.7.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 colnames_17 colnames_17-1.7.1-1PGSTY.el8.aarch64.rpm pigsty 1.7.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/colnames_17-1.7.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 colnames_17 colnames_17-1.7.1-1PGSTY.el9.x86_64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/colnames_17-1.7.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 colnames_17 colnames_17-1.7.1-1PGSTY.el9.aarch64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/colnames_17-1.7.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 colnames_17 colnames_17-1.7.1-1PGSTY.el10.x86_64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/colnames_17-1.7.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 colnames_17 colnames_17-1.7.1-1PGSTY.el10.aarch64.rpm pigsty 1.7.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/colnames_17-1.7.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~bookworm_amd64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~bookworm_arm64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~trixie_amd64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~trixie_arm64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~jammy_amd64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~jammy_arm64.deb pigsty 1.7.1 7.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~noble_amd64.deb pigsty 1.7.1 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~noble_arm64.deb pigsty 1.7.1 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~resolute_amd64.deb pigsty 1.7.1 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-colnames postgresql-17-colnames_1.7.1-1PGSTY~resolute_arm64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-17-colnames_1.7.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 colnames_16 colnames_16-1.7.1-1PGSTY.el8.x86_64.rpm pigsty 1.7.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/colnames_16-1.7.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 colnames_16 colnames_16-1.7.1-1PGSTY.el8.aarch64.rpm pigsty 1.7.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/colnames_16-1.7.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 colnames_16 colnames_16-1.7.1-1PGSTY.el9.x86_64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/colnames_16-1.7.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 colnames_16 colnames_16-1.7.1-1PGSTY.el9.aarch64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/colnames_16-1.7.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 colnames_16 colnames_16-1.7.1-1PGSTY.el10.x86_64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/colnames_16-1.7.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 colnames_16 colnames_16-1.7.1-1PGSTY.el10.aarch64.rpm pigsty 1.7.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/colnames_16-1.7.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~bookworm_amd64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~bookworm_arm64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~trixie_amd64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~trixie_arm64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~jammy_amd64.deb pigsty 1.7.1 7.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~jammy_arm64.deb pigsty 1.7.1 7.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~noble_amd64.deb pigsty 1.7.1 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~noble_arm64.deb pigsty 1.7.1 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~resolute_amd64.deb pigsty 1.7.1 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-colnames postgresql-16-colnames_1.7.1-1PGSTY~resolute_arm64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-16-colnames_1.7.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 colnames_15 colnames_15-1.7.1-1PGSTY.el8.x86_64.rpm pigsty 1.7.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/colnames_15-1.7.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 colnames_15 colnames_15-1.7.1-1PGSTY.el8.aarch64.rpm pigsty 1.7.1 19.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/colnames_15-1.7.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 colnames_15 colnames_15-1.7.1-1PGSTY.el9.x86_64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/colnames_15-1.7.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 colnames_15 colnames_15-1.7.1-1PGSTY.el9.aarch64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/colnames_15-1.7.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 colnames_15 colnames_15-1.7.1-1PGSTY.el10.x86_64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/colnames_15-1.7.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 colnames_15 colnames_15-1.7.1-1PGSTY.el10.aarch64.rpm pigsty 1.7.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/colnames_15-1.7.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~bookworm_amd64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~bookworm_arm64.deb pigsty 1.7.1 8.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~trixie_amd64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~trixie_arm64.deb pigsty 1.7.1 8.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~jammy_amd64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~jammy_arm64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~noble_amd64.deb pigsty 1.7.1 7.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~noble_arm64.deb pigsty 1.7.1 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~resolute_amd64.deb pigsty 1.7.1 7.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-colnames postgresql-15-colnames_1.7.1-1PGSTY~resolute_arm64.deb pigsty 1.7.1 8.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-15-colnames_1.7.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 colnames_14 colnames_14-1.7.1-1PGSTY.el8.x86_64.rpm pigsty 1.7.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/colnames_14-1.7.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 colnames_14 colnames_14-1.7.1-1PGSTY.el8.aarch64.rpm pigsty 1.7.1 19.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/colnames_14-1.7.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 colnames_14 colnames_14-1.7.1-1PGSTY.el9.x86_64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/colnames_14-1.7.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 colnames_14 colnames_14-1.7.1-1PGSTY.el9.aarch64.rpm pigsty 1.7.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/colnames_14-1.7.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 colnames_14 colnames_14-1.7.1-1PGSTY.el10.x86_64.rpm pigsty 1.7.1 19.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/colnames_14-1.7.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 colnames_14 colnames_14-1.7.1-1PGSTY.el10.aarch64.rpm pigsty 1.7.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/colnames_14-1.7.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~bookworm_amd64.deb pigsty 1.7.1 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~bookworm_arm64.deb pigsty 1.7.1 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~trixie_amd64.deb pigsty 1.7.1 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~trixie_arm64.deb pigsty 1.7.1 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~jammy_amd64.deb pigsty 1.7.1 12.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~jammy_arm64.deb pigsty 1.7.1 12.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~noble_amd64.deb pigsty 1.7.1 11.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~noble_arm64.deb pigsty 1.7.1 11.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~resolute_amd64.deb pigsty 1.7.1 11.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-colnames postgresql-14-colnames_1.7.1-1PGSTY~resolute_arm64.deb pigsty 1.7.1 12.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/colnames/postgresql-14-colnames_1.7.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `colnames` using `pig build`:

```bash
pig build pkg colnames         # build RPM / DEB packages
```


## Install

You can install `colnames` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install colnames;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y colnames -v 18  # PG 18
pig ext install -y colnames -v 17  # PG 17
pig ext install -y colnames -v 16  # PG 16
pig ext install -y colnames -v 15  # PG 15
pig ext install -y colnames -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y colnames_18       # PG 18
dnf install -y colnames_17       # PG 17
dnf install -y colnames_16       # PG 16
dnf install -y colnames_15       # PG 15
dnf install -y colnames_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-colnames   # PG 18
apt install -y postgresql-17-colnames   # PG 17
apt install -y postgresql-16-colnames   # PG 16
apt install -y postgresql-15-colnames   # PG 15
apt install -y postgresql-14-colnames   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION colnames;
```

## Usage

Sources:

- [Release documentation](https://github.com/theory/colnames/blob/v1.7.1/doc/colnames.md)
- [SQL function](https://github.com/theory/colnames/blob/v1.7.1/sql/colnames.sql)
- [C implementation](https://github.com/theory/colnames/blob/v1.7.1/src/colnames.c)
- [Extension control](https://github.com/theory/colnames/blob/v1.7.1/colnames.control)
- [Release notes](https://github.com/theory/colnames/blob/v1.7.1/Changes)

`colnames` provides `colnames(record)`, returning the input record's field names as a `name[]`. Use it in generic triggers or dynamic SQL helpers that need a composite value's structure without converting its values to JSON. Distribution version `1.7.1` retains extension version `1.7.0`.

### Core Workflow

```sql
CREATE EXTENSION colnames;

SELECT colnames(ROW(1, 'foo', 458.0));
SELECT colnames(t)
FROM (SELECT 1 AS id, 'Ada'::text AS name) AS t;

CREATE TYPE contact AS (id integer, name text);
SELECT colnames(NULL::contact);
```

The three calls return `{f1,f2,f3}`, `{id,name}`, and `{id,name}` respectively. Anonymous rows receive generated names; named rows preserve their attribute names. A typed null works because its composite type supplies the descriptor. An untyped null does not identify a composite type.

### Function Behavior

`colnames(record)` returns `name[]`, is `STABLE`, and is deliberately not `STRICT`. It preserves column order and quoted identifier spelling, omits dropped columns, and returns an empty array for an empty composite type. It reads the row descriptor rather than table data.

### Operational Notes

The extension has no runtime extension dependencies and needs no preload or restart. Its C library loads when the function is called. Creating the extension requires a superuser because the control file does not mark it trusted. It is relocatable and can be installed in a chosen schema or moved with `ALTER EXTENSION colnames SET SCHEMA`.

Release `1.7.1` documents PostgreSQL 8.2–17 compatibility. The PGSTY package targets PostgreSQL 14–18; PostgreSQL 18 acceptance comes from package and regression testing rather than that release's compatibility statement.

PostgreSQL 9.3 and later also offer `row_to_json` with `json_object_keys` as a pure SQL alternative. If discovered names are used in dynamic SQL, quote identifiers and keep values parameterized.
