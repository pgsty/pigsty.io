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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_savior-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_savior-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_savior-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_savior`**](/ext/e/pg_savior) | `0.0.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5810  | [**`pg_savior`**](/ext/e/pg_savior) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_upless`](/ext/e/pg_upless) [`safeupdate`](/ext/e/safeupdate) [`pg_drop_events`](/ext/e/pg_drop_events) [`pg_cheat_funcs`](/ext/e/pg_cheat_funcs) [`table_log`](/ext/e/table_log) [`pg_snakeoil`](/ext/e/pg_snakeoil) [`pg_auditor`](/ext/e/pg_auditor) [`temporal_tables`](/ext/e/temporal_tables) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> -tuplestore_donestoring , breaks on pg18 @ el


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_savior` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_savior_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-savior` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_savior_18 pg_savior_18-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_18-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_savior_18 pg_savior_18-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_18-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_savior_18 pg_savior_18-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_18-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_savior_18 pg_savior_18-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_18-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_savior_18 pg_savior_18-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_18-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_savior_18 pg_savior_18-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_18-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 15.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 15.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 15.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 16.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 16.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-savior postgresql-18-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 16.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-18-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_savior_17 pg_savior_17-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_17-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_savior_17 pg_savior_17-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_17-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_savior_17 pg_savior_17-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_17-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_savior_17 pg_savior_17-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_17-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_savior_17 pg_savior_17-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_17-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_savior_17 pg_savior_17-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_17-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 15.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 20.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-savior postgresql-17-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-17-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_savior_16 pg_savior_16-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_16-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_savior_16 pg_savior_16-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_16-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_savior_16 pg_savior_16-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_16-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_savior_16 pg_savior_16-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_16-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_savior_16 pg_savior_16-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_16-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_savior_16 pg_savior_16-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_16-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 15.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 19.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-savior postgresql-16-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-16-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_savior_15 pg_savior_15-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_15-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_savior_15 pg_savior_15-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_15-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_savior_15 pg_savior_15-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_15-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_savior_15 pg_savior_15-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_15-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_savior_15 pg_savior_15-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_15-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_savior_15 pg_savior_15-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_15-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 19.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 19.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-savior postgresql-15-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-15-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_savior_14 pg_savior_14-0.0.1-2PIGSTY.el8.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_savior_14-0.0.1-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_savior_14 pg_savior_14-0.0.1-2PIGSTY.el8.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_savior_14-0.0.1-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_savior_14 pg_savior_14-0.0.1-2PIGSTY.el9.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_savior_14-0.0.1-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_savior_14 pg_savior_14-0.0.1-2PIGSTY.el9.aarch64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_savior_14-0.0.1-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_savior_14 pg_savior_14-0.0.1-2PIGSTY.el10.x86_64.rpm pigsty 0.0.1 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_savior_14-0.0.1-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_savior_14 pg_savior_14-0.0.1-2PIGSTY.el10.aarch64.rpm pigsty 0.0.1 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_savior_14-0.0.1-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 15.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 15.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 18.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 16.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-savior postgresql-14-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-savior/postgresql-14-pg-savior_0.0.1-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

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

> [pg_savior: Postgres extension to save OOPS mistakes](https://github.com/viggy28/pg_savior)

The `pg_savior` extension intercepts query execution to prevent accidental data deletion. It hooks into the executor to detect dangerous DELETE operations and block them.

### How It Works

When a DELETE statement is processed, `pg_savior` checks for:

- **Missing WHERE clauses** on DELETE commands
- **Index scan operations** in DELETE query plans
- **Complex queries** involving CTEs and subqueries in DELETE operations

When a risky DELETE is detected, the extension prevents execution and returns an informational message with zero rows affected.

### Example

```sql
CREATE EXTENSION pg_savior;

-- Attempting a DELETE without WHERE clause
DELETE FROM emp;
-- INFO:  pg_savior: DELETE statement detected
-- INFO:  pg_savior: WHERE clause is mandatory for a DELETE statement
-- DELETE 0  (no rows affected, data preserved)

-- Normal DELETE with WHERE clause works as expected
DELETE FROM emp WHERE id = 42;
-- DELETE 1
```

### Notes

- The extension operates through PostgreSQL executor hooks, requiring no changes to application code
- Only DELETE statements are currently intercepted; UPDATE operations are not affected
- Planned features include preventing `CREATE INDEX` without `CONCURRENTLY` and blocking `DROP DATABASE`
