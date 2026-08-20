---
title: "re2"
linkTitle: "re2"
description: "ClickHouse-compatible regex functions using RE2"
weight: 4235
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ClickHouse/pg_re2">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ClickHouse/pg_re2</div>
    <div class="ext-card__desc">https://github.com/ClickHouse/pg_re2</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/re2-0.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">re2-0.4.1.tar.gz</div>
    <div class="ext-card__desc">re2-0.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`re2`**](/ext/e/re2) | `0.4.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4235  | [**`re2`**](/ext/e/re2) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`pgpcre`](/ext/e/pgpcre) [`omni_regex`](/ext/e/omni_regex) [`pg_similarity`](/ext/e/pg_similarity) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`smlar`](/ext/e/smlar) [`biscuit`](/ext/e/biscuit) [`pg_bigm`](/ext/e/pg_bigm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Stable PGXN and PIGSTY package release 0.4.1 for PostgreSQL 16 through 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16" >}} | `re2` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16" >}} | `re2_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16" >}} | `postgresql-$v-re2` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 re2_18 re2_18-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 41.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_18-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 re2_18 re2_18-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 39.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_18-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 re2_18 re2_18-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_18-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 re2_18 re2_18-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 40.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_18-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 re2_18 re2_18-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 42.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_18-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 re2_18 re2_18-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_18-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 74.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 72.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 76.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 74.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 77.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 74.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 74.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 74.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 76.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 74.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-18-re2_0.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 re2_17 re2_17-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_17-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 re2_17 re2_17-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 39.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_17-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 re2_17 re2_17-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_17-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 re2_17 re2_17-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 40.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_17-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 re2_17 re2_17-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 42.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_17-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 re2_17 re2_17-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_17-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 74.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 72.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 76.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 74.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 83.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 81.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 74.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 73.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 76.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 74.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-17-re2_0.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 re2_16 re2_16-0.4.1-1PIGSTY.el8.x86_64.rpm pigsty 0.4.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_16-0.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 re2_16 re2_16-0.4.1-1PIGSTY.el8.aarch64.rpm pigsty 0.4.1 39.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_16-0.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 re2_16 re2_16-0.4.1-1PIGSTY.el9.x86_64.rpm pigsty 0.4.1 41.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_16-0.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 re2_16 re2_16-0.4.1-1PIGSTY.el9.aarch64.rpm pigsty 0.4.1 40.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_16-0.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 re2_16 re2_16-0.4.1-1PIGSTY.el10.x86_64.rpm pigsty 0.4.1 42.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_16-0.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 re2_16 re2_16-0.4.1-1PIGSTY.el10.aarch64.rpm pigsty 0.4.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_16-0.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~bookworm_amd64.deb pigsty 0.4.1 74.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~bookworm_arm64.deb pigsty 0.4.1 72.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~trixie_amd64.deb pigsty 0.4.1 76.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~trixie_arm64.deb pigsty 0.4.1 74.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~jammy_amd64.deb pigsty 0.4.1 83.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~jammy_arm64.deb pigsty 0.4.1 80.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~noble_amd64.deb pigsty 0.4.1 74.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~noble_arm64.deb pigsty 0.4.1 73.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~resolute_amd64.deb pigsty 0.4.1 76.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.1-1PIGSTY~resolute_arm64.deb pigsty 0.4.1 74.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-16-re2_0.4.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `re2` using `pig build`:

```bash
pig build pkg re2         # build RPM / DEB packages
```


## Install

You can install `re2` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install re2;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y re2 -v 18  # PG 18
pig ext install -y re2 -v 17  # PG 17
pig ext install -y re2 -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y re2_18       # PG 18
dnf install -y re2_17       # PG 17
dnf install -y re2_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-re2   # PG 18
apt install -y postgresql-17-re2   # PG 17
apt install -y postgresql-16-re2   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION re2;
```




## Usage

Sources:

- [pg_re2 v0.4.1 README](https://github.com/ClickHouse/pg_re2/blob/v0.4.1/README.md)
- [SQL reference](https://github.com/ClickHouse/pg_re2/blob/v0.4.1/doc/re2.md)
- [v0.4.0 release](https://github.com/ClickHouse/pg_re2/releases/tag/v0.4.0)
- [v0.4.1 release](https://github.com/ClickHouse/pg_re2/releases/tag/v0.4.1)

`re2` provides ClickHouse-compatible regular-expression functions backed by Google's RE2 engine. It exposes both `text` and `bytea` overloads, so binary data containing `\\0` bytes can be searched too. Version `0.4.1` also adds index-assisted matching and reports the linked RE2 version.

```sql
CREATE EXTENSION re2;

SELECT re2match('hello world', 'h.*o');
SELECT re2extract('Order #123', '(\\d+)');
SELECT re2countmatches('a1 b2 c3', '\\d');
SELECT re2_version();
```

### Core Functions

- `re2match(haystack, pattern) -> boolean`
- `re2extract(haystack, pattern) -> text|bytea`
- `re2extractall(haystack, pattern) -> text[]|bytea[]`
- `re2regexpextract(haystack, pattern, index default 1) -> text|bytea`
- `re2extractgroups(haystack, pattern) -> text[]|bytea[]`
- `re2extractallgroupsvertical(haystack, pattern) -> text[]|bytea[]`
- `re2extractallgroupshorizontal(haystack, pattern) -> text[]|bytea[]`
- `re2regexpquotemeta(haystack) -> text|bytea`
- `re2splitbyregexp(pattern, haystack, max_substrings default 0) -> text[]|bytea[]`
- `re2replaceregexpone(haystack, pattern, replacement) -> text|bytea`
- `re2replaceregexpall(haystack, pattern, replacement) -> text|bytea`
- `re2countmatches(...)` and `re2countmatchescaseinsensitive(...)`

```sql
SELECT re2extractallgroupsvertical('a=1 b=2', '(\\w)=(\\d)');
SELECT re2regexpquotemeta('a+b?');
SELECT re2splitbyregexp('\\s+', 'one two three', 2);
```

### Multi-Pattern Matching

The `re2multimatch*` family accepts either multiple pattern arguments or a `VARIADIC` array:

```sql
SELECT re2multimatchany('error: timeout', 'timeout', 'denied');
SELECT re2multimatchanyindex('error: timeout', VARIADIC ARRAY['timeout', 'denied']);
SELECT re2multimatchallindices('error: timeout', 'error', 'timeout', 'panic');
```

### Index Support

Version `0.4.0` adds two complementary index paths:

```sql
-- Anchored constant patterns can use a normal btree prefix scan.
CREATE INDEX docs_body_btree ON docs (body);
SELECT * FROM docs WHERE re2match(body, '^order_2025');

-- The @~ operator can use the extension's GIN operator class.
CREATE INDEX docs_body_re2_gin ON docs USING gin (body gin_re2_ops);
SELECT * FROM docs WHERE body @~ 'timeout|denied';
```

The extension also provides selectivity estimation for RE2 predicates. Check `EXPLAIN` with representative data before choosing between btree, GIN, and a sequential scan.

### Matching Semantics

- To match ClickHouse behavior, `.` matches line breaks by default.
- Prefix the pattern with `(?-s)` if you want `.` not to cross line breaks.
- Replacement strings support `\\0` through `\\9` backreferences.

### Caveats

- Upstream requires the system `re2` library at build/install time.
- The `v0.4.x` binaries use SQL extension version `0.4`; after replacing an older binary, run `ALTER EXTENSION re2 UPDATE TO '0.4'` when an upgrade is pending.
- `v0.4.1` fixes a cache-related use-after-free and improves stable-pattern and multi-match performance; use it instead of `v0.4.0`.
- `re2splitbyregexp` uses `pattern, haystack[, max_substrings]`. Builds older than `0.3.0` used the reverse order.
- RE2 deliberately excludes features such as backreferences in patterns and look-around assertions; its bounded-time behavior differs from PostgreSQL's native regular-expression engine.
