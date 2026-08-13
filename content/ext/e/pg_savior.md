---
title: "pg_savior"
linkTitle: "pg_savior"
description: "Postgres extension to save OOPS mistakes"
weight: 5810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/viggy28/pg_savior">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">viggy28/pg_savior</div>
    <div class="ext-card__desc">https://github.com/viggy28/pg_savior</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_savior-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_savior-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_savior-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_savior`**](/ext/e/pg_savior) | `0.1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5810  | [**`pg_savior`**](/ext/e/pg_savior) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`table_log`](/ext/e/table_log) [`safeupdate`](/ext/e/safeupdate) [`pg_drop_events`](/ext/e/pg_drop_events) [`pg_strict`](/ext/e/pg_strict) [`pgmemento`](/ext/e/pgmemento) [`pgaudit`](/ext/e/pgaudit) [`pg_cheat_funcs`](/ext/e/pg_cheat_funcs) [`pg_crash`](/ext/e/pg_crash) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`block_copy_command`](/ext/e/block_copy_command) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> -tuplestore_donestoring , breaks on pg18 @ el


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_savior` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_savior_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-savior` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_savior_18 pg_savior_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_savior_18 pg_savior_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_savior_18 pg_savior_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_savior_18 pg_savior_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_savior_18 pg_savior_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_savior_18 pg_savior_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 17.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-18-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_savior_17 pg_savior_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_savior_17 pg_savior_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_savior_17 pg_savior_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_savior_17 pg_savior_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_savior_17 pg_savior_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_savior_17 pg_savior_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 17.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 22.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-17-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_savior_16 pg_savior_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_savior_16 pg_savior_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_savior_16 pg_savior_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_savior_16 pg_savior_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_savior_16 pg_savior_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_savior_16 pg_savior_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 17.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 21.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-16-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_savior_15 pg_savior_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_savior_15 pg_savior_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_savior_15 pg_savior_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_savior_15 pg_savior_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_savior_15 pg_savior_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_savior_15 pg_savior_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 17.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 21.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 19.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-15-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_savior_14 pg_savior_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 17.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_savior_14 pg_savior_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_savior_14 pg_savior_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_savior_14 pg_savior_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_savior_14 pg_savior_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_savior_14 pg_savior_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 17.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 21.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 18.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-savior/postgresql-14-pg-savior_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_savior` using `pig build`:

```bash
pig build pkg pg_savior         # build RPM / DEB packages
```


## Install

You can install `pg_savior` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_savior;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_savior -v 18  # PG 18
pig ext install -y pg_savior -v 17  # PG 17
pig ext install -y pg_savior -v 16  # PG 16
pig ext install -y pg_savior -v 15  # PG 15
pig ext install -y pg_savior -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_savior_18       # PG 18
dnf install -y pg_savior_17       # PG 17
dnf install -y pg_savior_16       # PG 16
dnf install -y pg_savior_15       # PG 15
dnf install -y pg_savior_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-savior   # PG 18
apt install -y postgresql-17-pg-savior   # PG 17
apt install -y postgresql-16-pg-savior   # PG 16
apt install -y postgresql-15-pg-savior   # PG 15
apt install -y postgresql-14-pg-savior   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_savior;
```




## Usage

Sources: [README](https://github.com/viggy28/pg_savior/blob/v0.1.0/README.md), [release 0.1.0](https://github.com/viggy28/pg_savior/releases/tag/v0.1.0), [PGXN 0.1.0](https://pgxn.org/dist/pg_savior/0.1.0/), [SQL file](https://github.com/viggy28/pg_savior/blob/v0.1.0/pg_savior--0.1.0.sql), [C source](https://github.com/viggy28/pg_savior/blob/v0.1.0/pg_savior.c), [pg_savior.control](https://github.com/viggy28/pg_savior/blob/v0.1.0/pg_savior.control)

`pg_savior` is a PostgreSQL safety extension for blocking specific high-risk DML and DDL statements before they run. Version `0.1.0` is a deliberate PGXN release and a major rewrite from `0.0.1`; the README still labels it pre-1.0 and not production-ready.

### Activation

`CREATE EXTENSION` alone does not activate the checks. The SQL file only documents that protection lives in the loaded shared library, so each backend must load `pg_savior` by one of the upstream-supported paths:

Cluster-wide activation uses `shared_preload_libraries` and requires a PostgreSQL restart:

```conf
shared_preload_libraries = 'pg_savior'
```

Per-session activation for new connections can use `session_preload_libraries` after a config reload:

```conf
session_preload_libraries = 'pg_savior'
```

For development or test sessions, load the library manually:

```sql
LOAD 'pg_savior';
CREATE EXTENSION pg_savior;
```

Once the library is loaded, `_PG_init` installs `post_parse_analyze_hook`, `ExecutorStart_hook`, and `ProcessUtility_hook` for that backend.

### DML Guards

`pg_savior` blocks `DELETE` and `UPDATE` statements that have no `WHERE` clause. The parser hook checks the analyzed `Query` tree and raises `ERROR`, so the transaction aborts and the application sees the failure.

```sql
CREATE TABLE emp (id int);
INSERT INTO emp VALUES (1), (2), (3);

DELETE FROM emp;
-- ERROR: pg_savior: DELETE without WHERE clause is blocked

UPDATE emp SET id = id + 1;
-- ERROR: pg_savior: UPDATE without WHERE clause is blocked

DELETE FROM emp WHERE id = 1;
-- allowed
```

The optional row-count guard applies to `DELETE` and `UPDATE` statements whose planner estimate exceeds `pg_savior.max_rows_affected`. It runs from `ExecutorStart_hook`, after planning and before tuples are touched.

```sql
SET pg_savior.max_rows_affected = 100;

DELETE FROM emp WHERE id > 0;
-- blocked if the planner estimate is greater than 100 rows
```

### DDL Guards

The `ProcessUtility_hook` guards only the DDL operations listed by upstream:

- `CREATE INDEX` without `CONCURRENTLY` is always blocked.
- `DROP DATABASE` is always blocked.
- `ALTER TABLE ADD COLUMN ... DEFAULT` is blocked when the target table is larger than `pg_savior.large_table_threshold_rows`.
- `ALTER TABLE ALTER COLUMN TYPE` is blocked for large tables.
- `TRUNCATE` is blocked when any target table is large.
- `DROP TABLE` is blocked when any target table is large.

Large-table checks use `pg_class.reltuples > pg_savior.large_table_threshold_rows`.

```sql
CREATE INDEX emp_idx ON emp (id);
-- ERROR: pg_savior: CREATE INDEX without CONCURRENTLY is blocked

CREATE INDEX CONCURRENTLY emp_idx ON emp (id);
-- allowed by this guard

ALTER TABLE big_emp ADD COLUMN status text DEFAULT 'active';
-- blocked when big_emp is over pg_savior.large_table_threshold_rows

TRUNCATE big_emp;
-- blocked when big_emp is over pg_savior.large_table_threshold_rows
```

### Configuration

All documented GUCs are session-scoped `USERSET` variables:

| GUC | Default | Effect |
|---|---:|---|
| `pg_savior.enabled` | `on` | Master switch; when `off`, checks do not run. |
| `pg_savior.bypass` | `off` | Allows the current session through the guards. |
| `pg_savior.max_rows_affected` | `0` | Blocks estimated `DELETE`/`UPDATE` row counts above this value; `0` disables the check. |
| `pg_savior.large_table_threshold_rows` | `1000000` | Defines "large" for the guarded large-table DDL operations. |

Use `SET LOCAL` for a deliberate one-transaction bypass:

```sql
BEGIN;
SET LOCAL pg_savior.bypass = on;
DELETE FROM staging_table;
COMMIT;
```

### Caveats

- The library must be loaded in the backend before protection exists; `CREATE EXTENSION pg_savior` only registers extension metadata.
- The row-count and large-table guards depend on planner/catalog estimates. Run `ANALYZE` when recent changes make estimates stale.
- `UPDATE` coverage is limited to unguarded `UPDATE` and the optional planner-estimate threshold; the README does not claim semantic review of every `WHERE` predicate.
- DDL coverage is limited to the listed `ProcessUtility_hook` cases. Do not assume other schema changes are blocked.
- The `ADD COLUMN ... DEFAULT` guard is conservative and blocks any default on a large table, including non-volatile defaults that newer PostgreSQL versions may handle without a full table rewrite.
