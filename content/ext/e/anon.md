---
title: "anon"
linkTitle: "anon"
description: "PostgreSQL Anonymizer (anon) extension"
weight: 7070
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://gitlab.com/dalibo/postgresql_anonymizer/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://gitlab.com/dalibo/postgresql_anonymizer/</div>
    <div class="ext-card__desc">https://gitlab.com/dalibo/postgresql_anonymizer/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql_anonymizer-3.0.13.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql_anonymizer-3.0.13.tar.gz</div>
    <div class="ext-card__desc">postgresql_anonymizer-3.0.13.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_anon`**](/ext/e/anon) | `3.0.13` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7070  | [**`anon`**](/ext/e/anon) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `anon` |
{.ext-table}

| **Related** | [`faker`](/ext/e/faker) [`pgsodium`](/ext/e/pgsodium) [`pgcrypto`](/ext/e/pgcrypto) [`pgaudit`](/ext/e/pgaudit) [`set_user`](/ext/e/set_user) [`pg_tde`](/ext/e/pg_tde) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> manually upgraded PGRX from 0.16.1 to 0.17.0 by Vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.13` | {{< pgvers "18,17,16,15,14" >}} | `pg_anon` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.13` | {{< pgvers "18,17,16,15,14" >}} | `pg_anon_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.13` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-anon` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| el8.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| el9.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| el9.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| el10.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| el10.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| d12.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| d12.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| d13.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| d13.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| u22.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| u22.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| u24.x86_64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| u24.aarch64 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 | AVAIL PIGSTY 3.0.13 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_anon_18 pg_anon_18-3.0.13-1PIGSTY.el8.x86_64.rpm pigsty 3.0.13 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_18-3.0.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_anon_18 pg_anon_18-3.0.13-1PIGSTY.el8.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_18-3.0.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_anon_18 pg_anon_18-3.0.13-1PIGSTY.el9.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_18-3.0.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_anon_18 pg_anon_18-3.0.13-1PIGSTY.el9.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_18-3.0.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_anon_18 pg_anon_18-3.0.13-1PIGSTY.el10.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_18-3.0.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_anon_18 pg_anon_18-3.0.13-1PIGSTY.el10.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_18-3.0.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-18-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_anon_17 pg_anon_17-3.0.13-1PIGSTY.el8.x86_64.rpm pigsty 3.0.13 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_17-3.0.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_anon_17 pg_anon_17-3.0.13-1PIGSTY.el8.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_17-3.0.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_anon_17 pg_anon_17-3.0.13-1PIGSTY.el9.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_17-3.0.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_anon_17 pg_anon_17-3.0.13-1PIGSTY.el9.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_17-3.0.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_anon_17 pg_anon_17-3.0.13-1PIGSTY.el10.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_17-3.0.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_anon_17 pg_anon_17-3.0.13-1PIGSTY.el10.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_17-3.0.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-17-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_anon_16 pg_anon_16-3.0.13-1PIGSTY.el8.x86_64.rpm pigsty 3.0.13 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_16-3.0.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_anon_16 pg_anon_16-3.0.13-1PIGSTY.el8.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_16-3.0.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_anon_16 pg_anon_16-3.0.13-1PIGSTY.el9.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_16-3.0.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_anon_16 pg_anon_16-3.0.13-1PIGSTY.el9.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_16-3.0.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_anon_16 pg_anon_16-3.0.13-1PIGSTY.el10.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_16-3.0.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_anon_16 pg_anon_16-3.0.13-1PIGSTY.el10.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_16-3.0.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-16-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_anon_15 pg_anon_15-3.0.13-1PIGSTY.el8.x86_64.rpm pigsty 3.0.13 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_15-3.0.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_anon_15 pg_anon_15-3.0.13-1PIGSTY.el8.aarch64.rpm pigsty 3.0.13 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_15-3.0.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_anon_15 pg_anon_15-3.0.13-1PIGSTY.el9.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_15-3.0.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_anon_15 pg_anon_15-3.0.13-1PIGSTY.el9.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_15-3.0.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_anon_15 pg_anon_15-3.0.13-1PIGSTY.el10.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_15-3.0.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_anon_15 pg_anon_15-3.0.13-1PIGSTY.el10.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_15-3.0.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-15-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_anon_14 pg_anon_14-3.0.13-1PIGSTY.el8.x86_64.rpm pigsty 3.0.13 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_14-3.0.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_anon_14 pg_anon_14-3.0.13-1PIGSTY.el8.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_14-3.0.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_anon_14 pg_anon_14-3.0.13-1PIGSTY.el9.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_14-3.0.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_anon_14 pg_anon_14-3.0.13-1PIGSTY.el9.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_14-3.0.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_anon_14 pg_anon_14-3.0.13-1PIGSTY.el10.x86_64.rpm pigsty 3.0.13 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_14-3.0.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_anon_14 pg_anon_14-3.0.13-1PIGSTY.el10.aarch64.rpm pigsty 3.0.13 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_14-3.0.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb pigsty 3.0.13 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb pigsty 3.0.13 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb pigsty 3.0.13 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-14-pg-anon_3.0.13-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_anon` using `pig build`:

```bash
pig build pkg pg_anon         # build RPM / DEB packages
```


## Install

You can install `pg_anon` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_anon;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_anon -v 18  # PG 18
pig ext install -y pg_anon -v 17  # PG 17
pig ext install -y pg_anon -v 16  # PG 16
pig ext install -y pg_anon -v 15  # PG 15
pig ext install -y pg_anon -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_anon_18       # PG 18
dnf install -y pg_anon_17       # PG 17
dnf install -y pg_anon_16       # PG 16
dnf install -y pg_anon_15       # PG 15
dnf install -y pg_anon_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-anon   # PG 18
apt install -y postgresql-17-pg-anon   # PG 17
apt install -y postgresql-16-pg-anon   # PG 16
apt install -y postgresql-15-pg-anon   # PG 15
apt install -y postgresql-14-pg-anon   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'anon';
```


**Create Extension**:

```sql
CREATE EXTENSION anon;
```


## Usage

> Sources: [overview](https://postgresql-anonymizer.readthedocs.io/en/stable/), [static masking](https://postgresql-anonymizer.readthedocs.io/en/stable/static_masking/), [dynamic masking](https://postgresql-anonymizer.readthedocs.io/en/stable/dynamic_masking/), [anonymous dumps](https://postgresql-anonymizer.readthedocs.io/en/stable/anonymous_dumps/), [masking functions](https://postgresql-anonymizer.readthedocs.io/en/stable/masking_functions/)

`anon` applies declarative masking rules with `SECURITY LABEL FOR anon`. The official docs center on three user-facing flows: permanent masking, masked roles, and anonymized dumps.

### Initialize and Declare Rules

```sql
CREATE EXTENSION IF NOT EXISTS anon CASCADE;
SELECT anon.init();

SECURITY LABEL FOR anon ON COLUMN customer.full_name
IS 'MASKED WITH FUNCTION anon.dummy_name()';

SECURITY LABEL FOR anon ON COLUMN customer.employer
IS 'MASKED WITH FUNCTION anon.dummy_company_name()';

SECURITY LABEL FOR anon ON COLUMN customer.phone
IS 'MASKED WITH FUNCTION anon.partial(phone, 2, $$******$$, 2)';
```

### Static Masking

Static masking rewrites the stored data in place:

```sql
SELECT anon.anonymize_database();
-- See also: anon.anonymize_table(), anon.anonymize_column()
```

The static-masking docs also cover shuffling, noise injection, and parallel masking for larger datasets.

### Dynamic Masking

Dynamic masking hides values only from roles labeled as masked:

```sql
ALTER DATABASE demo SET session_preload_libraries = 'anon';
ALTER DATABASE demo SET anon.transparent_dynamic_masking TO true;

CREATE ROLE skynet LOGIN;
SECURITY LABEL FOR anon ON ROLE skynet IS 'MASKED';
GRANT pg_read_all_data TO skynet;

SECURITY LABEL FOR anon ON COLUMN people.lastname
IS 'MASKED WITH FUNCTION anon.dummy_last_name()';
```

When `skynet` queries the table, masked values are returned instead of the originals.

### Anonymous Dumps and Pseudonymization

The current docs recommend transparent anonymous dumps through a masked role and `pg_dump`. Older helpers `pg_dump_anon.sh` and `pg_dump_anon` are explicitly marked deprecated.

For stable key remapping in dumps, the docs call out:

- `anon.pseudo_shift(bigint)`
- `anon.pseudo_xor(bigint)`
- `anon.set_shift()`

### Common Functions and Caveats

Common masking helpers in the function catalog include:

- `anon.dummy_first_name()`
- `anon.dummy_last_name()`
- `anon.dummy_company_name()`
- `anon.random_zip()`
- `anon.random_date_between(date, date)`
- `anon.partial(value, prefix, mask, suffix)`

Caveats from the official docs:

- dynamic masking needs preload/configuration before masked-role sessions use it
- static masking destroys the original values
- pseudonymization is not anonymization
