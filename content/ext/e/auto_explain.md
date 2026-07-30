---
title: "auto_explain"
linkTitle: "auto_explain"
description: "Provides a means for logging execution plans of slow statements automatically"
weight: 6980
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/auto-explain.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/auto-explain.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/auto-explain.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`auto_explain`**](/ext/e/auto_explain) | `-` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6980  | [**`auto_explain`**](/ext/e/auto_explain) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_show_plans`](/ext/e/pg_show_plans) [`explain_ui`](/ext/e/explain_ui) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_overexplain`](/ext/e/pg_overexplain) [`pg_qualstats`](/ext/e/pg_qualstats) [`online_advisor`](/ext/e/online_advisor) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_profile`](/ext/e/pg_profile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL





## Usage

> [auto_explain: automatically log slow query plans](https://www.postgresql.org/docs/current/auto-explain.html)

auto_explain automatically logs execution plans of slow statements, eliminating the need to manually run `EXPLAIN`. Plans are sent to the PostgreSQL log.

### Quick Start

```sql
-- Load per-session
LOAD 'auto_explain';
SET auto_explain.log_min_duration = '1s';
SET auto_explain.log_analyze = true;
```

Or in `postgresql.conf` for all sessions:

```
session_preload_libraries = 'auto_explain'
auto_explain.log_min_duration = '3s'
```

### Configuration Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `auto_explain.log_min_duration` | `-1` | Minimum duration to log (ms). `0` = all, `-1` = disabled |
| `auto_explain.log_analyze` | `off` | Use `EXPLAIN ANALYZE` (includes actual timing) |
| `auto_explain.log_buffers` | `off` | Include buffer usage statistics |
| `auto_explain.log_wal` | `off` | Include WAL usage statistics |
| `auto_explain.log_timing` | `on` | Include per-node timing (disable to reduce overhead) |
| `auto_explain.log_triggers` | `off` | Include trigger execution statistics |
| `auto_explain.log_verbose` | `off` | Include verbose output |
| `auto_explain.log_settings` | `off` | Log modified planner-relevant settings |
| `auto_explain.log_format` | `text` | Format: `text`, `xml`, `json`, `yaml` |
| `auto_explain.log_level` | `LOG` | Log level for output |
| `auto_explain.log_nested_statements` | `off` | Log plans for statements inside functions |
| `auto_explain.log_parameter_max_length` | `-1` | Parameter logging: `-1` = full, `0` = none |
| `auto_explain.sample_rate` | `1` | Fraction of statements to explain (0.0 to 1.0) |

### Example Log Output

```
LOG:  duration: 3.651 ms  plan:
  Query Text: SELECT count(*) FROM pg_class, pg_index
              WHERE oid = indrelid AND indisunique;
  Aggregate  (cost=16.79..16.80 rows=1 width=0)
             (actual time=3.626..3.627 rows=1 loops=1)
    ->  Hash Join  (cost=4.17..16.55 rows=92 width=0)
                   (actual time=3.349..3.594 rows=92 loops=1)
```

### Performance Tip

When using `log_analyze`, disable `log_timing` if you only need row counts:

```sql
SET auto_explain.log_analyze = true;
SET auto_explain.log_timing = off;
```
