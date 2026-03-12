---
title: "pageinspect"
linkTitle: "pageinspect"
description: "inspect the contents of database pages at a low level"
weight: 6900
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pageinspect.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pageinspect.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pageinspect.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pageinspect`**](/ext/e/pageinspect) | `1.12` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6900  | [**`pageinspect`**](/ext/e/pageinspect) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`amcheck`](/ext/e/amcheck) [`pagevis`](/ext/e/pagevis) [`pg_visibility`](/ext/e/pg_visibility) [`pg_repack`](/ext/e/pg_repack) [`pg_squeeze`](/ext/e/pg_squeeze) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pgdd`](/ext/e/pgdd) [`pg_orphaned`](/ext/e/pg_orphaned) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.12</span> | <span class="ext-badge ext-badge--avail">1.12</span> | <span class="ext-badge ext-badge--avail">1.12</span> | <span class="ext-badge ext-badge--avail">1.12</span> | <span class="ext-badge ext-badge--avail">1.12</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pageinspect;
```



## Usage

> [pageinspect: low-level page inspection functions](https://www.postgresql.org/docs/current/pageinspect.html)

pageinspect provides functions to inspect the contents of database pages at a low level. Useful for debugging and educational purposes. Superuser only.

### General Functions

```sql
-- Read a raw page (main fork)
SELECT get_raw_page('my_table', 0);

-- Read from a specific fork (main, fsm, vm, init)
SELECT get_raw_page('my_table', 'fsm', 0);

-- Page header information
SELECT * FROM page_header(get_raw_page('my_table', 0));
-- Returns: lsn, checksum, flags, lower, upper, special, pagesize, version, prune_xid

-- Compute page checksum
SELECT page_checksum(get_raw_page('my_table', 0), 0);
```

### Heap Functions

```sql
-- Line pointers and tuple data on a heap page
SELECT * FROM heap_page_items(get_raw_page('my_table', 0));

-- Tuple data split into attributes
SELECT * FROM heap_page_item_attrs(get_raw_page('my_table', 0), 'my_table'::regclass);

-- Decode tuple infomask flags
SELECT t_ctid, raw_flags, combined_flags
FROM heap_page_items(get_raw_page('my_table', 0)),
     LATERAL heap_tuple_infomask_flags(t_infomask, t_infomask2)
WHERE t_infomask IS NOT NULL;
```

### B-Tree Index Functions

```sql
-- Index metapage
SELECT * FROM bt_metap('my_index');

-- Page-level statistics
SELECT * FROM bt_page_stats('my_index', 1);

-- Multi-page statistics
SELECT * FROM bt_multi_page_stats('my_index', 1, 10);

-- Page items (index entries)
SELECT itemoffset, ctid, itemlen, data FROM bt_page_items('my_index', 1);
```

### BRIN Index Functions

```sql
SELECT brin_page_type(get_raw_page('brin_idx', 0));
SELECT * FROM brin_metapage_info(get_raw_page('brin_idx', 0));
SELECT * FROM brin_revmap_data(get_raw_page('brin_idx', 2));
SELECT * FROM brin_page_items(get_raw_page('brin_idx', 5), 'brin_idx');
```

### GIN Index Functions

```sql
SELECT * FROM gin_metapage_info(get_raw_page('gin_idx', 0));
SELECT * FROM gin_page_opaque_info(get_raw_page('gin_idx', 2));
SELECT * FROM gin_leafpage_items(get_raw_page('gin_idx', 2));
```

### GiST Index Functions

```sql
SELECT * FROM gist_page_opaque_info(get_raw_page('gist_idx', 2));
SELECT * FROM gist_page_items(get_raw_page('gist_idx', 0), 'gist_idx');
SELECT * FROM gist_page_items_bytea(get_raw_page('gist_idx', 0));
```

### Hash Index Functions

```sql
SELECT hash_page_type(get_raw_page('hash_idx', 0));
SELECT * FROM hash_page_stats(get_raw_page('hash_idx', 1));
SELECT * FROM hash_page_items(get_raw_page('hash_idx', 1));
SELECT * FROM hash_bitmap_info('hash_idx', 2052);
SELECT * FROM hash_metapage_info(get_raw_page('hash_idx', 0));
```
