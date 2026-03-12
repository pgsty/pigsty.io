---
title: "babelfishpg_tds"
linkTitle: "babelfishpg_tds"
description: "SQL Server TDS protocol extension"
weight: 9320
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://babelfishpg.org/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://babelfishpg.org/</div>
    <div class="ext-card__desc">https://babelfishpg.org/</div>
  </a>
  <a class="ext-card ext-card--source" href="babelfishpg-17.8-5.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">babelfishpg-17.8-5.5.0.tar.gz</div>
    <div class="ext-card__desc">babelfishpg-17.8-5.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`babelfish`**](/ext/e/babelfishpg_tds) | `1.0.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9300  | [**`babelfishpg_common`**](/ext/e/babelfishpg_common) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9310  | [**`babelfishpg_tsql`**](/ext/e/babelfishpg_tsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9320  | [**`babelfishpg_tds`**](/ext/e/babelfishpg_tds) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 9330  | [**`babelfishpg_money`**](/ext/e/babelfishpg_money) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) [`tds_fdw`](/ext/e/tds_fdw) [`babelfishpg_common`](/ext/e/babelfishpg_common) [`babelfishpg_money`](/ext/e/babelfishpg_money) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`uuid-ossp`](/ext/e/uuid-ossp) [`session_variable`](/ext/e/session_variable) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`db_migrator`](/ext/e/db_migrator) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> special case: this extension only works on wiltondb kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "17" >}} | `babelfish` | `babelfishpg_tsql` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "17" >}} | `babelfish_$v` | `babelfishpg_$v`, `antlr4-runtime413` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "17" >}} | `babelfishpg-$v-babelfish` | `babelfishpg-$v`, `libantlr4-runtime413` |
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


**Preload**:

```bash
shared_preload_libraries = 'babelfishpg_tds';
```


**Create Extension**:

```sql
CREATE EXTENSION babelfishpg_tds CASCADE;  -- requires: babelfishpg_tsql
```


## Usage

Install `go-sqlcmd`:

```bash
curl -LO https://github.com/microsoft/go-sqlcmd/releases/download/v1.4.0/sqlcmd-v1.4.0-linux-amd64.tar.bz2
tar xjvf sqlcmd-v1.4.0-linux-amd64.tar.bz2
sudo mv sqlcmd* /usr/bin/
```

Try go-sqlcmd

```bash
$ sqlcmd -S 10.10.10.10,1433 -U dbuser_mssql -P DBUser.MSSQL
1> select @@version
2> go
version                                                                                                                                                                                                                                                         
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Babelfish for PostgreSQL with SQL Server Compatibility - 12.0.2000.8
Oct 22 2023 17:48:32
Copyright (c) Amazon Web Services
PostgreSQL 15.4 (EL 1:15.4.wiltondb3.3_2-2.el8) on x86_64-redhat-linux-gnu (Babelfish 3.3.0)                                        

(1 row affected)
```

Access pigsty exposed primary/replica service port

```bash 
sqlcmd -S 10.10.10.11,5433 -U dbuser_mssql -P DBUser.MSSQL

sqlcmd -S 10.10.10.11,5434 -U dbuser_mssql -P DBUser.MSSQL
```