---
title: "hashlib"
linkTitle: "hashlib"
description: "Stable hash functions for Postgres"
weight: 4400
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/markokr/pghashlib">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">markokr/pghashlib</div>
    <div class="ext-card__desc">https://github.com/markokr/pghashlib</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_hashlib-1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_hashlib-1.1.tar.gz</div>
    <div class="ext-card__desc">pg_hashlib-1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_hashlib`**](/ext/e/hashlib) | `1.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4400  | [**`hashlib`**](/ext/e/hashlib) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`xxhash`](/ext/e/xxhash) [`shacrypt`](/ext/e/shacrypt) [`cryptint`](/ext/e/cryptint) [`pguecc`](/ext/e/pguecc) [`pgcrypto`](/ext/e/pgcrypto) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> build-deps: python3-docutils


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_hashlib` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_hashlib_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-hashlib` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
@ el8.x86_64 18 pg_hashlib_18 pg_hashlib_18-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 27.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashlib_18-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_hashlib_18 pg_hashlib_18-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashlib_18-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_hashlib_18 pg_hashlib_18-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashlib_18-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_hashlib_18 pg_hashlib_18-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashlib_18-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_hashlib_18 pg_hashlib_18-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashlib_18-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_hashlib_18 pg_hashlib_18-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashlib_18-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 45.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 46.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 45.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 46.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 49.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 49.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 47.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 48.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 43.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-hashlib postgresql-18-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 43.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-18-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_hashlib_17 pg_hashlib_17-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashlib_17-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_hashlib_17 pg_hashlib_17-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashlib_17-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_hashlib_17 pg_hashlib_17-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashlib_17-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_hashlib_17 pg_hashlib_17-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashlib_17-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_hashlib_17 pg_hashlib_17-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashlib_17-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_hashlib_17 pg_hashlib_17-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashlib_17-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 45.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 46.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 49.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 50.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 48.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 48.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 43.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-hashlib postgresql-17-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 43.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-17-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_hashlib_16 pg_hashlib_16-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashlib_16-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_hashlib_16 pg_hashlib_16-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashlib_16-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_hashlib_16 pg_hashlib_16-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashlib_16-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_hashlib_16 pg_hashlib_16-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashlib_16-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_hashlib_16 pg_hashlib_16-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashlib_16-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_hashlib_16 pg_hashlib_16-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashlib_16-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 45.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 46.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 49.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 50.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 48.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 48.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 43.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-hashlib postgresql-16-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 43.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-16-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_hashlib_15 pg_hashlib_15-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashlib_15-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_hashlib_15 pg_hashlib_15-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashlib_15-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_hashlib_15 pg_hashlib_15-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashlib_15-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_hashlib_15 pg_hashlib_15-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 27.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashlib_15-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_hashlib_15 pg_hashlib_15-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashlib_15-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_hashlib_15 pg_hashlib_15-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashlib_15-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 45.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 45.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 46.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 50.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 50.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 48.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 48.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 44.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-hashlib postgresql-15-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 44.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-15-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_hashlib_14 pg_hashlib_14-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_hashlib_14-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_hashlib_14 pg_hashlib_14-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_hashlib_14-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_hashlib_14 pg_hashlib_14-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_hashlib_14-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_hashlib_14 pg_hashlib_14-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 27.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_hashlib_14-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_hashlib_14 pg_hashlib_14-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_hashlib_14-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_hashlib_14 pg_hashlib_14-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_hashlib_14-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 45.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 45.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 46.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 50.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 50.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 48.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 48.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 43.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-hashlib postgresql-14-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 44.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-hashlib/postgresql-14-pg-hashlib_1.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_hashlib` using `pig build`:

```bash
pig build pkg pg_hashlib         # build RPM / DEB packages
```


## Install

You can install `pg_hashlib` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_hashlib;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_hashlib -v 18  # PG 18
pig ext install -y pg_hashlib -v 17  # PG 17
pig ext install -y pg_hashlib -v 16  # PG 16
pig ext install -y pg_hashlib -v 15  # PG 15
pig ext install -y pg_hashlib -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_hashlib_18       # PG 18
dnf install -y pg_hashlib_17       # PG 17
dnf install -y pg_hashlib_16       # PG 16
dnf install -y pg_hashlib_15       # PG 15
dnf install -y pg_hashlib_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-hashlib   # PG 18
apt install -y postgresql-17-pg-hashlib   # PG 17
apt install -y postgresql-16-pg-hashlib   # PG 16
apt install -y postgresql-15-pg-hashlib   # PG 15
apt install -y postgresql-14-pg-hashlib   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION hashlib;
```




## Usage

> [hashlib: Stable hash functions library for PostgreSQL](https://github.com/markokr/pghashlib)

Provides stable hash functions whose implementations do not change across PostgreSQL versions.

### String Hashing (32-bit)

```sql
SELECT hash_string('hello', 'crc32');
SELECT hash_string('hello', 'murmur3');
```

With optional initial value:

```sql
SELECT hash_string('hello', 'crc32', 42);
```

### String Hashing (64-bit)

```sql
SELECT hash64_string('hello', 'city64');
SELECT hash64_string('hello', 'siphash24');
SELECT hash64_string('hello', 'lookup3');
```

### String Hashing (128-bit)

```sql
SELECT hash128_string('hello', 'md5');
SELECT hash128_string('hello', 'city128');
SELECT hash128_string('hello', 'spooky');
```

### Integer Hashing

```sql
SELECT hash_int4(42);        -- 32-bit hash of 32-bit integer
SELECT hash_int8(42::bigint); -- 64-bit hash of 64-bit integer
```

### Available Algorithms

| Algorithm | CPU-indep | Bits | Description |
|-----------|-----------|------|-------------|
| `crc32` | yes | 32 | CRC32 |
| `murmur3` | no | 32 | MurmurHash v3 |
| `md5` | yes | 128 | MD5 |
| `city64` | no | 64 | CityHash64 |
| `city128` | no | 128 | CityHash128 |
| `siphash24` | yes | 64 | SipHash-2-4 |
| `spooky` | no | 128 | SpookyHash |
| `lookup2` | no | 64 | Jenkins lookup2 |
| `lookup3` | no | 64 | Jenkins lookup3 CPU-native |
| `lookup3be` | yes | 64 | Jenkins lookup3 big-endian |
| `lookup3le` | yes | 64 | Jenkins lookup3 little-endian |
| `pgsql84` | no | 64 | Hacked lookup3 in Postgres 8.4+ |

Integer algorithms: `wang32`, `wang32mult`, `jenkins` (32-bit); `wang64`, `wang64to32` (64-bit). All are reversible (1:1 mapping), useful for creating random sort orders over unique IDs.
