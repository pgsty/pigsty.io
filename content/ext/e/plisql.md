---
title: "plisql"
linkTitle: "plisql"
description: "PL/iSQL procedural language"
weight: 9180
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/IvorySQL/IvorySQL/tree/master/src/pl/plisql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pl/plisql</div>
    <div class="ext-card__desc">https://github.com/IvorySQL/IvorySQL/tree/master/src/pl/plisql</div>
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

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plpgsql_wrap`](/ext/e/plpgsql_wrap) [`plx`](/ext/e/plx) [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> from src/pl/plisql/src/plisql.control and IvorySQL package metadata


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

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install ivorysql;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y ivorysql -v 18  # PG 18
```

```bash {tab="dnf" value="dnf"}
dnf install -y ivorysql-18       # PG 18
```

```bash {tab="apt" value="apt"}
apt install -y ivorysql-18   # PG 18
```


**Create Extension**:

```sql
CREATE EXTENSION plisql;
```




## Usage

> [plisql: PL/iSQL procedural language](https://github.com/IvorySQL/IvorySQL/tree/master/src/pl/plisql)

PL/iSQL is an Oracle-compatible procedural language for PostgreSQL, provided by the IvorySQL project. It extends PL/pgSQL with Oracle PL/SQL syntax and semantics.

### Enabling

```sql
CREATE EXTENSION plisql;
```

### Creating Functions

```sql
CREATE OR REPLACE FUNCTION hello_world
RETURN VARCHAR2
AS
BEGIN
    RETURN 'Hello, World!';
END;
/
```

### Oracle-Style Procedures

```sql
CREATE OR REPLACE PROCEDURE update_salary(
    p_emp_id IN NUMBER,
    p_amount IN NUMBER
)
AS
BEGIN
    UPDATE employees SET salary = salary + p_amount WHERE emp_id = p_emp_id;
END;
/

CALL update_salary(100, 5000);
```

### Key Features

- Oracle-style `BEGIN...END` blocks
- `IN`, `OUT`, `IN OUT` parameter modes
- Oracle-style exception handling with named exceptions
- `%TYPE` and `%ROWTYPE` attribute references
- Oracle-compatible cursor syntax (`CURSOR...IS`, `OPEN`, `FETCH`, `CLOSE`)
- `RETURN` instead of `RETURNS` in function declarations
- Package-like variable scoping

### Differences from PL/pgSQL

- Uses `AS` keyword instead of `$$` delimiters
- Supports Oracle-style `/` as statement terminator
- `VARCHAR2`, `NUMBER`, and other Oracle types natively supported
- Oracle-compatible `DBMS_OUTPUT` integration
