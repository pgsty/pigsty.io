---
title: "pgcozy"
linkTitle: "pgcozy"
description: "Pre-warming shared buffers according to previous pg_buffercache snapshots for PostgreSQL."
weight: 5190
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/vventirozos/pgcozy">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">vventirozos/pgcozy</div>
    <div class="ext-card__desc">https://github.com/vventirozos/pgcozy</div>
  </a>
  <a class="ext-card ext-card--source" href="pgcozy-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgcozy-1.0.tar.gz</div>
    <div class="ext-card__desc">pgcozy-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgcozy`**](/ext/e/pgcozy) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5190  | [**`pgcozy`**](/ext/e/pgcozy) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgfincore`](/ext/e/pgfincore) [`pg_cooldown`](/ext/e/pg_cooldown) [`pg_prewarm`](/ext/e/pg_prewarm) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_repack`](/ext/e/pg_repack) [`pg_squeeze`](/ext/e/pg_squeeze) [`pg_visibility`](/ext/e/pg_visibility) [`system_stats`](/ext/e/system_stats) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgcozy` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgcozy_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgcozy` | - |
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
@ el8.x86_64 18 pgcozy_18 pgcozy_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcozy_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgcozy_18 pgcozy_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcozy_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgcozy_18 pgcozy_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcozy_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgcozy_18 pgcozy_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcozy_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgcozy_18 pgcozy_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcozy_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgcozy_18 pgcozy_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcozy_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgcozy postgresql-18-pgcozy_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-18-pgcozy_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgcozy_17 pgcozy_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcozy_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgcozy_17 pgcozy_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcozy_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgcozy_17 pgcozy_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcozy_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgcozy_17 pgcozy_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcozy_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgcozy_17 pgcozy_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcozy_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgcozy_17 pgcozy_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcozy_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgcozy postgresql-17-pgcozy_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-17-pgcozy_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgcozy_16 pgcozy_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcozy_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgcozy_16 pgcozy_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcozy_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgcozy_16 pgcozy_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcozy_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgcozy_16 pgcozy_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcozy_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgcozy_16 pgcozy_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcozy_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgcozy_16 pgcozy_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcozy_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgcozy postgresql-16-pgcozy_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-16-pgcozy_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgcozy_15 pgcozy_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcozy_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgcozy_15 pgcozy_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcozy_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgcozy_15 pgcozy_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcozy_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgcozy_15 pgcozy_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcozy_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgcozy_15 pgcozy_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcozy_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgcozy_15 pgcozy_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcozy_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgcozy postgresql-15-pgcozy_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-15-pgcozy_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgcozy_14 pgcozy_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcozy_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgcozy_14 pgcozy_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcozy_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgcozy_14 pgcozy_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcozy_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgcozy_14 pgcozy_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 10.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcozy_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgcozy_14 pgcozy_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcozy_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgcozy_14 pgcozy_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 10.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcozy_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgcozy postgresql-14-pgcozy_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 8.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcozy/postgresql-14-pgcozy_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgcozy` using `pig build`:

```bash
pig build pkg pgcozy         # build RPM / DEB packages
```


## Install

You can install `pgcozy` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgcozy;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgcozy -v 18  # PG 18
pig ext install -y pgcozy -v 17  # PG 17
pig ext install -y pgcozy -v 16  # PG 16
pig ext install -y pgcozy -v 15  # PG 15
pig ext install -y pgcozy -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgcozy_18       # PG 18
dnf install -y pgcozy_17       # PG 17
dnf install -y pgcozy_16       # PG 16
dnf install -y pgcozy_15       # PG 15
dnf install -y pgcozy_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgcozy   # PG 18
apt install -y postgresql-17-pgcozy   # PG 17
apt install -y postgresql-16-pgcozy   # PG 16
apt install -y postgresql-15-pgcozy   # PG 15
apt install -y postgresql-14-pgcozy   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgcozy;
```




## Usage

> [pgcozy: Pre-warming shared buffers according to previous pg_buffercache snapshots for PostgreSQL.](https://github.com/vventirozos/pgcozy)

pgcozy snapshots the current shared buffer state and can later restore (pre-warm) buffers from those snapshots. Requires `pg_buffercache` and `pg_prewarm` extensions.

### Initialize

```sql
SELECT pgcozy_init();
```

Creates the `pgcozy` schema with a `snapshots` table and the `cozy_type` type.

### Take a Snapshot

```sql
-- Snapshot buffer pages with usagecount >= 3 (popularity 1-5)
SELECT pgcozy_snapshot(3);

-- Snapshot all buffered pages (popularity = 0)
SELECT pgcozy_snapshot(0);
```

Snapshots are stored as JSONB in `pgcozy.snapshots` with columns: `id`, `snapshot_date`, `snapshot`. Each entry contains `table_name`, `block_no`, and `popularity`.

### Warm from a Snapshot

```sql
-- Warm from a specific snapshot by ID
SELECT pgcozy_warm(1);

-- Warm from the latest snapshot
SELECT pgcozy_warm(0);
```

### Review Snapshots

```sql
SELECT id, snapshot_date FROM pgcozy.snapshots;
```

Snapshots are stored in JSONB and can be reviewed, backed up, or transferred between servers.
