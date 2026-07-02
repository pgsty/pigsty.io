---
title: "pg_overexplain"
linkTitle: "pg_overexplain"
description: "Allow EXPLAIN to dump even more details"
weight: 6880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/devel/pgoverexplain.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/devel/pgoverexplain.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/devel/pgoverexplain.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_overexplain`**](/ext/e/pg_overexplain) | `1.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6880  | [**`pg_overexplain`**](/ext/e/pg_overexplain) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_profile`](/ext/e/pg_profile) [`pg_tracing`](/ext/e/pg_tracing) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_track_settings`](/ext/e/pg_track_settings) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL





## Usage

> [pg_overexplain: extended EXPLAIN with internal planner details](https://www.postgresql.org/docs/current/pgoverexplain.html)

pg_overexplain extends the `EXPLAIN` command with additional debugging options to display internal planner data structures. Primarily intended for planner debugging and development.

### Loading

```sql
LOAD 'pg_overexplain';
-- Or in postgresql.conf:
-- session_preload_libraries = 'pg_overexplain'
```

### EXPLAIN (DEBUG)

Displays internal plan tree information:

```sql
EXPLAIN (DEBUG) SELECT * FROM my_table WHERE id = 1;
```

Shows per-node fields:
- **Disabled Nodes** -- raw counter of disabled nodes
- **Parallel Safe** -- whether the node can appear under Gather
- **Plan Node ID** -- internal ID for parallel query coordination
- **extParam / allParam** -- parameters affecting the node

Shows per-query fields:
- **Command Type** -- query type (select, update, etc.)
- **Flags** -- hasReturning, hasModifyingCTE, canSetTag, transientPlan, etc.
- **Subplans Needing Rewind** -- subplan IDs requiring rewind
- **Relation OIDs** -- OIDs the plan depends on
- **Parse Location** -- location in the query string

### EXPLAIN (RANGE_TABLE)

Displays information about the query's range table entries:

```sql
EXPLAIN (RANGE_TABLE) SELECT * FROM t1 JOIN t2 ON t1.id = t2.id;
```

Shows range table index references (`Scan RTI`, `Nominal RTI`, `Append RTIs`, etc.) and dumps each range table entry with its kind (relation, subquery, join, cte, etc.) and entry-specific fields.

### Notes

- Output reflects internal planner data structures and may require reading source code to interpret
- Output format may change across PostgreSQL versions
- Not recommended for general production use
