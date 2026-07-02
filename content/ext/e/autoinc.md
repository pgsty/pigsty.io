---
title: "autoinc"
linkTitle: "autoinc"
description: "functions for autoincrementing fields"
weight: 4881
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-AUTOINC">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-AUTOINC</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-AUTOINC</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`autoinc`**](/ext/e/autoinc) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4881  | [**`autoinc`**](/ext/e/autoinc) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`permuteseq`](/ext/e/permuteseq) [`pg_hashids`](/ext/e/pg_hashids) [`sequential_uuids`](/ext/e/sequential_uuids) [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) |
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
CREATE EXTENSION autoinc;
```




## Usage

> [autoinc: auto-increment trigger function](https://www.postgresql.org/docs/current/contrib-spi.html)

Provides a trigger function that auto-increments specified columns using sequences.

```sql
CREATE EXTENSION autoinc;
```

### Trigger Function

| Function | Description |
|---|---|
| `autoinc()` | Auto-increment columns from sequences on insert (and optionally update) |

Parameters are pairs of (column name, sequence name). The value is replaced only if initially zero or NULL.

### Examples

```sql
CREATE SEQUENCE next_id;
CREATE TABLE ids (id int4, idesc text);

CREATE TRIGGER ids_autoinc
  BEFORE INSERT ON ids
  FOR EACH ROW
  EXECUTE FUNCTION autoinc('id', 'next_id');

INSERT INTO ids (idesc) VALUES ('first');  -- id is auto-assigned from next_id

-- Multiple auto-increment columns
CREATE TRIGGER multi_autoinc
  BEFORE INSERT ON my_table
  FOR EACH ROW
  EXECUTE FUNCTION autoinc('col1', 'seq1', 'col2', 'seq2');
```
