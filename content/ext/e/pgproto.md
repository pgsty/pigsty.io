---
title: "pgproto"
linkTitle: "pgproto"
description: "Native Protobuf parsing, mutation, indexing, and JSON conversion support"
weight: 4130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Apaezmx/pgproto">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Apaezmx/pgproto</div>
    <div class="ext-card__desc">https://github.com/Apaezmx/pgproto</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgproto-0.3.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgproto-0.3.3.tar.gz</div>
    <div class="ext-card__desc">pgproto-0.3.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgproto`**](/ext/e/pgproto) | `0.3.3` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4130  | [**`pgproto`**](/ext/e/pgproto) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_protobuf`](/ext/e/pg_protobuf) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`pg_csv`](/ext/e/pg_csv) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> release 0.3.3; SQL v1.0


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.3` | {{< pgvers "18,17,16,15,14" >}} | `pgproto` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.3` | {{< pgvers "18,17,16,15,14" >}} | `pgproto_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgproto` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 | AVAIL PIGSTY 0.3.3 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pgproto_18 pgproto_18-0.3.3-1PIGSTY.el8.x86_64.rpm pigsty 0.3.3 228.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_18-0.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgproto_18 pgproto_18-0.3.3-1PIGSTY.el8.aarch64.rpm pigsty 0.3.3 213.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_18-0.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgproto_18 pgproto_18-0.3.3-1PIGSTY.el9.x86_64.rpm pigsty 0.3.3 127.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_18-0.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgproto_18 pgproto_18-0.3.3-1PIGSTY.el9.aarch64.rpm pigsty 0.3.3 124.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_18-0.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgproto_18 pgproto_18-0.3.3-1PIGSTY.el10.x86_64.rpm pigsty 0.3.3 129.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_18-0.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgproto_18 pgproto_18-0.3.3-1PIGSTY.el10.aarch64.rpm pigsty 0.3.3 125.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_18-0.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb pigsty 0.3.3 697.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb pigsty 0.3.3 693.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb pigsty 0.3.3 703.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb pigsty 0.3.3 696.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb pigsty 0.3.3 755.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb pigsty 0.3.3 754.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~noble_amd64.deb pigsty 0.3.3 733.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.3.3-1PIGSTY~noble_arm64.deb pigsty 0.3.3 742.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-18-pgproto_0.3.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgproto_17 pgproto_17-0.3.3-1PIGSTY.el8.x86_64.rpm pigsty 0.3.3 228.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_17-0.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgproto_17 pgproto_17-0.3.3-1PIGSTY.el8.aarch64.rpm pigsty 0.3.3 213.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_17-0.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgproto_17 pgproto_17-0.3.3-1PIGSTY.el9.x86_64.rpm pigsty 0.3.3 127.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_17-0.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgproto_17 pgproto_17-0.3.3-1PIGSTY.el9.aarch64.rpm pigsty 0.3.3 124.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_17-0.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgproto_17 pgproto_17-0.3.3-1PIGSTY.el10.x86_64.rpm pigsty 0.3.3 129.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_17-0.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgproto_17 pgproto_17-0.3.3-1PIGSTY.el10.aarch64.rpm pigsty 0.3.3 125.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_17-0.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb pigsty 0.3.3 697.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb pigsty 0.3.3 693.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb pigsty 0.3.3 702.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb pigsty 0.3.3 696.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb pigsty 0.3.3 814.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb pigsty 0.3.3 812.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~noble_amd64.deb pigsty 0.3.3 733.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.3.3-1PIGSTY~noble_arm64.deb pigsty 0.3.3 742.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-17-pgproto_0.3.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgproto_16 pgproto_16-0.3.3-1PIGSTY.el8.x86_64.rpm pigsty 0.3.3 228.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_16-0.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgproto_16 pgproto_16-0.3.3-1PIGSTY.el8.aarch64.rpm pigsty 0.3.3 213.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_16-0.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgproto_16 pgproto_16-0.3.3-1PIGSTY.el9.x86_64.rpm pigsty 0.3.3 127.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_16-0.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgproto_16 pgproto_16-0.3.3-1PIGSTY.el9.aarch64.rpm pigsty 0.3.3 124.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_16-0.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgproto_16 pgproto_16-0.3.3-1PIGSTY.el10.x86_64.rpm pigsty 0.3.3 129.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_16-0.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgproto_16 pgproto_16-0.3.3-1PIGSTY.el10.aarch64.rpm pigsty 0.3.3 125.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_16-0.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb pigsty 0.3.3 697.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb pigsty 0.3.3 693.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb pigsty 0.3.3 703.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb pigsty 0.3.3 696.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb pigsty 0.3.3 814.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb pigsty 0.3.3 812.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~noble_amd64.deb pigsty 0.3.3 733.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.3.3-1PIGSTY~noble_arm64.deb pigsty 0.3.3 742.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-16-pgproto_0.3.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgproto_15 pgproto_15-0.3.3-1PIGSTY.el8.x86_64.rpm pigsty 0.3.3 239.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_15-0.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgproto_15 pgproto_15-0.3.3-1PIGSTY.el8.aarch64.rpm pigsty 0.3.3 223.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_15-0.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgproto_15 pgproto_15-0.3.3-1PIGSTY.el9.x86_64.rpm pigsty 0.3.3 219.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_15-0.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgproto_15 pgproto_15-0.3.3-1PIGSTY.el9.aarch64.rpm pigsty 0.3.3 212.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_15-0.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgproto_15 pgproto_15-0.3.3-1PIGSTY.el10.x86_64.rpm pigsty 0.3.3 223.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_15-0.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgproto_15 pgproto_15-0.3.3-1PIGSTY.el10.aarch64.rpm pigsty 0.3.3 213.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_15-0.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb pigsty 0.3.3 707.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb pigsty 0.3.3 702.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb pigsty 0.3.3 712.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb pigsty 0.3.3 705.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb pigsty 0.3.3 822.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb pigsty 0.3.3 819.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~noble_amd64.deb pigsty 0.3.3 741.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.3.3-1PIGSTY~noble_arm64.deb pigsty 0.3.3 749.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-15-pgproto_0.3.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgproto_14 pgproto_14-0.3.3-1PIGSTY.el8.x86_64.rpm pigsty 0.3.3 239.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_14-0.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgproto_14 pgproto_14-0.3.3-1PIGSTY.el8.aarch64.rpm pigsty 0.3.3 223.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_14-0.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgproto_14 pgproto_14-0.3.3-1PIGSTY.el9.x86_64.rpm pigsty 0.3.3 219.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_14-0.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgproto_14 pgproto_14-0.3.3-1PIGSTY.el9.aarch64.rpm pigsty 0.3.3 212.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_14-0.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgproto_14 pgproto_14-0.3.3-1PIGSTY.el10.x86_64.rpm pigsty 0.3.3 223.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_14-0.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgproto_14 pgproto_14-0.3.3-1PIGSTY.el10.aarch64.rpm pigsty 0.3.3 215.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_14-0.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb pigsty 0.3.3 706.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb pigsty 0.3.3 701.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb pigsty 0.3.3 712.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb pigsty 0.3.3 705.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb pigsty 0.3.3 822.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb pigsty 0.3.3 819.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~noble_amd64.deb pigsty 0.3.3 741.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.3.3-1PIGSTY~noble_arm64.deb pigsty 0.3.3 749.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-14-pgproto_0.3.3-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgproto` using `pig build`:

```bash
pig build pkg pgproto         # build RPM / DEB packages
```


## Install

You can install `pgproto` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgproto;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgproto -v 18  # PG 18
pig ext install -y pgproto -v 17  # PG 17
pig ext install -y pgproto -v 16  # PG 16
pig ext install -y pgproto -v 15  # PG 15
pig ext install -y pgproto -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgproto_18       # PG 18
dnf install -y pgproto_17       # PG 17
dnf install -y pgproto_16       # PG 16
dnf install -y pgproto_15       # PG 15
dnf install -y pgproto_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgproto   # PG 18
apt install -y postgresql-17-pgproto   # PG 17
apt install -y postgresql-16-pgproto   # PG 16
apt install -y postgresql-15-pgproto   # PG 15
apt install -y postgresql-14-pgproto   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgproto;
```


## Usage

Sources: [README](https://github.com/Apaezmx/pgproto/blob/main/README.md), [release 0.3.3](https://github.com/Apaezmx/pgproto/releases/tag/v0.3.3), [pgproto.control](https://github.com/Apaezmx/pgproto/blob/main/pgproto.control)

`pgproto` adds a `protobuf` type for storing binary Protocol Buffers with schema-aware extraction and update helpers. The latest upstream release is `0.3.3`, while the extension control file advertises SQL default version `1.0`.

```sql
CREATE EXTENSION pgproto;
```

### Basic Workflow

Register a `FileDescriptorSet` so the extension can interpret message layouts:

```sql
INSERT INTO pb_schemas (name, data) VALUES ('MySchema', '\x...');
```

Store protobuf payloads in a `protobuf` column:

```sql
CREATE TABLE items (
  id serial PRIMARY KEY,
  data protobuf
);
```

### Querying

Use PostgreSQL-style path operators for nested fields:

```sql
SELECT data #> '{Outer, inner, id}'::text[] FROM items;
SELECT data #> '{Outer, tags, mykey}'::text[] FROM items;
```

The README highlights `->` and `#>` as the primary navigation operators for nested, repeated, and map fields.

### Updates and Merge

The write helpers are pure functions that return a new protobuf value:

- `pb_set(...)`
- `pb_insert(...)`
- `pb_delete(...)`
- `||` to merge two messages of the same type

```sql
UPDATE items SET data = pb_set(data, ARRAY['Outer', 'a'], '42');
UPDATE items SET data = pb_insert(data, ARRAY['Outer', 'scores', '0'], '100');
UPDATE items SET data = pb_delete(data, ARRAY['Outer', 'a']);
UPDATE items SET data = data || other_data;
```

### Indexing and Evolution

Expression indexes work on extracted fields:

```sql
CREATE INDEX idx_pb_id ON items ((data #> '{Outer, inner, id}'::text[]));
```

The README also documents schema evolution as a first-class use case: adding fields is backward-compatible, deprecated fields remain readable if present in older payloads, and re-registering schemas with `ON CONFLICT` is the expected update path.

### Caveats

- `pgproto` relies on registered runtime schemas; without the descriptor set, path-based extraction cannot interpret the payload.
- The update helpers do not mutate in place, so they need to be used in `UPDATE ... SET data = ...`.
