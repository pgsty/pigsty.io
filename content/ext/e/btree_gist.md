---
title: "btree_gist"
linkTitle: "btree_gist"
description: "support for indexing common datatypes in GiST"
weight: 4940
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/btree-gist.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/btree-gist.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/btree-gist.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`btree_gist`**](/ext/e/btree_gist) | `1.7` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4940  | [**`btree_gist`**](/ext/e/btree_gist) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`btree_gin`](/ext/e/btree_gin) [`unaccent`](/ext/e/unaccent) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pg_trgm`](/ext/e/pg_trgm) [`prefix`](/ext/e/prefix) [`citext`](/ext/e/citext) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`emaj`](/ext/e/emaj) [`omni_auth`](/ext/e/omni_auth) [`periods`](/ext/e/periods) [`pg_lake_table`](/ext/e/pg_lake_table) [`pgautofailover`](/ext/e/pgautofailover) [`powa`](/ext/e/powa) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.7</span> | <span class="ext-badge ext-badge--avail">1.7</span> | <span class="ext-badge ext-badge--avail">1.7</span> | <span class="ext-badge ext-badge--avail">1.7</span> | <span class="ext-badge ext-badge--avail">1.7</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION btree_gist;
```




## Usage

> [btree_gist: B-tree equivalent GiST operator classes](https://www.postgresql.org/docs/current/btree-gist.html)

Provides GiST index operator classes for data types that normally only support B-tree indexing. Enables exclusion constraints combining equality with range operators.

```sql
CREATE EXTENSION btree_gist;
```

### Supported Data Types

`int2`, `int4`, `int8`, `float4`, `float8`, `numeric`, `timestamp with time zone`, `timestamp without time zone`, `time with time zone`, `time without time zone`, `date`, `interval`, `oid`, `money`, `char`, `varchar`, `text`, `bytea`, `bit`, `varbit`, `macaddr`, `macaddr8`, `inet`, `cidr`, `uuid`, `bool`, and all `enum` types.

### Distance Operator

The `<->` operator is provided for nearest-neighbor searches on numeric and temporal types.

### Examples

```sql
-- GiST index on integer column
CREATE INDEX idx ON test USING GIST (a);
SELECT * FROM test WHERE a < 10;

-- Nearest-neighbor search
SELECT *, a <-> 42 AS dist FROM test ORDER BY a <-> 42 LIMIT 10;

-- Exclusion constraint: each cage can only contain one type of animal
CREATE TABLE zoo (
  cage   integer,
  animal text,
  EXCLUDE USING GIST (cage WITH =, animal WITH <>)
);

INSERT INTO zoo VALUES (1, 'lion');    -- OK
INSERT INTO zoo VALUES (1, 'tiger');   -- ERROR: conflicting key value
INSERT INTO zoo VALUES (2, 'tiger');   -- OK

-- Exclusion constraint for non-overlapping time ranges per room
CREATE TABLE reservations (
  room int,
  during tsrange,
  EXCLUDE USING GIST (room WITH =, during WITH &&)
);
```
