---
title: "pg_slug_gen"
linkTitle: "pg_slug_gen"
description: "Generate cryptographically secure timestamp-based slugs"
weight: 4550
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fernandoolle/pg_slug_gen">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fernandoolle/pg_slug_gen</div>
    <div class="ext-card__desc">https://github.com/fernandoolle/pg_slug_gen</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_slug_gen-1.0.0.zip">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_slug_gen-1.0.0.zip</div>
    <div class="ext-card__desc">pg_slug_gen-1.0.0.zip</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_slug_gen`**](/ext/e/pg_slug_gen) | `1.0.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4550  | [**`pg_slug_gen`**](/ext/e/pg_slug_gen) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_hashids`](/ext/e/pg_hashids) [`sequential_uuids`](/ext/e/sequential_uuids) [`uuid-ossp`](/ext/e/uuid-ossp) [`pg_uuidv7`](/ext/e/pg_uuidv7) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_slug_gen` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `pg_slug_gen_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-slug-gen` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_slug_gen_18 pg_slug_gen_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-slug-gen postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-18-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_slug_gen_17 pg_slug_gen_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-slug-gen postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-17-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_slug_gen_16 pg_slug_gen_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-slug-gen postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-16-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 14.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_slug_gen_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_slug_gen_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_slug_gen_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_slug_gen_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_slug_gen_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_slug_gen_15 pg_slug_gen_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 14.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_slug_gen_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-slug-gen postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 12.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-slug-gen/postgresql-15-pg-slug-gen_1.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_slug_gen` using `pig build`:

```bash
pig build pkg pg_slug_gen         # build RPM / DEB packages
```


## Install

You can install `pg_slug_gen` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_slug_gen;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_slug_gen -v 18  # PG 18
pig ext install -y pg_slug_gen -v 17  # PG 17
pig ext install -y pg_slug_gen -v 16  # PG 16
pig ext install -y pg_slug_gen -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_slug_gen_18       # PG 18
dnf install -y pg_slug_gen_17       # PG 17
dnf install -y pg_slug_gen_16       # PG 16
dnf install -y pg_slug_gen_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-slug-gen   # PG 18
apt install -y postgresql-17-pg-slug-gen   # PG 17
apt install -y postgresql-16-pg-slug-gen   # PG 16
apt install -y postgresql-15-pg-slug-gen   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_slug_gen;
```


## Usage

> Syntax:
>
> ```sql
> CREATE EXTENSION pg_slug_gen;
> SELECT gen_random_slug();
> SELECT gen_random_slug(13);
> ```
>
> Source: [PGXN release README](https://pgxn.org/dist/pg_slug_gen/1.0.0/)

`pg_slug_gen` generates timestamp-based slugs using cryptographic randomness. The PGXN release README describes it as a PostgreSQL extension that maps timestamp digits into letter buckets and inserts a hyphen in the middle, producing URL-friendly slugs.

## Function

The documented SQL function is:

```sql
gen_random_slug(slug_length int DEFAULT 16) RETURNS text
```

The README shows these interfaces:

```sql
gen_random_slug()      -- default: 16 (microseconds)
gen_random_slug(10)    -- seconds
gen_random_slug(13)    -- milliseconds
gen_random_slug(16)    -- microseconds
gen_random_slug(19)    -- nanoseconds
```

## Precision and Length

The release README maps precision to timestamp digits and maximum collision-free throughput:

- `10` digits for seconds, up to 1 insert per second
- `13` digits for milliseconds, up to 1,000 inserts per second
- `16` digits for microseconds, up to 1,000,000 inserts per second
- `19` digits for nanoseconds, up to 1 billion inserts per second

The slug includes a midpoint hyphen:

- seconds: `5-5` pattern, 11 characters total
- milliseconds: `6-7` pattern, 14 characters
- microseconds: `8-8` pattern, 17 characters
- nanoseconds: `9-10` pattern, 20 characters

## Examples

```sql
SELECT gen_random_slug();
SELECT gen_random_slug(10);
SELECT gen_random_slug(13);
SELECT gen_random_slug(16);
SELECT gen_random_slug(19);
```

As a table default:

```sql
CREATE TABLE products (
    id serial PRIMARY KEY,
    name text NOT NULL,
    slug text DEFAULT gen_random_slug() UNIQUE
);
```

## How It Works

The release README describes the algorithm as:

1. take the current timestamp at the chosen precision
2. map each digit to a QWERTY-based character bucket
3. choose one random character from that bucket using `pg_strong_random()`
4. insert a hyphen at the midpoint

The README also notes that same-timestamp collisions remain possible, but with microsecond precision the probability is stated as roughly 1 in 10 million.
