---
title: "informix_fdw"
linkTitle: "informix_fdw"
description: "Foreign data wrapper for Informix access"
weight: 8670
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/credativ/informix_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">credativ/informix_fdw</div>
    <div class="ext-card__desc">https://github.com/credativ/informix_fdw</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`informix_fdw`**](/ext/e/informix_fdw) | `0.6.3` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8670  | [**`informix_fdw`**](/ext/e/informix_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> PGDG non-free (pgnf) only; no SQL-level extension dependency; runtime requires IBM Informix Client SDK (libifsql15a/libifasf15a/libifgen15a/libifos15a/libifgls)


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.6.3` | {{< pgvers "18,17,16,15,14" >}} | `informix_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.6.3` | {{< pgvers "18,17,16,15,14" >}} | `informix_fdw_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 1 |
| el8.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 2 | AVAIL PGDG 0.6.3 2 | AVAIL PGDG 0.6.3 2 |
| el9.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 1 | AVAIL PGDG 0.6.3 2 | AVAIL PGDG 0.6.3 2 | AVAIL PGDG 0.6.3 2 |
| el10.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.x86_64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.aarch64 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
@ el8.x86_64 18 informix_fdw_18 informix_fdw_18-0.6.3-1PGDG.rhel8.x86_64.rpm pgdg 0.6.3 61.3KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-8-x86_64/informix_fdw_18-0.6.3-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 18 informix_fdw_18 informix_fdw_18-0.6.3-1PGDG.rhel9.x86_64.rpm pgdg 0.6.3 59.8KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-9-x86_64/informix_fdw_18-0.6.3-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 18 informix_fdw_18 informix_fdw_18-0.6.3-1PGDG.rhel10.x86_64.rpm pgdg 0.6.3 60.6KiB https://download.postgresql.org/pub/repos/yum/non-free/18/redhat/rhel-10-x86_64/informix_fdw_18-0.6.3-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 17 informix_fdw_17 informix_fdw_17-0.6.3-1PGDG.rhel8.x86_64.rpm pgdg 0.6.3 61.3KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-8-x86_64/informix_fdw_17-0.6.3-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 17 informix_fdw_17 informix_fdw_17-0.6.3-1PGDG.rhel9.x86_64.rpm pgdg 0.6.3 59.9KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-9-x86_64/informix_fdw_17-0.6.3-1PGDG.rhel9.x86_64.rpm
@ el10.x86_64 17 informix_fdw_17 informix_fdw_17-0.6.3-1PGDG.rhel10.x86_64.rpm pgdg 0.6.3 60.5KiB https://download.postgresql.org/pub/repos/yum/non-free/17/redhat/rhel-10-x86_64/informix_fdw_17-0.6.3-1PGDG.rhel10.x86_64.rpm
@ el8.x86_64 16 informix_fdw_16 informix_fdw_16-0.6.3-1PGDG.rhel8.x86_64.rpm pgdg 0.6.3 61.3KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-8-x86_64/informix_fdw_16-0.6.3-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 16 informix_fdw_16 informix_fdw_16-0.6.3-1PGDG.rhel9.x86_64.rpm pgdg 0.6.3 59.8KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/informix_fdw_16-0.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 informix_fdw_16 informix_fdw_16-0.6.2-2PGDG.rhel9.x86_64.rpm pgdg 0.6.2 59.5KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-9-x86_64/informix_fdw_16-0.6.2-2PGDG.rhel9.x86_64.rpm
@ el10.x86_64 16 informix_fdw_16 informix_fdw_16-0.6.3-1PGDG.rhel10.x86_64.rpm pgdg 0.6.3 60.6KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/informix_fdw_16-0.6.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 informix_fdw_16 informix_fdw_16-0.6.2-2PGDG.rhel10.x86_64.rpm pgdg 0.6.2 60.2KiB https://download.postgresql.org/pub/repos/yum/non-free/16/redhat/rhel-10-x86_64/informix_fdw_16-0.6.2-2PGDG.rhel10.x86_64.rpm
@ el8.x86_64 15 informix_fdw_15 informix_fdw_15-0.6.3-1PGDG.rhel8.x86_64.rpm pgdg 0.6.3 63.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-8-x86_64/informix_fdw_15-0.6.3-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 15 informix_fdw_15 informix_fdw_15-0.6.3-1PGDG.rhel9.x86_64.rpm pgdg 0.6.3 64.2KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/informix_fdw_15-0.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 informix_fdw_15 informix_fdw_15-0.6.2-2PGDG.rhel9.x86_64.rpm pgdg 0.6.2 63.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-9-x86_64/informix_fdw_15-0.6.2-2PGDG.rhel9.x86_64.rpm
@ el10.x86_64 15 informix_fdw_15 informix_fdw_15-0.6.3-1PGDG.rhel10.x86_64.rpm pgdg 0.6.3 64.9KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/informix_fdw_15-0.6.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 informix_fdw_15 informix_fdw_15-0.6.2-2PGDG.rhel10.x86_64.rpm pgdg 0.6.2 64.4KiB https://download.postgresql.org/pub/repos/yum/non-free/15/redhat/rhel-10-x86_64/informix_fdw_15-0.6.2-2PGDG.rhel10.x86_64.rpm
@ el8.x86_64 14 informix_fdw_14 informix_fdw_14-0.6.3-1PGDG.rhel8.x86_64.rpm pgdg 0.6.3 63.4KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-8-x86_64/informix_fdw_14-0.6.3-1PGDG.rhel8.x86_64.rpm
@ el9.x86_64 14 informix_fdw_14 informix_fdw_14-0.6.3-1PGDG.rhel9.x86_64.rpm pgdg 0.6.3 64.2KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/informix_fdw_14-0.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 informix_fdw_14 informix_fdw_14-0.6.2-2PGDG.rhel9.x86_64.rpm pgdg 0.6.2 63.8KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-9-x86_64/informix_fdw_14-0.6.2-2PGDG.rhel9.x86_64.rpm
@ el10.x86_64 14 informix_fdw_14 informix_fdw_14-0.6.3-1PGDG.rhel10.x86_64.rpm pgdg 0.6.3 64.9KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/informix_fdw_14-0.6.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 informix_fdw_14 informix_fdw_14-0.6.2-2PGDG.rhel10.x86_64.rpm pgdg 0.6.2 64.5KiB https://download.postgresql.org/pub/repos/yum/non-free/14/redhat/rhel-10-x86_64/informix_fdw_14-0.6.2-2PGDG.rhel10.x86_64.rpm
{{< /pgext_matrix >}}


## Install

You can install `informix_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install informix_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y informix_fdw -v 18  # PG 18
pig ext install -y informix_fdw -v 17  # PG 17
pig ext install -y informix_fdw -v 16  # PG 16
pig ext install -y informix_fdw -v 15  # PG 15
pig ext install -y informix_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y informix_fdw_18       # PG 18
dnf install -y informix_fdw_17       # PG 17
dnf install -y informix_fdw_16       # PG 16
dnf install -y informix_fdw_15       # PG 15
dnf install -y informix_fdw_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION informix_fdw;
```




## Usage

> [informix_fdw: Foreign data wrapper for Informix access](https://github.com/credativ/informix_fdw)

### Create Server

```sql
CREATE EXTENSION informix_fdw;

CREATE SERVER informix_server
  FOREIGN DATA WRAPPER informix_fdw
  OPTIONS (
    informixserver 'informix_hostname',
    informixdir '/opt/informix/csdk'
  );
```

**Server Options:** `informixserver` (required, Informix server identifier from sqlhosts file), `informixdir` (required, path to Informix Client SDK), `disable_predicate_pushdown` (disable WHERE pushdown), `gl_datetime` (custom datetime format, default `%iY-%m-%d %H:%M:%S`), `gl_date` (custom date format, default `%iY-%m-%d`).

### Create User Mapping

```sql
CREATE USER MAPPING FOR CURRENT_USER
  SERVER informix_server
  OPTIONS (username 'informix', password 'secret');
```

### Create Foreign Table

```sql
CREATE FOREIGN TABLE remote_table (
  id bigint NOT NULL,
  name varchar(255),
  amount numeric(10,2),
  created timestamp
)
SERVER informix_server
OPTIONS (
  database 'mydb',
  table 'remote_table',
  client_locale 'en_US.utf8',
  db_locale 'en_US.819'
);
```

**Table Options:** `database` (required, remote database name), `table` or `query` (one required), `client_locale` (required, must match PostgreSQL server encoding), `db_locale` (required, should match Informix locale), `disable_rowid` (use updatable cursor instead of ROWID), `enable_blobs` (include if table contains BLOBs).

Use `query` instead of `table` for view-like access:

```sql
CREATE FOREIGN TABLE remote_view (
  id bigint,
  total numeric(10,2)
)
SERVER informix_server
OPTIONS (
  database 'mydb',
  query 'SELECT id, SUM(amount) AS total FROM orders GROUP BY id',
  client_locale 'en_US.utf8',
  db_locale 'en_US.819'
);
```

### CRUD Operations

```sql
SELECT * FROM remote_table WHERE id > 100;
INSERT INTO remote_table (id, name, amount) VALUES (1, 'test', 99.99);
UPDATE remote_table SET amount = 100.00 WHERE id = 1;
DELETE FROM remote_table WHERE id = 1;
```

### Supported Data Types

Queries: BOOLEAN, DATE, DATETIME, INTERVAL, SMALLINT, INTEGER, BIGINT, SERIAL, VARCHAR, CHARACTER, TEXT, NUMERIC, MONEY.

DML operations: SERIAL, INTEGER, BIGINT, INTERVAL, TEXT, BYTEA, VARCHAR, NVARCHAR, TIMESTAMP, DATE, NUMERIC, MONEY.
