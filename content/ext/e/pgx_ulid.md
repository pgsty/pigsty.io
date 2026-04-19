---
title: "pgx_ulid"
linkTitle: "pgx_ulid"
description: "ulid type and methods"
weight: 4510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pksunkara/pgx_ulid">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pksunkara/pgx_ulid</div>
    <div class="ext-card__desc">https://github.com/pksunkara/pgx_ulid</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgx_ulid-0.2.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgx_ulid-0.2.3.tar.gz</div>
    <div class="ext-card__desc">pgx_ulid-0.2.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgx_ulid`**](/ext/e/pgx_ulid) | `0.2.3` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4510  | [**`pgx_ulid`**](/ext/e/pgx_ulid) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`uuid-ossp`](/ext/e/uuid-ossp) [`pg_hashids`](/ext/e/pg_hashids) [`permuteseq`](/ext/e/permuteseq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> shared_preload_libraries = pgx_ulid is only required for gen_monotonic_ulid(); other functions work without it.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pgx_ulid` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pgx_ulid_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgx-ulid` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 | AVAIL PIGSTY 0.2.3 1 |
@ el8.x86_64 18 pgx_ulid_18 pgx_ulid_18-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 389.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgx_ulid_18-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgx_ulid_18 pgx_ulid_18-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 273.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgx_ulid_18-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgx_ulid_18 pgx_ulid_18-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 406.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgx_ulid_18-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgx_ulid_18 pgx_ulid_18-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 292.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgx_ulid_18-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgx_ulid_18 pgx_ulid_18-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 406.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgx_ulid_18-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgx_ulid_18 pgx_ulid_18-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 292.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgx_ulid_18-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 322.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 213.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 322.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 213.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 363.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 247.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 360.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgx-ulid postgresql-18-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 246.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-18-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgx_ulid_17 pgx_ulid_17-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 389.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgx_ulid_17-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgx_ulid_17 pgx_ulid_17-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 273.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgx_ulid_17-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgx_ulid_17 pgx_ulid_17-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 406.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgx_ulid_17-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgx_ulid_17 pgx_ulid_17-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 292.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgx_ulid_17-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgx_ulid_17 pgx_ulid_17-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 406.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgx_ulid_17-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgx_ulid_17 pgx_ulid_17-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 292.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgx_ulid_17-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 322.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 213.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 322.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 213.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 362.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 247.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 360.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgx-ulid postgresql-17-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 245.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-17-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgx_ulid_16 pgx_ulid_16-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 389.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgx_ulid_16-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgx_ulid_16 pgx_ulid_16-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 273.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgx_ulid_16-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgx_ulid_16 pgx_ulid_16-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 406.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgx_ulid_16-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgx_ulid_16 pgx_ulid_16-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 292.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgx_ulid_16-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgx_ulid_16 pgx_ulid_16-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 407.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgx_ulid_16-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgx_ulid_16 pgx_ulid_16-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 292.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgx_ulid_16-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 322.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 213.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 322.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 213.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 362.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 247.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 359.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgx-ulid postgresql-16-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 245.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-16-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgx_ulid_15 pgx_ulid_15-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 389.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgx_ulid_15-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgx_ulid_15 pgx_ulid_15-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 273.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgx_ulid_15-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgx_ulid_15 pgx_ulid_15-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 406.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgx_ulid_15-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgx_ulid_15 pgx_ulid_15-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 292.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgx_ulid_15-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgx_ulid_15 pgx_ulid_15-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 406.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgx_ulid_15-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgx_ulid_15 pgx_ulid_15-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 292.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgx_ulid_15-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 322.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 213.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 322.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 213.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 362.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 247.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 360.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgx-ulid postgresql-15-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 246.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-15-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgx_ulid_14 pgx_ulid_14-0.2.3-1PIGSTY.el8.x86_64.rpm pigsty 0.2.3 388.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgx_ulid_14-0.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgx_ulid_14 pgx_ulid_14-0.2.3-1PIGSTY.el8.aarch64.rpm pigsty 0.2.3 272.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgx_ulid_14-0.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgx_ulid_14 pgx_ulid_14-0.2.3-1PIGSTY.el9.x86_64.rpm pigsty 0.2.3 405.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgx_ulid_14-0.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgx_ulid_14 pgx_ulid_14-0.2.3-1PIGSTY.el9.aarch64.rpm pigsty 0.2.3 291.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgx_ulid_14-0.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgx_ulid_14 pgx_ulid_14-0.2.3-1PIGSTY.el10.x86_64.rpm pigsty 0.2.3 406.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgx_ulid_14-0.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgx_ulid_14 pgx_ulid_14-0.2.3-1PIGSTY.el10.aarch64.rpm pigsty 0.2.3 291.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgx_ulid_14-0.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb pigsty 0.2.3 322.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb pigsty 0.2.3 213.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb pigsty 0.2.3 322.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb pigsty 0.2.3 212.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb pigsty 0.2.3 362.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb pigsty 0.2.3 247.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb pigsty 0.2.3 359.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgx-ulid postgresql-14-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb pigsty 0.2.3 245.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgx-ulid/postgresql-14-pgx-ulid_0.2.3-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgx_ulid` using `pig build`:

```bash
pig build pkg pgx_ulid         # build RPM / DEB packages
```


## Install

You can install `pgx_ulid` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgx_ulid;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgx_ulid -v 18  # PG 18
pig ext install -y pgx_ulid -v 17  # PG 17
pig ext install -y pgx_ulid -v 16  # PG 16
pig ext install -y pgx_ulid -v 15  # PG 15
pig ext install -y pgx_ulid -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgx_ulid_18       # PG 18
dnf install -y pgx_ulid_17       # PG 17
dnf install -y pgx_ulid_16       # PG 16
dnf install -y pgx_ulid_15       # PG 15
dnf install -y pgx_ulid_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgx-ulid   # PG 18
apt install -y postgresql-17-pgx-ulid   # PG 17
apt install -y postgresql-16-pgx-ulid   # PG 16
apt install -y postgresql-15-pgx-ulid   # PG 15
apt install -y postgresql-14-pgx-ulid   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgx_ulid';
```


**Create Extension**:

```sql
CREATE EXTENSION pgx_ulid;
```


## Usage

Sources: [README](https://github.com/pksunkara/pgx_ulid/blob/master/README.md), [releases](https://github.com/pksunkara/pgx_ulid/releases)

`pgx_ulid` provides a native `ulid` type, generators, and casts to and from `timestamp` and `uuid`. The README documents binary storage and monotonic ULID support.

### Enable the extension

```sql
CREATE EXTENSION ulid;
-- or CREATE EXTENSION pgx_ulid; if installed manually under that name
```

### Generate ULIDs

```sql
SELECT gen_ulid();
SELECT gen_monotonic_ulid();
```

`gen_monotonic_ulid()` needs:

```conf
shared_preload_libraries = 'pgx_ulid'
```

The README explicitly says this preload requirement only affects `gen_monotonic_ulid()`; the rest of the extension works without it.

### Use `ulid` as a primary key

```sql
CREATE TABLE users (
  id ulid NOT NULL DEFAULT gen_ulid() PRIMARY KEY,
  name text NOT NULL
);

SELECT * FROM users
WHERE id = '01ARZ3NDEKTSV4RRFFQ69G5FAV';
```

### Casts and range queries

```sql
ALTER TABLE users
ADD COLUMN created_at timestamp GENERATED ALWAYS AS (id::timestamp) STORED;

SELECT * FROM users
WHERE id BETWEEN '2023-09-15'::timestamp::ulid
            AND '2023-09-16'::timestamp::ulid;
```

The README also documents casts between `ulid` and `uuid`.

### Caveats

- Monotonic ULIDs use shared memory plus an LWLock to keep the last generated value.
- The README notes that monotonic generation can theoretically overflow and raise an error, although it treats this as negligible in practice.
- Release `v0.2.3` is current upstream as of 2026-04-19, but upstream did not publish separate user-facing release notes for it.
