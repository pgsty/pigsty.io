---
title: "odbc_fdw"
linkTitle: "odbc_fdw"
description: "Foreign data wrapper for accessing remote databases using ODBC"
weight: 8520
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CartoDB/odbc_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CartoDB/odbc_fdw</div>
    <div class="ext-card__desc">https://github.com/CartoDB/odbc_fdw</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`odbc_fdw`**](/ext/e/odbc_fdw) | `0.5.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8520  | [**`odbc_fdw`**](/ext/e/odbc_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`mysql_fdw`](/ext/e/mysql_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.5.1` | {{< pgvers "17,16,15,14" >}} | `odbc_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.5.1` | {{< pgvers "17,16,15,14" >}} | `odbc_fdw_$v` | `unixODBC` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 |
| el8.aarch64 | MISS PGDG - 0 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 |
| el9.x86_64 | MISS PGDG - 0 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 |
| el9.aarch64 | MISS PGDG - 0 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 |
| el10.x86_64 | MISS PGDG - 0 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 |
| el10.aarch64 | MISS PGDG - 0 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 | AVAIL PGDG 0.5.1 1 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/odbc_fdw_17-0.5.1-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/odbc_fdw_17-0.5.1-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/odbc_fdw_17-0.5.1-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-2PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/odbc_fdw_17-0.5.1-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/odbc_fdw_17-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 odbc_fdw_17 odbc_fdw_17-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/odbc_fdw_17-0.5.1-3PGDG.rhel10.aarch64.rpm
@ el8.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/odbc_fdw_16-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/odbc_fdw_16-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/odbc_fdw_16-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/odbc_fdw_16-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/odbc_fdw_16-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 odbc_fdw_16 odbc_fdw_16-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/odbc_fdw_16-0.5.1-3PGDG.rhel10.aarch64.rpm
@ el8.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/odbc_fdw_15-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/odbc_fdw_15-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/odbc_fdw_15-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/odbc_fdw_15-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/odbc_fdw_15-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 odbc_fdw_15 odbc_fdw_15-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/odbc_fdw_15-0.5.1-3PGDG.rhel10.aarch64.rpm
@ el8.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/odbc_fdw_14-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 25.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/odbc_fdw_14-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/odbc_fdw_14-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/odbc_fdw_14-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-3PGDG.rhel10.x86_64.rpm pgdg 0.5.1 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/odbc_fdw_14-0.5.1-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 odbc_fdw_14 odbc_fdw_14-0.5.1-3PGDG.rhel10.aarch64.rpm pgdg 0.5.1 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/odbc_fdw_14-0.5.1-3PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `odbc_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install odbc_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y odbc_fdw -v 17  # PG 17
pig ext install -y odbc_fdw -v 16  # PG 16
pig ext install -y odbc_fdw -v 15  # PG 15
pig ext install -y odbc_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y odbc_fdw_17       # PG 17
dnf install -y odbc_fdw_16       # PG 16
dnf install -y odbc_fdw_15       # PG 15
dnf install -y odbc_fdw_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION odbc_fdw;
```




## Usage

> [odbc_fdw: Foreign data wrapper for accessing remote databases using ODBC](https://github.com/CartoDB/odbc_fdw)

### Create Server

Connect using a DSN defined in your ODBC configuration:

```sql
CREATE EXTENSION odbc_fdw;

CREATE SERVER odbc_server
  FOREIGN DATA WRAPPER odbc_fdw
  OPTIONS (dsn 'test');
```

Or specify connection attributes directly without a DSN:

```sql
CREATE SERVER odbc_server
  FOREIGN DATA WRAPPER odbc_fdw
  OPTIONS (
    odbc_DRIVER 'MySQL',
    odbc_SERVER '192.168.1.17',
    encoding 'iso88591'
  );
```

**Server Options:** `dsn` (ODBC data source name), `driver` (ODBC driver name, required if no DSN), `odbc_*` (driver-specific attributes), `encoding` (remote database character encoding).

Prefix driver-specific options with `odbc_`. Attributes DSN, DRIVER, UID, and PWD are automatically uppercased.

### Create User Mapping

```sql
CREATE USER MAPPING FOR postgres
  SERVER odbc_server
  OPTIONS (odbc_UID 'root', odbc_PWD '');
```

### Create Foreign Table

```sql
CREATE FOREIGN TABLE odbc_table (
  id integer,
  name varchar(255),
  description text,
  users float4,
  created timestamp
)
SERVER odbc_server
OPTIONS (
  odbc_DATABASE 'mydb',
  schema 'test',
  sql_query 'SELECT id, name, description, created, users FROM test.mytable',
  sql_count 'SELECT count(id) FROM test.mytable'
);

SELECT * FROM odbc_table;
```

**Table Options:** `schema` (remote schema), `table` (remote table name), `sql_query` (custom SQL query, overrides `table`), `sql_count` (custom count SQL).

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA test
  FROM SERVER odbc_server
  INTO public
  OPTIONS (odbc_DATABASE 'mydb');
```
