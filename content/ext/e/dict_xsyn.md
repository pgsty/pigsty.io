---
title: "dict_xsyn"
linkTitle: "dict_xsyn"
description: "text search dictionary template for extended synonym processing"
weight: 4900
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/dict-xsyn.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/dict-xsyn.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/dict-xsyn.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`dict_xsyn`**](/ext/e/dict_xsyn) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4900  | [**`dict_xsyn`**](/ext/e/dict_xsyn) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dict_int`](/ext/e/dict_int) [`unaccent`](/ext/e/unaccent) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_summarize`](/ext/e/pg_summarize) [`pg_search`](/ext/e/pg_search) [`pgroonga`](/ext/e/pgroonga) [`pg_bigm`](/ext/e/pg_bigm) |
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
CREATE EXTENSION dict_xsyn;
```




## Usage

> [dict_xsyn: extended synonym dictionary for text search](https://www.postgresql.org/docs/current/dict-xsyn.html)

Provides an extended synonym dictionary template for text search, replacing words with groups of synonyms.

```sql
CREATE EXTENSION dict_xsyn;
```

### Configuration Parameters

| Parameter | Description | Default |
|---|---|---|
| `matchorig` | Accept original word | `true` |
| `matchsynonyms` | Accept synonyms as input | `false` |
| `keeporig` | Include original in output | `true` |
| `keepsynonyms` | Include synonyms in output | `true` |
| `rules` | Base name of synonym file in `$SHAREDIR/tsearch_data/` (`.rules` extension) | -- |

### Rules File Format

```
word syn1 syn2 syn3
```

Lines starting with `#` are comments.

### Examples

```sql
-- Configure the dictionary
ALTER TEXT SEARCH DICTIONARY xsyn (RULES='my_rules', KEEPORIG=true);

-- Test the dictionary
SELECT ts_lexize('xsyn', 'word');
-- {word,syn1,syn2,syn3}

-- Match synonyms as input too
ALTER TEXT SEARCH DICTIONARY xsyn (RULES='my_rules', MATCHSYNONYMS=true);
SELECT ts_lexize('xsyn', 'syn1');
-- {syn1,syn2,syn3}

-- Use in a text search configuration
ALTER TEXT SEARCH CONFIGURATION english
  ALTER MAPPING FOR word, asciiword WITH xsyn, english_stem;
```
