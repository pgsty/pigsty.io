---
title: "hstore"
linkTitle: "hstore"
description: "data type for storing sets of (key, value) pairs"
weight: 3970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/hstore.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/hstore.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/hstore.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hstore`**](/ext/e/hstore) | `1.8` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3970  | [**`hstore`**](/ext/e/hstore) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`intarray`](/ext/e/intarray) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`hstore_pllua`](/ext/e/hstore_pllua) [`hstore_plluau`](/ext/e/hstore_plluau) [`hstore_plperl`](/ext/e/hstore_plperl) [`hstore_plperlu`](/ext/e/hstore_plperlu) [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`pg_auditor`](/ext/e/pg_auditor) [`pg_readme`](/ext/e/pg_readme) [`pg_readme_test_extension`](/ext/e/pg_readme_test_extension) [`pg_xenophile`](/ext/e/pg_xenophile) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.8</span> | <span class="ext-badge ext-badge--avail">1.8</span> | <span class="ext-badge ext-badge--avail">1.8</span> | <span class="ext-badge ext-badge--avail">1.8</span> | <span class="ext-badge ext-badge--avail">1.8</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION hstore;
```




## Usage

> [hstore: key-value pair data type](https://www.postgresql.org/docs/current/hstore.html)

The `hstore` extension provides a key/value pair data type for storing semi-structured data in a single column.

```sql
CREATE EXTENSION hstore;
```

### Basic Usage

```sql
SELECT 'name => Alice, age => 30'::hstore;
SELECT 'name => Alice'::hstore -> 'name';           -- Alice
SELECT 'a => 1, b => 2'::hstore ? 'a';              -- true
SELECT 'a => 1'::hstore || 'b => 2'::hstore;        -- "a"=>"1", "b"=>"2"
```

### Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `->` | Get value by key | `h -> 'key'` |
| `\|\|` | Concatenate | `h1 \|\| h2` |
| `?` | Contains key | `h ? 'key'` |
| `?&` | Contains all keys | `h ?& ARRAY['a','b']` |
| `?\|` | Contains any key | `h ?\| ARRAY['a','b']` |
| `@>` | Contains | `h @> 'a=>1'` |
| `<@` | Contained by | `h <@ 'a=>1, b=>2'` |
| `-` | Delete key(s) | `h - 'key'` or `h - ARRAY['a','b']` |

### Subscript Access

```sql
SELECT h['name'] FROM mytable;
UPDATE mytable SET h['age'] = '31';
```

### Functions

```sql
-- Construction
SELECT hstore('key', 'value');
SELECT hstore(ARRAY['a','b'], ARRAY['1','2']);
SELECT hstore(ROW(1, 'hello'));

-- Extraction
SELECT akeys(h);                    -- text[] of keys
SELECT avals(h);                    -- text[] of values
SELECT skeys(h);                    -- set of keys
SELECT svals(h);                    -- set of values
SELECT each(h);                     -- set of (key, value) records

-- Query
SELECT exist(h, 'key');             -- boolean
SELECT defined(h, 'key');           -- true if non-NULL value

-- Modification
SELECT delete(h, 'key');
SELECT slice(h, ARRAY['a','b']);    -- subset of keys

-- JSON conversion
SELECT hstore_to_json(h);
SELECT hstore_to_jsonb(h);
SELECT hstore_to_json_loose(h);    -- distinguishes numbers/booleans

-- Record conversion
SELECT populate_record(NULL::my_table, h);
```

### Index Support

```sql
CREATE INDEX idx ON t USING gin (h);    -- supports @>, ?, ?&, ?|
CREATE INDEX idx ON t USING gist (h);   -- supports @>, ?, ?&, ?|
CREATE INDEX idx ON t USING btree (h);  -- supports =
CREATE INDEX idx ON t USING hash (h);   -- supports =
```
