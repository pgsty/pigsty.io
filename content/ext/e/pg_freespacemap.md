---
title: "pg_freespacemap"
linkTitle: "pg_freespacemap"
description: "examine the free space map (FSM)"
weight: 6950
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgfreespacemap.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgfreespacemap.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgfreespacemap.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_freespacemap`**](/ext/e/pg_freespacemap) | `1.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6950  | [**`pg_freespacemap`**](/ext/e/pg_freespacemap) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_buffercache`](/ext/e/pg_buffercache) [`pageinspect`](/ext/e/pageinspect) [`toastinfo`](/ext/e/toastinfo) [`pagevis`](/ext/e/pagevis) [`pg_visibility`](/ext/e/pg_visibility) [`pgstattuple`](/ext/e/pgstattuple) [`pgfincore`](/ext/e/pgfincore) [`pgcozy`](/ext/e/pgcozy) [`pg_prewarm`](/ext/e/pg_prewarm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_freespacemap;
```




## Usage

> [pg_freespacemap: examine the free space map](https://www.postgresql.org/docs/current/pgfreespacemap.html)

pg_freespacemap provides functions to examine the free space map (FSM), which tracks available space on each page of a relation.

### Functions

**Free space on a single page:**

```sql
SELECT pg_freespace('my_table'::regclass, 0);  -- block 0
```

**Free space on all pages:**

```sql
SELECT * FROM pg_freespace('my_table'::regclass);

 blkno | avail
-------+-------
     0 |     0
     1 |     0
     2 |   224
     3 |  3456
     4 |  8160
```

### Example: Table Bloat Analysis

```sql
-- Pages with significant free space
SELECT blkno, avail
FROM pg_freespace('my_table'::regclass)
WHERE avail > 1000
ORDER BY avail DESC;

-- Total free space in a relation
SELECT sum(avail) AS total_free_bytes,
       count(*) AS total_pages,
       count(*) FILTER (WHERE avail > 0) AS pages_with_free_space
FROM pg_freespace('my_table'::regclass);
```

### Notes

- FSM values are rounded to 1/256th of `BLCKSZ` (typically 32 bytes)
- FSM is not kept fully up-to-date; values may lag behind actual free space
- For indexes, only entirely unused pages are tracked
- Access restricted to superusers and `pg_stat_scan_tables` members
