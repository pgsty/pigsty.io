---
title: "pg_idkit"
linkTitle: "pg_idkit"
description: "multi-tool for generating new/niche universally unique identifiers (ex. UUIDv6, ULID, KSUID)"
weight: 4500
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/VADOSWARE/pg_idkit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">VADOSWARE/pg_idkit</div>
    <div class="ext-card__desc">https://github.com/VADOSWARE/pg_idkit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_idkit-0.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_idkit-0.4.0.tar.gz</div>
    <div class="ext-card__desc">pg_idkit-0.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_idkit`**](/ext/e/pg_idkit) | `0.4.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4500  | [**`pg_idkit`**](/ext/e/pg_idkit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`snowflake`](/ext/e/snowflake) [`pgx_ulid`](/ext/e/pgx_ulid) [`pg_uuid_v8`](/ext/e/pg_uuid_v8) [`uuid-ossp`](/ext/e/uuid-ossp) [`typeid`](/ext/e/typeid) [`permuteseq`](/ext/e/permuteseq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_idkit` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_idkit_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-idkit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 |
@ el8.x86_64 18 pg_idkit_18 pg_idkit_18-0.4.0-3PIGSTY.el8.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_idkit_18-0.4.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_idkit_18 pg_idkit_18-0.4.0-3PIGSTY.el8.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_idkit_18-0.4.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_idkit_18 pg_idkit_18-0.4.0-3PIGSTY.el9.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_idkit_18-0.4.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_idkit_18 pg_idkit_18-0.4.0-3PIGSTY.el9.aarch64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_idkit_18-0.4.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_idkit_18 pg_idkit_18-0.4.0-3PIGSTY.el10.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_idkit_18-0.4.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_idkit_18 pg_idkit_18-0.4.0-3PIGSTY.el10.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_idkit_18-0.4.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb pigsty 0.4.0 910.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb pigsty 0.4.0 788.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb pigsty 0.4.0 909.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb pigsty 0.4.0 788.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb pigsty 0.4.0 1004.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb pigsty 0.4.0 919.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb pigsty 0.4.0 993.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb pigsty 0.4.0 910.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb pigsty 0.4.0 990.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-idkit postgresql-18-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb pigsty 0.4.0 908.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-18-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_idkit_17 pg_idkit_17-0.4.0-3PIGSTY.el8.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_idkit_17-0.4.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_idkit_17 pg_idkit_17-0.4.0-3PIGSTY.el8.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_idkit_17-0.4.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_idkit_17 pg_idkit_17-0.4.0-3PIGSTY.el9.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_idkit_17-0.4.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_idkit_17 pg_idkit_17-0.4.0-3PIGSTY.el9.aarch64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_idkit_17-0.4.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_idkit_17 pg_idkit_17-0.4.0-3PIGSTY.el10.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_idkit_17-0.4.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_idkit_17 pg_idkit_17-0.4.0-3PIGSTY.el10.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_idkit_17-0.4.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb pigsty 0.4.0 908.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb pigsty 0.4.0 787.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb pigsty 0.4.0 908.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb pigsty 0.4.0 787.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb pigsty 0.4.0 1001.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb pigsty 0.4.0 917.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb pigsty 0.4.0 991.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb pigsty 0.4.0 909.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb pigsty 0.4.0 988.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-idkit postgresql-17-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb pigsty 0.4.0 905.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-17-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_idkit_16 pg_idkit_16-0.4.0-3PIGSTY.el8.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_idkit_16-0.4.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_idkit_16 pg_idkit_16-0.4.0-3PIGSTY.el8.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_idkit_16-0.4.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_idkit_16 pg_idkit_16-0.4.0-3PIGSTY.el9.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_idkit_16-0.4.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_idkit_16 pg_idkit_16-0.4.0-3PIGSTY.el9.aarch64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_idkit_16-0.4.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_idkit_16 pg_idkit_16-0.4.0-3PIGSTY.el10.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_idkit_16-0.4.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_idkit_16 pg_idkit_16-0.4.0-3PIGSTY.el10.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_idkit_16-0.4.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb pigsty 0.4.0 907.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb pigsty 0.4.0 786.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb pigsty 0.4.0 907.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb pigsty 0.4.0 788.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb pigsty 0.4.0 1002.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb pigsty 0.4.0 917.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb pigsty 0.4.0 990.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb pigsty 0.4.0 907.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb pigsty 0.4.0 988.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-idkit postgresql-16-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb pigsty 0.4.0 906.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-16-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_idkit_15 pg_idkit_15-0.4.0-3PIGSTY.el8.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_idkit_15-0.4.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_idkit_15 pg_idkit_15-0.4.0-3PIGSTY.el8.aarch64.rpm pigsty 0.4.0 1021.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_idkit_15-0.4.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_idkit_15 pg_idkit_15-0.4.0-3PIGSTY.el9.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_idkit_15-0.4.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_idkit_15 pg_idkit_15-0.4.0-3PIGSTY.el9.aarch64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_idkit_15-0.4.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_idkit_15 pg_idkit_15-0.4.0-3PIGSTY.el10.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_idkit_15-0.4.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_idkit_15 pg_idkit_15-0.4.0-3PIGSTY.el10.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_idkit_15-0.4.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb pigsty 0.4.0 902.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb pigsty 0.4.0 781.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb pigsty 0.4.0 901.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb pigsty 0.4.0 782.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb pigsty 0.4.0 993.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb pigsty 0.4.0 910.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb pigsty 0.4.0 983.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb pigsty 0.4.0 901.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb pigsty 0.4.0 979.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-idkit postgresql-15-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb pigsty 0.4.0 899.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-15-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_idkit_14 pg_idkit_14-0.4.0-3PIGSTY.el8.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_idkit_14-0.4.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_idkit_14 pg_idkit_14-0.4.0-3PIGSTY.el8.aarch64.rpm pigsty 0.4.0 1018.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_idkit_14-0.4.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_idkit_14 pg_idkit_14-0.4.0-3PIGSTY.el9.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_idkit_14-0.4.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_idkit_14 pg_idkit_14-0.4.0-3PIGSTY.el9.aarch64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_idkit_14-0.4.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_idkit_14 pg_idkit_14-0.4.0-3PIGSTY.el10.x86_64.rpm pigsty 0.4.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_idkit_14-0.4.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_idkit_14 pg_idkit_14-0.4.0-3PIGSTY.el10.aarch64.rpm pigsty 0.4.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_idkit_14-0.4.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb pigsty 0.4.0 899.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb pigsty 0.4.0 779.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb pigsty 0.4.0 899.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb pigsty 0.4.0 781.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb pigsty 0.4.0 991.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb pigsty 0.4.0 908.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb pigsty 0.4.0 981.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb pigsty 0.4.0 899.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb pigsty 0.4.0 978.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-idkit postgresql-14-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb pigsty 0.4.0 896.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-idkit/postgresql-14-pg-idkit_0.4.0-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_idkit` using `pig build`:

```bash
pig build pkg pg_idkit         # build RPM / DEB packages
```


## Install

You can install `pg_idkit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_idkit;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_idkit -v 18  # PG 18
pig ext install -y pg_idkit -v 17  # PG 17
pig ext install -y pg_idkit -v 16  # PG 16
pig ext install -y pg_idkit -v 15  # PG 15
pig ext install -y pg_idkit -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_idkit_18       # PG 18
dnf install -y pg_idkit_17       # PG 17
dnf install -y pg_idkit_16       # PG 16
dnf install -y pg_idkit_15       # PG 15
dnf install -y pg_idkit_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-idkit   # PG 18
apt install -y postgresql-17-pg-idkit   # PG 17
apt install -y postgresql-16-pg-idkit   # PG 16
apt install -y postgresql-15-pg-idkit   # PG 15
apt install -y postgresql-14-pg-idkit   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_idkit;
```




## Usage

> [pg_idkit: multi-tool for generating new/niche universally unique identifiers](https://github.com/VADOSWARE/pg_idkit)

```sql
CREATE EXTENSION pg_idkit;
SELECT idkit_uuidv7_generate();
```

### Available Functions

| Methodology | Function | Description |
|---|---|---|
| UUID v6 | `idkit_uuidv6_generate()` | UUID v6 (RFC 4122) |
| | `idkit_uuidv6_generate_uuid()` | UUID v6 as native UUID type |
| | `idkit_uuidv6_extract_timestamptz(TEXT)` | Extract timestamp from UUID v6 |
| UUID v7 | `idkit_uuidv7_generate()` | UUID v7 (RFC 4122) |
| | `idkit_uuidv7_generate_uuid()` | UUID v7 as native UUID type |
| | `idkit_uuidv7_extract_timestamptz(TEXT)` | Extract timestamp from UUID v7 |
| NanoID | `idkit_nanoid_generate()` | NanoID |
| | `idkit_nanoid_custom_generate_text()` | NanoID with custom length and alphabet |
| KSUID | `idkit_ksuid_generate()` | K-Sortable UID |
| | `idkit_ksuid_extract_timestamptz(TEXT)` | Extract timestamp from KSUID |
| | `idkit_ksuidms_generate()` | KSUID with millisecond precision |
| | `idkit_ksuidms_extract_timestamptz(TEXT)` | Extract timestamp from KSUID-ms |
| ULID | `idkit_ulid_generate()` | Universally Unique Lexicographically Sortable ID |
| | `idkit_ulid_extract_timestamptz(TEXT)` | Extract timestamp from ULID |
| Timeflake | `idkit_timeflake_generate()` | Snowflake + Instagram ID + Firebase PushID |
| | `idkit_timeflake_extract_timestamptz(TEXT)` | Extract timestamp from Timeflake |
| PushID | `idkit_pushid_generate()` | Google Firebase PushID |
| XID | `idkit_xid_generate()` | XID |
| | `idkit_xid_extract_timestamptz(TEXT)` | Extract timestamp from XID |
| CUID | `idkit_cuid_generate()` | CUID (deprecated) |
| | `idkit_cuid_extract_timestamptz(TEXT)` | Extract timestamp from CUID |
| CUID2 | `idkit_cuid2_generate()` | CUID2 |
| | `idkit_cuid2_generate_with_len(length)` | CUID2 with custom length |
| TypeID | `idkit_typeid_generate(TEXT)` | TypeID with prefix and UUIDv7 |
| | `idkit_typeid_generate_text(TEXT)` | TypeID as text |
| | `idkit_typeid_from_uuid_v7(TEXT, TEXT)` | TypeID from a given UUID v7 |
| | `idkit_typeid_extract_timestamptz(TEXT)` | Extract timestamp from TypeID |

### Examples

```sql
-- Generate different ID types
SELECT idkit_uuidv7_generate();           -- 018c106f-9304-79bb-b5be-4483b92b036c
SELECT idkit_nanoid_generate();            -- A8jFA0r3NC6FdalR4LEJ0
SELECT idkit_ksuid_generate();             -- 2HMQIBkTJmEN11JI7tvSTMwfYI3
SELECT idkit_ulid_generate();              -- 01HPYV2X17GM5SQP22M3DVFZY3
SELECT idkit_cuid2_generate();             -- clrjx3bwh0000fj3x4c2y1z0s

-- Extract timestamp
SELECT idkit_uuidv7_extract_timestamptz('018c106f-9304-79bb-b5be-4483b92b036c');
```
