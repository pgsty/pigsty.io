---
title: "dict_int"
linkTitle: "dict_int"
description: "text search dictionary template for integers"
weight: 4980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/dict-int.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/dict-int.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/dict-int.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`dict_int`**](/ext/e/dict_int) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4980  | [**`dict_int`**](/ext/e/dict_int) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dict_xsyn`](/ext/e/dict_xsyn) [`unaccent`](/ext/e/unaccent) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_summarize`](/ext/e/pg_summarize) [`pg_search`](/ext/e/pg_search) [`pgroonga`](/ext/e/pgroonga) [`pg_bigm`](/ext/e/pg_bigm) |
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
CREATE EXTENSION dict_int;
```



## Usage

> [dict_int: integer text search dictionary](https://www.postgresql.org/docs/current/dict-int.html)

Controls the indexing of integers in full-text search to prevent excessive unique-word growth that degrades search performance.

```sql
CREATE EXTENSION dict_int;
```

### Configuration Parameters

| Parameter | Description | Default |
|---|---|---|
| `maxlen` | Maximum number of digits allowed | 6 |
| `rejectlong` | If `true`, reject overlength integers (stop word). If `false`, truncate. | `false` |
| `absval` | If `true`, strip leading `+`/`-` before applying maxlen | `false` |

### Examples

```sql
-- Test the default dictionary
SELECT ts_lexize('intdict', '12345678');
-- {123456}  (truncated to 6 digits by default)

-- Configure to reject long integers
ALTER TEXT SEARCH DICTIONARY intdict (MAXLEN = 4, REJECTLONG = true);
SELECT ts_lexize('intdict', '12345');
-- {}  (rejected as stop word)

SELECT ts_lexize('intdict', '1234');
-- {1234}  (accepted)

-- Apply to a text search configuration
ALTER TEXT SEARCH CONFIGURATION english
  ALTER MAPPING FOR int, uint WITH intdict;
```
