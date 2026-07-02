---
title: "btree_gin"
linkTitle: "btree_gin"
description: "support for indexing common datatypes in GIN"
weight: 4950
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/btree-gin.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/btree-gin.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/btree-gin.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`btree_gin`**](/ext/e/btree_gin) | `1.3` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4950  | [**`btree_gin`**](/ext/e/btree_gin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`btree_gist`](/ext/e/btree_gist) [`unaccent`](/ext/e/unaccent) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pg_trgm`](/ext/e/pg_trgm) [`prefix`](/ext/e/prefix) [`citext`](/ext/e/citext) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION btree_gin;
```




## Usage

> [btree_gin: B-tree equivalent GIN operator classes](https://www.postgresql.org/docs/current/btree-gin.html)

Provides GIN index operator classes for data types that normally only support B-tree indexing. Useful for multicolumn GIN indexes that combine GIN-indexable and B-tree-indexable columns.

```sql
CREATE EXTENSION btree_gin;
```

### Supported Data Types

`int2`, `int4`, `int8`, `float4`, `float8`, `numeric`, `timestamp with time zone`, `timestamp without time zone`, `time with time zone`, `time without time zone`, `date`, `interval`, `oid`, `money`, `char`, `varchar`, `text`, `bytea`, `macaddr`, `macaddr8`, `inet`, `cidr`, `uuid`, `bit`, `varbit`, `bool`, `name`, `bpchar`, and all `enum` types.

### Examples

```sql
-- GIN index on an integer column
CREATE INDEX idx ON test USING GIN (a);
SELECT * FROM test WHERE a < 10;

-- Multicolumn GIN index combining full-text search with a scalar filter
CREATE INDEX idx ON articles USING GIN (body_tsvector, category);
SELECT * FROM articles
WHERE body_tsvector @@ to_tsquery('PostgreSQL')
  AND category = 'tech';
```

Note: btree_gin does not outperform standard B-tree indexes for single-column queries. Its main benefit is combining scalar columns with GIN-native columns (like tsvector or arrays) in a single multicolumn index.
