---
title: "pg_buffercache"
linkTitle: "pg_buffercache"
description: "examine the shared buffer cache"
weight: 6930
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgbuffercache.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgbuffercache.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgbuffercache.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_buffercache`**](/ext/e/pg_buffercache) | `1.5` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6930  | [**`pg_buffercache`**](/ext/e/pg_buffercache) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_repack`](/ext/e/pg_repack) [`pgfincore`](/ext/e/pgfincore) [`pgcozy`](/ext/e/pgcozy) [`pg_prewarm`](/ext/e/pg_prewarm) [`pgmeminfo`](/ext/e/pgmeminfo) [`pg_squeeze`](/ext/e/pg_squeeze) [`old_snapshot`](/ext/e/old_snapshot) [`system_stats`](/ext/e/system_stats) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgcozy`](/ext/e/pgcozy) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> | <span class="ext-badge ext-badge--avail">1.5</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_buffercache;
```




## Usage

> [pg_buffercache: inspect the shared buffer cache](https://www.postgresql.org/docs/current/pgbuffercache.html)

pg_buffercache provides views and functions to examine what is stored in the PostgreSQL shared buffer cache in real time.

### Views

**`pg_buffercache`** -- detailed per-buffer information:

```sql
-- Top 10 relations by buffer usage
SELECT n.nspname, c.relname, count(*) AS buffers
FROM pg_buffercache b
JOIN pg_class c ON b.relfilenode = pg_relation_filenode(c.oid)
  AND b.reldatabase IN (0, (SELECT oid FROM pg_database WHERE datname = current_database()))
JOIN pg_namespace n ON n.oid = c.relnamespace
GROUP BY n.nspname, c.relname
ORDER BY 3 DESC
LIMIT 10;
```

Columns: `bufferid`, `relfilenode`, `reltablespace`, `reldatabase`, `relforknumber`, `relblocknumber`, `isdirty`, `usagecount`, `pinning_backends`.

### Summary Functions

```sql
-- Quick buffer cache summary (cheaper than the view)
SELECT * FROM pg_buffercache_summary();
--  buffers_used | buffers_unused | buffers_dirty | buffers_pinned | usagecount_avg

-- Buffer distribution by usage count
SELECT * FROM pg_buffercache_usage_counts();
--  usage_count | buffers | dirty | pinned
```

### Eviction Functions (Superuser, Developer Testing Only)

```sql
-- Evict a single buffer by ID
SELECT * FROM pg_buffercache_evict(42);

-- Evict all buffers for a relation
SELECT * FROM pg_buffercache_evict_relation('my_table'::regclass);

-- Evict all unpinned buffers
SELECT * FROM pg_buffercache_evict_all();
```

### NUMA View

```sql
-- NUMA node mapping for shared buffers
SELECT * FROM pg_buffercache_numa;
-- Returns: bufferid, os_page_num, numa_node
```

### Access

Restricted to superusers and roles with `pg_monitor` privileges.
