---
title: "babelfishpg_money"
linkTitle: "babelfishpg_money"
description: "SQL Server Money Data Type"
weight: 9330
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://babelfishpg.org/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://babelfishpg.org/</div>
    <div class="ext-card__desc">https://babelfishpg.org/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/babelfish-17-17.7-5.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">babelfish-17-17.7-5.4.0.tar.gz</div>
    <div class="ext-card__desc">babelfish-17-17.7-5.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`babelfish`**](/ext/e/babelfishpg_common) | `1.1.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9300  | [**`babelfishpg_common`**](/ext/e/babelfishpg_common) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9310  | [**`babelfishpg_tsql`**](/ext/e/babelfishpg_tsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9320  | [**`babelfishpg_tds`**](/ext/e/babelfishpg_tds) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9330  | [**`babelfishpg_money`**](/ext/e/babelfishpg_money) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`babelfishpg_common`](/ext/e/babelfishpg_common) [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) [`babelfishpg_tds`](/ext/e/babelfishpg_tds) [`financial`](/ext/e/financial) [`tds_fdw`](/ext/e/tds_fdw) [`numeral`](/ext/e/numeral) [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> special case: this extension only works on wiltondb kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18,17" >}} | `babelfish` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.0.0` | {{< pgvers "18,17" >}} | `babelfish-$v` | `antlr4-runtime413` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `6.0.0` | {{< pgvers "18,17" >}} | `babelfish-$v` | `libantlr4-runtime413` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 6.0.0 1 | AVAIL PIGSTY 5.4.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
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
pig ext install -y babelfish -v 18  # PG 18
pig ext install -y babelfish -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y babelfish-18       # PG 18
dnf install -y babelfish-17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y babelfish-18   # PG 18
apt install -y babelfish-17   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION babelfishpg_money;
```




## Usage

> [babelfishpg_money: SQL Server Money Data Type](https://babelfishpg.org/)

The `babelfishpg_money` extension provides SQL Server-compatible `MONEY` and `SMALLMONEY` data type implementations for PostgreSQL as part of the Babelfish project.

### Enabling

```sql
CREATE EXTENSION babelfishpg_money;
```

### Data Types

- **MONEY** - 8-byte monetary value ranging from -922,337,203,685,477.5808 to 922,337,203,685,477.5807, with fixed 4 decimal places
- **SMALLMONEY** - 4-byte monetary value ranging from -214,748.3648 to 214,748.3647, with fixed 4 decimal places

### Behavior

The extension implements SQL Server's monetary arithmetic rules:

- Fixed-point representation with exactly 4 decimal digits
- SQL Server-compatible rounding behavior for monetary calculations
- Proper casting between MONEY and other numeric types
- Arithmetic operations follow SQL Server semantics (e.g., money / money = money, not float)

### Notes

- Part of the Babelfish for PostgreSQL project
- Works in conjunction with `babelfishpg_common` which provides the base type infrastructure
- The PostgreSQL built-in `money` type has different precision and behavior; this extension provides the SQL Server-compatible variant
