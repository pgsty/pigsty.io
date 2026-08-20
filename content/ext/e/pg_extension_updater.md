---
title: "pg_extension_updater"
linkTitle: "pg_extension_updater"
description: "Automatic extension updater"
weight: 2562
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_extension_updater">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">main/pg_extension_updater</div>
    <div class="ext-card__desc">https://github.com/Snowflake-Labs/pg_lake/tree/main/pg_extension_updater</div>
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

| **Related** | [`pg_extension_base`](/ext/e/pg_extension_base) [`pg_tle`](/ext/e/pg_tle) [`pgextwlist`](/ext/e/pgextwlist) [`pg_readme`](/ext/e/pg_readme) [`ddlx`](/ext/e/ddlx) [`pgdd`](/ext/e/pgdd) [`meta`](/ext/e/meta) [`pg_command_fw`](/ext/e/pg_command_fw) [`supautils`](/ext/e/supautils) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Optional packaged component. It runs installed extension updates at database start through pg_extension_base; it is not part of CREATE EXTENSION pg_lake CASCADE dependency closure. Extension SQL/control version is 3.4; source and DEB/RPM package version is 3.4.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16" >}} | `pg_lake` | `pg_extension_base` |
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_lake;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_lake -v 18  # PG 18
pig ext install -y pg_lake -v 17  # PG 17
pig ext install -y pg_lake -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_lake_18       # PG 18
dnf install -y pg_lake_17       # PG 17
dnf install -y pg_lake_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-lake   # PG 18
apt install -y postgresql-17-pg-lake   # PG 17
apt install -y postgresql-16-pg-lake   # PG 16
```


**Preload**:

```bash
shared_preload_libraries = 'pg_extension_base';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_extension_updater CASCADE;  -- requires: pg_extension_base
```

## Usage

Sources:

- [Official pg_extension_updater README](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_extension_updater/README.md)
- [Version 3.4 control file](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_extension_updater/pg_extension_updater.control)
- [Worker registration SQL](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_extension_updater/pg_extension_updater--1.1.sql)
- [Updater implementation and configuration](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_extension_updater/src/pg_extension_updater.c)
- [pg_extension_base preload documentation](https://github.com/Snowflake-Labs/pg_lake/blob/44134cc33fb152716e10752d0a345c6e1acb8725/pg_extension_base/README.md)

`pg_extension_updater` runs `ALTER EXTENSION ... UPDATE` for each extension whose installed version differs from its available default version when the database lifecycle worker starts. It is intended to reduce SQL/binary version mismatches after new extension files are deployed; it does not install missing extensions or replace release testing.

### Enable Automatic Updates

The updater depends on `pg_extension_base`, which must be preloaded cluster-wide:

```conf
shared_preload_libraries = 'pg_extension_base'
```

After restarting PostgreSQL, create the updater in every database where automatic updates are desired:

```sql
CREATE EXTENSION pg_extension_updater CASCADE;
```

Creating it in `template1` causes new databases cloned from that template to contain the updater. The worker does not update extensions inside the template database itself, but starts in a newly cloned database.

### Runtime Behavior

- The `#!shared_preload_libraries` directive in the updater's control file lets `pg_extension_base` load its library.
- Installation registers the internal `extension_updater.main(internal)` lifecycle worker.
- At worker startup, it reads `pg_available_extensions` and updates entries whose `installed_version` differs from `default_version`.
- A failed `ALTER EXTENSION` is logged as a warning and is attempted only once during that worker run.
- `pg_extension_updater.enable` is a postmaster setting, defaults to `on`, and disables the worker's updates when set to `off`; changing it requires a restart.

### Caveats

- Automatic migration can execute arbitrary upgrade SQL supplied by every installed extension. Validate packages and upgrade paths before enabling it on production databases.
- Review extension dependency changes and take application-specific backups independently; a warning does not roll back unrelated successful extension updates.
- There is no user-facing force-update function or per-extension allowlist in version `3.4`.
- Version `3.4` changes no updater SQL API relative to `3.3`.
