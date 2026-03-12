---
title: "pg_logicalinspect"
linkTitle: "pg_logicalinspect"
description: "Logical decoding components inspection"
weight: 6890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/devel/pglogicalinspect.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/devel/pglogicalinspect.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/devel/pglogicalinspect.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_logicalinspect`**](/ext/e/pg_logicalinspect) | `1.0` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6890  | [**`pg_logicalinspect`**](/ext/e/pg_logicalinspect) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
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

```sql
CREATE EXTENSION pg_logicalinspect;
```



## Usage

> [pg_logicalinspect: inspect logical decoding snapshot files](https://www.postgresql.org/docs/current/pglogicalinspect.html)

pg_logicalinspect provides SQL functions to examine serialized logical decoding snapshots stored in `pg_logical/snapshots/`, useful for debugging and educational purposes.

### Functions

**`pg_get_logical_snapshot_meta(filename text)`** -- snapshot file metadata:

```sql
SELECT * FROM pg_get_logical_snapshot_meta('0-40796E18.snap');

 magic      | 1369563137
 checksum   | 1028045905
 version    | 6
```

**`pg_get_logical_snapshot_info(filename text)`** -- detailed snapshot information:

```sql
SELECT * FROM pg_get_logical_snapshot_info('0-40796E18.snap');

 state                    | consistent
 xmin                     | 751
 xmax                     | 751
 start_decoding_at        | 0/40796AF8
 two_phase_at             | 0/40796AF8
 initial_xmin_horizon     | 0
 building_full_snapshot   | f
 in_slot_creation         | f
 last_serialized_snapshot | 0/0
 committed_count          | 0
 committed_xip            |
 catchange_count          | 2
 catchange_xip            | {751,752}
```

### Listing Available Snapshots

Combine with `pg_ls_logicalsnapdir()` to discover and inspect all snapshots:

```sql
SELECT ss.name, meta.*
FROM pg_ls_logicalsnapdir() AS ss,
     pg_get_logical_snapshot_meta(ss.name) AS meta;

SELECT ss.name, info.*
FROM pg_ls_logicalsnapdir() AS ss,
     pg_get_logical_snapshot_info(ss.name) AS info;
```

### Access Control

Restricted to superusers and members of `pg_read_server_files` by default.
