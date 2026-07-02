---
title: "seg"
linkTitle: "seg"
description: "data type for representing line segments or floating-point intervals"
weight: 3940
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/seg.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/seg.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/seg.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`seg`**](/ext/e/seg) | `1.4` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3940  | [**`seg`**](/ext/e/seg) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`cube`](/ext/e/cube) [`intarray`](/ext/e/intarray) [`intagg`](/ext/e/intagg) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.4</span> | <span class="ext-badge ext-badge--avail">1.4</span> | <span class="ext-badge ext-badge--avail">1.4</span> | <span class="ext-badge ext-badge--avail">1.4</span> | <span class="ext-badge ext-badge--avail">1.4</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION seg;
```




## Usage

> [seg: line segment / floating-point interval data type](https://www.postgresql.org/docs/current/seg.html)

The `seg` extension provides a data type for representing line segments or floating-point intervals, useful for representing measurements with uncertainty.

```sql
CREATE EXTENSION seg;
```

### Input Formats

```sql
SELECT '5.0'::seg;           -- zero-length interval (point)
SELECT '5.0 .. 7.0'::seg;    -- interval from 5.0 to 7.0
SELECT '5(+-)0.3'::seg;      -- interval 4.7 .. 5.3
SELECT '50 ..'::seg;          -- open interval >= 50
SELECT '.. 0'::seg;           -- open interval <= 0
```

Certainty indicators (`<`, `>`, `~`) can be prepended but are treated as comments and ignored by operators.

### Operators

**Spatial operators (GiST-indexed):**

| Operator | Description |
|----------|-------------|
| `<<` | Entirely left of |
| `>>` | Entirely right of |
| `&<` | Does not extend right of |
| `&>` | Does not extend left of |
| `=` | Equal |
| `&&` | Overlaps |
| `@>` | Contains |
| `<@` | Contained in |

**Comparison operators** (`<`, `<=`, `>`, `>=`) are available for sorting.

### Index Support

```sql
CREATE INDEX idx ON measurements USING gist (reading);
```

### Precision

Values are stored as 32-bit floating-point pairs, retaining up to 7 significant digits. Trailing zeroes are preserved.
