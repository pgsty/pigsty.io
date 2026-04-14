---
title: "pg_kazsearch"
linkTitle: "pg_kazsearch"
description: "Kazakh full-text search extension for PostgreSQL"
weight: 2200
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/darkhanakh/pg-kazsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">darkhanakh/pg-kazsearch</div>
    <div class="ext-card__desc">https://github.com/darkhanakh/pg-kazsearch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_kazsearch-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_kazsearch-2.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_kazsearch-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_kazsearch`**](/ext/e/pg_kazsearch) | `0.1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license lgpl30" href="/ext/license#lgpl30">LGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2200  | [**`pg_kazsearch`**](/ext/e/pg_kazsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> Upstream release/package version is 2.0.0; extension control version is 0.1.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16" >}} | `pg_kazsearch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16" >}} | `pg_kazsearch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-kazsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 443.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_18-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 321.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_18-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 456.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_18-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 331.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_18-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_kazsearch_18 pg_kazsearch_18-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 456.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_18-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_kazsearch_18 pg_kazsearch_18-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 331.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_18-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 361.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 251.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 361.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 251.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 406.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 285.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 402.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-kazsearch postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 284.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-18-pg-kazsearch_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 443.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 321.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 456.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 331.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_kazsearch_17 pg_kazsearch_17-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 456.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_17-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_kazsearch_17 pg_kazsearch_17-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 331.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_17-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 361.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 251.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 361.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 251.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 406.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 286.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 401.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-kazsearch postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 283.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-17-pg-kazsearch_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 443.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_kazsearch_16-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 321.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_kazsearch_16-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 456.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_kazsearch_16-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 331.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_kazsearch_16-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_kazsearch_16 pg_kazsearch_16-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 456.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_kazsearch_16-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_kazsearch_16 pg_kazsearch_16-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 331.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_kazsearch_16-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 361.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 251.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 361.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 251.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 406.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 286.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 402.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-kazsearch postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 283.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-kazsearch/postgresql-16-pg-kazsearch_2.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_kazsearch` using `pig build`:

```bash
pig build pkg pg_kazsearch         # build RPM / DEB packages
```


## Install

You can install `pg_kazsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_kazsearch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_kazsearch -v 18  # PG 18
pig ext install -y pg_kazsearch -v 17  # PG 17
pig ext install -y pg_kazsearch -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_kazsearch_18       # PG 18
dnf install -y pg_kazsearch_17       # PG 17
dnf install -y pg_kazsearch_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-kazsearch   # PG 18
apt install -y postgresql-17-pg-kazsearch   # PG 17
apt install -y postgresql-16-pg-kazsearch   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_kazsearch;
```

## Usage
> Sources: [README](https://github.com/darkhanakh/pg-kazsearch/blob/main/README.md) and [project repo](https://github.com/darkhanakh/pg-kazsearch).

`pg_kazsearch` is a PostgreSQL full-text search extension for the Kazakh language.
The upstream README describes it as a Rust extension built with `pgrx` that plugs into PostgreSQL's text search pipeline.

It creates a ready-to-use configuration named `kazakh_cfg` and the supporting dictionary `pg_kazsearch_dict`.

### Quick Start

```sql
CREATE EXTENSION pg_kazsearch;

SELECT to_tsvector('kazakh_cfg', 'президенттің жарлығы');
-- 'жарлық':2 'президент':1

SELECT ts_lexize('pg_kazsearch_dict', 'алмаларымыздағы');
-- {алма}
```

### Use Cases

The README shows the extension being used for:

- stemming individual Kazakh words
- building `tsvector` values with `to_tsvector('kazakh_cfg', ...)`
- adding generated `tsvector` columns to a table
- indexing those columns with GIN
- searching with `websearch_to_tsquery('kazakh_cfg', ...)`

Example table workflow:

```sql
ALTER TABLE articles ADD COLUMN fts tsvector
    GENERATED ALWAYS AS (
        setweight(to_tsvector('kazakh_cfg', title), 'A') ||
        setweight(to_tsvector('kazakh_cfg', body), 'B')
    ) STORED;

CREATE INDEX idx_fts ON articles USING GIN (fts);

SELECT title FROM articles
WHERE fts @@ websearch_to_tsquery('kazakh_cfg', 'президенттің жарлығы')
ORDER BY ts_rank_cd(fts, websearch_to_tsquery('kazakh_cfg', 'президенттің жарлығы')) DESC
LIMIT 10;
```

### Tuning

Penalty weights are adjustable at runtime:

```sql
ALTER TEXT SEARCH DICTIONARY pg_kazsearch_dict (w_deriv = 3.5, w_short_char = 100.0);
```

### Deployment

The README documents three supported paths:

- pre-built Debian/Ubuntu packages
- a Docker image based on `ghcr.io/darkhanakh/pg-kazsearch`
- source builds with `cargo pgrx install`

The repository metadata in this project matches PostgreSQL 16-18.
