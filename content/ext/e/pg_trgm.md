---
title: "pg_trgm"
linkTitle: "pg_trgm"
description: "text similarity measurement and index searching based on trigrams"
weight: 2390
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgtrgm.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgtrgm.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgtrgm.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_trgm`**](/ext/e/pg_trgm) | `1.6` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2390  | [**`pg_trgm`**](/ext/e/pg_trgm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_similarity`](/ext/e/pg_similarity) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`smlar`](/ext/e/smlar) [`pg_bigm`](/ext/e/pg_bigm) [`pgpcre`](/ext/e/pgpcre) [`re2`](/ext/e/re2) [`biscuit`](/ext/e/biscuit) [`citext`](/ext/e/citext) [`unaccent`](/ext/e/unaccent) [`pgroonga`](/ext/e/pgroonga) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.6</span> | <span class="ext-badge ext-badge--avail">1.6</span> | <span class="ext-badge ext-badge--avail">1.6</span> | <span class="ext-badge ext-badge--avail">1.6</span> | <span class="ext-badge ext-badge--avail">1.6</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_trgm;
```




## Usage

> [pg_trgm: Text similarity measurement and index searching based on trigrams](https://www.postgresql.org/docs/current/pgtrgm.html)

The `pg_trgm` module provides functions and operators for determining the similarity of alphanumeric text based on trigram matching, plus index operator classes for fast string similarity searches.

```sql
CREATE EXTENSION pg_trgm;
```

A trigram is a group of three consecutive characters from a string. Two strings are similar if they share many trigrams.

### Functions

| Function | Description |
|----------|-------------|
| `similarity(text, text)` → `real` | Returns similarity between 0 and 1 |
| `show_trgm(text)` → `text[]` | Returns array of all trigrams in the string |
| `word_similarity(text, text)` → `real` | Similarity of first string to most similar word in second |
| `strict_word_similarity(text, text)` → `real` | Similar but with stricter word boundary matching |
| `show_limit()` → `real` | *(Deprecated)* Returns `pg_trgm.similarity_threshold` |
| `set_limit(real)` → `real` | *(Deprecated)* Sets `pg_trgm.similarity_threshold` |

```sql
SELECT similarity('word', 'two words');
-- 0.36363637

SELECT show_trgm('word');
-- {"  w"," wo",ord,"rd ",wor}
```

### Operators

| Operator | Description |
|----------|-------------|
| `text % text` → `boolean` | True if similarity > `pg_trgm.similarity_threshold` |
| `text <% text` → `boolean` | True if word similarity > `pg_trgm.word_similarity_threshold` |
| `text %> text` → `boolean` | Commutator of `<%` |
| `text <<% text` → `boolean` | True if strict word similarity > threshold |
| `text %>> text` → `boolean` | Commutator of `<<%` |
| `text <-> text` → `real` | Distance (1 - similarity) |
| `text <<-> text` → `real` | Word distance (1 - word_similarity) |
| `text <->> text` → `real` | Commutator of `<<->` |
| `text <<<-> text` → `real` | Strict word distance |
| `text <->>> text` → `real` | Commutator of `<<<->` |

### GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_trgm.similarity_threshold` | 0.3 | Threshold for `%` operator |
| `pg_trgm.word_similarity_threshold` | 0.6 | Threshold for `<%` and `%>` operators |
| `pg_trgm.strict_word_similarity_threshold` | 0.5 | Threshold for `<<%` and `%>>` operators |

### Index Support

GiST and GIN indexes support the similarity operators:

```sql
-- GIN index (faster lookups, slower builds)
CREATE INDEX trgm_idx ON test_trgm USING GIN (t gin_trgm_ops);

-- GiST index (supports distance operators for KNN)
CREATE INDEX trgm_idx ON test_trgm USING GIST (t gist_trgm_ops);

-- GiST with custom signature length
CREATE INDEX trgm_idx ON test_trgm USING GIST (t gist_trgm_ops(siglen=32));
```

### Text Search Example

Using trigram indexes to speed up `LIKE` / `ILIKE` / regex queries:

```sql
SELECT t, similarity(t, 'word') AS sml
FROM test_trgm
WHERE t % 'word'
ORDER BY sml DESC, t;

-- KNN search using distance operator
SELECT t, t <-> 'word' AS dist
FROM test_trgm
ORDER BY dist
LIMIT 10;
```

GIN and GiST trigram indexes also accelerate `LIKE`, `ILIKE`, `~`, and `~*` queries automatically.
