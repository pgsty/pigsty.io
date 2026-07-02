---
title: "pg_visibility"
linkTitle: "pg_visibility"
description: "examine the visibility map (VM) and page-level visibility info"
weight: 6960
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgvisibility.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgvisibility.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgvisibility.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_visibility`**](/ext/e/pg_visibility) | `1.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6960  | [**`pg_visibility`**](/ext/e/pg_visibility) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`amcheck`](/ext/e/amcheck) [`pageinspect`](/ext/e/pageinspect) [`pg_freespacemap`](/ext/e/pg_freespacemap) [`pgstattuple`](/ext/e/pgstattuple) [`pgfincore`](/ext/e/pgfincore) [`pg_checksums`](/ext/e/pg_checksums) [`pg_catcheck`](/ext/e/pg_catcheck) [`pgcozy`](/ext/e/pgcozy) |
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
CREATE EXTENSION pg_visibility;
```




## Usage

> [pg_visibility: examine the visibility map](https://www.postgresql.org/docs/current/pgvisibility.html)

pg_visibility provides functions to examine and verify the visibility map (VM), which tracks which pages contain only tuples visible to all transactions.

### Functions

**Single page visibility:**

```sql
-- VM bits for a specific block
SELECT * FROM pg_visibility_map('my_table', 0);
-- Returns: all_visible, all_frozen

-- VM bits plus the page's PD_ALL_VISIBLE flag
SELECT * FROM pg_visibility('my_table', 0);
-- Returns: all_visible, all_frozen, pd_all_visible
```

**All pages visibility:**

```sql
-- VM bits for every page
SELECT * FROM pg_visibility_map('my_table');
-- Returns: blkno, all_visible, all_frozen

-- VM bits plus PD_ALL_VISIBLE for every page
SELECT * FROM pg_visibility('my_table');
-- Returns: blkno, all_visible, all_frozen, pd_all_visible
```

**Summary:**

```sql
SELECT * FROM pg_visibility_map_summary('my_table');
-- Returns: all_visible (count), all_frozen (count)
```

### Corruption Detection

```sql
-- Find tuples on all-frozen pages that aren't actually frozen
SELECT * FROM pg_check_frozen('my_table');

-- Find tuples on all-visible pages that aren't actually all-visible
SELECT * FROM pg_check_visible('my_table');
```

If either function returns rows, the visibility map is corrupt.

### Repair

```sql
-- Truncate the visibility map (forces full VACUUM rebuild)
SELECT pg_truncate_visibility_map('my_table');
-- Then run: VACUUM my_table;
```

### Access

Functions require superuser or `pg_stat_scan_tables` role. `pg_truncate_visibility_map` requires superuser.
