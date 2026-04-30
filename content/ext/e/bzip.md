---
title: "bzip"
linkTitle: "bzip"
description: "Bzip compression and decompression"
weight: 4020
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/steve-chavez/pg_bzip">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">steve-chavez/pg_bzip</div>
    <div class="ext-card__desc">https://github.com/steve-chavez/pg_bzip</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_bzip-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_bzip-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_bzip-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_bzip`**](/ext/e/bzip) | `1.0.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4020  | [**`bzip`**](/ext/e/bzip) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`gzip`](/ext/e/gzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) [`pgjq`](/ext/e/pgjq) [`pgjwt`](/ext/e/pgjwt) [`pg_smtp_client`](/ext/e/pg_smtp_client) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_bzip` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_bzip_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-bzip` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_bzip_18 pg_bzip_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bzip_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_bzip_18 pg_bzip_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bzip_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_bzip_18 pg_bzip_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bzip_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_bzip_18 pg_bzip_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bzip_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_bzip_18 pg_bzip_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bzip_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_bzip_18 pg_bzip_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bzip_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 13.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-bzip postgresql-18-bzip_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-18-bzip_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_bzip_17 pg_bzip_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bzip_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_bzip_17 pg_bzip_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bzip_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_bzip_17 pg_bzip_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bzip_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_bzip_17 pg_bzip_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bzip_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_bzip_17 pg_bzip_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bzip_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_bzip_17 pg_bzip_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bzip_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 14.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 14.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-bzip postgresql-17-bzip_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-17-bzip_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_bzip_16 pg_bzip_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bzip_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_bzip_16 pg_bzip_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bzip_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_bzip_16 pg_bzip_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bzip_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_bzip_16 pg_bzip_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bzip_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_bzip_16 pg_bzip_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bzip_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_bzip_16 pg_bzip_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bzip_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 14.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-bzip postgresql-16-bzip_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-16-bzip_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_bzip_15 pg_bzip_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bzip_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_bzip_15 pg_bzip_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bzip_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_bzip_15 pg_bzip_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bzip_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_bzip_15 pg_bzip_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bzip_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_bzip_15 pg_bzip_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bzip_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_bzip_15 pg_bzip_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bzip_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 14.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-bzip postgresql-15-bzip_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-15-bzip_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_bzip_14 pg_bzip_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bzip_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_bzip_14 pg_bzip_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bzip_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_bzip_14 pg_bzip_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bzip_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_bzip_14 pg_bzip_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bzip_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_bzip_14 pg_bzip_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bzip_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_bzip_14 pg_bzip_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bzip_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 14.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 14.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-bzip postgresql-14-bzip_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 14.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bzip/postgresql-14-bzip_1.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_bzip` using `pig build`:

```bash
pig build pkg pg_bzip         # build RPM / DEB packages
```


## Install

You can install `pg_bzip` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_bzip;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_bzip -v 18  # PG 18
pig ext install -y pg_bzip -v 17  # PG 17
pig ext install -y pg_bzip -v 16  # PG 16
pig ext install -y pg_bzip -v 15  # PG 15
pig ext install -y pg_bzip -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_bzip_18       # PG 18
dnf install -y pg_bzip_17       # PG 17
dnf install -y pg_bzip_16       # PG 16
dnf install -y pg_bzip_15       # PG 15
dnf install -y pg_bzip_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-bzip   # PG 18
apt install -y postgresql-17-bzip   # PG 17
apt install -y postgresql-16-bzip   # PG 16
apt install -y postgresql-15-bzip   # PG 15
apt install -y postgresql-14-bzip   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION bzip;
```




## Usage

> [bzip: Bzip compression and decompression](https://github.com/steve-chavez/pg_bzip)

### Functions

- `bzcat(data bytea) returns bytea` -- Decompress bzip2 data, similar to the `bzcat` command.
- `bzip2(data bytea, compression_level int default 9) returns bytea` -- Compress data using bzip2.

### Examples

Decompress a bzip2-compressed file:

```sql
SELECT convert_from(bzcat(pg_read_binary_file('/path/to/data.csv.bz2')), 'utf8') AS contents;
```

Compress data with bzip2:

```sql
SELECT bzip2(repeat('my text to be compressed', 1000)::bytea) AS compressed;
```

Compress with a custom compression level (1-9):

```sql
SELECT bzip2('some data'::bytea, 5);
```
