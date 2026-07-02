---
title: "citext"
linkTitle: "citext"
description: "data type for case-insensitive character strings"
weight: 3980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/citext.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/citext.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/citext.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`citext`**](/ext/e/citext) | `1.6` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3980  | [**`citext`**](/ext/e/citext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`ltree`](/ext/e/ltree) [`unaccent`](/ext/e/unaccent) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) |
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
CREATE EXTENSION citext;
```




## Usage

> [citext: case-insensitive character string type](https://www.postgresql.org/docs/current/citext.html)

The `citext` extension provides a case-insensitive text type that eliminates the need for `lower()` calls in queries.

```sql
CREATE EXTENSION citext;
```

### Basic Usage

```sql
CREATE TABLE users (
    nick citext PRIMARY KEY,
    pass text NOT NULL
);

INSERT INTO users VALUES ('Larry', 'secret123');

-- Case-insensitive matching
SELECT * FROM users WHERE nick = 'larry';   -- matches 'Larry'
SELECT * FROM users WHERE nick = 'LARRY';   -- matches 'Larry'
```

### Behavior

`citext` performs comparisons by internally converting strings to lowercase. The following operations are case-insensitive with `citext`:

- Comparison operators: `=`, `<>`, `<`, `>`, `<=`, `>=`
- Pattern matching: `LIKE`, `ILIKE`, `~~`, `~~*`
- Regular expressions: `~`, `~*`, `!~`, `!~*`

### Case-Insensitive Functions

When arguments are `citext`, these functions perform case-insensitive matching:

`regexp_match()`, `regexp_matches()`, `regexp_replace()`, `regexp_split_to_array()`, `regexp_split_to_table()`, `replace()`, `split_part()`, `strpos()`, `translate()`

### Advantages Over lower()

- Eliminates verbose `lower()` calls in WHERE clauses
- Supports case-insensitive PRIMARY KEY and UNIQUE constraints
- No need for functional indexes
- Transparent case-folding in all operations

### Limitations

- Case-folding depends on `LC_CTYPE` at database creation
- Slightly less efficient than `text` (copying and conversion overhead)
- Does not support B-tree deduplication
- For better Unicode handling, consider nondeterministic collations instead
