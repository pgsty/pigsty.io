---
title: "typeid"
linkTitle: "typeid"
description: "Allows to use TypeIDs in Postgres natively"
weight: 4580
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/blitss/typeid-postgres">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">blitss/typeid-postgres</div>
    <div class="ext-card__desc">https://github.com/blitss/typeid-postgres</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/typeid-postgres-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">typeid-postgres-0.3.0.tar.gz</div>
    <div class="ext-card__desc">typeid-postgres-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_typeid`**](/ext/e/typeid) | `0.3.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4580  | [**`typeid`**](/ext/e/typeid) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`snowflake`](/ext/e/snowflake) [`pg_uuid_v8`](/ext/e/pg_uuid_v8) [`uuid-ossp`](/ext/e/uuid-ossp) [`pg_hashids`](/ext/e/pg_hashids) [`pg_slug_gen`](/ext/e/pg_slug_gen) [`base36`](/ext/e/base36) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_typeid` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_typeid_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-typeid` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el8.x86_64 18 pg_typeid_18 pg_typeid_18-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 909.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_typeid_18-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_typeid_18 pg_typeid_18-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 818.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_typeid_18-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_typeid_18 pg_typeid_18-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 918.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_typeid_18-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_typeid_18 pg_typeid_18-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 866.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_typeid_18-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_typeid_18 pg_typeid_18-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 919.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_typeid_18-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_typeid_18 pg_typeid_18-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 845.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_typeid_18-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb pigsty 0.3.0 724.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb pigsty 0.3.0 606.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~trixie_amd64.deb pigsty 0.3.0 724.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~trixie_arm64.deb pigsty 0.3.0 607.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~jammy_amd64.deb pigsty 0.3.0 808.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~jammy_arm64.deb pigsty 0.3.0 716.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~noble_amd64.deb pigsty 0.3.0 799.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~noble_arm64.deb pigsty 0.3.0 707.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~resolute_amd64.deb pigsty 0.3.0 795.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-typeid postgresql-18-typeid_0.3.0-3PIGSTY~resolute_arm64.deb pigsty 0.3.0 706.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-18-typeid_0.3.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_typeid_17 pg_typeid_17-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 906.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_typeid_17-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_typeid_17 pg_typeid_17-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 815.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_typeid_17-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_typeid_17 pg_typeid_17-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 914.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_typeid_17-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_typeid_17 pg_typeid_17-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 863.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_typeid_17-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_typeid_17 pg_typeid_17-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 914.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_typeid_17-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_typeid_17 pg_typeid_17-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 845.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_typeid_17-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb pigsty 0.3.0 722.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb pigsty 0.3.0 606.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~trixie_amd64.deb pigsty 0.3.0 722.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~trixie_arm64.deb pigsty 0.3.0 606.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~jammy_amd64.deb pigsty 0.3.0 805.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~jammy_arm64.deb pigsty 0.3.0 715.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~noble_amd64.deb pigsty 0.3.0 796.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~noble_arm64.deb pigsty 0.3.0 705.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~resolute_amd64.deb pigsty 0.3.0 792.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-typeid postgresql-17-typeid_0.3.0-3PIGSTY~resolute_arm64.deb pigsty 0.3.0 704.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-17-typeid_0.3.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_typeid_16 pg_typeid_16-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 904.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_typeid_16-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_typeid_16 pg_typeid_16-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 813.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_typeid_16-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_typeid_16 pg_typeid_16-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 912.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_typeid_16-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_typeid_16 pg_typeid_16-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 862.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_typeid_16-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_typeid_16 pg_typeid_16-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 913.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_typeid_16-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_typeid_16 pg_typeid_16-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 844.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_typeid_16-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb pigsty 0.3.0 721.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb pigsty 0.3.0 604.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~trixie_amd64.deb pigsty 0.3.0 721.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~trixie_arm64.deb pigsty 0.3.0 605.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~jammy_amd64.deb pigsty 0.3.0 804.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~jammy_arm64.deb pigsty 0.3.0 714.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~noble_amd64.deb pigsty 0.3.0 795.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~noble_arm64.deb pigsty 0.3.0 705.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~resolute_amd64.deb pigsty 0.3.0 790.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-typeid postgresql-16-typeid_0.3.0-3PIGSTY~resolute_arm64.deb pigsty 0.3.0 703.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-16-typeid_0.3.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_typeid_15 pg_typeid_15-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 895.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_typeid_15-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_typeid_15 pg_typeid_15-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 805.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_typeid_15-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_typeid_15 pg_typeid_15-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 903.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_typeid_15-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_typeid_15 pg_typeid_15-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 852.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_typeid_15-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_typeid_15 pg_typeid_15-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 903.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_typeid_15-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_typeid_15 pg_typeid_15-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 840.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_typeid_15-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb pigsty 0.3.0 715.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb pigsty 0.3.0 600.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~trixie_amd64.deb pigsty 0.3.0 714.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~trixie_arm64.deb pigsty 0.3.0 600.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~jammy_amd64.deb pigsty 0.3.0 795.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~jammy_arm64.deb pigsty 0.3.0 708.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~noble_amd64.deb pigsty 0.3.0 787.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~noble_arm64.deb pigsty 0.3.0 699.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~resolute_amd64.deb pigsty 0.3.0 783.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-typeid postgresql-15-typeid_0.3.0-3PIGSTY~resolute_arm64.deb pigsty 0.3.0 697.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-15-typeid_0.3.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_typeid_14 pg_typeid_14-0.3.0-3PIGSTY.el8.x86_64.rpm pigsty 0.3.0 892.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_typeid_14-0.3.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_typeid_14 pg_typeid_14-0.3.0-3PIGSTY.el8.aarch64.rpm pigsty 0.3.0 802.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_typeid_14-0.3.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_typeid_14 pg_typeid_14-0.3.0-3PIGSTY.el9.x86_64.rpm pigsty 0.3.0 900.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_typeid_14-0.3.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_typeid_14 pg_typeid_14-0.3.0-3PIGSTY.el9.aarch64.rpm pigsty 0.3.0 849.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_typeid_14-0.3.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_typeid_14 pg_typeid_14-0.3.0-3PIGSTY.el10.x86_64.rpm pigsty 0.3.0 899.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_typeid_14-0.3.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_typeid_14 pg_typeid_14-0.3.0-3PIGSTY.el10.aarch64.rpm pigsty 0.3.0 839.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_typeid_14-0.3.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb pigsty 0.3.0 713.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb pigsty 0.3.0 598.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~trixie_amd64.deb pigsty 0.3.0 712.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~trixie_arm64.deb pigsty 0.3.0 599.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~jammy_amd64.deb pigsty 0.3.0 795.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~jammy_arm64.deb pigsty 0.3.0 708.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~noble_amd64.deb pigsty 0.3.0 784.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~noble_arm64.deb pigsty 0.3.0 697.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~resolute_amd64.deb pigsty 0.3.0 781.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-typeid postgresql-14-typeid_0.3.0-3PIGSTY~resolute_arm64.deb pigsty 0.3.0 695.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-typeid/postgresql-14-typeid_0.3.0-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_typeid` using `pig build`:

```bash
pig build pkg pg_typeid         # build RPM / DEB packages
```


## Install

You can install `pg_typeid` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_typeid;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_typeid -v 18  # PG 18
pig ext install -y pg_typeid -v 17  # PG 17
pig ext install -y pg_typeid -v 16  # PG 16
pig ext install -y pg_typeid -v 15  # PG 15
pig ext install -y pg_typeid -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_typeid_18       # PG 18
dnf install -y pg_typeid_17       # PG 17
dnf install -y pg_typeid_16       # PG 16
dnf install -y pg_typeid_15       # PG 15
dnf install -y pg_typeid_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-typeid   # PG 18
apt install -y postgresql-17-typeid   # PG 17
apt install -y postgresql-16-typeid   # PG 16
apt install -y postgresql-15-typeid   # PG 15
apt install -y postgresql-14-typeid   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION typeid;
```




## Usage

> [typeid: TypeID support for PostgreSQL - type-safe, sortable UUIDs with a prefix](https://github.com/blitss/typeid-postgres)

TypeID is an extension of UUIDv7 with a type prefix, stored internally as a prefix + binary UUID.

```sql
CREATE EXTENSION typeid;
```

### Functions

| Function | Return Type | Description |
|---|---|---|
| `typeid_generate(prefix TEXT)` | `typeid` | Generate a new TypeID with the given prefix |
| `typeid_generate_nil()` | `typeid` | Generate a TypeID with an empty prefix |
| `typeid_is_valid(input TEXT)` | `BOOLEAN` | Check if a TypeID string is valid |
| `typeid_prefix(typeid)` | `TEXT` | Extract the prefix from a TypeID |
| `typeid_to_uuid(typeid)` | `UUID` | Convert a TypeID to a UUID |
| `uuid_to_typeid(prefix TEXT, uuid UUID)` | `typeid` | Convert a UUID to a TypeID |
| `typeid_uuid_generate_v7()` | `UUID` | Generate a UUID v7 |
| `typeid_has_prefix(typeid, prefix TEXT)` | `BOOLEAN` | Check if a TypeID has a specific prefix |
| `typeid_is_nil_prefix(typeid)` | `BOOLEAN` | Check if a TypeID has a nil prefix |
| `typeid_generate_batch(prefix TEXT, count INTEGER)` | `SETOF typeid` | Generate a batch of TypeIDs |

### Operators

- `<`, `<=`, `=`, `>=`, `>`, `<>` for comparing TypeIDs
- `@>` for checking if a TypeID has a certain prefix (e.g. `id @> 'user'`)
- B-tree operator class for indexing

### Examples

```sql
-- Create table with TypeID primary key
CREATE TABLE users (
  id typeid DEFAULT typeid_generate('user') NOT NULL PRIMARY KEY,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Insert data
INSERT INTO users (id) SELECT typeid_generate('user') FROM generate_series(1, 100);

-- Extract prefix
SELECT typeid_prefix(id) FROM users LIMIT 1;  -- 'user'

-- Check prefix with operator
SELECT * FROM users WHERE id @> 'user';

-- Convert to UUID
SELECT typeid_to_uuid(id) FROM users LIMIT 1;
```
