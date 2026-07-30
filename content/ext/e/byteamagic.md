---
title: "byteamagic"
linkTitle: "byteamagic"
description: "Detect MIME types and file formats from PostgreSQL bytea values"
weight: 4275
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/nmandery/pg_byteamagic">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">nmandery/pg_byteamagic</div>
    <div class="ext-card__desc">https://github.com/nmandery/pg_byteamagic</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_byteamagic-0.2.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_byteamagic-0.2.4.tar.gz</div>
    <div class="ext-card__desc">pg_byteamagic-0.2.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_byteamagic`**](/ext/e/byteamagic) | `0.2.4` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4275  | [**`byteamagic`**](/ext/e/byteamagic) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`external_file`](/ext/e/external_file) [`pgpdf`](/ext/e/pgpdf) [`omni_mimetypes`](/ext/e/omni_mimetypes) [`fio`](/ext/e/fio) [`envvar`](/ext/e/envvar) [`floatfile`](/ext/e/floatfile) [`file_fdw`](/ext/e/file_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Extension name is byteamagic; package name is pg_byteamagic.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_byteamagic` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_byteamagic_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-byteamagic` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 | AVAIL PIGSTY 0.2.4 1 |
@ el8.x86_64 18 pg_byteamagic_18 pg_byteamagic_18-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_byteamagic_18-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_byteamagic_18 pg_byteamagic_18-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_byteamagic_18-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_byteamagic_18 pg_byteamagic_18-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_byteamagic_18-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_byteamagic_18 pg_byteamagic_18-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_byteamagic_18-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_byteamagic_18 pg_byteamagic_18-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_byteamagic_18-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_byteamagic_18 pg_byteamagic_18-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_byteamagic_18-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-byteamagic postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-18-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_byteamagic_17 pg_byteamagic_17-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_byteamagic_17-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_byteamagic_17 pg_byteamagic_17-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_byteamagic_17-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_byteamagic_17 pg_byteamagic_17-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_byteamagic_17-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_byteamagic_17 pg_byteamagic_17-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_byteamagic_17-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_byteamagic_17 pg_byteamagic_17-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_byteamagic_17-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_byteamagic_17 pg_byteamagic_17-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_byteamagic_17-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 10.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-byteamagic postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-17-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_byteamagic_16 pg_byteamagic_16-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_byteamagic_16-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_byteamagic_16 pg_byteamagic_16-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_byteamagic_16-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_byteamagic_16 pg_byteamagic_16-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_byteamagic_16-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_byteamagic_16 pg_byteamagic_16-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_byteamagic_16-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_byteamagic_16 pg_byteamagic_16-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_byteamagic_16-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_byteamagic_16 pg_byteamagic_16-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_byteamagic_16-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 10.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 10.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-byteamagic postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-16-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_byteamagic_15 pg_byteamagic_15-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_byteamagic_15-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_byteamagic_15 pg_byteamagic_15-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_byteamagic_15-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_byteamagic_15 pg_byteamagic_15-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_byteamagic_15-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_byteamagic_15 pg_byteamagic_15-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_byteamagic_15-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_byteamagic_15 pg_byteamagic_15-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_byteamagic_15-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_byteamagic_15 pg_byteamagic_15-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_byteamagic_15-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 10.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-byteamagic postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-15-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_byteamagic_14 pg_byteamagic_14-0.2.4-1PIGSTY.el8.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_byteamagic_14-0.2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_byteamagic_14 pg_byteamagic_14-0.2.4-1PIGSTY.el8.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_byteamagic_14-0.2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_byteamagic_14 pg_byteamagic_14-0.2.4-1PIGSTY.el9.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_byteamagic_14-0.2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_byteamagic_14 pg_byteamagic_14-0.2.4-1PIGSTY.el9.aarch64.rpm pigsty 0.2.4 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_byteamagic_14-0.2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_byteamagic_14 pg_byteamagic_14-0.2.4-1PIGSTY.el10.x86_64.rpm pigsty 0.2.4 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_byteamagic_14-0.2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_byteamagic_14 pg_byteamagic_14-0.2.4-1PIGSTY.el10.aarch64.rpm pigsty 0.2.4 13.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_byteamagic_14-0.2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb pigsty 0.2.4 10.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb pigsty 0.2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb pigsty 0.2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb pigsty 0.2.4 10.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb pigsty 0.2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-byteamagic postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb pigsty 0.2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-byteamagic/postgresql-14-pg-byteamagic_0.2.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_byteamagic` using `pig build`:

```bash
pig build pkg pg_byteamagic         # build RPM / DEB packages
```


## Install

You can install `pg_byteamagic` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_byteamagic;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_byteamagic -v 18  # PG 18
pig ext install -y pg_byteamagic -v 17  # PG 17
pig ext install -y pg_byteamagic -v 16  # PG 16
pig ext install -y pg_byteamagic -v 15  # PG 15
pig ext install -y pg_byteamagic -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_byteamagic_18       # PG 18
dnf install -y pg_byteamagic_17       # PG 17
dnf install -y pg_byteamagic_16       # PG 16
dnf install -y pg_byteamagic_15       # PG 15
dnf install -y pg_byteamagic_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-byteamagic   # PG 18
apt install -y postgresql-17-pg-byteamagic   # PG 17
apt install -y postgresql-16-pg-byteamagic   # PG 16
apt install -y postgresql-15-pg-byteamagic   # PG 15
apt install -y postgresql-14-pg-byteamagic   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION byteamagic;
```




## Usage

Sources: [official repo](https://github.com/nmandery/pg_byteamagic), [official doc](https://raw.githubusercontent.com/nmandery/pg_byteamagic/master/doc/byteamagic.md)

`byteamagic` runs `libmagic` on `bytea` values, so PostgreSQL can identify the MIME type or human-readable file type of blobs stored in the database. The package name is `pg_byteamagic`, but the extension name is `byteamagic`.

```sql
CREATE EXTENSION byteamagic;

SELECT byteamagic_mime(data) FROM files;
SELECT byteamagic_text(data) FROM files;
```

### Functions

- `byteamagic_mime(bytea) returns text`: MIME type, equivalent to `file --mime-type`.
- `byteamagic_text(bytea) returns text`: descriptive file type text, equivalent to `file`.

### Common Use

```sql
SELECT
  id,
  byteamagic_mime(blob) AS mime,
  byteamagic_text(blob) AS kind
FROM uploads;
```

### Caveats

- It only inspects `bytea` content; there are no operators, custom types, or extra SQL management objects.
- Build/install requires PostgreSQL development headers plus the system `libmagic` development package.
- The upstream documentation is minimal; current user-facing behavior is unchanged from the long-standing doc page.
