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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_uuid_v8-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_uuid_v8-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_uuid_v8-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_uuid_v8`**](/ext/e/pg_uuid_v8) | `1.1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4530  | [**`pg_uuid_v8`**](/ext/e/pg_uuid_v8) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`snowflake`](/ext/e/snowflake) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`uuid-ossp`](/ext/e/uuid-ossp) [`typeid`](/ext/e/typeid) [`permuteseq`](/ext/e/permuteseq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream 1.1.0 ships on PGXN only; pinned to public so uuid operator commutators resolve on PostgreSQL 17 and 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_uuid_v8` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_uuid_v8_$v` | `openssl` |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-uuid-v8` | `libssl3 | libssl3t64` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 | AVAIL PIGSTY 1.1.0 1 |
@ el8.x86_64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_18-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_18-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_18-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_18-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_18-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_uuid_v8_18 pg_uuid_v8_18-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_18-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 20.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 20.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 20.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 20.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 20.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-uuid-v8 postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-18-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_17-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_17-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_17-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_17-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_17-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_uuid_v8_17 pg_uuid_v8_17-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_17-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-uuid-v8 postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-17-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_16-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_16-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_16-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_16-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_16-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_uuid_v8_16 pg_uuid_v8_16-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_16-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 20.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 20.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-uuid-v8 postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-16-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_15-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_15-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_15-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_15-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_15-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_uuid_v8_15 pg_uuid_v8_15-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_15-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 20.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 20.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-uuid-v8 postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-15-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uuid_v8_14-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uuid_v8_14-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uuid_v8_14-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uuid_v8_14-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uuid_v8_14-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_uuid_v8_14 pg_uuid_v8_14-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uuid_v8_14-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 19.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 20.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-uuid-v8 postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 21.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-uuid-v8/postgresql-14-pg-uuid-v8_1.1.0-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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

Sources:

- [pg_uuid_v8 1.1.0 on PGXN](https://pgxn.org/dist/pg_uuid_v8/1.1.0/)
- [pg_uuid_v8 1.1.0 README](https://api.pgxn.org/src/pg_uuid_v8/pg_uuid_v8-1.1.0/README.md)
- [pg_uuid_v8 1.1.0 control file](https://api.pgxn.org/src/pg_uuid_v8/pg_uuid_v8-1.1.0/pg_uuid_v8.control)
- [pg_uuid_v8 1.0 base SQL](https://api.pgxn.org/src/pg_uuid_v8/pg_uuid_v8-1.1.0/pg_uuid_v8--1.0.sql)
- [pg_uuid_v8 1.0 to 1.1 upgrade SQL](https://api.pgxn.org/src/pg_uuid_v8/pg_uuid_v8-1.1.0/pg_uuid_v8--1.0--1.1.sql)
- [Pigsty pg_uuid_v8 package matrix](https://pgext.cloud/ext/pg_uuid_v8)

`pg_uuid_v8` 1.1.0 generates UUID values with UUID-v4 version and variant bits while embedding an obfuscated creation time in the random payload. Its `uuid_v8_*` convenience functions mirror the lower-level `uuid_stego_*` API. Use it when hidden time extraction and time-range indexing are useful, but do not treat the embedded value as an authentication token or a substitute for a separate trusted creation timestamp.

### Generate Values

```sql
CREATE EXTENSION pg_uuid_v8;

SELECT uuid_v8_set_seed('replace-with-a-unique-secret');
SELECT uuid_v8_set_encryption_mode('AES128');

CREATE TABLE events (
  id uuid PRIMARY KEY DEFAULT uuid_v8_generate(),
  data jsonb,
  created_at timestamptz NOT NULL DEFAULT now()
);

INSERT INTO events(data) VALUES ('{"type":"login"}');
```

The upstream implementation defaults to a published built-in seed and `XOR` mode. Set a deployment-specific secret before generating values. `AES128` and `AES256` are also available, but the same seed and mode must be selected when extracting a value.

### Extract and Index the Hidden Time

```sql
SELECT
  uuid_v8_extract_timestamp(id) AS epoch_microseconds,
  stego_time_to_timestamp(uuid_v8_extract_timestamp(id)) AS created_time
FROM events;

CREATE INDEX events_uuid_time_idx
ON events USING btree (uuid_v8_extract_timestamp(id));

SELECT *
FROM events
WHERE uuid_v8_extract_timestamp(id)
      BETWEEN timestamp_to_stego_time('2026-01-01'::timestamptz)
          AND timestamp_to_stego_time(now())
ORDER BY uuid_v8_extract_timestamp(id);
```

`uuid_v8_extract_timestamp(uuid)` returns a microsecond-scaled `bigint` so it remains compatible with `timestamp_to_stego_time()` and `stego_time_to_timestamp()`. In version 1.1 the internal 48-bit field stores milliseconds, so the returned value has millisecond resolution and its last three decimal digits are zero.

`uuid_stego_in_range()` offers a boolean timestamp-range helper. A functional B-tree index on the extraction function is the explicit and predictable path for indexed time predicates.

### Compare Hidden Times

`uuid_v8_compare(uuid, uuid)` and `uuid_stego_compare(uuid, uuid)` return ordering by extracted hidden time. The extension also defines `<`, `<=`, `>`, and `>=` operators for UUID arguments.

Pigsty packages install these added operators in `public` and qualify their commutator and negator references for PostgreSQL 17 and 18 compatibility. PostgreSQL already has built-in UUID ordering operators, so use the comparison functions or a schema-qualified `OPERATOR(public.<)` expression when hidden-time semantics must be unambiguous.

### Seed and Mode Controls

```sql
SELECT uuid_v8_set_seed('replace-with-a-unique-secret');
SELECT uuid_v8_get_seed();

SELECT uuid_v8_set_encryption_mode('XOR');
SELECT uuid_v8_set_encryption_mode('AES128');
SELECT uuid_v8_set_encryption_mode('AES256');
SELECT uuid_v8_get_encryption_mode();

ALTER SYSTEM SET uuid_v8.encryption_mode = 'AES128';
SELECT pg_reload_conf();
```

The seed is exposed as `uuid_v8.stego_seed` and the mode as `uuid_v8.encryption_mode`. Setter functions change the current session; configuration settings can establish defaults for later sessions. `uuid_v8_get_seed()` returns the active seed, so restrict database access accordingly and never log its result.

### Upgrade and Compatibility Boundaries

```sql
ALTER EXTENSION pg_uuid_v8 UPDATE TO '1.1';
```

Version 1.1 changes timestamp storage from microseconds to milliseconds. The old 48-bit microsecond field rolled over about every 8.9 years and could not reliably recover current absolute dates; the 48-bit millisecond field lasts about 8,925 years. Relative ordering of pre-1.1 values was unaffected, but absolute time extraction and range predicates for those existing values remain unreliable after the upgrade because their encoded representation is not rewritten.

The PGXN metadata targets PostgreSQL 12 or later; current Pigsty packages cover PostgreSQL 14–18. Pigsty packages pin the extension to `public` and make it non-relocatable so the added operators resolve consistently. Keep an ordinary `created_at` column when provenance, auditability, sub-millisecond precision, or migrations across seeds and modes matter.
