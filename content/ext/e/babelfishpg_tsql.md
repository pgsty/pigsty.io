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
| [**`babelfish`**](/ext/e/babelfishpg_common) | `5.4.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9300  | [**`babelfishpg_common`**](/ext/e/babelfishpg_common) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9310  | [**`babelfishpg_tsql`**](/ext/e/babelfishpg_tsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9320  | [**`babelfishpg_tds`**](/ext/e/babelfishpg_tds) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9330  | [**`babelfishpg_money`**](/ext/e/babelfishpg_money) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`babelfishpg_common`](/ext/e/babelfishpg_common) [`uuid-ossp`](/ext/e/uuid-ossp) [`tds_fdw`](/ext/e/tds_fdw) [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`pgtt`](/ext/e/pgtt) [`session_variable`](/ext/e/session_variable) [`ivorysql_ora`](/ext/e/ivorysql_ora) [`db_migrator`](/ext/e/db_migrator) [`mysql_fdw`](/ext/e/mysql_fdw) [`db2_fdw`](/ext/e/db2_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`babelfishpg_tds`](/ext/e/babelfishpg_tds) |
{.ext-table .ext-table--rel}


> special case: this extension only works on wiltondb kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.4.0` | {{< pgvers "18,17" >}} | `babelfish` | `babelfishpg_common`, `uuid-ossp` |
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install babelfish;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y babelfish -v 18  # PG 18
pig ext install -y babelfish -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y babelfish-18       # PG 18
dnf install -y babelfish-17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y babelfish-18   # PG 18
apt install -y babelfish-17   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION babelfishpg_tsql CASCADE;  -- requires: babelfishpg_common, uuid-ossp
```

## Usage

Sources:

- [Babelfish extensions BABEL_5_4_0 README](https://github.com/babelfish-for-postgresql/babelfish_extensions/blob/BABEL_5_4_0/README.md)
- [Installation guide](https://github.com/babelfish-for-postgresql/babelfish_extensions/blob/BABEL_5_4_0/INSTALLING.md.tmpl)
- [`babelfishpg_tsql` control file](https://github.com/babelfish-for-postgresql/babelfish_extensions/blob/BABEL_5_4_0/contrib/babelfishpg_tsql/babelfishpg_tsql.control.in)
- [Babelfish limitations](https://babelfishpg.org/docs/limitations/limitations-of-babelfish/)
- [Handling T-SQL](https://babelfishpg.org/docs/usage/handling-tsql/)

`babelfishpg_tsql` implements the T-SQL language and SQL Server-compatible catalog behavior used by Babelfish. It is one component of a Babelfish database, not a compatibility layer that can be added to stock PostgreSQL by itself: the complete stack requires the Babelfish-patched PostgreSQL engine plus the common, TDS, and T-SQL extensions.

### Core Workflow

Configure the TDS protocol extension for preload and restart the Babelfish server:

```conf
shared_preload_libraries = 'babelfishpg_tds'
```

Create the TDS extension with `CASCADE` so its extension dependencies, including `babelfishpg_tsql`, are installed. Choose the migration mode before initialization.

```sql
CREATE EXTENSION IF NOT EXISTS babelfishpg_tds CASCADE;

ALTER SYSTEM SET babelfishpg_tsql.database_name = 'babelfish_db';
ALTER SYSTEM SET babelfishpg_tsql.migration_mode = 'multi-db';

CALL sys.initialize_babelfish('babelfish_user');
```

After configuration is reloaded as directed by the installation guide, SQL Server clients connect to the TDS listener, commonly on port 1433, and issue T-SQL in the logical databases created by Babelfish.

### Component and Object Index

- `babelfishpg_tsql` supplies the T-SQL parser, procedural language, system objects, compatibility functions, and T-SQL configuration variables.
- `babelfishpg_tds` supplies the Tabular Data Stream listener and is the normal installation entry point.
- `babelfishpg_common` supplies shared data types and functions. It and `uuid-ossp` are declared dependencies of `babelfishpg_tsql`.
- `babelfishpg_money` supplies money-related compatibility objects used by the stack.
- `sys.initialize_babelfish(login_name)` provisions the Babelfish catalogs and initial login.
- `sys.sp_babelfish_configure` controls documented compatibility escape hatches.
- `babelfishpg_tsql.database_name` identifies the physical PostgreSQL database hosting Babelfish.
- `babelfishpg_tsql.migration_mode` selects `single-db` or `multi-db` logical-database mapping.

### Operational Boundaries

Installation requires superuser privileges and a Babelfish build matched to the extension release. Do not install `babelfishpg_tsql` alone and expect TDS connectivity. The migration mode is a provisioning decision and is not intended to be changed after the database is initialized.

Babelfish implements a substantial but incomplete SQL Server surface. Validate application syntax, data types, system-catalog assumptions, drivers, and escape-hatch settings against the official limitations before migration. PostgreSQL and T-SQL connections can observe different naming and transaction semantics.

The catalog change from 5.5.0 to 5.4.0 is a version correction to the official `BABEL_5_4_0` release line, not evidence of a new feature or an automatic downgrade procedure.
