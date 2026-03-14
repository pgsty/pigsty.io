---
title: "envvar"
linkTitle: "envvar"
description: "Fetch the value of an environment variable"
weight: 4270
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/theory/pg-envvar">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">theory/pg-envvar</div>
    <div class="ext-card__desc">https://github.com/theory/pg-envvar</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-envvar-1.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-envvar-1.0.1.tar.gz</div>
    <div class="ext-card__desc">pg-envvar-1.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_envvar`**](/ext/e/envvar) | `1.0.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4270  | [**`envvar`**](/ext/e/envvar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`session_variable`](/ext/e/session_variable) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) [`pgjq`](/ext/e/pgjq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_envvar` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_envvar_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-envvar` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
@ el8.x86_64 18 pg_envvar_18 pg_envvar_18-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_envvar_18-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_envvar_18 pg_envvar_18-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_envvar_18-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_envvar_18 pg_envvar_18-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_envvar_18-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_envvar_18 pg_envvar_18-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_envvar_18-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_envvar_18 pg_envvar_18-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_envvar_18-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_envvar_18 pg_envvar_18-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_envvar_18-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 9.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-envvar postgresql-18-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 9.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-18-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_envvar_17 pg_envvar_17-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_envvar_17-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_envvar_17 pg_envvar_17-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_envvar_17-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_envvar_17 pg_envvar_17-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_envvar_17-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_envvar_17 pg_envvar_17-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_envvar_17-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_envvar_17 pg_envvar_17-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_envvar_17-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_envvar_17 pg_envvar_17-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_envvar_17-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 9.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-envvar postgresql-17-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 9.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-17-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_envvar_16 pg_envvar_16-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_envvar_16-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_envvar_16 pg_envvar_16-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_envvar_16-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_envvar_16 pg_envvar_16-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_envvar_16-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_envvar_16 pg_envvar_16-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_envvar_16-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_envvar_16 pg_envvar_16-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_envvar_16-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_envvar_16 pg_envvar_16-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_envvar_16-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 9.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-envvar postgresql-16-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 9.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-16-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_envvar_15 pg_envvar_15-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_envvar_15-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_envvar_15 pg_envvar_15-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_envvar_15-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_envvar_15 pg_envvar_15-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_envvar_15-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_envvar_15 pg_envvar_15-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_envvar_15-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_envvar_15 pg_envvar_15-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_envvar_15-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_envvar_15 pg_envvar_15-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_envvar_15-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 9.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-envvar postgresql-15-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 9.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-15-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_envvar_14 pg_envvar_14-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_envvar_14-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_envvar_14 pg_envvar_14-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_envvar_14-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_envvar_14 pg_envvar_14-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_envvar_14-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_envvar_14 pg_envvar_14-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 12.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_envvar_14-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_envvar_14 pg_envvar_14-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_envvar_14-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_envvar_14 pg_envvar_14-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 12.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_envvar_14-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 9.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 9.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 9.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 9.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-envvar postgresql-14-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 9.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-envvar/postgresql-14-pg-envvar_1.0.1-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_envvar` using `pig build`:

```bash
pig build pkg pg_envvar         # build RPM / DEB packages
```


## Install

You can install `pg_envvar` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_envvar;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_envvar -v 18  # PG 18
pig ext install -y pg_envvar -v 17  # PG 17
pig ext install -y pg_envvar -v 16  # PG 16
pig ext install -y pg_envvar -v 15  # PG 15
pig ext install -y pg_envvar -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_envvar_18       # PG 18
dnf install -y pg_envvar_17       # PG 17
dnf install -y pg_envvar_16       # PG 16
dnf install -y pg_envvar_15       # PG 15
dnf install -y pg_envvar_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-envvar   # PG 18
apt install -y postgresql-17-pg-envvar   # PG 17
apt install -y postgresql-16-pg-envvar   # PG 16
apt install -y postgresql-15-pg-envvar   # PG 15
apt install -y postgresql-14-pg-envvar   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION envvar;
```




## Usage

> [envvar: Access environment variables from PostgreSQL](https://github.com/theory/pg-envvar)

Provides a single function to read environment variables from the database server.

### Function

```sql
get_env(name TEXT) RETURNS TEXT
```

Returns the value of the specified environment variable set on the database server, or NULL if not set.

### Examples

```sql
SELECT get_env('PGTZ');
-- UTC

SELECT get_env('HOME');
-- /var/lib/postgresql

SELECT get_env('PATH');
-- /usr/local/sbin:/usr/local/bin:...

SELECT get_env('NONEXISTENT');
-- NULL
```

### Schema Support

You can install the extension into a specific schema:

```sql
CREATE SCHEMA env;
CREATE EXTENSION envvar SCHEMA env;

SELECT env.get_env('PGTZ');
```
