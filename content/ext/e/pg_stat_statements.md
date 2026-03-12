---
title: "pg_stat_statements"
linkTitle: "pg_stat_statements"
description: "track planning and execution statistics of all SQL statements executed"
weight: 6990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgstatstatements.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgstatstatements.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgstatstatements.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_statements`**](/ext/e/pg_stat_statements) | `1.11` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6990  | [**`pg_stat_statements`**](/ext/e/pg_stat_statements) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_track_settings`](/ext/e/pg_track_settings) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`auto_explain`](/ext/e/auto_explain) [`pg_profile`](/ext/e/pg_profile) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_hint_plan`](/ext/e/pg_hint_plan) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`powa`](/ext/e/powa) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.11</span> | <span class="ext-badge ext-badge--avail">1.11</span> | <span class="ext-badge ext-badge--avail">1.11</span> | <span class="ext-badge ext-badge--avail">1.11</span> | <span class="ext-badge ext-badge--avail">1.11</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_stat_statements;
```



## Usage

> [pg_stat_statements: track cumulative query execution statistics](https://www.postgresql.org/docs/current/pgstatstatements.html)

pg_stat_statements tracks planning and execution statistics of all SQL statements executed by a server.

### Querying Statistics

```sql
-- Top queries by total execution time
SELECT query, calls, total_exec_time, mean_exec_time, rows
FROM pg_stat_statements
ORDER BY total_exec_time DESC
LIMIT 10;

-- Top queries by shared buffer reads (I/O intensive)
SELECT query, calls, shared_blks_read, shared_blks_hit,
       shared_blk_read_time
FROM pg_stat_statements
ORDER BY shared_blks_read DESC
LIMIT 10;

-- Extension status (deallocations, last reset)
SELECT * FROM pg_stat_statements_info;
```

### Key View Columns

| Column | Type | Description |
|--------|------|-------------|
| `queryid` | bigint | Hash identifying normalized queries |
| `query` | text | Representative query text |
| `calls` | bigint | Execution count |
| `total_exec_time` | double precision | Total execution time (ms) |
| `mean_exec_time` | double precision | Mean execution time (ms) |
| `rows` | bigint | Total rows retrieved/affected |
| `shared_blks_hit` | bigint | Shared buffer cache hits |
| `shared_blks_read` | bigint | Shared blocks read from disk |
| `shared_blk_read_time` | double precision | Time reading shared blocks (ms) |
| `wal_records` | bigint | WAL records generated |
| `wal_bytes` | numeric | Total WAL generated (bytes) |
| `plans` | bigint | Times planned |
| `total_plan_time` | double precision | Total planning time (ms) |

### Functions

```sql
-- Reset all statistics
SELECT pg_stat_statements_reset();

-- Reset for a specific query
SELECT pg_stat_statements_reset(0, 0, queryid)
FROM pg_stat_statements
WHERE query LIKE '%my_table%';

-- Reset only min/max values
SELECT pg_stat_statements_reset(0, 0, 0, true);

-- Query without text (less I/O)
SELECT * FROM pg_stat_statements(showtext := false);
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_stat_statements.max` | 5000 | Maximum tracked statements (server start only) |
| `pg_stat_statements.track` | `top` | `top`, `all` (nested), or `none` |
| `pg_stat_statements.track_utility` | `on` | Track utility commands |
| `pg_stat_statements.track_planning` | `off` | Track planning statistics |
| `pg_stat_statements.save` | `on` | Persist across server restarts |

Requires `shared_preload_libraries = 'pg_stat_statements'` and `compute_query_id = on`.
