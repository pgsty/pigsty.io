---
title: "moddatetime"
linkTitle: "moddatetime"
description: "functions for tracking last modification time"
weight: 4883
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-MODDATETIME">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-MODDATETIME</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-MODDATETIME</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`moddatetime`**](/ext/e/moddatetime) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4883  | [**`moddatetime`**](/ext/e/moddatetime) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`count_distinct`](/ext/e/count_distinct) [`omnisketch`](/ext/e/omnisketch) [`ddsketch`](/ext/e/ddsketch) [`tdigest`](/ext/e/tdigest) [`first_last_agg`](/ext/e/first_last_agg) |
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
CREATE EXTENSION moddatetime;
```



## Usage

> [moddatetime: track modification timestamp](https://www.postgresql.org/docs/current/contrib-spi.html)

Provides a trigger function that stores the current timestamp when a row is modified.

```sql
CREATE EXTENSION moddatetime;
```

### Trigger Function

| Function | Description |
|---|---|
| `moddatetime()` | Store current timestamp in the specified column on UPDATE |

Parameter: name of the `timestamp` or `timestamp with time zone` column to update.

### Examples

```sql
CREATE TABLE documents (
  id serial PRIMARY KEY,
  content text,
  modified_at timestamp with time zone
);

CREATE TRIGGER set_modified
  BEFORE UPDATE ON documents
  FOR EACH ROW
  EXECUTE FUNCTION moddatetime('modified_at');

UPDATE documents SET content = 'new content' WHERE id = 1;
-- modified_at is automatically set to current timestamp
```
