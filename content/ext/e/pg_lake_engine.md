---
title: "pg_lake_engine"
linkTitle: "pg_lake_engine"
description: "Query engine for data lake queries"
weight: 2564
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_engine">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">main/pg_lake_engine</div>
    <div class="ext-card__desc">https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_lake_engine</div>
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

| **Related** | [`pg_extension_base`](/ext/e/pg_extension_base) [`pg_map`](/ext/e/pg_map) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_lake_copy`](/ext/e/pg_lake_copy) [`pg_lake_iceberg`](/ext/e/pg_lake_iceberg) [`pg_lake_table`](/ext/e/pg_lake_table) |
{.ext-table .ext-table--rel}


> Query-engine component. pg_extension_base auto-loads its module; delegated DuckDB execution additionally requires the separately running PG-major pgduck_server.
Extension SQL/control version is 3.4; source and DEB/RPM package version is 3.4.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16" >}} | `pg_lake` | `pg_extension_base`, `pg_map` |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4.0` | {{< pgvers "18,17,16" >}} | `pg_lake_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-pg-lake` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | AVAIL PIGSTY 3.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
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


**Preload**:

```bash
shared_preload_libraries = 'pg_extension_base';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_lake_engine CASCADE;  -- requires: pg_extension_base, pg_map
```

## Usage

Sources:

- [Official pg_lake architecture overview](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/README.md#architecture)
- [Version 3.4 control file](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_lake_engine/pg_lake_engine.control)
- [Base SQL objects](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_lake_engine/pg_lake_engine--3.0.sql)
- [Version 3.4 cleanup-queue change](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_lake_engine/pg_lake_engine--3.3--3.4.sql)

`pg_lake_engine` is the shared execution layer used by the pg_lake table, copy, and Iceberg extensions. It rewrites eligible PostgreSQL work for `pgduck_server`, maps PostgreSQL and DuckDB values, and tracks remote files that must be removed after aborts or table changes. It is an internal dependency rather than a standalone analytics interface.

### Deployment Boundary

Install it through the top-level extension so its dependency graph and preload directives remain aligned:

```conf
shared_preload_libraries = 'pg_extension_base'
```

```sql
CREATE EXTENSION pg_lake CASCADE;
```

`pg_lake_engine` requires `pg_extension_base` and `pg_map`. Query execution also requires a running local `pgduck_server`; creating only this extension does not provide a usable lake table.

### User-Visible Objects

- Roles `lake_read`, `lake_write`, and `lake_read_write`: shared privilege groups consumed by the other components.
- `to_postgres(any)`: returns its input while forcing that expression to be evaluated in PostgreSQL instead of pushed to the lake engine.
- `to_date(double precision)`: converts a days-since-Unix-epoch value commonly found in Parquet to a PostgreSQL `date`.
- `lake_engine.deletion_queue`: tracks committed orphan-file cleanup; readable by `lake_write`.
- `lake_engine.in_progress_files`: tracks files produced by transactions that have not committed.
- `lake_engine.flush_deletion_queue(regclass)` and `flush_in_progress_queue()`: privileged cleanup functions used by maintenance paths.

```sql
SELECT to_postgres(application_only_function(payload))
FROM external_events;
```

Use `to_postgres()` only when an expression cannot or should not be pushed down; pulling data back into PostgreSQL may substantially increase transfer and execution cost.

### Internal State and Caveats

- The `__lake__internal__nsp__` functions are planner/deparser placeholders and are not a supported direct SQL API.
- Do not manually update or delete queue rows. Cleanup functions need the extension's object-store credentials and privilege roles and should be invoked only as documented by operational tooling.
- Version `3.4` adds `resolve_metadata` to the deletion queue so Iceberg metadata can be expanded into exact referenced files during `VACUUM`, moving object-store traversal off the `DROP` path.
- Roles are cluster-wide objects and can outlive an extension instance in one database; review memberships separately when removing pg_lake.
