---
title: "schedoc"
linkTitle: "schedoc"
description: "Cross documentation between Django and DBT projects"
weight: 4330
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ZeroGachis/pg_schedoc">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ZeroGachis/pg_schedoc</div>
    <div class="ext-card__desc">https://github.com/ZeroGachis/pg_schedoc</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_schedoc-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_schedoc-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_schedoc-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_schedoc`**](/ext/e/schedoc) | `0.0.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4330  | [**`schedoc`**](/ext/e/schedoc) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`ddl_historization`](/ext/e/ddl_historization) [`pg_readme_test_extension`](/ext/e/pg_readme_test_extension) [`pg_readme`](/ext/e/pg_readme) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_schedoc` | `ddl_historization` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_schedoc_$v` | `ddl_historization_$v` |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-schedoc` | `postgresql-$v-ddl-historization` |
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
@ el8.x86_64 18 pg_schedoc_18 pg_schedoc_18-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_schedoc_18-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_schedoc_18 pg_schedoc_18-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_schedoc_18-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_schedoc_18 pg_schedoc_18-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_schedoc_18-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_schedoc_18 pg_schedoc_18-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_schedoc_18-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_schedoc_18 pg_schedoc_18-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_schedoc_18-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_schedoc_18 pg_schedoc_18-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_schedoc_18-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-schedoc postgresql-18-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-18-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_schedoc_17 pg_schedoc_17-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_schedoc_17-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_schedoc_17 pg_schedoc_17-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_schedoc_17-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_schedoc_17 pg_schedoc_17-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_schedoc_17-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_schedoc_17 pg_schedoc_17-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_schedoc_17-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_schedoc_17 pg_schedoc_17-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_schedoc_17-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_schedoc_17 pg_schedoc_17-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_schedoc_17-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-schedoc postgresql-17-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-17-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_schedoc_16 pg_schedoc_16-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_schedoc_16-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_schedoc_16 pg_schedoc_16-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_schedoc_16-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_schedoc_16 pg_schedoc_16-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_schedoc_16-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_schedoc_16 pg_schedoc_16-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_schedoc_16-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_schedoc_16 pg_schedoc_16-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_schedoc_16-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_schedoc_16 pg_schedoc_16-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_schedoc_16-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-schedoc postgresql-16-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-16-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_schedoc_15 pg_schedoc_15-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_schedoc_15-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_schedoc_15 pg_schedoc_15-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_schedoc_15-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_schedoc_15 pg_schedoc_15-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_schedoc_15-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_schedoc_15 pg_schedoc_15-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_schedoc_15-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_schedoc_15 pg_schedoc_15-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_schedoc_15-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_schedoc_15 pg_schedoc_15-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_schedoc_15-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-schedoc postgresql-15-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-15-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_schedoc_14 pg_schedoc_14-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_schedoc_14-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_schedoc_14 pg_schedoc_14-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_schedoc_14-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_schedoc_14 pg_schedoc_14-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_schedoc_14-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_schedoc_14 pg_schedoc_14-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 22.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_schedoc_14-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_schedoc_14 pg_schedoc_14-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_schedoc_14-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_schedoc_14 pg_schedoc_14-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 22.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_schedoc_14-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 4.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-schedoc postgresql-14-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 4.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-schedoc/postgresql-14-pg-schedoc_0.0.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_schedoc` using `pig build`:

```bash
pig build pkg pg_schedoc         # build RPM / DEB packages
```


## Install

You can install `pg_schedoc` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_schedoc;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_schedoc -v 18  # PG 18
pig ext install -y pg_schedoc -v 17  # PG 17
pig ext install -y pg_schedoc -v 16  # PG 16
pig ext install -y pg_schedoc -v 15  # PG 15
pig ext install -y pg_schedoc -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_schedoc_18       # PG 18
dnf install -y pg_schedoc_17       # PG 17
dnf install -y pg_schedoc_16       # PG 16
dnf install -y pg_schedoc_15       # PG 15
dnf install -y pg_schedoc_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-schedoc   # PG 18
apt install -y postgresql-17-pg-schedoc   # PG 17
apt install -y postgresql-16-pg-schedoc   # PG 16
apt install -y postgresql-15-pg-schedoc   # PG 15
apt install -y postgresql-14-pg-schedoc   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION schedoc CASCADE;  -- requires: ddl_historization
```




## Usage

> [schedoc: Schema documentation via COMMENT on PostgreSQL objects](https://github.com/ZeroGachis/pg_schedoc)

Builds automatic documentation from `COMMENT` on PostgreSQL objects. Requires the `ddl_historization` extension.

### Setup

```sql
CREATE EXTENSION schedoc CASCADE;
SELECT schedoc_start();
```

### Adding Column Documentation

Set comments on columns in JSON format with predefined fields:

```sql
COMMENT ON COLUMN my_table.id IS '{"status": "private"}';
COMMENT ON COLUMN my_table.email IS '{"status": "public"}';
COMMENT ON COLUMN my_table.name IS '{"status": "internal"}';
```

### Querying Documentation

Query the parsed column comments:

```sql
SELECT * FROM schedoc_column_comments;
```

Result:

```
 databasename | tablename | columnname | status
--------------+-----------+------------+---------
 mydb         | my_table  | id         | private
 mydb         | my_table  | email      | public
 mydb         | my_table  | name       | internal
```

### Use Case

Cross-reference column metadata with other systems (e.g., Django `db_comment`, DBT docs) to define data contracts between developers and data analysts.
