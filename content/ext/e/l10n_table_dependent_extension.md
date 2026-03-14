---
title: "l10n_table_dependent_extension"
linkTitle: "l10n_table_dependent_extension"
description: "PostgreSQL l10n toolbox"
weight: 3611
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_xenophile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_xenophile</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_xenophile</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_xenophile-0.8.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_xenophile-0.8.3.tar.gz</div>
    <div class="ext-card__desc">pg_xenophile-0.8.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_xenophile`**](/ext/e/pg_xenophile) | `0.8.3` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3610  | [**`pg_xenophile`**](/ext/e/pg_xenophile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `xeno` |
| 3611  | [**`l10n_table_dependent_extension`**](/ext/e/l10n_table_dependent_extension) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_xenophile`](/ext/e/pg_xenophile) [`country`](/ext/e/country) [`currency`](/ext/e/currency) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_xenophile` | `pg_xenophile` |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_xenophile_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-xenophile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_xenophile` using `pig build`:

```bash
pig build pkg pg_xenophile         # build RPM / DEB packages
```


## Install

You can install `pg_xenophile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_xenophile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_xenophile -v 18  # PG 18
pig ext install -y pg_xenophile -v 17  # PG 17
pig ext install -y pg_xenophile -v 16  # PG 16
pig ext install -y pg_xenophile -v 15  # PG 15
pig ext install -y pg_xenophile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_xenophile_18       # PG 18
dnf install -y pg_xenophile_17       # PG 17
dnf install -y pg_xenophile_16       # PG 16
dnf install -y pg_xenophile_15       # PG 15
dnf install -y pg_xenophile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-xenophile   # PG 18
apt install -y postgresql-17-pg-xenophile   # PG 17
apt install -y postgresql-16-pg-xenophile   # PG 16
apt install -y postgresql-15-pg-xenophile   # PG 15
apt install -y postgresql-14-pg-xenophile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION l10n_table_dependent_extension CASCADE;  -- requires: pg_xenophile
```



## Usage

> [l10n_table_dependent_extension: l10n table dependent extension for pg_xenophile](https://github.com/bigsmoke/pg_xenophile)

The `l10n_table_dependent_extension` is a companion extension to `pg_xenophile` that provides infrastructure for other extensions that depend on its localization (l10n) table mechanism.

```sql
CREATE EXTENSION l10n_table_dependent_extension;
```

This extension works in conjunction with `pg_xenophile`'s `l10n_table` system, allowing dependent extensions to register their tables with the localization framework. When a base table is registered in `xeno.l10n_table`, the system automatically creates companion translation tables and language-specific views.

See the [`pg_xenophile`](https://github.com/bigsmoke/pg_xenophile) documentation for the full l10n table management API.
