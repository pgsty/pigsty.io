---
title: "jdbc_fdw"
linkTitle: "jdbc_fdw"
description: "foreign-data wrapper for remote servers available over JDBC"
weight: 8530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgspider/jdbc_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgspider/jdbc_fdw</div>
    <div class="ext-card__desc">https://github.com/pgspider/jdbc_fdw</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`jdbc_fdw`**](/ext/e/jdbc_fdw) | `0.4.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8530  | [**`jdbc_fdw`**](/ext/e/jdbc_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`odbc_fdw`](/ext/e/odbc_fdw) [`oracle_fdw`](/ext/e/oracle_fdw) [`mysql_fdw`](/ext/e/mysql_fdw) [`tds_fdw`](/ext/e/tds_fdw) [`db2_fdw`](/ext/e/db2_fdw) [`postgres_fdw`](/ext/e/postgres_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> missing el.aarch64


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.4.0` | {{< pgvers "16,15,14" >}} | `jdbc_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.4.0` | {{< pgvers "16,15,14" >}} | `jdbc_fdw_$v` | `java-11-openjdk-headless` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.4.0 1 | AVAIL PGDG 0.4.0 1 | AVAIL PGDG 0.4.0 1 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | AVAIL PGDG 0.4.0 1 | AVAIL PGDG 0.4.0 1 | AVAIL PGDG 0.4.0 1 |
| el9.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 16 jdbc_fdw_16 jdbc_fdw_16-0.4.0-1PGDG.rhel8.x86_64.rpm pgdg 0.4.0 49.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/jdbc_fdw_16-0.4.0-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 16 jdbc_fdw_16 jdbc_fdw_16-0.4.0-1PGDG.rhel9.x86_64.rpm pgdg 0.4.0 49.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/jdbc_fdw_16-0.4.0-1PGDG.rhel9.x86_64.rpm
@ el8.x86_64 15 jdbc_fdw_15 jdbc_fdw_15-0.4.0-1PGDG.rhel8.x86_64.rpm pgdg 0.4.0 50.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/jdbc_fdw_15-0.4.0-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 15 jdbc_fdw_15 jdbc_fdw_15-0.4.0-1PGDG.rhel9.x86_64.rpm pgdg 0.4.0 52.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/jdbc_fdw_15-0.4.0-1PGDG.rhel9.x86_64.rpm
@ el8.x86_64 14 jdbc_fdw_14 jdbc_fdw_14-0.4.0-1PGDG.rhel8.x86_64.rpm pgdg 0.4.0 50.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/jdbc_fdw_14-0.4.0-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 14 jdbc_fdw_14 jdbc_fdw_14-0.4.0-1PGDG.rhel9.x86_64.rpm pgdg 0.4.0 52.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/jdbc_fdw_14-0.4.0-1PGDG.rhel9.x86_64.rpm
{{< /pgext_matrix >}}


## Install

You can install `jdbc_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install jdbc_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y jdbc_fdw -v 16  # PG 16
pig ext install -y jdbc_fdw -v 15  # PG 15
pig ext install -y jdbc_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y jdbc_fdw_16       # PG 16
dnf install -y jdbc_fdw_15       # PG 15
dnf install -y jdbc_fdw_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION jdbc_fdw;
```




## Usage

> [jdbc_fdw: Foreign data wrapper for remote servers available over JDBC](https://github.com/pgspider/jdbc_fdw)

### Create Server

```sql
CREATE EXTENSION jdbc_fdw;

CREATE SERVER jdbc_server FOREIGN DATA WRAPPER jdbc_fdw
  OPTIONS (
    drivername 'org.postgresql.Driver',
    url 'jdbc:postgresql://remotehost:5432/mydb',
    jarfile '/usr/share/java/postgresql.jar',
    maxheapsize '256'
  );
```

**Server Options:** `drivername` (required, JDBC driver class), `url` (required, JDBC connection URL), `jarfile` (required, absolute path to JDBC driver JAR), `querytimeout` (query timeout in seconds), `maxheapsize` (JVM heap size in MB, minimum 1).

### Create User Mapping

```sql
CREATE USER MAPPING FOR CURRENT_USER SERVER jdbc_server
  OPTIONS (username 'dbuser', password 'dbpass');
```

### Create Foreign Table

```sql
CREATE FOREIGN TABLE remote_table (
  id integer OPTIONS (key 'true'),
  name text,
  value numeric
)
SERVER jdbc_server
OPTIONS (table_name 'schema.tablename');
```

Set `key 'true'` on primary key columns to enable UPDATE and DELETE operations.

### Query Remote Data

```sql
SELECT * FROM remote_table WHERE id > 100;
```

### Execute Arbitrary SQL with jdbc_exec

The `jdbc_exec` function executes SQL against the remote database and returns result sets:

```sql
SELECT * FROM jdbc_exec('jdbc_server', 'SELECT id, name FROM remote_schema.remote_table WHERE status = 1')
  AS t(id integer, name text);
```

This is useful for executing queries that go beyond the foreign table definition, including DDL or complex queries on the remote server.
