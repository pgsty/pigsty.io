---
title: "xxhash"
linkTitle: "xxhash"
description: "xxhash functions for PostgreSQL"
weight: 4430
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hatarist/pg_xxhash">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hatarist/pg_xxhash</div>
    <div class="ext-card__desc">https://github.com/hatarist/pg_xxhash</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_xxhash-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_xxhash-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_xxhash-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_xxhash`**](/ext/e/xxhash) | `0.0.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit and bsd2clause" href="/ext/license#mitandbsd2clause">MIT AND BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4430  | [**`xxhash`**](/ext/e/xxhash) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgcrypto`](/ext/e/pgcrypto) [`hashlib`](/ext/e/hashlib) [`md5hash`](/ext/e/md5hash) [`hashtypes`](/ext/e/hashtypes) [`pgsodium`](/ext/e/pgsodium) [`shacrypt`](/ext/e/shacrypt) [`cryptint`](/ext/e/cryptint) [`pguecc`](/ext/e/pguecc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_xxhash` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_xxhash_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-xxhash` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el9.x86_64 19 pg_xxhash_19 pg_xxhash_19-0.0.1-1PGSTY.el9.x86_64.rpm pigsty 0.0.1 72.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xxhash_19-0.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_xxhash_19 pg_xxhash_19-0.0.1-1PGSTY.el9.aarch64.rpm pigsty 0.0.1 77.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xxhash_19-0.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_xxhash_19 pg_xxhash_19-0.0.1-1PGSTY.el10.x86_64.rpm pigsty 0.0.1 72.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xxhash_19-0.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_xxhash_19 pg_xxhash_19-0.0.1-1PGSTY.el10.aarch64.rpm pigsty 0.0.1 78.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xxhash_19-0.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb pigsty 0.0.1 69.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb pigsty 0.0.1 73.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb pigsty 0.0.1 69.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb pigsty 0.0.1 73.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb pigsty 0.0.1 75.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb pigsty 0.0.1 76.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb pigsty 0.0.1 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb pigsty 0.0.1 67.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb pigsty 0.0.1 63.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-xxhash postgresql-19-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb pigsty 0.0.1 68.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-19-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_xxhash_18 pg_xxhash_18-0.0.1-1PGSTY.el8.x86_64.rpm pigsty 0.0.1 82.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xxhash_18-0.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_xxhash_18 pg_xxhash_18-0.0.1-1PGSTY.el8.aarch64.rpm pigsty 0.0.1 87.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xxhash_18-0.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_xxhash_18 pg_xxhash_18-0.0.1-1PGSTY.el9.x86_64.rpm pigsty 0.0.1 72.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xxhash_18-0.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_xxhash_18 pg_xxhash_18-0.0.1-1PGSTY.el9.aarch64.rpm pigsty 0.0.1 77.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xxhash_18-0.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_xxhash_18 pg_xxhash_18-0.0.1-1PGSTY.el10.x86_64.rpm pigsty 0.0.1 72.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xxhash_18-0.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_xxhash_18 pg_xxhash_18-0.0.1-1PGSTY.el10.aarch64.rpm pigsty 0.0.1 77.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xxhash_18-0.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb pigsty 0.0.1 69.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb pigsty 0.0.1 73.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb pigsty 0.0.1 69.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb pigsty 0.0.1 73.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb pigsty 0.0.1 75.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb pigsty 0.0.1 76.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb pigsty 0.0.1 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb pigsty 0.0.1 67.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb pigsty 0.0.1 63.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-xxhash postgresql-18-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb pigsty 0.0.1 68.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-18-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_xxhash_17 pg_xxhash_17-0.0.1-1PGSTY.el8.x86_64.rpm pigsty 0.0.1 82.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xxhash_17-0.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_xxhash_17 pg_xxhash_17-0.0.1-1PGSTY.el8.aarch64.rpm pigsty 0.0.1 86.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xxhash_17-0.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_xxhash_17 pg_xxhash_17-0.0.1-1PGSTY.el9.x86_64.rpm pigsty 0.0.1 72.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xxhash_17-0.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_xxhash_17 pg_xxhash_17-0.0.1-1PGSTY.el9.aarch64.rpm pigsty 0.0.1 77.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xxhash_17-0.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_xxhash_17 pg_xxhash_17-0.0.1-1PGSTY.el10.x86_64.rpm pigsty 0.0.1 72.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xxhash_17-0.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_xxhash_17 pg_xxhash_17-0.0.1-1PGSTY.el10.aarch64.rpm pigsty 0.0.1 77.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xxhash_17-0.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb pigsty 0.0.1 69.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb pigsty 0.0.1 73.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb pigsty 0.0.1 69.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb pigsty 0.0.1 73.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb pigsty 0.0.1 77.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb pigsty 0.0.1 78.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb pigsty 0.0.1 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb pigsty 0.0.1 67.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb pigsty 0.0.1 63.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-xxhash postgresql-17-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb pigsty 0.0.1 68.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-17-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_xxhash_16 pg_xxhash_16-0.0.1-1PGSTY.el8.x86_64.rpm pigsty 0.0.1 82.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xxhash_16-0.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_xxhash_16 pg_xxhash_16-0.0.1-1PGSTY.el8.aarch64.rpm pigsty 0.0.1 86.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xxhash_16-0.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_xxhash_16 pg_xxhash_16-0.0.1-1PGSTY.el9.x86_64.rpm pigsty 0.0.1 72.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xxhash_16-0.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_xxhash_16 pg_xxhash_16-0.0.1-1PGSTY.el9.aarch64.rpm pigsty 0.0.1 77.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xxhash_16-0.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_xxhash_16 pg_xxhash_16-0.0.1-1PGSTY.el10.x86_64.rpm pigsty 0.0.1 72.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xxhash_16-0.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_xxhash_16 pg_xxhash_16-0.0.1-1PGSTY.el10.aarch64.rpm pigsty 0.0.1 77.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xxhash_16-0.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb pigsty 0.0.1 69.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb pigsty 0.0.1 73.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb pigsty 0.0.1 69.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb pigsty 0.0.1 73.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb pigsty 0.0.1 77.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb pigsty 0.0.1 78.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb pigsty 0.0.1 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb pigsty 0.0.1 67.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb pigsty 0.0.1 63.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-xxhash postgresql-16-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb pigsty 0.0.1 68.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-16-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_xxhash_15 pg_xxhash_15-0.0.1-1PGSTY.el8.x86_64.rpm pigsty 0.0.1 83.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_xxhash_15-0.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_xxhash_15 pg_xxhash_15-0.0.1-1PGSTY.el8.aarch64.rpm pigsty 0.0.1 87.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_xxhash_15-0.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_xxhash_15 pg_xxhash_15-0.0.1-1PGSTY.el9.x86_64.rpm pigsty 0.0.1 82.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_xxhash_15-0.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_xxhash_15 pg_xxhash_15-0.0.1-1PGSTY.el9.aarch64.rpm pigsty 0.0.1 89.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_xxhash_15-0.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_xxhash_15 pg_xxhash_15-0.0.1-1PGSTY.el10.x86_64.rpm pigsty 0.0.1 84.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_xxhash_15-0.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_xxhash_15 pg_xxhash_15-0.0.1-1PGSTY.el10.aarch64.rpm pigsty 0.0.1 89.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_xxhash_15-0.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb pigsty 0.0.1 70.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb pigsty 0.0.1 73.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb pigsty 0.0.1 70.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb pigsty 0.0.1 74.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb pigsty 0.0.1 87.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb pigsty 0.0.1 89.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb pigsty 0.0.1 73.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb pigsty 0.0.1 78.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb pigsty 0.0.1 74.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-xxhash postgresql-15-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb pigsty 0.0.1 79.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-xxhash/postgresql-15-pg-xxhash_0.0.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_xxhash` using `pig build`:

```bash
pig build pkg pg_xxhash         # build RPM / DEB packages
```


## Install

You can install `pg_xxhash` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_xxhash;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_xxhash -v 19  # PG 19
pig ext install -y pg_xxhash -v 18  # PG 18
pig ext install -y pg_xxhash -v 17  # PG 17
pig ext install -y pg_xxhash -v 16  # PG 16
pig ext install -y pg_xxhash -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_xxhash_19       # PG 19
dnf install -y pg_xxhash_18       # PG 18
dnf install -y pg_xxhash_17       # PG 17
dnf install -y pg_xxhash_16       # PG 16
dnf install -y pg_xxhash_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-xxhash   # PG 19
apt install -y postgresql-18-pg-xxhash   # PG 18
apt install -y postgresql-17-pg-xxhash   # PG 17
apt install -y postgresql-16-pg-xxhash   # PG 16
apt install -y postgresql-15-pg-xxhash   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION xxhash;
```




## Usage

> [xxhash: xxHash hash functions for PostgreSQL](https://github.com/hatarist/pg_xxhash)

Provides xxHash non-cryptographic hash functions that return hex strings or bytea.

### Text Output Functions

```sql
SELECT xxh32('https://example.com');     -- 'ba15a4a8'
SELECT xxh64('https://example.com');     -- 'b131752760b48654'
SELECT xxh3_64('https://example.com');   -- '9398cc7c078760e6'
SELECT xxh128('https://example.com');    -- '4879d6aa9d88e9c7a169c008892d4829'
```

### Binary Output Functions

```sql
SELECT xxh32b('https://example.com');    -- \xba15a4a8
SELECT xxh64b('https://example.com');    -- \xb131752760b48654
SELECT xxh3_64b('https://example.com');  -- \x9398cc7c078760e6
SELECT xxh128b('https://example.com');   -- \x4879d6aa9d88e9c7a169c008892d4829
```

### Available Functions

| Function | Bits | Output |
|----------|------|--------|
| `xxh32(text)` | 32 | hex text |
| `xxh64(text)` | 64 | hex text |
| `xxh3_64(text)` | 64 | hex text |
| `xxh128(text)` | 128 | hex text |
| `xxh32b(text)` | 32 | bytea |
| `xxh64b(text)` | 64 | bytea |
| `xxh3_64b(text)` | 64 | bytea |
| `xxh128b(text)` | 128 | bytea |
