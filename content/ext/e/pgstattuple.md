---
title: "pgstattuple"
linkTitle: "pgstattuple"
description: "show tuple-level statistics"
weight: 6970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgstattuple.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgstattuple.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgstattuple.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgstattuple`**](/ext/e/pgstattuple) | `1.5` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6970  | [**`pgstattuple`**](/ext/e/pgstattuple) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pageinspect`](/ext/e/pageinspect) [`pg_freespacemap`](/ext/e/pg_freespacemap) [`pg_visibility`](/ext/e/pg_visibility) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_checksums`](/ext/e/pg_checksums) [`pg_catcheck`](/ext/e/pg_catcheck) [`amcheck`](/ext/e/amcheck) [`toastinfo`](/ext/e/toastinfo) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pgstattuple;
```



## Usage

> [pgstattuple: tuple-level statistics](https://www.postgresql.org/docs/current/pgstattuple.html)

pgstattuple provides functions to obtain tuple-level statistics for tables and indexes, including dead tuple counts and free space metrics.

### Table Statistics

```sql
SELECT * FROM pgstattuple('my_table');

 table_len          | 81920
 tuple_count        | 1000
 tuple_len          | 72000
 tuple_percent      | 87.89
 dead_tuple_count   | 50
 dead_tuple_len     | 3600
 dead_tuple_percent | 4.39
 free_space         | 6320
 free_percent       | 7.71
```

**Approximate (faster) version** using visibility map and FSM:

```sql
SELECT * FROM pgstattuple_approx('my_table');
-- Returns: table_len, scanned_percent, approx_tuple_count, approx_tuple_len,
--          dead_tuple_count, dead_tuple_len, approx_free_space, ...
```

### B-Tree Index Statistics

```sql
SELECT * FROM pgstatindex('my_index');

 version            | 4
 tree_level         | 2
 index_size         | 1327104
 root_block_no      | 3
 internal_pages     | 1
 leaf_pages         | 160
 empty_pages        | 0
 deleted_pages      | 0
 avg_leaf_density   | 89.27
 leaf_fragmentation | 0
```

### GIN Index Statistics

```sql
SELECT * FROM pgstatginindex('my_gin_index');
-- Returns: version, pending_pages, pending_tuples
```

### Hash Index Statistics

```sql
SELECT * FROM pgstathashindex('my_hash_index');
-- Returns: version, bucket_pages, overflow_pages, bitmap_pages,
--          unused_pages, live_items, dead_tuples, free_percent
```

### Page Count

```sql
SELECT pg_relpages('my_table');
```

### Access

Restricted to superusers and roles with `pg_stat_scan_tables` privileges.
