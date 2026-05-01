---
title: "pg_cooldown"
linkTitle: "pg_cooldown"
description: "remove buffered pages for specific relations"
weight: 5070
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rbergm/pg_cooldown">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rbergm/pg_cooldown</div>
    <div class="ext-card__desc">https://github.com/rbergm/pg_cooldown</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_cooldown-0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_cooldown-0.1.tar.gz</div>
    <div class="ext-card__desc">pg_cooldown-0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_cooldown`**](/ext/e/pg_cooldown) | `0.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5070  | [**`pg_cooldown`**](/ext/e/pg_cooldown) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgfincore`](/ext/e/pgfincore) [`pgcozy`](/ext/e/pgcozy) [`pg_prewarm`](/ext/e/pg_prewarm) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_repack`](/ext/e/pg_repack) [`pg_squeeze`](/ext/e/pg_squeeze) [`system_stats`](/ext/e/system_stats) [`pgmeminfo`](/ext/e/pgmeminfo) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_cooldown` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_cooldown_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-cooldown` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
@ el8.x86_64 18 pg_cooldown_18 pg_cooldown_18-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cooldown_18-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_cooldown_18 pg_cooldown_18-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cooldown_18-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_cooldown_18 pg_cooldown_18-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cooldown_18-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_cooldown_18 pg_cooldown_18-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cooldown_18-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_cooldown_18 pg_cooldown_18-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cooldown_18-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_cooldown_18 pg_cooldown_18-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cooldown_18-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb pigsty 0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb pigsty 0.1 12.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb pigsty 0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-cooldown postgresql-18-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb pigsty 0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-18-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_cooldown_17 pg_cooldown_17-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cooldown_17-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_cooldown_17 pg_cooldown_17-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cooldown_17-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_cooldown_17 pg_cooldown_17-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cooldown_17-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_cooldown_17 pg_cooldown_17-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cooldown_17-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_cooldown_17 pg_cooldown_17-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cooldown_17-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_cooldown_17 pg_cooldown_17-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cooldown_17-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb pigsty 0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb pigsty 0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-cooldown postgresql-17-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb pigsty 0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-17-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_cooldown_16 pg_cooldown_16-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cooldown_16-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_cooldown_16 pg_cooldown_16-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cooldown_16-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_cooldown_16 pg_cooldown_16-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cooldown_16-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_cooldown_16 pg_cooldown_16-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cooldown_16-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_cooldown_16 pg_cooldown_16-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cooldown_16-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_cooldown_16 pg_cooldown_16-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 16.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cooldown_16-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb pigsty 0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb pigsty 0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-cooldown postgresql-16-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb pigsty 0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-16-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_cooldown_15 pg_cooldown_15-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cooldown_15-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_cooldown_15 pg_cooldown_15-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cooldown_15-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_cooldown_15 pg_cooldown_15-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cooldown_15-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_cooldown_15 pg_cooldown_15-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cooldown_15-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_cooldown_15 pg_cooldown_15-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cooldown_15-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_cooldown_15 pg_cooldown_15-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 16.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cooldown_15-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb pigsty 0.1 12.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb pigsty 0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb pigsty 0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-cooldown postgresql-15-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb pigsty 0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-15-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_cooldown_14 pg_cooldown_14-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cooldown_14-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_cooldown_14 pg_cooldown_14-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 16.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cooldown_14-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_cooldown_14 pg_cooldown_14-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cooldown_14-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_cooldown_14 pg_cooldown_14-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 16.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cooldown_14-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_cooldown_14 pg_cooldown_14-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cooldown_14-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_cooldown_14 pg_cooldown_14-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 16.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cooldown_14-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb pigsty 0.1 11.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb pigsty 0.1 11.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb pigsty 0.1 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb pigsty 0.1 13.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb pigsty 0.1 12.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb pigsty 0.1 12.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb pigsty 0.1 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-cooldown postgresql-14-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb pigsty 0.1 12.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cooldown/postgresql-14-pg-cooldown_0.1-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_cooldown` using `pig build`:

```bash
pig build pkg pg_cooldown         # build RPM / DEB packages
```


## Install

You can install `pg_cooldown` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_cooldown;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_cooldown -v 18  # PG 18
pig ext install -y pg_cooldown -v 17  # PG 17
pig ext install -y pg_cooldown -v 16  # PG 16
pig ext install -y pg_cooldown -v 15  # PG 15
pig ext install -y pg_cooldown -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_cooldown_18       # PG 18
dnf install -y pg_cooldown_17       # PG 17
dnf install -y pg_cooldown_16       # PG 16
dnf install -y pg_cooldown_15       # PG 15
dnf install -y pg_cooldown_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-cooldown   # PG 18
apt install -y postgresql-17-pg-cooldown   # PG 17
apt install -y postgresql-16-pg-cooldown   # PG 16
apt install -y postgresql-15-pg-cooldown   # PG 15
apt install -y postgresql-14-pg-cooldown   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_cooldown;
```




## Usage

> [pg_cooldown: remove buffered pages for specific relations](https://github.com/rbergm/pg_cooldown)

pg_cooldown is the complement to `pg_prewarm`: it removes all buffered pages of a specific relation from the shared buffer, useful for simulating cold-start scenarios in research and testing.

### Remove Pages from Shared Buffer

```sql
-- Remove all data pages of a table
SELECT pg_cooldown('my_relation');

-- Remove pages of a primary key index
SELECT pg_cooldown('my_relation_pkey');

-- Remove pages of any index
SELECT pg_cooldown('my_index_name');
```
