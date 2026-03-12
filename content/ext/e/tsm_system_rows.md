---
title: "tsm_system_rows"
linkTitle: "tsm_system_rows"
description: "TABLESAMPLE method which accepts number of rows as a limit"
weight: 4910
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/tsm-system-rows.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/tsm-system-rows.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/tsm-system-rows.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`tsm_system_rows`**](/ext/e/tsm_system_rows) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4910  | [**`tsm_system_rows`**](/ext/e/tsm_system_rows) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`random`](/ext/e/random) [`permuteseq`](/ext/e/permuteseq) [`tsm_system_time`](/ext/e/tsm_system_time) [`pg_crash`](/ext/e/pg_crash) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`pg_hashids`](/ext/e/pg_hashids) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION tsm_system_rows;
```



## Usage

> [tsm_system_rows: row-count-based TABLESAMPLE method](https://www.postgresql.org/docs/current/tsm-system-rows.html)

Provides the `SYSTEM_ROWS` table sampling method that returns exactly the specified number of rows.

```sql
CREATE EXTENSION tsm_system_rows;
```

### TABLESAMPLE Method

`SYSTEM_ROWS(count int)` -- maximum number of rows to return.

### Examples

```sql
-- Sample exactly 100 rows
SELECT * FROM my_table TABLESAMPLE SYSTEM_ROWS(100);

-- Quick peek at 10 rows from a large table
SELECT * FROM large_table TABLESAMPLE SYSTEM_ROWS(10);
```

Performs block-level sampling (may exhibit clustering effects with small samples). Returns all rows if the table has fewer rows than requested. Does not support `REPEATABLE`.
