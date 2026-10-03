---
title: "pgroonga_database"
linkTitle: "pgroonga_database"
description: "PGroonga database management module"
weight: 2111
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgroonga/pgroonga">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgroonga/pgroonga</div>
    <div class="ext-card__desc">https://github.com/pgroonga/pgroonga</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgroonga-4.0.9.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgroonga-4.0.9.tar.gz</div>
    <div class="ext-card__desc">pgroonga-4.0.9.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgroonga`**](/ext/e/pgroonga) | `4.0.9` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2110  | [**`pgroonga`**](/ext/e/pgroonga) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 2111  | [**`pgroonga_database`**](/ext/e/pgroonga_database) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_fts`](/ext/e/pg_fts) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_rrf`](/ext/e/pg_rrf) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.9` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.9` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga_$v` | `groonga-libs` |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgroonga` | `libgroonga0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el8.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el9.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el9.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el10.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| el10.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d12.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u26.x86_64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
| u26.aarch64 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 | AVAIL PIGSTY 4.0.9 1 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgroonga` using `pig build`:

```bash
pig build pkg pgroonga         # build RPM / DEB packages
```


## Install

You can install `pgroonga` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgroonga;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgroonga -v 18  # PG 18
pig ext install -y pgroonga -v 17  # PG 17
pig ext install -y pgroonga -v 16  # PG 16
pig ext install -y pgroonga -v 15  # PG 15
pig ext install -y pgroonga -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgroonga_18       # PG 18
dnf install -y pgroonga_17       # PG 17
dnf install -y pgroonga_16       # PG 16
dnf install -y pgroonga_15       # PG 15
dnf install -y pgroonga_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgroonga   # PG 18
apt install -y postgresql-17-pgroonga   # PG 17
apt install -y postgresql-16-pgroonga   # PG 16
apt install -y postgresql-15-pgroonga   # PG 15
apt install -y postgresql-14-pgroonga   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgroonga_database;
```

## Usage

Sources:

- [Version 4.0.9 SQL](https://github.com/pgroonga/pgroonga/blob/4.0.9/data/pgroonga_database.sql)
- [Version 4.0.9 control](https://github.com/pgroonga/pgroonga/blob/4.0.9/pgroonga_database.control)
- [Version 4.0.9 implementation](https://github.com/pgroonga/pgroonga/blob/4.0.9/src/pgroonga-database.c)
- [Official recovery procedure](https://pgroonga.github.io/reference/functions/pgroonga-database-remove.html)

`pgroonga_database` 4.0.9 is a recovery-only helper for a damaged internal PGroonga database. It provides one SQL function that removes PGroonga files from database and applicable tablespace directories. It does not provide the search access method.

### Recovery Workflow

Normal index corruption may be repairable with REINDEX alone. Use this module only when the internal Groonga database itself is damaged and a planned rebuild is necessary. Arrange a recovery window and disconnect every session using PGroonga before proceeding; remaining sessions may crash when their files are removed.

In a fresh administrative connection that has not opened any PGroonga index:

```sql
CREATE EXTENSION pgroonga_database;
SELECT pgroonga_database_remove();
```

Disconnect that connection immediately afterward. In another fresh connection, run REINDEX for **every** PGroonga index to recreate the internal database from PostgreSQL table data. Resume application traffic only after rebuilding and checking all affected indexes.

### Return Value and Boundaries

`pgroonga_database_remove()` returns true when it reaches the end of its cleanup loop. If a tablespace ownership check fails, the loop stops and the function can still return true; this result alone does not prove that every location was cleaned. Other failures can raise errors. It removes the internal files directly; it neither exports them nor rebuilds indexes. Do not use other PGroonga features in the cleanup connection. This is not a routine vacuum, an uninstall command, or an action that can be made safe merely by wrapping the call in a SQL transaction.

The control file does not mark the extension trusted or relocatable. The C implementation checks tablespace ownership when traversing locations. Use an administrator who owns the required locations and verify that the cleanup and full reindex completed. The module has no preload requirement; enable it only for the recovery task.
