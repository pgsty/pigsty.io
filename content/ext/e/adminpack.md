---
title: "adminpack"
linkTitle: "adminpack"
description: "administrative functions for PostgreSQL"
weight: 5970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/16/adminpack.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/16/adminpack.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/16/adminpack.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`adminpack`**](/ext/e/adminpack) | `2.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5970  | [**`adminpack`**](/ext/e/adminpack) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_checksums`](/ext/e/pg_checksums) [`amcheck`](/ext/e/amcheck) [`pg_repack`](/ext/e/pg_repack) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_surgery`](/ext/e/pg_surgery) [`pg_orphaned`](/ext/e/pg_orphaned) [`pg_pathcheck`](/ext/e/pg_pathcheck) [`pg_isok`](/ext/e/pg_isok) [`pageinspect`](/ext/e/pageinspect) [`pg_squeeze`](/ext/e/pg_squeeze) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--avail">2.1</span> | <span class="ext-badge ext-badge--avail">2.1</span> | <span class="ext-badge ext-badge--avail">2.1</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION adminpack;
```




## Usage

> [adminpack: administrative functions for PostgreSQL](https://www.postgresql.org/docs/16/adminpack.html)

The `adminpack` extension provides server-side file management and log access functions, primarily used by pgAdmin and other administration tools. All functions are restricted to superusers by default.

### File Operations

```sql
-- Write text to a file (append=false: file must not exist; append=true: append)
SELECT pg_file_write('/tmp/test.txt', 'Hello World', false);   -- returns bytes written

-- Append to existing file
SELECT pg_file_write('/tmp/test.txt', E'\nMore data', true);

-- Sync file to disk
SELECT pg_file_sync('/tmp/test.txt');

-- Rename a file
SELECT pg_file_rename('/tmp/old.txt', '/tmp/new.txt');

-- Rename with archiving (moves existing newname to archive first)
SELECT pg_file_rename('/tmp/old.txt', '/tmp/new.txt', '/tmp/archive.txt');

-- Delete a file
SELECT pg_file_unlink('/tmp/test.txt');   -- returns true on success
```

### Log File Access

```sql
-- List server log files (requires default log_filename format)
SELECT * FROM pg_logdir_ls();
```

Returns timestamps and paths of log files from the `log_directory`.

### Function Reference

| Function | Returns | Description |
|----------|---------|-------------|
| `pg_file_write(filename, data, append)` | bigint | Write text to file; returns bytes written |
| `pg_file_sync(filename)` | void | Flush file or directory to disk |
| `pg_file_rename(old, new [, archive])` | boolean | Rename file, optionally archiving existing target |
| `pg_file_unlink(filename)` | boolean | Delete a file |
| `pg_logdir_ls()` | setof record | List log files with timestamps |

### Access Control

- All functions default to superuser-only access
- Permissions can be granted via `GRANT` to non-superusers
- File access is restricted to the database cluster directory unless the user has `pg_read_server_files` or `pg_write_server_files` roles

Note: `adminpack` was removed in PostgreSQL 17. For PostgreSQL 16 and earlier only.
