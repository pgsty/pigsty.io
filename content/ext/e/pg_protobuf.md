---
title: "pg_protobuf"
linkTitle: "pg_protobuf"
description: "Protobuf support for PostgreSQL"
weight: 4260
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/afiskon/pg_protobuf">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">afiskon/pg_protobuf</div>
    <div class="ext-card__desc">https://github.com/afiskon/pg_protobuf</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_protobuf-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_protobuf-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_protobuf-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_protobuf`**](/ext/e/pg_protobuf) | `1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4260  | [**`pg_protobuf`**](/ext/e/pg_protobuf) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgjq`](/ext/e/pgjq) [`pgqr`](/ext/e/pgqr) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_protobuf` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_protobuf_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-protobuf` | - |
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
@ el8.x86_64 18 pg_protobuf_18 pg_protobuf_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_protobuf_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_protobuf_18 pg_protobuf_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_protobuf_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_protobuf_18 pg_protobuf_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_protobuf_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_protobuf_18 pg_protobuf_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_protobuf_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_protobuf_18 pg_protobuf_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_protobuf_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_protobuf_18 pg_protobuf_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_protobuf_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 40.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 41.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 40.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 41.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 44.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 44.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 42.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-protobuf postgresql-18-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 42.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-18-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_protobuf_17 pg_protobuf_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_protobuf_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_protobuf_17 pg_protobuf_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_protobuf_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_protobuf_17 pg_protobuf_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_protobuf_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_protobuf_17 pg_protobuf_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_protobuf_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_protobuf_17 pg_protobuf_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_protobuf_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_protobuf_17 pg_protobuf_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_protobuf_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 40.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 40.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 39.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 40.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 44.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 44.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 41.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-protobuf postgresql-17-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 42.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-17-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_protobuf_16 pg_protobuf_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_protobuf_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_protobuf_16 pg_protobuf_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_protobuf_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_protobuf_16 pg_protobuf_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_protobuf_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_protobuf_16 pg_protobuf_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_protobuf_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_protobuf_16 pg_protobuf_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_protobuf_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_protobuf_16 pg_protobuf_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_protobuf_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 39.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 40.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 39.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 40.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 44.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 44.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 41.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-protobuf postgresql-16-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 41.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-16-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_protobuf_15 pg_protobuf_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_protobuf_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_protobuf_15 pg_protobuf_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_protobuf_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_protobuf_15 pg_protobuf_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_protobuf_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_protobuf_15 pg_protobuf_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_protobuf_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_protobuf_15 pg_protobuf_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_protobuf_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_protobuf_15 pg_protobuf_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_protobuf_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 38.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 39.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 38.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 39.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 43.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 43.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 40.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-protobuf postgresql-15-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 41.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-15-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_protobuf_14 pg_protobuf_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 15.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_protobuf_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_protobuf_14 pg_protobuf_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 15.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_protobuf_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_protobuf_14 pg_protobuf_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_protobuf_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_protobuf_14 pg_protobuf_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_protobuf_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_protobuf_14 pg_protobuf_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_protobuf_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_protobuf_14 pg_protobuf_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_protobuf_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 38.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 39.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 38.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 39.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 43.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 43.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 40.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-protobuf postgresql-14-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 40.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-protobuf/postgresql-14-pg-protobuf_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_protobuf` using `pig build`:

```bash
pig build pkg pg_protobuf         # build RPM / DEB packages
```


## Install

You can install `pg_protobuf` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_protobuf;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_protobuf -v 18  # PG 18
pig ext install -y pg_protobuf -v 17  # PG 17
pig ext install -y pg_protobuf -v 16  # PG 16
pig ext install -y pg_protobuf -v 15  # PG 15
pig ext install -y pg_protobuf -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_protobuf_18       # PG 18
dnf install -y pg_protobuf_17       # PG 17
dnf install -y pg_protobuf_16       # PG 16
dnf install -y pg_protobuf_15       # PG 15
dnf install -y pg_protobuf_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-protobuf   # PG 18
apt install -y postgresql-17-pg-protobuf   # PG 17
apt install -y postgresql-16-pg-protobuf   # PG 16
apt install -y postgresql-15-pg-protobuf   # PG 15
apt install -y postgresql-14-pg-protobuf   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_protobuf;
```




## Usage

> [pg_protobuf: Protocol Buffers support for PostgreSQL](https://github.com/afiskon/pg_protobuf)

Provides functions to decode Protocol Buffer binary data directly in SQL without schema definitions.

### Functions

- `protobuf_decode(bytea) RETURNS cstring` -- Decode protobuf binary into a human-readable format
- `protobuf_get_int(bytea, int) RETURNS bigint` -- Extract an integer field by field number
- `protobuf_get_string(bytea, int) RETURNS text` -- Extract a string field by field number
- `protobuf_get_bytes(bytea, int) RETURNS bytea` -- Extract raw bytes by field number
- `protobuf_get_bool(bytea, int) RETURNS boolean` -- Extract a boolean field by field number
- `protobuf_get_float(bytea, int) RETURNS real` -- Extract a float field by field number
- `protobuf_get_double(bytea, int) RETURNS double precision` -- Extract a double field by field number
- `protobuf_get_sfixed32(bytea, int) RETURNS int` -- Extract a signed fixed 32-bit field
- `protobuf_get_sfixed64(bytea, int) RETURNS bigint` -- Extract a signed fixed 64-bit field
- `protobuf_get_int_multi(bytea, int) RETURNS bigint[]` -- Extract repeated integer fields
- `protobuf_get_string_multi(bytea, int) RETURNS text[]` -- Extract repeated string fields
- `protobuf_get_bytes_multi(bytea, int) RETURNS bytea[]` -- Extract repeated bytes fields
- `protobuf_get_bool_multi(bytea, int) RETURNS boolean[]` -- Extract repeated boolean fields
- `protobuf_get_float_multi(bytea, int) RETURNS real[]` -- Extract repeated float fields
- `protobuf_get_double_multi(bytea, int) RETURNS double precision[]` -- Extract repeated double fields
- `protobuf_get_sfixed32_multi(bytea, int) RETURNS int[]` -- Extract repeated sfixed32 fields
- `protobuf_get_sfixed64_multi(bytea, int) RETURNS bigint[]` -- Extract repeated sfixed64 fields

### Example

```sql
CREATE EXTENSION pg_protobuf;

-- Create a table with protobuf data
CREATE TABLE heroes (x bytea);

-- Define accessor functions for specific fields
CREATE FUNCTION hero_name(x bytea) RETURNS text AS $$
BEGIN
  RETURN protobuf_get_string(x, 512);
END $$ LANGUAGE plpgsql IMMUTABLE;

CREATE FUNCTION hero_hp(x bytea) RETURNS bigint AS $$
BEGIN
  RETURN protobuf_get_int(x, 2);
END $$ LANGUAGE plpgsql IMMUTABLE;

-- Create an index on a protobuf field
CREATE INDEX hero_name_idx ON heroes USING btree(hero_name(x));

-- Query by protobuf field
SELECT hero_name(x) FROM heroes ORDER BY hero_name(x) LIMIT 10;
```

### Limitations

- No modification of Protobuf data
- Enums readable via `protobuf_get_int`
- Unsigned types not directly supported (no unsigned integers in PostgreSQL)
- `[packed=true]` not supported by `*_multi` procedures (use `protobuf_get_bytes*` instead)
