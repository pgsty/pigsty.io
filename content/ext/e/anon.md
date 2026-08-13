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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql_anonymizer-3.1.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql_anonymizer-3.1.3.tar.gz</div>
    <div class="ext-card__desc">postgresql_anonymizer-3.1.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_anon`**](/ext/e/anon) | `3.1.3` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7070  | [**`anon`**](/ext/e/anon) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `anon` |
{.ext-table}

| **Related** | [`column_encrypt`](/ext/e/column_encrypt) [`pg_tde`](/ext/e/pg_tde) [`supabase_vault`](/ext/e/supabase_vault) [`pg_enigma`](/ext/e/pg_enigma) [`pgsodium`](/ext/e/pgsodium) [`pgcryptokey`](/ext/e/pgcryptokey) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_anon` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_anon_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-anon` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| el8.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| el9.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| el9.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| el10.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| el10.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| d12.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| d12.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| d13.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| d13.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| u22.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| u22.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| u24.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| u24.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| u26.x86_64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
| u26.aarch64 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 | AVAIL PIGSTY 3.1.3 1 |
@ el8.x86_64 18 pg_anon_18 pg_anon_18-3.1.3-2PIGSTY.el8.x86_64.rpm pigsty 3.1.3 3.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_18-3.1.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_anon_18 pg_anon_18-3.1.3-2PIGSTY.el8.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_18-3.1.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_anon_18 pg_anon_18-3.1.3-2PIGSTY.el9.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_18-3.1.3-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_anon_18 pg_anon_18-3.1.3-2PIGSTY.el9.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_18-3.1.3-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_anon_18 pg_anon_18-3.1.3-2PIGSTY.el10.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_18-3.1.3-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_anon_18 pg_anon_18-3.1.3-2PIGSTY.el10.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_18-3.1.3-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb pigsty 3.1.3 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb pigsty 3.1.3 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-anon postgresql-18-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-18-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_anon_17 pg_anon_17-3.1.3-2PIGSTY.el8.x86_64.rpm pigsty 3.1.3 3.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_17-3.1.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_anon_17 pg_anon_17-3.1.3-2PIGSTY.el8.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_17-3.1.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_anon_17 pg_anon_17-3.1.3-2PIGSTY.el9.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_17-3.1.3-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_anon_17 pg_anon_17-3.1.3-2PIGSTY.el9.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_17-3.1.3-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_anon_17 pg_anon_17-3.1.3-2PIGSTY.el10.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_17-3.1.3-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_anon_17 pg_anon_17-3.1.3-2PIGSTY.el10.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_17-3.1.3-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb pigsty 3.1.3 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb pigsty 3.1.3 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-anon postgresql-17-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-17-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_anon_16 pg_anon_16-3.1.3-2PIGSTY.el8.x86_64.rpm pigsty 3.1.3 3.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_16-3.1.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_anon_16 pg_anon_16-3.1.3-2PIGSTY.el8.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_16-3.1.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_anon_16 pg_anon_16-3.1.3-2PIGSTY.el9.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_16-3.1.3-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_anon_16 pg_anon_16-3.1.3-2PIGSTY.el9.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_16-3.1.3-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_anon_16 pg_anon_16-3.1.3-2PIGSTY.el10.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_16-3.1.3-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_anon_16 pg_anon_16-3.1.3-2PIGSTY.el10.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_16-3.1.3-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb pigsty 3.1.3 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb pigsty 3.1.3 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-anon postgresql-16-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-16-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_anon_15 pg_anon_15-3.1.3-2PIGSTY.el8.x86_64.rpm pigsty 3.1.3 3.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_15-3.1.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_anon_15 pg_anon_15-3.1.3-2PIGSTY.el8.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_15-3.1.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_anon_15 pg_anon_15-3.1.3-2PIGSTY.el9.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_15-3.1.3-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_anon_15 pg_anon_15-3.1.3-2PIGSTY.el9.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_15-3.1.3-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_anon_15 pg_anon_15-3.1.3-2PIGSTY.el10.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_15-3.1.3-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_anon_15 pg_anon_15-3.1.3-2PIGSTY.el10.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_15-3.1.3-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb pigsty 3.1.3 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb pigsty 3.1.3 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb pigsty 3.1.3 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-anon postgresql-15-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-15-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_anon_14 pg_anon_14-3.1.3-2PIGSTY.el8.x86_64.rpm pigsty 3.1.3 3.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_anon_14-3.1.3-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_anon_14 pg_anon_14-3.1.3-2PIGSTY.el8.aarch64.rpm pigsty 3.1.3 2.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_anon_14-3.1.3-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_anon_14 pg_anon_14-3.1.3-2PIGSTY.el9.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_anon_14-3.1.3-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_anon_14 pg_anon_14-3.1.3-2PIGSTY.el9.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_anon_14-3.1.3-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_anon_14 pg_anon_14-3.1.3-2PIGSTY.el10.x86_64.rpm pigsty 3.1.3 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_anon_14-3.1.3-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_anon_14 pg_anon_14-3.1.3-2PIGSTY.el10.aarch64.rpm pigsty 3.1.3 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_anon_14-3.1.3-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb pigsty 3.1.3 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb pigsty 3.1.3 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb pigsty 3.1.3 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb pigsty 3.1.3 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb pigsty 3.1.3 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-anon postgresql-14-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb pigsty 3.1.3 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-anon/postgresql-14-pg-anon_3.1.3-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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

Sources:

- [PostgreSQL Anonymizer 3.1.3 README](https://gitlab.com/dalibo/postgresql_anonymizer/-/blob/3.1.3/README.md)
- [Masking functions](https://gitlab.com/dalibo/postgresql_anonymizer/-/blob/3.1.3/docs/masking_functions.md)
- [3.1.3 changelog](https://gitlab.com/dalibo/postgresql_anonymizer/-/blob/3.1.3/CHANGELOG.md)
- [Official documentation](https://postgresql-anonymizer.readthedocs.io/en/stable/)

`anon` is PostgreSQL Anonymizer. It applies declarative masking rules for protected query access, produces anonymized data sets, and provides pseudonymization and randomized-response helpers. Use it when realistic data must remain useful without exposing the original sensitive values; treat masking policy, role grants, and access to the unmasked database as part of the security boundary.

### Core Workflow

Load `anon` for sessions in the target database, install the extension, and enable transparent dynamic masking. New connections pick up database-level settings.

```sql
ALTER DATABASE app SET session_preload_libraries = 'anon';

\connect app
CREATE EXTENSION anon;
ALTER DATABASE app SET anon.transparent_dynamic_masking = true;
```

Mark a login as masked and attach masking rules to sensitive columns:

```sql
CREATE ROLE reporting LOGIN;
SECURITY LABEL FOR anon ON ROLE reporting IS 'MASKED';
GRANT pg_read_all_data TO reporting;

SECURITY LABEL FOR anon ON COLUMN customer.last_name
  IS 'MASKED WITH FUNCTION anon.dummy_last_name()';
SECURITY LABEL FOR anon ON COLUMN customer.phone
  IS 'MASKED WITH FUNCTION anon.partial(phone, 2, $$******$$, 2)';
```

Queries made as `reporting` see the transformed values. Privileged users still see the originals, so do not grant masked roles a path around the policy.

### Masking Strategies

- **Dynamic masking** transforms results for roles labeled `MASKED` without rewriting the table.
- **Static masking** permanently rewrites selected data and is appropriate for disposable development or test copies.
- **Anonymous dumps and replicas** produce sanitized exports or downstream copies.
- **Masking views and data wrappers** expose a deliberately reduced or transformed projection.
- **Pseudonymization** uses deterministic transforms when joins or repeated values must remain consistent.

### Important Objects

- `anon.dummy_*`, `anon.random_*`, and `anon.partial(...)` generate or partially conceal values.
- `anon.hash(text)` and `anon.digest(text, text, text)` provide deterministic transformations. In 3.1.2 they were marked `RESTRICTED` to limit brute-force exposure.
- `anon.ldp_grrm(value, epsilon, max_v)` and `anon.ldp_grrm_pttt(value, truth_probability, max_v)` implement generalized randomized response for local differential privacy.
- `anon.ldp_truth_probability(...)` and `anon.ldp_lie_probability(...)` help inspect randomized-response probabilities.
- Security labels on roles and columns define who is masked and how each value is transformed.

### Operational Notes

`anon` is superuser-installed and non-relocatable. Test every policy with the same grants and connection path used by the intended consumer. Randomization is not automatically deterministic; use a confirmed pseudonymization function when stable equality is required. Static anonymization is destructive, so run it on a copy and verify constraints and application behavior afterward.

Version 3.1.3 reruns missing ARM builds and changes release metadata, with no new SQL workflow. The material delta since 3.1.1 is the 3.1.2 security hardening for `anon.hash` and `anon.digest`; deployments using those functions should upgrade rather than relying on the old labels.
