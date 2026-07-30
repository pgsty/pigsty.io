---
title: "old_snapshot"
linkTitle: "old_snapshot"
description: "utilities in support of old_snapshot_threshold"
weight: 5960
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/oldsnapshot.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/oldsnapshot.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/oldsnapshot.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`old_snapshot`**](/ext/e/old_snapshot) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5960  | [**`old_snapshot`**](/ext/e/old_snapshot) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pg_visibility`](/ext/e/pg_visibility) [`temporal_tables`](/ext/e/temporal_tables) [`pgstattuple`](/ext/e/pgstattuple) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION old_snapshot;
```




## Usage

> [old_snapshot: utilities in support of old_snapshot_threshold](https://www.postgresql.org/docs/16/oldsnapshot.html)

The `old_snapshot` extension provides inspection functions for the server state related to the `old_snapshot_threshold` configuration parameter.

Note: this chapter is removed from PostgreSQL current docs in newer releases; use versioned docs when needed.

### Function

```sql
-- View the timestamp-to-XID mapping table
SELECT * FROM pg_old_snapshot_time_mapping();
```

### Function Signature

```sql
pg_old_snapshot_time_mapping(
    array_offset OUT int4,
    end_timestamp OUT timestamptz,
    newest_xmin OUT xid
) RETURNS SETOF record
```

### Output Columns

| Column | Type | Description |
|--------|------|-------------|
| `array_offset` | int4 | Index position in the mapping array |
| `end_timestamp` | timestamptz | End of the corresponding one-minute interval |
| `newest_xmin` | xid | Newest xmin of any snapshot taken during that minute |

### Context

PostgreSQL's `old_snapshot_threshold` parameter controls how long a snapshot can remain valid. The server maintains an internal mapping of timestamps to transaction IDs to implement this feature. This extension exposes that mapping for inspection and debugging.

```sql
-- Check the old_snapshot_threshold setting
SHOW old_snapshot_threshold;

-- Inspect the current mapping entries
SELECT array_offset, end_timestamp, newest_xmin
FROM pg_old_snapshot_time_mapping()
ORDER BY array_offset;
```
