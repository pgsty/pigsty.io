---
title: "babelfishpg_common"
linkTitle: "babelfishpg_common"
description: "SQL Server Transact SQL Datatype Support"
weight: 9300
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
| [**`babelfish`**](/ext/e/babelfishpg_common) | `5.5.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9300  | [**`babelfishpg_common`**](/ext/e/babelfishpg_common) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9310  | [**`babelfishpg_tsql`**](/ext/e/babelfishpg_tsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9320  | [**`babelfishpg_tds`**](/ext/e/babelfishpg_tds) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9330  | [**`babelfishpg_money`**](/ext/e/babelfishpg_money) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`tds_fdw`](/ext/e/tds_fdw) [`babelfishpg_tds`](/ext/e/babelfishpg_tds) [`babelfishpg_money`](/ext/e/babelfishpg_money) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`uuid-ossp`](/ext/e/uuid-ossp) [`session_variable`](/ext/e/session_variable) [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) |
{.ext-table .ext-table--rel}


> special case: this extension only works on wiltondb kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.5.0` | {{< pgvers "17" >}} | `babelfish` | - |
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
@ el8.x86_64 17 babelfish_17 babelfish_17-5.5.0-1PIGSTY.el8.x86_64.rpm pigsty 5.5.0 2.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/babelfish_17-5.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 babelfish_17 babelfish_17-5.5.0-1PIGSTY.el8.aarch64.rpm pigsty 5.5.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/babelfish_17-5.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 babelfish_17 babelfish_17-5.5.0-1PIGSTY.el9.x86_64.rpm pigsty 5.5.0 2.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/babelfish_17-5.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 babelfish_17 babelfish_17-5.5.0-1PIGSTY.el9.aarch64.rpm pigsty 5.5.0 2.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/babelfish_17-5.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 babelfish_17 babelfish_17-5.5.0-1PIGSTY.el10.x86_64.rpm pigsty 5.5.0 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/babelfish_17-5.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 babelfish_17 babelfish_17-5.5.0-1PIGSTY.el10.aarch64.rpm pigsty 5.5.0 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/babelfish_17-5.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~bookworm_amd64.deb pigsty 5.5.0 2.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~bookworm_arm64.deb pigsty 5.5.0 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~trixie_amd64.deb pigsty 5.5.0 2.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~trixie_arm64.deb pigsty 5.5.0 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~jammy_amd64.deb pigsty 5.5.0 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~jammy_arm64.deb pigsty 5.5.0 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~noble_amd64.deb pigsty 5.5.0 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~noble_arm64.deb pigsty 5.5.0 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~resolute_amd64.deb pigsty 5.5.0 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 babelfishpg-17-babelfish babelfishpg-17-babelfish_5.5.0-2PIGSTY~resolute_arm64.deb pigsty 5.5.0 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/babelfishpg-17-babelfish/babelfishpg-17-babelfish_5.5.0-2PIGSTY~resolute_arm64.deb
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
CREATE EXTENSION babelfishpg_common;
```




## Usage

> [babelfishpg_common: SQL Server Transact SQL Datatype Support](https://babelfishpg.org/)

The `babelfishpg_common` extension provides SQL Server-compatible data type support for PostgreSQL as part of the Babelfish project. It enables PostgreSQL to understand and work with Microsoft SQL Server data types.

### Enabling

```sql
CREATE EXTENSION babelfishpg_common;
```

### SQL Server Data Types

The extension adds the following SQL Server-compatible data types:

- **TINYINT** - 1-byte unsigned integer (0 to 255)
- **SMALLMONEY** - Small monetary value
- **MONEY** - Monetary value (see also `babelfishpg_money`)
- **DATETIME** - SQL Server-style datetime
- **DATETIME2** - Extended precision datetime
- **SMALLDATETIME** - Reduced precision datetime
- **DATETIMEOFFSET** - Date and time with timezone offset
- **BIT** - SQL Server-compatible boolean
- **NCHAR** / **NVARCHAR** - Unicode character types
- **UNIQUEIDENTIFIER** - SQL Server-style UUID
- **VARBINARY** - Variable-length binary data
- **IMAGE** - Legacy binary data type
- **SQL_VARIANT** - Generic data type container
- **XML** - SQL Server-compatible XML type
- **SYSNAME** - System name type (nvarchar(128))

### Key Features

- Provides implicit and explicit type casting between SQL Server and PostgreSQL types
- Supports SQL Server-style collation behavior
- Handles SQL Server-specific type coercion rules
- Works in conjunction with `babelfishpg_tsql` for full T-SQL compatibility

This extension is typically deployed as part of a full Babelfish for PostgreSQL installation and is a prerequisite for `babelfishpg_tsql`.
