---
title: "pg_stash_advice"
linkTitle: "pg_stash_advice"
description: "Store and automatically apply plan advice by query ID"
weight: 2989
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/19/pgstashadvice.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/19/pgstashadvice.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/19/pgstashadvice.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stash_advice`**](/ext/e/pg_stash_advice) | `1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2989  | [**`pg_stash_advice`**](/ext/e/pg_stash_advice) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_plan_advice`](/ext/e/pg_plan_advice) [`pg_plan_advice`](/ext/e/pg_plan_advice) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`plan_filter`](/ext/e/plan_filter) [`pg_stat_plans`](/ext/e/pg_stat_plans) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> | <span class="ext-badge ext-badge--miss">✗</span> |
{.ext-table .wide .expand}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_stash_advice;
```

## Usage

Sources:

- [PostgreSQL 19 documentation](https://www.postgresql.org/docs/19/pgstashadvice.html)
- [PostgreSQL 19.0 extension control file](https://github.com/postgres/postgres/blob/REL_19_0/contrib/pg_stash_advice/pg_stash_advice.control)
- [SQL API and default privileges](https://github.com/postgres/postgres/blob/REL_19_0/contrib/pg_stash_advice/pg_stash_advice--1.0.sql)

`pg_stash_advice` stores plan-advice strings in named, dynamically allocated shared-memory stashes keyed by PostgreSQL query ID. A session selects a stash with `pg_stash_advice.stash_name`; when a matching query is planned, the saved advice is applied automatically.

### Create and Select a Stash

Preloading is the normal way to make advice application and automatic persistence available in every session.

```ini
shared_preload_libraries = 'pg_plan_advice,pg_stash_advice'
pg_stash_advice.persist = on
pg_stash_advice.persist_interval = 30
```

After restarting, obtain the query ID with `EXPLAIN (VERBOSE)` and the advice string with `EXPLAIN (PLAN_ADVICE)`, then store them:

```sql
CREATE EXTENSION pg_stash_advice;

SELECT pg_create_advice_stash('critical_queries');
SELECT pg_set_stashed_advice(
  'critical_queries',
  :'query_id'::bigint,
  :'plan_advice'
);

SET pg_stash_advice.stash_name = 'critical_queries';
```

Inspection functions are `pg_get_advice_stashes()` and `pg_get_advice_stash_contents(text)`. `pg_drop_advice_stash(text)` removes a stash. The install script revokes public execution of all management and inspection functions.

### Caveats

- This extension is included in PostgreSQL 19 with SQL version `1.0`. It is not supplied by PostgreSQL 18 or earlier.
- Stashes consume dynamic shared memory. Applying advice adds planning overhead and can prevent the planner from adapting as data distribution changes, so constrain both stash size and scope.
- Persistence is enabled by default and writes `pg_stash_advice.tsv` in the data directory through a background worker. Automatic worker startup requires preloading; `pg_start_stash_advice_worker()` can start persistence manually but does not load an existing file.
- The security model is intentionally limited. Although management functions are not public by default, any user may select a known stash name, which may reveal its advice strings. Do not store secrets in plan advice.
- Query IDs require `compute_query_id`; loading the module enables computation when that setting is `auto`. Advice tied to obsolete query IDs must be maintained as queries and schemas change.

The reviewed release is PostgreSQL 19.0. Load `pg_plan_advice` as well as `pg_stash_advice`: the former implements plan advice, while the latter stores and selects it. A nonempty `pg_stash_advice.stash_name` selects the stash to apply.
