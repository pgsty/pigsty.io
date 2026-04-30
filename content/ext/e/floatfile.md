---
title: "floatfile"
linkTitle: "floatfile"
description: "Simple file storage for arrays of floats"
weight: 4280
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pjungwir/floatfile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pjungwir/floatfile</div>
    <div class="ext-card__desc">https://github.com/pjungwir/floatfile</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/floatfile-1.3.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">floatfile-1.3.1.tar.gz</div>
    <div class="ext-card__desc">floatfile-1.3.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`floatfile`**](/ext/e/floatfile) | `1.3.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4280  | [**`floatfile`**](/ext/e/floatfile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_ivm`](/ext/e/pg_ivm) [`pg_bulkload`](/ext/e/pg_bulkload) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `floatfile` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `floatfile_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-floatfile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 floatfile_18 floatfile_18-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatfile_18-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 floatfile_18 floatfile_18-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatfile_18-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 floatfile_18 floatfile_18-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatfile_18-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 floatfile_18 floatfile_18-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatfile_18-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 floatfile_18 floatfile_18-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatfile_18-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 floatfile_18 floatfile_18-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatfile_18-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 44.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 43.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 44.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 43.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 46.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 45.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 46.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-floatfile postgresql-18-floatfile_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 45.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-18-floatfile_1.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 floatfile_17 floatfile_17-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatfile_17-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 floatfile_17 floatfile_17-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatfile_17-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 floatfile_17 floatfile_17-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatfile_17-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 floatfile_17 floatfile_17-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatfile_17-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 floatfile_17 floatfile_17-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatfile_17-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 floatfile_17 floatfile_17-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatfile_17-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 44.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 43.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 44.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 43.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 47.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 47.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 46.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-floatfile postgresql-17-floatfile_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 45.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-17-floatfile_1.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 floatfile_16 floatfile_16-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatfile_16-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 floatfile_16 floatfile_16-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatfile_16-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 floatfile_16 floatfile_16-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatfile_16-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 floatfile_16 floatfile_16-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatfile_16-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 floatfile_16 floatfile_16-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatfile_16-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 floatfile_16 floatfile_16-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatfile_16-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 44.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 42.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 44.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 43.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 47.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 47.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 46.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-floatfile postgresql-16-floatfile_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 45.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-16-floatfile_1.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 floatfile_15 floatfile_15-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 27.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatfile_15-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 floatfile_15 floatfile_15-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatfile_15-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 floatfile_15 floatfile_15-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 28.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatfile_15-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 floatfile_15 floatfile_15-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatfile_15-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 floatfile_15 floatfile_15-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 28.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatfile_15-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 floatfile_15 floatfile_15-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 26.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatfile_15-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 44.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 43.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 45.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 43.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 48.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 47.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 46.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-floatfile postgresql-15-floatfile_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 45.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-15-floatfile_1.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 floatfile_14 floatfile_14-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 27.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatfile_14-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 floatfile_14 floatfile_14-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 27.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatfile_14-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 floatfile_14 floatfile_14-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 28.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatfile_14-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 floatfile_14 floatfile_14-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatfile_14-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 floatfile_14 floatfile_14-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 28.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatfile_14-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 floatfile_14 floatfile_14-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 26.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatfile_14-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 44.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 43.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 44.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 43.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 48.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 47.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 46.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-floatfile postgresql-14-floatfile_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 45.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatfile/postgresql-14-floatfile_1.3.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `floatfile` using `pig build`:

```bash
pig build pkg floatfile         # build DEB packages
```


## Install

You can install `floatfile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install floatfile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y floatfile -v 18  # PG 18
pig ext install -y floatfile -v 17  # PG 17
pig ext install -y floatfile -v 16  # PG 16
pig ext install -y floatfile -v 15  # PG 15
pig ext install -y floatfile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y floatfile_18       # PG 18
dnf install -y floatfile_17       # PG 17
dnf install -y floatfile_16       # PG 16
dnf install -y floatfile_15       # PG 15
dnf install -y floatfile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-floatfile   # PG 18
apt install -y postgresql-17-floatfile   # PG 17
apt install -y postgresql-16-floatfile   # PG 16
apt install -y postgresql-15-floatfile   # PG 15
apt install -y postgresql-14-floatfile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION floatfile;
```




## Usage

> [floatfile: Float array file I/O for PostgreSQL](https://github.com/pjungwir/floatfile)

Store float arrays in individual files for very fast querying without MVCC overhead. Ideal for time series data requiring low-latency reads and low-cost appends.

### Functions

#### Save a float array to a file

```sql
SELECT save_floatfile('my_data', ARRAY[1.0, 2.0, 3.0, 4.0]::float[]);
```

#### Load a float array from a file

```sql
SELECT load_floatfile('my_data');
-- {1,2,3,4}
```

#### Append values to an existing file

```sql
SELECT extend_floatfile('my_data', ARRAY[5.0, 6.0]::float[]);
```

#### Delete a floatfile

```sql
SELECT drop_floatfile('my_data');
```

### Tablespace Variants

All functions accept an optional tablespace name as first argument:

```sql
SELECT save_floatfile('my_ts', 'my_data', ARRAY[1.0, 2.0]::float[]);
SELECT load_floatfile('my_ts', 'my_data');
SELECT extend_floatfile('my_ts', 'my_data', ARRAY[3.0]::float[]);
SELECT drop_floatfile('my_ts', 'my_data');
```

### Histogram Functions

Compute histograms directly from floatfiles (useful when arrays exceed the 1GB Postgres limit):

```sql
SELECT floatfile_to_hist('my_data', 0.0, 1.0, 10);
-- Returns int[] with histogram counts

SELECT floatfile_to_hist2d('xs_file', 'ys_file', 0.0, 0.0, 1.0, 1.0, 10, 10);
-- Returns 2D int[] histogram
```

### Concurrency

Functions use PostgreSQL advisory locks: `load_floatfile` takes a shared lock; `save`, `extend`, and `drop` take exclusive locks.
