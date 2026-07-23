---
title: "hstore_pllua"
linkTitle: "hstore_pllua"
description: "Hstore transform for Lua"
weight: 3021
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pllua/pllua">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pllua/pllua</div>
    <div class="ext-card__desc">https://github.com/pllua/pllua</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pllua`**](/ext/e/pllua) | `2.0.12` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3020  | [**`pllua`**](/ext/e/pllua) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3021  | [**`hstore_pllua`**](/ext/e/hstore_pllua) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 3030  | [**`plluau`**](/ext/e/plluau) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3031  | [**`hstore_plluau`**](/ext/e/hstore_plluau) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`hstore`](/ext/e/hstore) [`pllua`](/ext/e/pllua) [`hstore_plperl`](/ext/e/hstore_plperl) [`hstore_plperlu`](/ext/e/hstore_plperlu) [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`plpgsql`](/ext/e/plpgsql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.0.12` | {{< pgvers "18,17,16,15,14" >}} | `pllua` | `hstore`, `pllua` |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.12` | {{< pgvers "18,17,16,15,14" >}} | `pllua_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.12` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pllua` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 |
| el8.aarch64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 4 | AVAIL PIGSTY 2.0.12 3 |
| el9.aarch64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 2 | AVAIL PIGSTY 2.0.12 2 |
| el10.x86_64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 |
| el10.aarch64 | AVAIL PIGSTY 2.0.12 1 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 | AVAIL PIGSTY 2.0.12 3 |
| d12.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| d12.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| d13.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| d13.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u22.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u22.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u24.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u24.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u26.x86_64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
| u26.aarch64 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 | AVAIL PGDG 2.0.12 1 |
{{< /pgext_matrix >}}


## Install

You can install `pllua` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pllua;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pllua -v 18  # PG 18
pig ext install -y pllua -v 17  # PG 17
pig ext install -y pllua -v 16  # PG 16
pig ext install -y pllua -v 15  # PG 15
pig ext install -y pllua -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pllua_18       # PG 18
dnf install -y pllua_17       # PG 17
dnf install -y pllua_16       # PG 16
dnf install -y pllua_15       # PG 15
dnf install -y pllua_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pllua   # PG 18
apt install -y postgresql-17-pllua   # PG 17
apt install -y postgresql-16-pllua   # PG 16
apt install -y postgresql-15-pllua   # PG 15
apt install -y postgresql-14-pllua   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION hstore_pllua CASCADE;  -- requires: hstore, pllua
```




## Usage

> [hstore_pllua: hstore transform for PL/Lua](https://github.com/pllua/pllua)

The `hstore_pllua` extension provides a transform that allows `hstore` values to be passed directly to and from PL/Lua functions as native Lua tables, instead of opaque datum objects.

```sql
CREATE EXTENSION hstore;
CREATE EXTENSION pllua;
CREATE EXTENSION hstore_pllua;
```

### Using hstore in PL/Lua

With the transform installed, `hstore` arguments are automatically converted to Lua tables, and Lua tables can be returned as `hstore` values:

```sql
CREATE FUNCTION process_hstore(h hstore) RETURNS hstore LANGUAGE pllua AS $$
  -- h is a Lua table with string keys and string values
  h["new_key"] = "new_value"
  h["modified"] = "true"
  return h
$$;

SELECT process_hstore('name => "Alice", age => "30"'::hstore);
```

### Iterate Over hstore Keys

```sql
CREATE FUNCTION hstore_keys(h hstore) RETURNS SETOF text LANGUAGE pllua AS $$
  for k, v in pairs(h) do
    coroutine.yield(k)
  end
$$;
```

Without this transform, `hstore` values would need to be manually converted using the `hstore` type functions.
