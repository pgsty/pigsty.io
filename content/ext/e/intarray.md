---
title: "intarray"
linkTitle: "intarray"
description: "functions, operators, and index support for 1-D arrays of integers"
weight: 4960
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/intarray.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/intarray.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/intarray.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`intarray`**](/ext/e/intarray) | `1.5` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4960  | [**`intarray`**](/ext/e/intarray) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`arraymath`](/ext/e/arraymath) [`floatvec`](/ext/e/floatvec) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION intarray;
```




## Usage

> [intarray: integer array functions and operators with index support](https://www.postgresql.org/docs/current/intarray.html)

Provides functions and operators for manipulating null-free integer arrays, with GiST and GIN index support for fast array searches.

```sql
CREATE EXTENSION intarray;
```

### Functions

| Function | Description | Example |
|---|---|---|
| `icount(int[])` | Number of elements | `icount('{1,2,3}')` -- 3 |
| `sort(int[], dir)` | Sort array (`'asc'` or `'desc'`) | `sort('{3,1,2}','asc')` -- `{1,2,3}` |
| `sort_asc(int[])` | Sort ascending | `sort_asc('{3,1,2}')` -- `{1,2,3}` |
| `sort_desc(int[])` | Sort descending | `sort_desc('{3,1,2}')` -- `{3,2,1}` |
| `uniq(int[])` | Remove adjacent duplicates | `uniq(sort('{1,2,3,2,1}'))` -- `{1,2,3}` |
| `idx(int[], item)` | Index of first match | `idx('{11,22,33}', 22)` -- 2 |
| `subarray(int[], start, len)` | Extract sub-array | `subarray('{1,2,3,4}', 2, 2)` -- `{2,3}` |
| `intset(int)` | Make single-element array | `intset(42)` -- `{42}` |

### Operators

| Operator | Description |
|---|---|
| `&&` | Arrays overlap (have common elements) |
| `@>` | Left array contains right |
| `<@` | Left array is contained in right |
| `#` | Number of elements |
| `+` | Array concatenation / append element |
| `-` | Remove elements |
| `\|` | Union of arrays |
| `&` | Intersection of arrays |
| `@@` | Array matches a query expression |
| `~~` | Query expression matches array |

### Index Support

```sql
-- GiST index for array containment/overlap queries
CREATE INDEX idx ON messages USING GIST (tags gist__intbig_ops);

-- GIN index (alternative)
CREATE INDEX idx ON messages USING GIN (tags gin__int_ops);

-- Query with index support
SELECT * FROM messages WHERE tags && '{1,2}';     -- overlap
SELECT * FROM messages WHERE tags @> '{1,2}';     -- contains
SELECT * FROM messages WHERE tags @@ '1&(2|3)';  -- query expression
```
