---
title: "pg_surgery"
linkTitle: "pg_surgery"
description: "extension to perform surgery on a damaged relation"
weight: 5990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgsurgery.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgsurgery.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgsurgery.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_surgery`**](/ext/e/pg_surgery) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5990  | [**`pg_surgery`**](/ext/e/pg_surgery) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_checksums`](/ext/e/pg_checksums) [`amcheck`](/ext/e/amcheck) [`pg_orphaned`](/ext/e/pg_orphaned) [`pg_pathcheck`](/ext/e/pg_pathcheck) [`pageinspect`](/ext/e/pageinspect) [`pg_repack`](/ext/e/pg_repack) [`lo`](/ext/e/lo) [`lolor`](/ext/e/lolor) [`pg_isok`](/ext/e/pg_isok) |
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
CREATE EXTENSION pg_surgery;
```




## Usage

> [pg_surgery: extension to perform surgery on a damaged relation](https://www.postgresql.org/docs/current/pgsurgery.html)

The `pg_surgery` extension provides functions to perform low-level surgery on damaged relations. These are last-resort tools that can corrupt data if misused.

### Functions

#### heap_force_kill

Marks line pointers as "dead" without examining the tuples, forcibly removing inaccessible tuples.

```sql
heap_force_kill(regclass, tid[]) RETURNS void
```

```sql
-- Tuple causes error when accessed
SELECT * FROM t1 WHERE ctid = '(0, 1)';
-- ERROR: could not access status of transaction 4007513275

-- Force kill the problematic tuple
SELECT heap_force_kill('t1'::regclass, ARRAY['(0, 1)']::tid[]);

-- Tuple is now removed
SELECT * FROM t1 WHERE ctid = '(0, 1)';
-- (0 rows)
```

#### heap_force_freeze

Marks tuples as frozen without examining tuple data, making tuples accessible when visibility information is corrupted.

```sql
heap_force_freeze(regclass, tid[]) RETURNS void
```

```sql
-- VACUUM fails on corrupted visibility info
VACUUM t1;
-- ERROR: found xmin 507 from before relfrozenxid 515

-- Find the problematic tuple
SELECT ctid FROM t1 WHERE xmin = 507;
--  ctid
-- -------
--  (0,3)

-- Force freeze the tuple
SELECT heap_force_freeze('t1'::regclass, ARRAY['(0, 3)']::tid[]);

-- Tuple is now frozen (xmin becomes 2 = FrozenTransactionId)
SELECT ctid FROM t1 WHERE xmin = 2;
--  ctid
-- -------
--  (0,3)
```

### When to Use

- `heap_force_kill`: When tuples cause errors on access due to corrupted transaction status, and the data can be discarded
- `heap_force_freeze`: When VACUUM fails due to tuples with xmin before relfrozenxid, or when tuples are invisible due to corrupted visibility information

These functions are unsafe by design and should only be used as a last resort when normal recovery methods have failed.
