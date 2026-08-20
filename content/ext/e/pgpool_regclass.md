---
title: "pgpool_regclass"
linkTitle: "pgpool_regclass"
description: "replacement for regclass"
weight: 5920
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://pgpool.net/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://pgpool.net/</div>
    <div class="ext-card__desc">https://pgpool.net/</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgpool`**](/ext/e/pgpool_adm) | `4.7.2` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5900  | [**`pgpool_adm`**](/ext/e/pgpool_adm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 5910  | [**`pgpool_recovery`**](/ext/e/pgpool_recovery) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 5920  | [**`pgpool_regclass`**](/ext/e/pgpool_regclass) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgbouncer_fdw`](/ext/e/pgbouncer_fdw) [`pgdd`](/ext/e/pgdd) [`meta`](/ext/e/meta) [`pg_readme`](/ext/e/pg_readme) [`ddlx`](/ext/e/ddlx) [`pg_catcheck`](/ext/e/pg_catcheck) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.7.2` | {{< pgvers "18,17,16,15,14" >}} | `pgpool` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.7.2` | {{< pgvers "18,17,16,15,14" >}} | `pgpool-II-pg$v-extensions` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.7.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgpool2` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.7.2 6 | AVAIL PGDG 4.7.2 11 | AVAIL PGDG 4.7.2 14 | AVAIL PGDG 4.7.2 17 | AVAIL PGDG 4.7.2 20 |
| el8.aarch64 | AVAIL PGDG 4.7.2 6 | AVAIL PGDG 4.7.2 11 | AVAIL PGDG 4.7.2 14 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 |
| el9.x86_64 | AVAIL PGDG 4.7.2 13 | AVAIL PGDG 4.7.2 18 | AVAIL PGDG 4.7.2 21 | AVAIL PGDG 4.7.2 24 | AVAIL PGDG 4.7.2 26 |
| el9.aarch64 | AVAIL PGDG 4.7.2 13 | AVAIL PGDG 4.7.2 18 | AVAIL PGDG 4.7.2 21 | AVAIL PGDG 4.7.2 24 | AVAIL PGDG 4.7.2 24 |
| el10.x86_64 | AVAIL PGDG 4.7.2 13 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 |
| el10.aarch64 | AVAIL PGDG 4.7.2 13 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 | AVAIL PGDG 4.7.2 16 |
| d12.x86_64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| d12.aarch64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| d13.x86_64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| d13.aarch64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| u22.x86_64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| u22.aarch64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| u24.x86_64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| u24.aarch64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| u26.x86_64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
| u26.aarch64 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 | AVAIL PGDG 4.7.2 3 |
{{< /pgext_matrix >}}


## Install

You can install `pgpool` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgpool;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgpool -v 18  # PG 18
pig ext install -y pgpool -v 17  # PG 17
pig ext install -y pgpool -v 16  # PG 16
pig ext install -y pgpool -v 15  # PG 15
pig ext install -y pgpool -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgpool-II-pg18-extensions       # PG 18
dnf install -y pgpool-II-pg17-extensions       # PG 17
dnf install -y pgpool-II-pg16-extensions       # PG 16
dnf install -y pgpool-II-pg15-extensions       # PG 15
dnf install -y pgpool-II-pg14-extensions       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgpool2   # PG 18
apt install -y postgresql-17-pgpool2   # PG 17
apt install -y postgresql-16-pgpool2   # PG 16
apt install -y postgresql-15-pgpool2   # PG 15
apt install -y postgresql-14-pgpool2   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgpool_regclass;
```




## Usage

> [pgpool_regclass: replacement for regclass](https://pgpool.net/)

The `pgpool_regclass` extension provides a replacement `regclass` function used internally by Pgpool-II to handle relation name resolution across multiple backends.

### Function

```sql
-- Resolve a relation name to its OID, similar to PostgreSQL's regclass cast
SELECT pgpool_regclass('my_table');
SELECT pgpool_regclass('my_schema.my_table');
```

### Purpose

In standard PostgreSQL, casting a string to `regclass` (e.g., `'my_table'::regclass`) resolves the relation name to an OID. However, Pgpool-II needs to determine whether a SQL statement references a temporary table or a regular table to route queries correctly.

The `pgpool_regclass` function provides this resolution capability as a regular function call rather than a type cast, allowing Pgpool-II to:

- Determine if a referenced table exists on the backend
- Distinguish temporary tables from permanent tables for proper query routing
- Handle schema-qualified table names correctly across pooled connections

### Notes

- This extension is primarily used internally by Pgpool-II and is not typically called directly by applications
- It should be installed on all PostgreSQL backend nodes managed by Pgpool-II
- For Pgpool-II 3.0+, this function helps with the `check_temp_table` feature
