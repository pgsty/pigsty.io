---
title: "fbsql"
linkTitle: "fbsql"
description: "Closure-preserving formula-based statistical modeling in SQL"
weight: 4695
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dsc-chiba-u/FbSQL">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dsc-chiba-u/FbSQL</div>
    <div class="ext-card__desc">https://github.com/dsc-chiba-u/FbSQL</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/fbsql-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">fbsql-0.1.0.tar.gz</div>
    <div class="ext-card__desc">fbsql-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`fbsql`**](/ext/e/fbsql) | `0.1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4695  | [**`fbsql`**](/ext/e/fbsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fbsql` |
{.ext-table}

| **Related** | [`plr`](/ext/e/plr) [`weighted_statistics`](/ext/e/weighted_statistics) [`pg_math`](/ext/e/pg_math) [`vasco`](/ext/e/vasco) [`xicor`](/ext/e/xicor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires PL/R 8.4.0 or newer; PIGSTY packages target PostgreSQL 16 through 18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16" >}} | `fbsql` | `plr` |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16" >}} | `fbsql_$v` | `plr_$v` |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-fbsql` | `postgresql-$v-plr` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 fbsql_18 fbsql_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fbsql_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 fbsql_18 fbsql_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 19.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fbsql_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 fbsql_18 fbsql_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fbsql_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 fbsql_18 fbsql_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fbsql_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 fbsql_18 fbsql_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fbsql_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 fbsql_18 fbsql_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fbsql_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 14.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 14.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-fbsql postgresql-18-fbsql_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fbsql/postgresql-18-fbsql_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 fbsql_17 fbsql_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fbsql_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 fbsql_17 fbsql_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 19.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fbsql_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 fbsql_17 fbsql_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fbsql_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 fbsql_17 fbsql_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fbsql_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 fbsql_17 fbsql_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fbsql_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 fbsql_17 fbsql_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fbsql_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 14.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 14.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-fbsql postgresql-17-fbsql_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fbsql/postgresql-17-fbsql_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 fbsql_16 fbsql_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/fbsql_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 fbsql_16 fbsql_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 19.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/fbsql_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 fbsql_16 fbsql_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 19.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/fbsql_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 fbsql_16 fbsql_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 19.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/fbsql_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 fbsql_16 fbsql_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/fbsql_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 fbsql_16 fbsql_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 19.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/fbsql_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 14.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 14.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-fbsql postgresql-16-fbsql_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 14.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/fbsql/postgresql-16-fbsql_0.1.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `fbsql` using `pig build`:

```bash
pig build pkg fbsql         # build RPM / DEB packages
```


## Install

You can install `fbsql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install fbsql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y fbsql -v 18  # PG 18
pig ext install -y fbsql -v 17  # PG 17
pig ext install -y fbsql -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y fbsql_18       # PG 18
dnf install -y fbsql_17       # PG 17
dnf install -y fbsql_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-fbsql   # PG 18
apt install -y postgresql-17-fbsql   # PG 17
apt install -y postgresql-16-fbsql   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION fbsql CASCADE;  -- requires: plr
```

## Usage

Sources:

- [FbSQL 0.1.0 README](https://github.com/dsc-chiba-u/FbSQL/blob/v0.1.0/README.md)
- [FbSQL 0.1.0 changes](https://github.com/dsc-chiba-u/FbSQL/blob/v0.1.0/Changes)
- [Extension control file](https://github.com/dsc-chiba-u/FbSQL/blob/v0.1.0/fbsql.control)
- [PGXN release](https://pgxn.org/dist/fbsql/0.1.0/)

`fbsql` is a proof-of-concept statistical-modeling DSL that keeps fitting and prediction relational: SQL queries go in and rows come back, while models are described with R formula syntax. Release 0.1.0 implements generalized linear models through PL/R for fitting and pure PL/pgSQL for prediction.

### Prerequisites

FbSQL was developed and tested with PostgreSQL 16 and requires PL/R 8.4.0 or newer plus R. `plr` is an untrusted language, so a superuser must install the dependency and extension.

```sql
CREATE EXTENSION fbsql CASCADE;
SELECT fbsql.version();
```

Grant regular users only the function access and source-data privileges they require.

### Core Workflow

Fit a binomial churn model and retain the returned relation:

```sql
CREATE TEMP TABLE churn_model AS
SELECT *
FROM fbsql.fit_glm(
  relation => $$
    SELECT churn_flag, age, gender
    FROM customer
    WHERE created_at >= DATE '2025-01-01'
      AND created_at <  DATE '2026-01-01'
  $$,
  formula => 'churn_flag ~ age + gender',
  family => 'binomial'
);
```

Prediction accepts a query for new rows and a query returning the saved model. Because it returns `SETOF record`, supply the output columns at the call site:

```sql
SELECT customer_id, churn_flag_predicted
FROM fbsql.predict_glm(
  relation => $$SELECT customer_id, age, gender FROM customer_2026$$,
  model    => $$SELECT * FROM churn_model$$
) AS p(
  customer_id bigint,
  age integer,
  gender text,
  churn_flag_predicted double precision
);
```

### Important Objects

- `fbsql.fit_glm(relation, formula, family)` returns one row per model term, repeated fit statistics, and `metadata jsonb` containing the information needed for prediction.
- `fbsql.predict_glm(relation, model, on_new_levels)` appends `<response>_predicted` to the input rows. `on_new_levels` is `error` by default or `na` to produce a null prediction for unseen factor levels.
- `fbsql.version()` reports the extension version.

### Supported Surface and Caveats

Version 0.1.0 supports Gaussian models with the identity link and binomial models with the logit link, using numeric and factor predictors. Fitting applies complete-case analysis and reports used and dropped row counts; prediction returns `NULL` when a predictor is null. Prediction uses stored coefficients and metadata and does not invoke R at runtime.

Interactions, custom contrasts, offsets, weights, prediction intervals, additional families and links, and distributed fitting are not supported. The `relation` and `model` parameters contain SQL text: construct them from trusted SQL, not unsanitized user input, and review the executing role's privileges.
