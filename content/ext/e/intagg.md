---
title: "intagg"
linkTitle: "intagg"
description: "integer aggregator and enumerator (obsolete)"
weight: 4970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/intagg.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/intagg.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/intagg.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`intagg`**](/ext/e/intagg) | `1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4970  | [**`intagg`**](/ext/e/intagg) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`count_distinct`](/ext/e/count_distinct) [`omnisketch`](/ext/e/omnisketch) [`ddsketch`](/ext/e/ddsketch) [`tdigest`](/ext/e/tdigest) [`first_last_agg`](/ext/e/first_last_agg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION intagg;
```




## Usage

> [intagg: integer aggregator and enumerator (obsolete)](https://www.postgresql.org/docs/current/intagg.html)

Provides an integer aggregator and enumerator. These are now wrappers around the built-in `array_agg()` and `unnest()` functions.

```sql
CREATE EXTENSION intagg;
```

### Functions

| Function | Description |
|---|---|
| `int_array_aggregate(integer)` | Aggregate integers into an array (wrapper for `array_agg()`) |
| `int_array_enum(integer[])` | Expand array into rows (wrapper for `unnest()`) |

### Examples

```sql
-- Aggregate integers into an array
SELECT id_left, int_array_aggregate(id_right) AS rights
FROM many_to_many
GROUP BY id_left;

-- Expand an integer array into rows
SELECT int_array_enum(ARRAY[1, 2, 3, 4]);
-- Returns: 1, 2, 3, 4 (as separate rows)
```

Note: This module is obsolete. Use the built-in `array_agg()` and `unnest()` functions instead for new code.
