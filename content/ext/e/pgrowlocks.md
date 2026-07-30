---
title: "pgrowlocks"
linkTitle: "pgrowlocks"
description: "show row-level locking information"
weight: 6910
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgrowlocks.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgrowlocks.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgrowlocks.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgrowlocks`**](/ext/e/pgrowlocks) | `1.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6910  | [**`pgrowlocks`**](/ext/e/pgrowlocks) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_wait_sampling`](/ext/e/pg_wait_sampling) [`pgsentinel`](/ext/e/pgsentinel) [`pg_visibility`](/ext/e/pg_visibility) [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_datasentinel`](/ext/e/pg_datasentinel) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_profile`](/ext/e/pg_profile) |
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
CREATE EXTENSION pgrowlocks;
```




## Usage

> [pgrowlocks: display row-level locking information](https://www.postgresql.org/docs/current/pgrowlocks.html)

pgrowlocks shows which rows in a table are currently locked, by which transactions, and the lock modes.

### Function

```sql
SELECT * FROM pgrowlocks('my_table');

 locked_row | locker | multi | xids  |     modes      |  pids
------------+--------+-------+-------+----------------+--------
 (0,1)      |    609 | f     | {609} | {"For Share"}  | {3161}
 (0,2)      |    609 | f     | {609} | {"For Share"}  | {3161}
 (0,3)      |    607 | f     | {607} | {"For Update"} | {3107}
```

### Return Columns

| Column | Type | Description |
|--------|------|-------------|
| `locked_row` | tid | Tuple ID of the locked row |
| `locker` | xid | Transaction ID (or multixact ID) |
| `multi` | boolean | True if locker is a multitransaction |
| `xids` | xid[] | Transaction IDs of all lockers |
| `modes` | text[] | Lock modes: `For Key Share`, `For Share`, `For No Key Update`, `For Update`, etc. |
| `pids` | integer[] | Process IDs of locking backends |

### View Locked Row Contents

```sql
SELECT * FROM accounts AS a, pgrowlocks('accounts') AS p
WHERE p.locked_row = a.ctid;
```

### Access

Restricted to superusers, roles with `pg_stat_scan_tables`, and users with `SELECT` on the target table.

### Caveats

- Takes `AccessShareLock` on the target table
- Not guaranteed to produce a self-consistent snapshot
- Can be slow on large tables
