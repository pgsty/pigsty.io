---
title: "ivorysql_ora"
linkTitle: "ivorysql_ora"
description: "Oracle Compatible extension on Postgres Database"
weight: 9140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/IvorySQL/IvorySQL/tree/master/contrib/ivorysql_ora">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">contrib/ivorysql_ora</div>
    <div class="ext-card__desc">https://github.com/IvorySQL/IvorySQL/tree/master/contrib/ivorysql_ora</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/ivorysql-5.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">ivorysql-5.4.tar.gz</div>
    <div class="ext-card__desc">ivorysql-5.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ivorysql`**](/ext/e/ivorysql_ora) | `1.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9140  | [**`ivorysql_ora`**](/ext/e/ivorysql_ora) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `sys` |
| 9150  | [**`ora_btree_gin`**](/ext/e/ora_btree_gin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `sys` |
| 9160  | [**`ora_btree_gist`**](/ext/e/ora_btree_gist) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `sys` |
| 9170  | [**`pg_get_functiondef`**](/ext/e/pg_get_functiondef) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9180  | [**`plisql`**](/ext/e/plisql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 9190  | [**`gb18030_2022`**](/ext/e/gb18030_2022) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) [`session_variable`](/ext/e/session_variable) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`pgtt`](/ext/e/pgtt) [`db_migrator`](/ext/e/db_migrator) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`ora_btree_gin`](/ext/e/ora_btree_gin) [`ora_btree_gist`](/ext/e/ora_btree_gist) |
{.ext-table .ext-table--rel}


> compatible with PostgreSQL 18.4


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18" >}} | `ivorysql` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.4` | {{< pgvers "18" >}} | `ivorysql-$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.4` | {{< pgvers "18" >}} | `ivorysql-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 5.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 ivorysql-18 ivorysql-18-5.4-1PIGSTY.el8.x86_64.rpm pigsty 5.4 24.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ivorysql-18-5.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 ivorysql-18 ivorysql-18-5.4-1PIGSTY.el8.aarch64.rpm pigsty 5.4 24.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ivorysql-18-5.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 ivorysql-18 ivorysql-18-5.4-1PIGSTY.el9.x86_64.rpm pigsty 5.4 23.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ivorysql-18-5.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 ivorysql-18 ivorysql-18-5.4-1PIGSTY.el9.aarch64.rpm pigsty 5.4 22.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ivorysql-18-5.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 ivorysql-18 ivorysql-18-5.4-1PIGSTY.el10.x86_64.rpm pigsty 5.4 23.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ivorysql-18-5.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 ivorysql-18 ivorysql-18-5.4-1PIGSTY.el10.aarch64.rpm pigsty 5.4 23.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ivorysql-18-5.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~bookworm_amd64.deb pigsty 5.4 23.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~bookworm_arm64.deb pigsty 5.4 22.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~trixie_amd64.deb pigsty 5.4 20.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~trixie_arm64.deb pigsty 5.4 20.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~jammy_amd64.deb pigsty 5.4 25.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~jammy_arm64.deb pigsty 5.4 24.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~noble_amd64.deb pigsty 5.4 23.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~noble_arm64.deb pigsty 5.4 23.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~resolute_amd64.deb pigsty 5.4 22.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 ivorysql-18 ivorysql-18_5.4-1PIGSTY~resolute_arm64.deb pigsty 5.4 22.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/i/ivorysql-18/ivorysql-18_5.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `ivorysql` using `pig build`:

```bash
pig build pkg ivorysql         # build RPM / DEB packages
```


## Install

You can install `ivorysql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install ivorysql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y ivorysql -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ivorysql-18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y ivorysql-18   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION ivorysql_ora;
```




## Usage

> [ivorysql_ora: Oracle Compatible extension on Postgres Database](https://github.com/IvorySQL/IvorySQL/tree/master/contrib/ivorysql_ora)

The `ivorysql_ora` extension provides Oracle compatibility features for PostgreSQL as part of the IvorySQL project. It adds Oracle-compatible data types, functions, and PL/SQL behavior.

### Enabling

```sql
CREATE EXTENSION ivorysql_ora;
```

### Oracle-Compatible Data Types

The extension adds Oracle-style data types including:

- `NUMBER` / `NUMBER(p,s)` - Oracle-compatible numeric type
- `VARCHAR2(n)` - Oracle-compatible variable-length string
- `DATE` - Oracle-style DATE with time component
- `BINARY_FLOAT` / `BINARY_DOUBLE` - IEEE floating point types

### Oracle-Compatible Functions

Provides Oracle-style built-in functions for string manipulation, date arithmetic, numeric operations, and type conversion that behave consistently with Oracle semantics.

### Compatibility Mode

IvorySQL supports an Oracle compatibility mode that changes parser behavior:

```sql
SET compatible_mode TO oracle;  -- enable Oracle compatibility
SET compatible_mode TO pg;      -- revert to standard PostgreSQL
```

In Oracle mode, the SQL parser accepts Oracle-style syntax including:

- Oracle-style outer joins (`(+)` syntax)
- `CONNECT BY` hierarchical queries
- Oracle-style sequences (`sequence.NEXTVAL`)
- Package-style object references
