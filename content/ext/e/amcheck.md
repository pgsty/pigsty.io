---
title: "amcheck"
linkTitle: "amcheck"
description: "functions for verifying relation integrity"
weight: 5980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/amcheck.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/amcheck.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/amcheck.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`amcheck`**](/ext/e/amcheck) | `1.4` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5980  | [**`amcheck`**](/ext/e/amcheck) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_checksums`](/ext/e/pg_checksums) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_orphaned`](/ext/e/pg_orphaned) [`pg_pathcheck`](/ext/e/pg_pathcheck) [`pg_isok`](/ext/e/pg_isok) [`pg_surgery`](/ext/e/pg_surgery) [`pageinspect`](/ext/e/pageinspect) [`adminpack`](/ext/e/adminpack) [`pg_repack`](/ext/e/pg_repack) |
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
CREATE EXTENSION amcheck;
```




## Usage

> [amcheck: functions for verifying relation integrity](https://www.postgresql.org/docs/current/amcheck.html)

The `amcheck` extension provides functions to verify the logical consistency of B-tree indexes, GIN indexes, and heap (table) data, detecting corruption without modifying data.

### B-Tree Index Verification

```sql
-- Lightweight check (AccessShareLock, safe for production)
SELECT bt_index_check('my_index');

-- With heap-all-indexed verification
SELECT bt_index_check('my_index', heapallindexed => true);

-- Thorough check including parent/child invariants (ShareLock, blocks writes)
SELECT bt_index_parent_check('my_index');

-- Most thorough: rootdescend re-finds each tuple from root
SELECT bt_index_parent_check('my_index',
    heapallindexed => true,
    rootdescend => true,
    checkunique => true);
```

### Check All Catalog Indexes

```sql
SELECT bt_index_check(c.oid), c.relname, c.relpages
FROM pg_index i
JOIN pg_opclass op ON i.indclass[0] = op.oid
JOIN pg_am am ON op.opcmethod = am.oid
JOIN pg_class c ON i.indexrelid = c.oid
JOIN pg_namespace n ON c.relnamespace = n.oid
WHERE am.amname = 'btree' AND n.nspname = 'pg_catalog'
  AND c.relpersistence != 't' AND c.relkind = 'i'
  AND i.indisready AND i.indisvalid
ORDER BY c.relpages DESC LIMIT 10;
```

### GIN Index Verification

```sql
SELECT gin_index_check('my_gin_index');
```

### Heap (Table) Verification

```sql
-- Basic heap check
SELECT * FROM verify_heapam('my_table');

-- With TOAST verification (slower)
SELECT * FROM verify_heapam('my_table', check_toast => true);

-- Check specific block range
SELECT * FROM verify_heapam('my_table', startblock => 0, endblock => 1000);

-- Stop at first corrupted block
SELECT * FROM verify_heapam('my_table', on_error_stop => true);
```

Returns rows for each detected problem:

| Column | Type | Description |
|--------|------|-------------|
| `blkno` | bigint | Block number with corruption |
| `offnum` | integer | Offset of corrupt tuple |
| `attnum` | integer | Attribute number (if column-specific) |
| `msg` | text | Description of the problem |

### Function Summary

| Function | Lock | Use Case |
|----------|------|----------|
| `bt_index_check(index, heapallindexed, checkunique)` | AccessShareLock | Routine production checks |
| `bt_index_parent_check(index, heapallindexed, rootdescend, checkunique)` | ShareLock | Comprehensive verification |
| `gin_index_check(index)` | AccessShareLock | GIN index verification |
| `verify_heapam(relation, on_error_stop, check_toast, skip, startblock, endblock)` | AccessShareLock | Table/heap corruption detection |

All `amcheck` errors are true positives. Use `REINDEX` or point-in-time recovery for repair after diagnosing with `pageinspect`.
