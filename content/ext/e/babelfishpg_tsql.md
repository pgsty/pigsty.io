---
title: "babelfishpg_tsql"
linkTitle: "babelfishpg_tsql"
description: "SQL Server Transact SQL compatibility"
weight: 9310
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://babelfishpg.org/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://babelfishpg.org/</div>
    <div class="ext-card__desc">https://babelfishpg.org/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/babelfishpg-17.8-5.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">babelfishpg-17.8-5.5.0.tar.gz</div>
    <div class="ext-card__desc">babelfishpg-17.8-5.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`babelfish`**](/ext/e/babelfishpg_tsql) | `5.5.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9300  | [**`babelfishpg_common`**](/ext/e/babelfishpg_common) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9310  | [**`babelfishpg_tsql`**](/ext/e/babelfishpg_tsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9320  | [**`babelfishpg_tds`**](/ext/e/babelfishpg_tds) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9330  | [**`babelfishpg_money`**](/ext/e/babelfishpg_money) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`babelfishpg_common`](/ext/e/babelfishpg_common) [`uuid-ossp`](/ext/e/uuid-ossp) [`babelfishpg_money`](/ext/e/babelfishpg_money) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`tds_fdw`](/ext/e/tds_fdw) [`session_variable`](/ext/e/session_variable) [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) [`db_migrator`](/ext/e/db_migrator) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`babelfishpg_tds`](/ext/e/babelfishpg_tds) |
{.ext-table .ext-table--rel}


> special case: this extension only works on wiltondb kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.5.0` | {{< pgvers "17" >}} | `babelfish` | `babelfishpg_common`, `uuid-ossp` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.5.0` | {{< pgvers "17" >}} | `babelfish_$v` | `babelfishpg_$v`, `antlr4-runtime413` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.5.0` | {{< pgvers "17" >}} | `babelfishpg-$v-babelfish` | `babelfishpg-$v`, `libantlr4-runtime413` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `babelfish` using `pig build`:

```bash
pig build pkg babelfish         # build RPM / DEB packages
```


## Install

You can install `babelfish` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install babelfish;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y babelfish -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y babelfish_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y babelfishpg-17-babelfish   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION babelfishpg_tsql CASCADE;  -- requires: babelfishpg_common, uuid-ossp
```




## Usage

> [babelfishpg_tsql: SQL Server Transact SQL compatibility](https://babelfishpg.org/)

The `babelfishpg_tsql` extension provides Microsoft SQL Server Transact-SQL (T-SQL) compatibility for PostgreSQL as part of the Babelfish project. Applications written for SQL Server can connect and run queries against PostgreSQL with minimal changes.

### Enabling

```sql
CREATE EXTENSION babelfishpg_tsql;
```

### Key Features

- **T-SQL Language Support**: Understands T-SQL syntax including stored procedures, functions, triggers, and batches
- **SQL Server Wire Protocol**: Applications can connect using the TDS (Tabular Data Stream) protocol on port 1433
- **System Procedures**: Common `sp_` system stored procedures are available
- **System Views**: SQL Server catalog views (e.g., `sys.tables`, `sys.columns`, `sys.objects`)
- **Multi-Database Semantics**: Supports SQL Server-style database/schema separation

### Supported T-SQL Features

- `BEGIN...END` blocks, `IF...ELSE`, `WHILE` loops
- `TRY...CATCH` error handling
- Temporary tables (`#temp`, `##global_temp`)
- Table variables (`DECLARE @t TABLE (...)`)
- `IDENTITY` columns and `@@IDENTITY` / `SCOPE_IDENTITY()`
- `TOP` clause, `OUTPUT` clause
- `MERGE` statements
- Common Table Expressions (CTEs)
- Cross-database queries within the same instance
- `EXEC` / `EXECUTE` for dynamic SQL
- SQL Server-style string concatenation and NULL handling
- `PRINT` and `RAISERROR` statements

### Connecting via TDS Protocol

Applications can connect using SQL Server drivers (JDBC, ODBC, ADO.NET) to the TDS listener port (default 1433):

```
Server: hostname
Port: 1433
Database: mydb
```

### Notes

- Requires `babelfishpg_common` extension
- Part of the Babelfish for PostgreSQL project (Apache 2.0 / PostgreSQL license)
- Not all T-SQL features are supported; check the Babelfish compatibility reference
