---
title: "file_fdw"
linkTitle: "file_fdw"
description: "foreign-data wrapper for flat file access"
weight: 8980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/file-fdw.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/file-fdw.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/file-fdw.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`file_fdw`**](/ext/e/file_fdw) | `1.0` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8980  | [**`file_fdw`**](/ext/e/file_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`aws_s3`](/ext/e/aws_s3) [`pg_bulkload`](/ext/e/pg_bulkload) [`pg_parquet`](/ext/e/pg_parquet) [`pg_lake`](/ext/e/pg_lake) [`pg_csv`](/ext/e/pg_csv) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_fact_loader`](/ext/e/pg_fact_loader) [`log_fdw`](/ext/e/log_fdw) [`omni_csv`](/ext/e/omni_csv) [`pg_sqlog`](/ext/e/pg_sqlog) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_sqlog`](/ext/e/pg_sqlog) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION file_fdw;
```




## Usage

> [file_fdw: Foreign data wrapper for flat file access](https://www.postgresql.org/docs/current/file-fdw.html)

### Create Server

```sql
CREATE EXTENSION file_fdw;

CREATE SERVER file_server FOREIGN DATA WRAPPER file_fdw;
```

### Read a CSV File

```sql
CREATE FOREIGN TABLE csv_data (
  id integer,
  name text,
  value numeric
)
SERVER file_server
OPTIONS (filename '/path/to/data.csv', format 'csv', header 'true');

SELECT * FROM csv_data;
```

### Read PostgreSQL CSV Logs

```sql
CREATE FOREIGN TABLE pglog (
  log_time timestamp(3) with time zone,
  user_name text,
  database_name text,
  process_id integer,
  connection_from text,
  session_id text,
  session_line_num bigint,
  command_tag text,
  session_start_time timestamp with time zone,
  virtual_transaction_id text,
  transaction_id bigint,
  error_severity text,
  sql_state_code text,
  message text,
  detail text,
  hint text,
  internal_query text,
  internal_query_pos integer,
  context text,
  query text,
  query_pos integer,
  location text,
  application_name text,
  backend_type text,
  leader_pid integer,
  query_id bigint
)
SERVER file_server
OPTIONS (filename 'log/pglog.csv', format 'csv');
```

### Read Program Output

```sql
CREATE FOREIGN TABLE process_list (
  pid text,
  command text
)
SERVER file_server
OPTIONS (program 'ps aux | tail -n +2', format 'text', delimiter ' ');
```

### Table Options

| Option | Description |
|--------|-------------|
| `filename` | File path (relative to data directory). Required unless `program` is used |
| `program` | Shell command whose stdout is read. Required unless `filename` is used |
| `format` | Data format: `csv`, `text`, or `binary` (same as COPY) |
| `header` | `true` if file has a header row |
| `delimiter` | Column delimiter character |
| `quote` | Quote character |
| `escape` | Escape character |
| `null` | String representing NULL values |
| `encoding` | Data encoding |
| `on_error` | Error handling during type conversion |
| `reject_limit` | Maximum tolerated errors |

### Column Options

| Option | Description |
|--------|-------------|
| `force_not_null` | Do not match column values against the null string |
| `force_null` | Match quoted values against the null string and return NULL |

```sql
CREATE FOREIGN TABLE films (
  code char(5) NOT NULL,
  title text NOT NULL,
  rating text OPTIONS (force_null 'true')
)
SERVER file_server
OPTIONS (filename '/data/films.csv', format 'csv');
```

file_fdw is read-only. Changing table-level options requires superuser privileges or the `pg_read_server_files` / `pg_execute_server_program` role.
