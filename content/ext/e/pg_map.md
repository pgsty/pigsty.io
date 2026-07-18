---
title: "pg_map"
linkTitle: "pg_map"
description: "Map type for PostgreSQL, bundled as a required pg_lake component."
weight: 2563
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_map">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">main/pg_map</div>
    <div class="ext-card__desc">https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_map</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_lake-3.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_lake-3.4.0.tar.gz</div>
    <div class="ext-card__desc">pg_lake-3.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_lake`**](/ext/e/pg_lake) | `3.4` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2560  | [**`pg_lake`**](/ext/e/pg_lake) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `lake` |
| 2561  | [**`pg_extension_base`**](/ext/e/pg_extension_base) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `extension_base` |
| 2562  | [**`pg_extension_updater`**](/ext/e/pg_extension_updater) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `extension_updater` |
| 2563  | [**`pg_map`**](/ext/e/pg_map) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `map_type` |
| 2564  | [**`pg_lake_engine`**](/ext/e/pg_lake_engine) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `__lake__internal__nsp__` |
| 2565  | [**`pg_lake_iceberg`**](/ext/e/pg_lake_iceberg) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `lake_iceberg` |
| 2566  | [**`pg_lake_table`**](/ext/e/pg_lake_table) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `__pg_lake_table_writes` |
| 2567  | [**`pg_lake_copy`**](/ext/e/pg_lake_copy) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** |  |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_lake_engine`](/ext/e/pg_lake_engine) |
{.ext-table .ext-table--rel}


> This packaged provider is Snowflake pg_lake pg_map 3.4, not the unrelated semenikhind/pg_map 1.0 array-mapping extension. The catalog name is unique, so the packaged provider supersedes that source-only row and is reassigned with the pg_lake family to OLAP ID 2563.
Extension SQL/control version is 3.4; source and DEB/RPM package version is 3.4.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16" >}} | `pg_lake` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4.0` | {{< pgvers "18,17,16" >}} | `pg_lake_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-lake` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_lake` using `pig build`:

```bash
pig build pkg pg_lake         # build RPM / DEB packages
```


## Install

You can install `pg_lake` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_lake;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_lake -v 18  # PG 18
pig ext install -y pg_lake -v 17  # PG 17
pig ext install -y pg_lake -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_lake_18       # PG 18
dnf install -y pg_lake_17       # PG 17
dnf install -y pg_lake_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-lake   # PG 18
apt install -y postgresql-17-pg-lake   # PG 17
apt install -y postgresql-16-pg-lake   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_map;
```

## Usage

Sources:

- [pg_map README at the reviewed commit](https://github.com/semenikhind/pg_map/blob/f1a9c628625e20df148afa92a3df57bb8523bd40/README.md)
- [pg_map install SQL at the reviewed commit](https://github.com/semenikhind/pg_map/blob/f1a9c628625e20df148afa92a3df57bb8523bd40/pg_map--1.0.sql)
- [pg_map C implementation at the reviewed commit](https://github.com/semenikhind/pg_map/blob/f1a9c628625e20df148afa92a3df57bb8523bd40/pg_map.c)

`pg_map` applies a one-argument PostgreSQL function to every element of an array and returns an array of the function results. Its two overloads identify the mapped function by OID or by text; a text signature containing parentheses is resolved as a specific `regprocedure`, while a bare name is resolved as `regproc`.

### Map a Function over an Array

```sql
CREATE EXTENSION pg_map;

SELECT pg_map(
  'upper(text)',
  ARRAY['alpha', 'beta', 'gamma']::text[]
);
```

The example applies `upper(text)` to each element and returns an uppercase text array. Supplying a full signature avoids ambiguity when a function name is overloaded.

### Caveats

- Upstream only claims compatibility with PostgreSQL 9.6devel. It does not document support for modern PostgreSQL releases.
- The version 1.0 C implementation uses PostgreSQL internal array, catalog, and function-manager APIs. Build and regression-test it against the exact server source before use.
- The mapped function must accept one argument. The implementation attempts an element-type cast when the array element type differs from the function argument type and errors if no cast function is available.
- Upstream publishes no license or release compatibility matrix.
