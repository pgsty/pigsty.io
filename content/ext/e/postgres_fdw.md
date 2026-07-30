---
title: "postgres_fdw"
linkTitle: "postgres_fdw"
description: "foreign-data wrapper for remote PostgreSQL servers"
weight: 8990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/postgres-fdw.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/postgres-fdw.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/postgres-fdw.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`postgres_fdw`**](/ext/e/postgres_fdw) | `1.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8990  | [**`postgres_fdw`**](/ext/e/postgres_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`db_migrator`](/ext/e/db_migrator) [`pgspider_ext`](/ext/e/pgspider_ext) [`dblink`](/ext/e/dblink) [`mimeo`](/ext/e/mimeo) [`pgclone`](/ext/e/pgclone) [`pglogical`](/ext/e/pglogical) [`mysql_fdw`](/ext/e/mysql_fdw) [`citus`](/ext/e/citus) [`plproxy`](/ext/e/plproxy) [`db2_fdw`](/ext/e/db2_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`omni_schema`](/ext/e/omni_schema) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION postgres_fdw;
```




## Usage

> [postgres_fdw: Foreign data wrapper for remote PostgreSQL servers](https://www.postgresql.org/docs/current/postgres-fdw.html)

### Create Server

```sql
CREATE EXTENSION postgres_fdw;

CREATE SERVER remote_pg FOREIGN DATA WRAPPER postgres_fdw
  OPTIONS (host '192.168.1.10', port '5432', dbname 'remotedb');
```

**Server Options:** Any libpq connection parameter (`host`, `port`, `dbname`, etc.), plus `use_remote_estimate` (default `false`), `fdw_startup_cost` (default `100`), `fdw_tuple_cost` (default `0.2`), `extensions` (comma-separated list of extensions installed on both servers), `fetch_size` (default `100`), `batch_size` (default `1`), `keep_connections` (default `on`), `parallel_commit` (default `false`), `parallel_abort` (default `false`).

### Create User Mapping

```sql
CREATE USER MAPPING FOR local_user SERVER remote_pg
  OPTIONS (user 'remote_user', password 'secret');
```

### Create Foreign Table

```sql
CREATE FOREIGN TABLE remote_table (
  id integer NOT NULL,
  name text,
  value numeric
)
SERVER remote_pg
OPTIONS (schema_name 'public', table_name 'source_table');
```

**Table/Column Options:** `schema_name` (default: local schema name), `table_name` (default: local table name), `column_name` (per-column, remote column name), `updatable` (default `true`), `truncatable` (default `true`), `async_capable` (default `false`).

### Import Foreign Schema

```sql
IMPORT FOREIGN SCHEMA remote_schema
  FROM SERVER remote_pg
  INTO local_schema;

-- Import specific tables
IMPORT FOREIGN SCHEMA remote_schema
  LIMIT TO (table1, table2)
  FROM SERVER remote_pg
  INTO local_schema;
```

**Import Options:** `import_collate` (default `true`), `import_default` (default `false`), `import_generated` (default `true`), `import_not_null` (default `true`).

### CRUD Operations

```sql
SELECT * FROM remote_table WHERE id > 100;
INSERT INTO remote_table VALUES (1, 'test', 42.0);
UPDATE remote_table SET value = 100 WHERE id = 1;
DELETE FROM remote_table WHERE id = 1;
TRUNCATE remote_table;
```

### Query Optimization

postgres_fdw automatically pushes down WHERE clauses, JOINs between tables on the same server, aggregate functions, ORDER BY, and LIMIT/OFFSET. View the remote query with:

```sql
EXPLAIN VERBOSE SELECT * FROM remote_table WHERE id = 1;
```

Use the `extensions` option to allow function/operator pushdown from those extensions:

```sql
ALTER SERVER remote_pg OPTIONS (ADD extensions 'postgis,hstore');
```

### Asynchronous Execution

Enable concurrent scans across multiple foreign servers:

```sql
ALTER FOREIGN TABLE remote_table OPTIONS (ADD async_capable 'true');
```

### Connection Management

```sql
SELECT * FROM postgres_fdw_get_connections(true);   -- List connections
SELECT postgres_fdw_disconnect('remote_pg');         -- Close specific connection
SELECT postgres_fdw_disconnect_all();                -- Close all connections
```

### Transaction Behavior

Remote transactions use SERIALIZABLE if the local transaction is SERIALIZABLE; otherwise REPEATABLE READ. Two-phase commit is not currently supported.
