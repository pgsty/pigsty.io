---
title: "unaccent"
linkTitle: "unaccent"
description: "text search dictionary that removes accents"
weight: 4990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/unaccent.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/unaccent.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/unaccent.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`unaccent`**](/ext/e/unaccent) | `1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4990  | [**`unaccent`**](/ext/e/unaccent) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dict_xsyn`](/ext/e/dict_xsyn) [`dict_int`](/ext/e/dict_int) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pgroonga`](/ext/e/pgroonga) [`icu_ext`](/ext/e/icu_ext) [`pg_xenophile`](/ext/e/pg_xenophile) [`citext`](/ext/e/citext) [`pg_trgm`](/ext/e/pg_trgm) |
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
CREATE EXTENSION unaccent;
```




## Usage

> [unaccent: text search dictionary for accent removal](https://www.postgresql.org/docs/current/unaccent.html)

Removes accents (diacritic signs) from text. Can be used as a text search dictionary or as a standalone function.

```sql
CREATE EXTENSION unaccent;
```

### Functions

| Function | Description |
|---|---|
| `unaccent(text)` | Remove accents using the default dictionary |
| `unaccent(dictionary regdictionary, text)` | Remove accents using a specific dictionary |

### Text Search Usage

```sql
-- Test the dictionary
SELECT ts_lexize('unaccent', 'Hôtel');
-- {Hotel}

-- Create an accent-insensitive French text search config
CREATE TEXT SEARCH CONFIGURATION fr (COPY = french);
ALTER TEXT SEARCH CONFIGURATION fr
  ALTER MAPPING FOR hword, hword_part, word
  WITH unaccent, french_stem;

SELECT to_tsvector('fr', 'Hôtels de la Mer');
-- 'hotel':1 'mer':4

-- Accent-insensitive search
SELECT to_tsvector('fr', 'Hôtel de la Mer') @@ to_tsquery('fr', 'Hotels');
-- true
```

### Standalone Function Usage

```sql
SELECT unaccent('Hôtel');           -- Hotel
SELECT unaccent('café');            -- cafe
SELECT unaccent('résumé');          -- resume
SELECT unaccent('niño');            -- nino
```
