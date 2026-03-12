---
title: "hstore_plperlu"
linkTitle: "hstore_plperlu"
description: "transform between hstore and plperlu"
weight: 3273
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

| **Related** | [`plperlu`](/ext/e/plperlu) [`hstore_pllua`](/ext/e/hstore_pllua) [`hstore_plluau`](/ext/e/hstore_plluau) [`hstore_plperl`](/ext/e/hstore_plperl) [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`hstore`](/ext/e/hstore) [`plperl`](/ext/e/plperl) [`plpgsql`](/ext/e/plpgsql) |
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
CREATE EXTENSION hstore_plperlu;
```



## Usage

> [hstore_plperlu: Transform between hstore and PL/Perl untrusted](https://www.postgresql.org/docs/current/hstore.html)

Provides a transform for the `hstore` type for PL/Perl Untrusted. When loaded, `hstore` values are automatically converted to Perl hashes and vice versa.

```sql
CREATE EXTENSION hstore_plperlu;

CREATE FUNCTION hstore_to_json_u(val hstore) RETURNS text
LANGUAGE plperlu TRANSFORM FOR TYPE hstore AS $$
  use JSON;
  # val is now a Perl hash reference
  return encode_json($val);
$$;

CREATE FUNCTION make_hstore_u(key text, value text) RETURNS hstore
LANGUAGE plperlu TRANSFORM FOR TYPE hstore AS $$
  my ($k, $v) = @_;
  return { $k => $v };
$$;

SELECT hstore_to_json_u('a=>1, b=>2'::hstore);
SELECT make_hstore_u('color', 'blue');
```
