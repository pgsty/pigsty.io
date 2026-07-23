---
title: "pg_enigma"
linkTitle: "pg_enigma"
description: "Encrypted postgres data type"
weight: 7090
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/SoftwareLibreMx/pg_enigma">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">SoftwareLibreMx/pg_enigma</div>
    <div class="ext-card__desc">https://github.com/SoftwareLibreMx/pg_enigma</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_enigma-0.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_enigma-0.5.0.tar.gz</div>
    <div class="ext-card__desc">pg_enigma-0.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_enigma`**](/ext/e/pg_enigma) | `0.5.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7090  | [**`pg_enigma`**](/ext/e/pg_enigma) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgsodium`](/ext/e/pgsodium) [`pgcryptokey`](/ext/e/pgcryptokey) [`pgcrypto`](/ext/e/pgcrypto) [`pg_tde`](/ext/e/pg_tde) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_enigma` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_enigma_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-enigma` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
@ el8.x86_64 18 pg_enigma_18 pg_enigma_18-0.5.0-3PIGSTY.el8.x86_64.rpm pigsty 0.5.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_enigma_18-0.5.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_enigma_18 pg_enigma_18-0.5.0-3PIGSTY.el8.aarch64.rpm pigsty 0.5.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_enigma_18-0.5.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_enigma_18 pg_enigma_18-0.5.0-3PIGSTY.el9.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_enigma_18-0.5.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_enigma_18 pg_enigma_18-0.5.0-3PIGSTY.el9.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_enigma_18-0.5.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_enigma_18 pg_enigma_18-0.5.0-3PIGSTY.el10.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_enigma_18-0.5.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_enigma_18 pg_enigma_18-0.5.0-3PIGSTY.el10.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_enigma_18-0.5.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~trixie_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~trixie_arm64.deb pigsty 0.5.0 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~jammy_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~jammy_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~noble_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~noble_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~resolute_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-enigma postgresql-18-enigma_0.5.0-3PIGSTY~resolute_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-18-enigma_0.5.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_enigma_17 pg_enigma_17-0.5.0-3PIGSTY.el8.x86_64.rpm pigsty 0.5.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_enigma_17-0.5.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_enigma_17 pg_enigma_17-0.5.0-3PIGSTY.el8.aarch64.rpm pigsty 0.5.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_enigma_17-0.5.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_enigma_17 pg_enigma_17-0.5.0-3PIGSTY.el9.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_enigma_17-0.5.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_enigma_17 pg_enigma_17-0.5.0-3PIGSTY.el9.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_enigma_17-0.5.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_enigma_17 pg_enigma_17-0.5.0-3PIGSTY.el10.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_enigma_17-0.5.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_enigma_17 pg_enigma_17-0.5.0-3PIGSTY.el10.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_enigma_17-0.5.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~trixie_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~trixie_arm64.deb pigsty 0.5.0 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~jammy_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~jammy_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~noble_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~noble_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~resolute_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-enigma postgresql-17-enigma_0.5.0-3PIGSTY~resolute_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-17-enigma_0.5.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_enigma_16 pg_enigma_16-0.5.0-3PIGSTY.el8.x86_64.rpm pigsty 0.5.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_enigma_16-0.5.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_enigma_16 pg_enigma_16-0.5.0-3PIGSTY.el8.aarch64.rpm pigsty 0.5.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_enigma_16-0.5.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_enigma_16 pg_enigma_16-0.5.0-3PIGSTY.el9.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_enigma_16-0.5.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_enigma_16 pg_enigma_16-0.5.0-3PIGSTY.el9.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_enigma_16-0.5.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_enigma_16 pg_enigma_16-0.5.0-3PIGSTY.el10.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_enigma_16-0.5.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_enigma_16 pg_enigma_16-0.5.0-3PIGSTY.el10.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_enigma_16-0.5.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~trixie_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~trixie_arm64.deb pigsty 0.5.0 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~jammy_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~jammy_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~noble_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~noble_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~resolute_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-enigma postgresql-16-enigma_0.5.0-3PIGSTY~resolute_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-16-enigma_0.5.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_enigma_15 pg_enigma_15-0.5.0-3PIGSTY.el8.x86_64.rpm pigsty 0.5.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_enigma_15-0.5.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_enigma_15 pg_enigma_15-0.5.0-3PIGSTY.el8.aarch64.rpm pigsty 0.5.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_enigma_15-0.5.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_enigma_15 pg_enigma_15-0.5.0-3PIGSTY.el9.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_enigma_15-0.5.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_enigma_15 pg_enigma_15-0.5.0-3PIGSTY.el9.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_enigma_15-0.5.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_enigma_15 pg_enigma_15-0.5.0-3PIGSTY.el10.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_enigma_15-0.5.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_enigma_15 pg_enigma_15-0.5.0-3PIGSTY.el10.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_enigma_15-0.5.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~trixie_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~trixie_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~jammy_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~jammy_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~noble_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~noble_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~resolute_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-enigma postgresql-15-enigma_0.5.0-3PIGSTY~resolute_arm64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-15-enigma_0.5.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_enigma_14 pg_enigma_14-0.5.0-3PIGSTY.el8.x86_64.rpm pigsty 0.5.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_enigma_14-0.5.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_enigma_14 pg_enigma_14-0.5.0-3PIGSTY.el8.aarch64.rpm pigsty 0.5.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_enigma_14-0.5.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_enigma_14 pg_enigma_14-0.5.0-3PIGSTY.el9.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_enigma_14-0.5.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_enigma_14 pg_enigma_14-0.5.0-3PIGSTY.el9.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_enigma_14-0.5.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_enigma_14 pg_enigma_14-0.5.0-3PIGSTY.el10.x86_64.rpm pigsty 0.5.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_enigma_14-0.5.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_enigma_14 pg_enigma_14-0.5.0-3PIGSTY.el10.aarch64.rpm pigsty 0.5.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_enigma_14-0.5.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~trixie_amd64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~trixie_arm64.deb pigsty 0.5.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~jammy_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~jammy_arm64.deb pigsty 0.5.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~noble_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~noble_arm64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~resolute_amd64.deb pigsty 0.5.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-enigma postgresql-14-enigma_0.5.0-3PIGSTY~resolute_arm64.deb pigsty 0.5.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-enigma/postgresql-14-enigma_0.5.0-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_enigma` using `pig build`:

```bash
pig build pkg pg_enigma         # build RPM / DEB packages
```


## Install

You can install `pg_enigma` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_enigma;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_enigma -v 18  # PG 18
pig ext install -y pg_enigma -v 17  # PG 17
pig ext install -y pg_enigma -v 16  # PG 16
pig ext install -y pg_enigma -v 15  # PG 15
pig ext install -y pg_enigma -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_enigma_18       # PG 18
dnf install -y pg_enigma_17       # PG 17
dnf install -y pg_enigma_16       # PG 16
dnf install -y pg_enigma_15       # PG 15
dnf install -y pg_enigma_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-enigma   # PG 18
apt install -y postgresql-17-enigma   # PG 17
apt install -y postgresql-16-enigma   # PG 16
apt install -y postgresql-15-enigma   # PG 15
apt install -y postgresql-14-enigma   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_enigma;
```




## Usage

> [pg_enigma: Encrypted data type for PostgreSQL using PGP and RSA keys](https://github.com/SoftwareLibreMx/pg_enigma)

`pg_enigma` provides an `Enigma` encrypted data type for PostgreSQL that encrypts data at rest using PGP or OpenSSL RSA keys. Data is stored encrypted and only decrypted when the private key is loaded into memory.

```sql
CREATE EXTENSION IF NOT EXISTS pg_enigma;
```

### PGP Key Encryption

```sql
-- Create a table with an encrypted column (key slot 2)
CREATE TABLE test_pgp (
    id SERIAL,
    val Enigma(2)
);

-- Load the public key for encryption
SELECT set_public_key_from_file(2, '/path/to/public-key.asc');

-- Insert data (automatically encrypted with the public key)
INSERT INTO test_pgp (val) VALUES ('A secret value'::Text);

-- Without private key, SELECT returns encrypted PGP message
SELECT * FROM test_pgp;

-- Load private key to enable decryption
SELECT set_private_key_from_file(2, '/path/to/private-key.asc', 'passphrase');

-- Now SELECT returns decrypted plaintext
SELECT * FROM test_pgp;
-- id |      val
-- ----+----------------
--   1 | A secret value

-- Remove private key from memory
SELECT forget_private_key(2);
-- Subsequent SELECTs return encrypted data again
```

### RSA Key Encryption

```sql
CREATE TABLE test_rsa (
    id SERIAL,
    val Enigma(3)
);

SELECT set_public_key_from_file(3, '/path/to/alice_public.pem');
INSERT INTO test_rsa (val) VALUES ('Another secret value'::Text);

SELECT set_private_key_from_file(3, '/path/to/alice_private.pem', 'passphrase');
SELECT * FROM test_rsa;

SELECT forget_private_key(3);
```

### Functions

| Function | Description |
|----------|-------------|
| `set_public_key_from_file(slot, path)` | Load a public key for encryption |
| `set_private_key_from_file(slot, path, passphrase)` | Load a private key for decryption |
| `forget_private_key(slot)` | Remove private key from memory |
