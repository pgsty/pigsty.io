---
title: "pg_prewarm"
linkTitle: "pg_prewarm"
description: "prewarm relation data"
weight: 5890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgprewarm.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgprewarm.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgprewarm.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_prewarm`**](/ext/e/pg_prewarm) | `1.2` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5890  | [**`pg_prewarm`**](/ext/e/pg_prewarm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_buffercache`](/ext/e/pg_buffercache) [`pgfincore`](/ext/e/pgfincore) [`pgcozy`](/ext/e/pgcozy) [`pg_cooldown`](/ext/e/pg_cooldown) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgcozy`](/ext/e/pgcozy) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> | <span class="ext-badge ext-badge--avail">1.2</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_prewarm;
```




## Usage

> [pg_prewarm: prewarm relation data](https://www.postgresql.org/docs/current/pgprewarm.html)

The `pg_prewarm` extension provides functions to load relation data into the operating system buffer cache or PostgreSQL buffer cache, reducing I/O latency for subsequent queries.

### Prewarm a Relation

```sql
-- Load entire table into PostgreSQL buffer cache (default mode)
SELECT pg_prewarm('my_table');

-- Load with specific mode
SELECT pg_prewarm('my_table', 'prefetch');  -- async OS prefetch
SELECT pg_prewarm('my_table', 'read');      -- sync read into OS cache
SELECT pg_prewarm('my_table', 'buffer');    -- load into PG buffer cache

-- Load specific block range
SELECT pg_prewarm('my_table', 'buffer', 'main', 0, 999);

-- Prewarm an index
SELECT pg_prewarm('my_table_pkey');
```

### Function Signature

```sql
pg_prewarm(regclass,
           mode text DEFAULT 'buffer',
           fork text DEFAULT 'main',
           first_block int8 DEFAULT NULL,
           last_block int8 DEFAULT NULL
) RETURNS int8
```

Returns the number of blocks prewarmed.

| Parameter | Description |
|-----------|-------------|
| `mode` | `prefetch` (async OS), `read` (sync OS), or `buffer` (PG cache) |
| `fork` | Relation fork to prewarm (e.g., `main`, `fsm`, `vm`) |
| `first_block` | First block number (default: 0) |
| `last_block` | Last block number (default: last block of relation) |

### Autoprewarm

When loaded via `shared_preload_libraries`, autoprewarm periodically saves the list of buffers in the shared buffer cache to disk and restores them on restart.

```sql
-- Manually launch autoprewarm worker
SELECT autoprewarm_start_worker();

-- Force immediate dump of buffer state
SELECT autoprewarm_dump_now();  -- returns number of records written
```

### GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_prewarm.autoprewarm` | `true` | Enable autoprewarm background worker |
| `pg_prewarm.autoprewarm_interval` | `300s` | Interval between `autoprewarm.blocks` file updates (0 = dump only at shutdown) |

Buffer state is saved to `autoprewarm.blocks` in the data directory. After restart, two background workers reload the saved buffers.
