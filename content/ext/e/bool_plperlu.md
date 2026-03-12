---
title: "bool_plperlu"
linkTitle: "bool_plperlu"
description: "transform between bool and plperlu"
weight: 3271
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/plperl.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/plperl.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/plperl.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plperlu`**](/ext/e/plperlu) | `1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3270  | [**`plperlu`**](/ext/e/plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3271  | [**`bool_plperlu`**](/ext/e/bool_plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3272  | [**`jsonb_plperlu`**](/ext/e/jsonb_plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3273  | [**`hstore_plperlu`**](/ext/e/hstore_plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plperlu`](/ext/e/plperlu) [`plperl`](/ext/e/plperl) [`bool_plperl`](/ext/e/bool_plperl) [`plpgsql`](/ext/e/plpgsql) [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) |
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
CREATE EXTENSION bool_plperlu;
```



## Usage

> [bool_plperlu: Transform between bool and PL/Perl untrusted](https://www.postgresql.org/docs/current/plperl.html)

Provides a transform for the `bool` type for PL/Perl Untrusted. When loaded, PostgreSQL `boolean` values are automatically converted to Perl native boolean representations and vice versa, instead of being passed as strings.

```sql
CREATE EXTENSION bool_plperlu;

CREATE FUNCTION check_flag_u(val boolean) RETURNS text
LANGUAGE plperlu TRANSFORM FOR TYPE boolean AS $$
  # val is a native Perl boolean (1 or undef), not a string
  if ($_[0]) {
    return "flag is set";
  }
  return "flag is not set";
$$;

SELECT check_flag_u(true);   -- flag is set
SELECT check_flag_u(false);  -- flag is not set
```
