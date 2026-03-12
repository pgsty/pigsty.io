---
title: "fuzzystrmatch"
linkTitle: "fuzzystrmatch"
description: "determine similarities and distance between strings"
weight: 2380
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/fuzzystrmatch.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/fuzzystrmatch.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/fuzzystrmatch.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`fuzzystrmatch`**](/ext/e/fuzzystrmatch) | `1.2` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2380  | [**`fuzzystrmatch`**](/ext/e/fuzzystrmatch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_trgm`](/ext/e/pg_trgm) [`unaccent`](/ext/e/unaccent) [`pg_bigm`](/ext/e/pg_bigm) [`citext`](/ext/e/citext) [`btree_gist`](/ext/e/btree_gist) [`btree_gin`](/ext/e/btree_gin) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`postgis_tiger_geocoder`](/ext/e/postgis_tiger_geocoder) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION fuzzystrmatch;
```



## Usage

> [fuzzystrmatch: Determine similarities and distance between strings](https://www.postgresql.org/docs/current/fuzzystrmatch.html)

The `fuzzystrmatch` module provides functions to determine similarities and distance between strings.

```sql
CREATE EXTENSION fuzzystrmatch;
```

### Soundex

Converts a string to its Soundex code (useful for matching similar-sounding names):

```sql
SELECT soundex('Anne'), soundex('Ann'), difference('Anne', 'Ann');
-- A500, A500, 4

SELECT soundex('Anne'), soundex('Andrew'), difference('Anne', 'Andrew');
-- A500, A536, 2

SELECT soundex('Anne'), soundex('Margaret'), difference('Anne', 'Margaret');
-- A500, M626, 0
```

The `difference` function returns 0–4, where 4 means most similar.

### Daitch-Mokotoff Soundex

Returns a set of Daitch-Mokotoff soundex codes (better for non-English names):

```sql
SELECT daitch_mokotoff('George');
-- {595000}

SELECT daitch_mokotoff('John');
-- {160000,460000}

-- Find names sounding like 'Schwartzenegger'
SELECT * FROM s WHERE daitch_mokotoff(nm) && daitch_mokotoff('Schwartzenegger');
```

Supports indexing with GIN:

```sql
CREATE INDEX ON s USING gin (daitch_mokotoff(nm) gin__int_ops);
```

### Levenshtein Distance

Computes edit distance between two strings (insertions, deletions, substitutions):

```sql
SELECT levenshtein('GUMBO', 'GAMBOL');
-- 2

SELECT levenshtein('GUMBO', 'GAMBOL', 2, 1, 1);
-- 3 (custom costs: insert=2, delete=1, substitute=1)

-- Bounded version (faster, stops early)
SELECT levenshtein_less_equal('extensive', 'exhaustive', 2);
-- 3 (actual distance exceeds threshold, returns actual)

SELECT levenshtein_less_equal('extensive', 'exhaustive', 4);
-- 4
```

### Metaphone

Returns a metaphone code for a string:

```sql
SELECT metaphone('GUMBO', 4);
-- KM
```

### Double Metaphone

Returns primary and alternate codes (handles more name variations):

```sql
SELECT dmetaphone('gumbo');
-- KMP

SELECT dmetaphone_alt('gumbo');
-- KMP
```
