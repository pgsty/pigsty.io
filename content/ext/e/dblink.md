---
title: "dblink"
linkTitle: "dblink"
description: "connect to other PostgreSQL databases from within a database"
weight: 8970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/dblink.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/dblink.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/dblink.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`dblink`**](/ext/e/dblink) | `1.2` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8970  | [**`dblink`**](/ext/e/dblink) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`postgres_fdw`](/ext/e/postgres_fdw) [`db_migrator`](/ext/e/db_migrator) [`pgspider_ext`](/ext/e/pgspider_ext) [`pglogical`](/ext/e/pglogical) [`citus`](/ext/e/citus) [`pgclone`](/ext/e/pgclone) [`plproxy`](/ext/e/plproxy) [`mimeo`](/ext/e/mimeo) [`mysql_fdw`](/ext/e/mysql_fdw) [`db2_fdw`](/ext/e/db2_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`emaj`](/ext/e/emaj) [`mimeo`](/ext/e/mimeo) [`omni_schema`](/ext/e/omni_schema) [`omni_test`](/ext/e/omni_test) [`omni_vfs`](/ext/e/omni_vfs) [`pg_jobmon`](/ext/e/pg_jobmon) [`pg_profile`](/ext/e/pg_profile) [`pgbouncer_fdw`](/ext/e/pgbouncer_fdw) [`pgelog`](/ext/e/pgelog) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION dblink;
```




## Usage

> [dblink: Connect to other PostgreSQL databases from within a database](https://www.postgresql.org/docs/current/dblink.html)

### Connect to a Remote Database

```sql
CREATE EXTENSION dblink;

-- Unnamed connection (only one allowed)
SELECT dblink_connect('dbname=remotedb host=remotehost options=-csearch_path=');

-- Named connection (multiple allowed)
SELECT dblink_connect('myconn', 'dbname=remotedb host=remotehost');
```

Or connect via a foreign server definition:

```sql
CREATE SERVER remote_srv FOREIGN DATA WRAPPER dblink_fdw
  OPTIONS (hostaddr '192.168.1.10', dbname 'remotedb');
CREATE USER MAPPING FOR local_user SERVER remote_srv
  OPTIONS (user 'remote_user', password 'secret');

SELECT dblink_connect('myconn', 'remote_srv');
```

### Query a Remote Database

```sql
-- Ad-hoc connection
SELECT * FROM dblink(
  'dbname=remotedb host=remotehost',
  'SELECT id, name, value FROM remote_table'
) AS t(id int, name text, value numeric);

-- Using a named connection
SELECT * FROM dblink(
  'myconn',
  'SELECT id, name FROM remote_table WHERE status = 1'
) AS t(id int, name text);
```

You must always specify the column definition list in the `AS` clause.

### Execute Commands (No Result Set)

```sql
-- INSERT, UPDATE, DELETE, DDL on the remote database
SELECT dblink_exec('myconn', 'INSERT INTO remote_table VALUES (1, ''test'', 42)');
SELECT dblink_exec('myconn', 'UPDATE remote_table SET value = 100 WHERE id = 1');
SELECT dblink_exec('myconn', 'DELETE FROM remote_table WHERE id = 1');
```

Returns the command status string (e.g., `INSERT 0 1`).

### Cursor-Based Access

```sql
SELECT dblink_open('myconn', 'mycursor', 'SELECT * FROM large_table');
SELECT * FROM dblink_fetch('myconn', 'mycursor', 100) AS t(id int, data text);
SELECT dblink_close('myconn', 'mycursor');
```

### Connection Management

```sql
SELECT dblink_get_connections();    -- List open named connections
SELECT dblink_disconnect('myconn'); -- Close a named connection
```

### Create a View for Convenience

```sql
CREATE VIEW remote_data AS
  SELECT * FROM dblink(
    'dbname=remotedb host=remotehost',
    'SELECT id, name, value FROM data_table'
  ) AS t(id int, name text, value numeric);

SELECT * FROM remote_data WHERE value > 100;
```

### Key Functions

| Function | Description |
|----------|-------------|
| `dblink_connect(connstr)` | Open an unnamed persistent connection |
| `dblink_connect(name, connstr)` | Open a named persistent connection |
| `dblink_disconnect(name)` | Close a named connection |
| `dblink(connstr, sql)` | Execute a query, return rows |
| `dblink_exec(connstr, sql)` | Execute a command, return status |
| `dblink_open(name, cursor, sql)` | Open a cursor on a remote database |
| `dblink_fetch(name, cursor, count)` | Fetch rows from a remote cursor |
| `dblink_close(name, cursor)` | Close a remote cursor |
| `dblink_get_connections()` | List all open named connections |
