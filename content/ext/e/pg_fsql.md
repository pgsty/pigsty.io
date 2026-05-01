---
title: "pg_fsql"
linkTitle: "pg_fsql"
description: "Recursive SQL template engine with JSONB-driven execution"
weight: 4110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/yurc/pg_fsql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">yurc/pg_fsql</div>
    <div class="ext-card__desc">https://github.com/yurc/pg_fsql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_fsql-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_fsql-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_fsql-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_fsql`**](/ext/e/pg_fsql) | `1.1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4110  | [**`pg_fsql`**](/ext/e/pg_fsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsql` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plpgsql`](/ext/e/plpgsql) [`pg_readme`](/ext/e/pg_readme) [`schedoc`](/ext/e/schedoc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Release tag 1.1.0 still ships extension SQL version 1.0; shared_preload_libraries is optional and only needed for session-start GUC availability.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_fsql` | `plpgsql` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_fsql_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-fsql` | - |
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
@ el8.x86_64 18 pg_fsql_18 pg_fsql_18-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fsql_18-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_fsql_18 pg_fsql_18-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fsql_18-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_fsql_18 pg_fsql_18-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fsql_18-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_fsql_18 pg_fsql_18-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fsql_18-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_fsql_18 pg_fsql_18-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fsql_18-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_fsql_18 pg_fsql_18-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fsql_18-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 25.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-fsql postgresql-18-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-18-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_fsql_17 pg_fsql_17-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fsql_17-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_fsql_17 pg_fsql_17-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fsql_17-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_fsql_17 pg_fsql_17-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fsql_17-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_fsql_17 pg_fsql_17-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 19.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fsql_17-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_fsql_17 pg_fsql_17-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fsql_17-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_fsql_17 pg_fsql_17-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fsql_17-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 24.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 26.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 26.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 25.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-fsql postgresql-17-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-17-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_fsql_16 pg_fsql_16-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fsql_16-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_fsql_16 pg_fsql_16-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fsql_16-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_fsql_16 pg_fsql_16-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fsql_16-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_fsql_16 pg_fsql_16-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fsql_16-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_fsql_16 pg_fsql_16-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fsql_16-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_fsql_16 pg_fsql_16-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fsql_16-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 24.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 26.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 26.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 25.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-fsql postgresql-16-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-16-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_fsql_15 pg_fsql_15-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fsql_15-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_fsql_15 pg_fsql_15-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fsql_15-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_fsql_15 pg_fsql_15-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fsql_15-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_fsql_15 pg_fsql_15-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fsql_15-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_fsql_15 pg_fsql_15-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fsql_15-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_fsql_15 pg_fsql_15-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fsql_15-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 25.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 26.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 26.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 25.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-fsql postgresql-15-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-15-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_fsql_14 pg_fsql_14-1.1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fsql_14-1.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_fsql_14 pg_fsql_14-1.1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.1.0 20.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fsql_14-1.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_fsql_14 pg_fsql_14-1.1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fsql_14-1.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_fsql_14 pg_fsql_14-1.1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.1.0 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fsql_14-1.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_fsql_14 pg_fsql_14-1.1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.1.0 20.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fsql_14-1.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_fsql_14 pg_fsql_14-1.1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.1.0 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fsql_14-1.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.1.0 24.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb pigsty 1.1.0 24.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb pigsty 1.1.0 26.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb pigsty 1.1.0 26.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb pigsty 1.1.0 25.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb pigsty 1.1.0 24.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-fsql postgresql-14-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb pigsty 1.1.0 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fsql/postgresql-14-pg-fsql_1.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_fsql` using `pig build`:

```bash
pig build pkg pg_fsql         # build RPM / DEB packages
```


## Install

You can install `pg_fsql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_fsql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_fsql -v 18  # PG 18
pig ext install -y pg_fsql -v 17  # PG 17
pig ext install -y pg_fsql -v 16  # PG 16
pig ext install -y pg_fsql -v 15  # PG 15
pig ext install -y pg_fsql -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_fsql_18       # PG 18
dnf install -y pg_fsql_17       # PG 17
dnf install -y pg_fsql_16       # PG 16
dnf install -y pg_fsql_15       # PG 15
dnf install -y pg_fsql_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-fsql   # PG 18
apt install -y postgresql-17-pg-fsql   # PG 17
apt install -y postgresql-16-pg-fsql   # PG 16
apt install -y postgresql-15-pg-fsql   # PG 15
apt install -y postgresql-14-pg-fsql   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_fsql CASCADE;  -- requires: plpgsql
```


## Usage

> Sources: [README](https://github.com/yurc/pg_fsql/blob/main/README.md), [control file](https://raw.githubusercontent.com/yurc/pg_fsql/main/pg_fsql.control)

`pg_fsql` is a recursive SQL template engine for PostgreSQL. It combines a C-based placeholder renderer with PL/pgSQL template execution, hierarchical template composition, and optional SPI plan caching. The upstream project emphasizes that it does not require superuser privileges.

### Quick Start

```sql
CREATE EXTENSION pg_fsql;

INSERT INTO fsql.templates (path, cmd, body)
VALUES ('user_count', 'exec',
        'SELECT jsonb_build_object(''total'', count(*))
         FROM users WHERE status = {d[status]!r}');

SELECT fsql.run('user_count', '{"status":"active"}');
SELECT fsql.render('user_count', '{"status":"active"}');
```

### Catalog Tables

The extension installs two main catalog tables:

```sql
fsql.templates (
    path varchar(500) primary key,
    cmd varchar(50),
    body text,
    defaults text,
    cached boolean default false
)

fsql.params (
    key_param varchar(255) primary key,
    type_param varchar(255) not null
)
```

`path` is dot-separated and defines the template hierarchy.

### Commands and Placeholders

The README documents six command types:

- `exec` to execute SQL and return `jsonb`
- `ref` to redirect to another template
- `if` to choose a child branch
- `exec_tpl` to execute SQL and re-render the result as a template
- `map` to collect children into a JSON object
- `NULL` for text fragments inserted into parents

The renderer supports placeholders such as:

- `{d[key]}`
- `{d[key]!r}` for `quote_literal`
- `{d[key]!j}` for JSONB literals
- `{d[key]!i}` for `quote_identifier`

The special key `_self` injects the full input JSON object.

### Public API

The upstream public functions include:

- `fsql.run(path, data, debug)` to execute a template tree
- `fsql.render(path, data)` to preview rendered SQL
- `fsql.tree(path)` to inspect hierarchy
- `fsql.explain(path, data)` to trace expansion
- `fsql.validate()` to check templates
- `fsql.depends_on(path)` to inspect dependencies
- `fsql.clear_cache()` to free cached SPI plans

### Hierarchical Example

```sql
INSERT INTO fsql.templates (path, cmd, body) VALUES
    ('report', 'exec',
     'SELECT jsonb_build_object(''data'', array_agg(row_to_json(t)))
      FROM (SELECT {d[cols]} FROM {d[src]} {d[where]}) t'),
    ('report.cols',  NULL, 'id, name, email'),
    ('report.src',   NULL, 'customers'),
    ('report.where', NULL, 'WHERE city = {d[city]!r}');

SELECT fsql.run('report', '{"city":"Moscow"}');
SELECT fsql.render('report', '{"city":"Moscow"}');
```

### Notes

The README lists PostgreSQL 14+ and `plpgsql`. The control file currently declares SQL extension version `1.0`, even though the package task tracks release `1.1.0`. No official release notes were published in the repository; the user-facing README still documents the same core API and behavior.
