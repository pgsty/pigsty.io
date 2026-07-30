---
title: "tsm_system_time"
linkTitle: "tsm_system_time"
description: "TABLESAMPLE method which accepts time in milliseconds as a limit"
weight: 4890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/tsm-system-time.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/tsm-system-time.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/tsm-system-time.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`tsm_system_time`**](/ext/e/tsm_system_time) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4890  | [**`tsm_system_time`**](/ext/e/tsm_system_time) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`faker`](/ext/e/faker) [`dbt2`](/ext/e/dbt2) [`random`](/ext/e/random) [`tsm_system_rows`](/ext/e/tsm_system_rows) [`pg_mockable`](/ext/e/pg_mockable) [`pgsqlmock`](/ext/e/pgsqlmock) [`pgtap`](/ext/e/pgtap) [`omni_test`](/ext/e/omni_test) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION tsm_system_time;
```




## Usage

> [tsm_system_time: time-based TABLESAMPLE method](https://www.postgresql.org/docs/current/tsm-system-time.html)

Provides the `SYSTEM_TIME` table sampling method that returns as many rows as can be read within a specified time limit.

```sql
CREATE EXTENSION tsm_system_time;
```

### TABLESAMPLE Method

`SYSTEM_TIME(milliseconds float)` -- maximum time to spend reading the table.

### Examples

```sql
-- Sample rows readable within 1 second
SELECT * FROM my_table TABLESAMPLE SYSTEM_TIME(1000);

-- Sample from a large table with a 500ms budget
SELECT count(*) FROM large_table TABLESAMPLE SYSTEM_TIME(500);
```

Performs block-level sampling (not row-level). If the entire table can be read within the time limit, all rows are returned. Does not support `REPEATABLE`.
