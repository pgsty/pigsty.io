---
title: "zstd"
linkTitle: "zstd"
description: "Zstandard compression algorithm implementation in PostgreSQL"
weight: 4030
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/grahamedgecombe/pgzstd">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">grahamedgecombe/pgzstd</div>
    <div class="ext-card__desc">https://github.com/grahamedgecombe/pgzstd</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgzstd-1.1.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgzstd-1.1.2.tar.gz</div>
    <div class="ext-card__desc">pgzstd-1.1.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_zstd`**](/ext/e/zstd) | `1.1.2` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4030  | [**`zstd`**](/ext/e/zstd) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) [`pgjq`](/ext/e/pgjq) [`pgjwt`](/ext/e/pgjwt) [`pg_smtp_client`](/ext/e/pg_smtp_client) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> +varatt.h


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_zstd` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_zstd_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-zstd` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
@ el8.x86_64 18 pg_zstd_18 pg_zstd_18-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_zstd_18-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_zstd_18 pg_zstd_18-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_zstd_18-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_zstd_18 pg_zstd_18-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_zstd_18-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_zstd_18 pg_zstd_18-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 11.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_zstd_18-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_zstd_18 pg_zstd_18-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_zstd_18-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_zstd_18 pg_zstd_18-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_zstd_18-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~trixie_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~trixie_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~jammy_amd64.deb pigsty 1.1.2 12.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~jammy_arm64.deb pigsty 1.1.2 12.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~noble_amd64.deb pigsty 1.1.2 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-zstd postgresql-18-zstd_1.1.2-2PIGSTY~noble_arm64.deb pigsty 1.1.2 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-18-zstd_1.1.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_zstd_17 pg_zstd_17-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_zstd_17-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_zstd_17 pg_zstd_17-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_zstd_17-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_zstd_17 pg_zstd_17-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 12.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_zstd_17-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_zstd_17 pg_zstd_17-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_zstd_17-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_zstd_17 pg_zstd_17-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_zstd_17-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_zstd_17 pg_zstd_17-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 12.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_zstd_17-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~trixie_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~trixie_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~jammy_amd64.deb pigsty 1.1.2 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~jammy_arm64.deb pigsty 1.1.2 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~noble_amd64.deb pigsty 1.1.2 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-zstd postgresql-17-zstd_1.1.2-2PIGSTY~noble_arm64.deb pigsty 1.1.2 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-17-zstd_1.1.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_zstd_16 pg_zstd_16-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_zstd_16-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_zstd_16 pg_zstd_16-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_zstd_16-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_zstd_16 pg_zstd_16-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 12.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_zstd_16-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_zstd_16 pg_zstd_16-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_zstd_16-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_zstd_16 pg_zstd_16-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_zstd_16-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_zstd_16 pg_zstd_16-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_zstd_16-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~trixie_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~trixie_arm64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~jammy_amd64.deb pigsty 1.1.2 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~jammy_arm64.deb pigsty 1.1.2 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~noble_amd64.deb pigsty 1.1.2 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-zstd postgresql-16-zstd_1.1.2-2PIGSTY~noble_arm64.deb pigsty 1.1.2 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-16-zstd_1.1.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_zstd_15 pg_zstd_15-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_zstd_15-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_zstd_15 pg_zstd_15-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_zstd_15-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_zstd_15 pg_zstd_15-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 12.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_zstd_15-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_zstd_15 pg_zstd_15-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_zstd_15-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_zstd_15 pg_zstd_15-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_zstd_15-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_zstd_15 pg_zstd_15-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_zstd_15-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~trixie_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~trixie_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~jammy_amd64.deb pigsty 1.1.2 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~jammy_arm64.deb pigsty 1.1.2 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~noble_amd64.deb pigsty 1.1.2 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-zstd postgresql-15-zstd_1.1.2-2PIGSTY~noble_arm64.deb pigsty 1.1.2 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-15-zstd_1.1.2-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_zstd_14 pg_zstd_14-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_zstd_14-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_zstd_14 pg_zstd_14-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 12.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_zstd_14-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_zstd_14 pg_zstd_14-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 12.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_zstd_14-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_zstd_14 pg_zstd_14-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 11.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_zstd_14-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_zstd_14 pg_zstd_14-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_zstd_14-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_zstd_14 pg_zstd_14-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 11.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_zstd_14-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~trixie_amd64.deb pigsty 1.1.2 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~trixie_arm64.deb pigsty 1.1.2 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~jammy_amd64.deb pigsty 1.1.2 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~jammy_arm64.deb pigsty 1.1.2 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~noble_amd64.deb pigsty 1.1.2 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-zstd postgresql-14-zstd_1.1.2-2PIGSTY~noble_arm64.deb pigsty 1.1.2 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-zstd/postgresql-14-zstd_1.1.2-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_zstd` using `pig build`:

```bash
pig build pkg pg_zstd         # build RPM / DEB packages
```


## Install

You can install `pg_zstd` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_zstd;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_zstd -v 18  # PG 18
pig ext install -y pg_zstd -v 17  # PG 17
pig ext install -y pg_zstd -v 16  # PG 16
pig ext install -y pg_zstd -v 15  # PG 15
pig ext install -y pg_zstd -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_zstd_18       # PG 18
dnf install -y pg_zstd_17       # PG 17
dnf install -y pg_zstd_16       # PG 16
dnf install -y pg_zstd_15       # PG 15
dnf install -y pg_zstd_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-zstd   # PG 18
apt install -y postgresql-17-zstd   # PG 17
apt install -y postgresql-16-zstd   # PG 16
apt install -y postgresql-15-zstd   # PG 15
apt install -y postgresql-14-zstd   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION zstd;
```


## Usage

| Function                                                                             | Return Type |
|--------------------------------------------------------------------------------------|-------------|
| <code>zstd_compress(*data* bytea [, *dictionary* bytea [, *level* integer ]])</code> | `bytea`     |
| <code>zstd_decompress(*data* bytea [, *dictionary* bytea ])</code>                   | `bytea`     |
| <code>zstd_length(*data* bytea)</code>                                               | `integer`   |

`zstd_compress` compresses the provided `data` and returns a Zstandard frame. A
preset `dictionary` may also be provided. The default compression `level` may
also be overriden, valid values range from `1` (best speed) to `22` (best
compression). The default level is `3`.

If you want to override the compression level without using a dictionary, set
`dictionary` to `NULL`.

`zstd_decompress` decompresses the provided Zstandard frame in `data` and
returns the uncompressed data. A preset `dictionary`, matching the dictionary
used to compress the data, may also be provided.

`zstd_length` returns the decompressed length of the provided Zstandard frame.
If `ZSTD_getFrameContentSize()` is available it returns `NULL` if the length is
unknown. If unavailable, it isn't possible to distinguish the error, unknown
decompressed length and zero decompressed length cases.


### Example

Basic compress/decompress example:

```sql
CREATE EXTENSION zstd;

SELECT zstd_compress('hello world');
-- zstd_compress
-- --------------------------------------------
-- \x28b52ffd200b59000068656c6c6f20776f726c64

SELECT convert_from(zstd_decompress('\x28b52ffd200b59000068656c6c6f20776f726c64'), 'utf-8');
-- convert_from
-- --------------
--  hello world
```

Compress with level (`1` for best speed, `22` for best compression, default to `3`)

```sql
CREATE EXTENSION zstd;

SELECT zstd_compress('hello world',  NULL, 10);
-- zstd_compress
-- --------------------------------------------
-- \x28b52ffd200b59000068656c6c6f20776f726c64

SELECT convert_from(zstd_decompress('\x28b52ffd200b59000068656c6c6f20776f726c64'), 'utf-8');
-- convert_from
-- --------------
--  hello world
```
