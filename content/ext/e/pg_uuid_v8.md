---
title: "pg_uuid_v8"
linkTitle: "pg_uuid_v8"
description: "UUID v8 generator with embedded timestamps for PostgreSQL"
weight: 4530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ineron/pg_uuid_v8">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ineron/pg_uuid_v8</div>
    <div class="ext-card__desc">https://github.com/ineron/pg_uuid_v8</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_uuid_v8-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_uuid_v8-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_uuid_v8-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_uuid_v8`**](/ext/e/pg_uuid_v8) | `1.0.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4530  | [**`pg_uuid_v8`**](/ext/e/pg_uuid_v8) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`uuid-ossp`](/ext/e/uuid-ossp) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Pinned to public so uuid operator commutators resolve on PostgreSQL 17 and 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_uuid_v8` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_uuid_v8_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-uuid-v8` | - |
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
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 18.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 18.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 19.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 19.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 19.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 18.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 19.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_16-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_16-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_16-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_16-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_16-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_16-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 18.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 19.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_15-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_15-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_15-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_15-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_15-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_15-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 18.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 19.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_14-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_14-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_14-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_14-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_14-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_14-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 18.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 18.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 18.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 19.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 19.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_uuid_v8` using `pig build`:

```bash
pig build pkg pg_uuid_v8         # build RPM / DEB packages
```


## Install

You can install `pg_uuid_v8` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_uuid_v8;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_uuid_v8 -v 18  # PG 18
pig ext install -y pg_uuid_v8 -v 17  # PG 17
pig ext install -y pg_uuid_v8 -v 16  # PG 16
pig ext install -y pg_uuid_v8 -v 15  # PG 15
pig ext install -y pg_uuid_v8 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_uuid_v8_18       # PG 18
dnf install -y pg_uuid_v8_17       # PG 17
dnf install -y pg_uuid_v8_16       # PG 16
dnf install -y pg_uuid_v8_15       # PG 15
dnf install -y pg_uuid_v8_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-uuid-v8   # PG 18
apt install -y postgresql-17-pg-uuid-v8   # PG 17
apt install -y postgresql-16-pg-uuid-v8   # PG 16
apt install -y postgresql-15-pg-uuid-v8   # PG 15
apt install -y postgresql-14-pg-uuid-v8   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_uuid_v8;
```




## Usage

Sources: [pg_uuid_v8 README](https://github.com/ineron/pg_uuid_v8), [SQL definitions](https://github.com/ineron/pg_uuid_v8/blob/main/pg_uuid_v8--1.0.sql), [control file](https://github.com/ineron/pg_uuid_v8/blob/main/pg_uuid_v8.control).

`pg_uuid_v8` generates UUIDs that look like UUID v4 values while embedding encrypted microsecond timestamps for extraction, sorting, and range predicates. The SQL file exposes both `uuid_stego_*` names and `uuid_v8_*` convenience aliases.

### Generate UUIDs

```sql
CREATE EXTENSION pg_uuid_v8;

SELECT uuid_v8_set_seed('replace-with-a-secret-seed');
SELECT uuid_v8_generate();
```

The equivalent lower-level generator is:

```sql
SELECT uuid_stego_generate();
```

Use a default expression when inserting events:

```sql
CREATE TABLE events (
  id uuid PRIMARY KEY DEFAULT uuid_v8_generate(),
  data jsonb,
  created_at timestamptz DEFAULT now()
);
```

### Extract And Query Hidden Timestamps

Extract the embedded timestamp as microseconds since the Unix epoch:

```sql
SELECT uuid_v8_extract_timestamp(id)
FROM events
ORDER BY uuid_v8_extract_timestamp(id)
LIMIT 10;
```

The README recommends functional indexes for time-based lookups:

```sql
CREATE INDEX events_uuid_v8_time_idx
ON events USING btree (uuid_v8_extract_timestamp(id));

SELECT *
FROM events
WHERE uuid_v8_extract_timestamp(id)
      BETWEEN timestamp_to_stego_time('2026-01-01'::timestamptz)
          AND timestamp_to_stego_time(now())
ORDER BY uuid_v8_extract_timestamp(id);
```

Helper functions convert between timestamps and the integer timestamp format:

```sql
SELECT timestamp_to_stego_time(now());
SELECT stego_time_to_timestamp(uuid_v8_extract_timestamp(id))
FROM events;
```

### Range Helpers And Operators

The SQL definition includes direct range helpers:

```sql
SELECT *
FROM events
WHERE uuid_stego_in_range(
  id,
  now() - interval '24 hours',
  now()
);
```

It also defines timestamp-aware comparison functions and operators for `uuid`:

- `uuid_stego_compare(uuid, uuid)` and `uuid_v8_compare(uuid, uuid)`.
- `uuid_stego_lt`, `uuid_stego_le`, `uuid_stego_gt`, `uuid_stego_ge`.
- Operators `<`, `<=`, `>`, and `>=` compare UUIDs by hidden timestamp.

### Seed And Encryption Mode

Set and inspect the seed:

```sql
SELECT uuid_v8_set_seed('replace-with-a-secret-seed');
SELECT uuid_v8_get_seed();
```

Available encryption modes are `XOR`, `AES128`, and `AES256`:

```sql
SELECT uuid_v8_get_encryption_mode();
SELECT uuid_v8_set_encryption_mode('AES128');
SELECT uuid_v8_set_encryption_mode('XOR');
```

For a persistent default, the README documents the `uuid_v8.encryption_mode` GUC:

```sql
ALTER SYSTEM SET uuid_v8.encryption_mode = 'AES128';
SELECT pg_reload_conf();
```

### Caveats

- Keep the seed secret; it is required to interpret hidden timestamps.
- UUIDs generated with one seed and encryption mode must be decoded with the same settings.
- Functional indexes on extracted timestamps add storage and update overhead, but are the intended path for efficient time-range predicates.
- Local Pigsty metadata pins this extension to the `public` schema so the UUID comparison operator commutators resolve on PostgreSQL 17 and 18; test operators explicitly if using a different schema in a non-Pigsty build.
