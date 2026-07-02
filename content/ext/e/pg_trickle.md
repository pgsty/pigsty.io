---
title: "pg_trickle"
linkTitle: "pg_trickle"
description: "Streaming tables and differential view maintenance for PostgreSQL 18"
weight: 2860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/trickle-labs/pg-trickle">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">trickle-labs/pg-trickle</div>
    <div class="ext-card__desc">https://github.com/trickle-labs/pg-trickle</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_trickle-0.81.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_trickle-0.81.0.tar.gz</div>
    <div class="ext-card__desc">pg_trickle-0.81.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_trickle`**](/ext/e/pg_trickle) | `0.81.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2860  | [**`pg_trickle`**](/ext/e/pg_trickle) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_ivm`](/ext/e/pg_ivm) [`pg_incremental`](/ext/e/pg_incremental) [`pg_partman`](/ext/e/pg_partman) [`timeseries`](/ext/e/timeseries) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 only; pgrx schema metadata must be kept from linker garbage collection; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.81.0` | {{< pgvers "18" >}} | `pg_trickle` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.81.0` | {{< pgvers "18" >}} | `pg_trickle_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.81.0` | {{< pgvers "18" >}} | `postgresql-$v-pg-trickle` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.81.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_trickle_18 pg_trickle_18-0.81.0-1PIGSTY.el8.x86_64.rpm pigsty 0.81.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_trickle_18-0.81.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_trickle_18 pg_trickle_18-0.81.0-1PIGSTY.el8.aarch64.rpm pigsty 0.81.0 4.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_trickle_18-0.81.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_trickle_18 pg_trickle_18-0.81.0-1PIGSTY.el9.x86_64.rpm pigsty 0.81.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_trickle_18-0.81.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_trickle_18 pg_trickle_18-0.81.0-1PIGSTY.el9.aarch64.rpm pigsty 0.81.0 4.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_trickle_18-0.81.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_trickle_18 pg_trickle_18-0.81.0-1PIGSTY.el10.x86_64.rpm pigsty 0.81.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_trickle_18-0.81.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_trickle_18 pg_trickle_18-0.81.0-1PIGSTY.el10.aarch64.rpm pigsty 0.81.0 4.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_trickle_18-0.81.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~bookworm_amd64.deb pigsty 0.81.0 4.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~bookworm_arm64.deb pigsty 0.81.0 3.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~trixie_amd64.deb pigsty 0.81.0 4.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~trixie_arm64.deb pigsty 0.81.0 3.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~jammy_amd64.deb pigsty 0.81.0 4.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~jammy_arm64.deb pigsty 0.81.0 3.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~noble_amd64.deb pigsty 0.81.0 4.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-1PIGSTY~noble_arm64.deb pigsty 0.81.0 3.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-2PIGSTY~resolute_amd64.deb pigsty 0.81.0 4.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.81.0-2PIGSTY~resolute_arm64.deb pigsty 0.81.0 3.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.81.0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_trickle` using `pig build`:

```bash
pig build pkg pg_trickle         # build RPM / DEB packages
```


## Install

You can install `pg_trickle` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_trickle;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_trickle -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_trickle_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-trickle   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_trickle';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_trickle;
```




## Usage

Sources: [README v0.81.0](https://github.com/trickle-labs/pg-trickle/blob/v0.81.0/README.md), [v0.81.0 release notes](https://github.com/trickle-labs/pg-trickle/releases/tag/v0.81.0), [SQL reference](https://github.com/trickle-labs/pg-trickle/blob/v0.81.0/docs/SQL_REFERENCE.md), [configuration guide](https://github.com/trickle-labs/pg-trickle/blob/v0.81.0/docs/CONFIGURATION.md), [GUC catalog](https://github.com/trickle-labs/pg-trickle/blob/v0.81.0/docs/GUC_CATALOG.md), [Cargo.toml](https://github.com/trickle-labs/pg-trickle/blob/v0.81.0/Cargo.toml)

`pg_trickle` provides stream tables for PostgreSQL 18: regular queryable tables whose contents are maintained from a defining SQL query. It uses incremental view maintenance when possible, can fall back to full recompute, and also supports `IMMEDIATE` mode for same-transaction maintenance.

Upstream v0.81.0 is still pre-1.0 and says APIs and configuration options may change before a stable 1.0 release. The Rust package is `pg_trickle` version `0.81.0`, uses Rust edition 2024, defaults to the `pg18` feature, and pins `pgrx = 0.18.0`. Build prerequisites in the README are PostgreSQL 18.x plus Rust 1.85+ with pgrx 0.18.x.

### Enable the Extension

Add the extension to PostgreSQL startup configuration and restart:

```sql
-- postgresql.conf
shared_preload_libraries = 'pg_trickle'
max_worker_processes = 8
```

```sql
CREATE EXTENSION pg_trickle;
```

`shared_preload_libraries` is required because the extension registers GUCs and a background worker at startup. `wal_level = logical` and replication slots are not required by default: `pg_trickle.cdc_mode = 'auto'` starts with trigger-based CDC and transitions to WAL-based capture only when logical WAL is available.

### Create and Refresh Stream Tables

```sql
CREATE TABLE orders (
    id int PRIMARY KEY,
    region text,
    amount numeric
);

SELECT pgtrickle.create_stream_table(
    'regional_totals',
    'SELECT region, SUM(amount) AS total, COUNT(*) AS cnt
     FROM orders GROUP BY region'
);

SELECT * FROM regional_totals;
SELECT pgtrickle.refresh_stream_table('regional_totals');
```

The main refresh modes are `AUTO`, `DIFFERENTIAL`, `FULL`, and `IMMEDIATE`. `AUTO` chooses differential maintenance when the query is differentiable and falls back to full recompute when needed. `DIFFERENTIAL` applies deltas only. `FULL` truncates and reloads from the defining query. `IMMEDIATE` uses statement-level IVM triggers and is maintained inside the same transaction as base-table DML.

```sql
SELECT pgtrickle.create_stream_table(
    'regional_totals_live',
    'SELECT region, SUM(amount) AS total, COUNT(*) AS cnt
     FROM orders GROUP BY region',
    schedule => NULL,
    refresh_mode => 'IMMEDIATE'
);
```

Schedules accept duration strings such as `'30s'`, `'5m'`, `'1h'`, cron expressions such as `'@hourly'`, or the default `'calculated'` schedule inherited from downstream dependents.

```sql
SELECT pgtrickle.create_stream_table(
    name         => 'hourly_totals',
    query        => 'SELECT region, SUM(amount) AS total FROM orders GROUP BY region',
    schedule     => '@hourly',
    refresh_mode => 'FULL'
);
```

### Lifecycle, SQL Coverage, and Operators

```sql
SELECT pgtrickle.alter_stream_table(
    'regional_totals',
    query => 'SELECT region, SUM(amount) AS total FROM orders GROUP BY region'
);

SELECT pgtrickle.drop_stream_table('regional_totals');
```

The SQL reference documents lifecycle calls such as `pgtrickle.create_stream_table()`, `pgtrickle.create_stream_table_if_not_exists()`, `pgtrickle.create_or_replace_stream_table()`, `pgtrickle.bulk_create()`, `pgtrickle.alter_stream_table()`, `pgtrickle.drop_stream_table()`, `pgtrickle.resume_stream_table()`, `pgtrickle.refresh_stream_table()`, and `pgtrickle.repair_stream_table()`.

Release `0.81.0` also documents preset wrappers for common refresh profiles:

```sql
SELECT pgtrickle.create_stream_table_realtime(
    'regional_totals_rt',
    'SELECT region, SUM(amount) AS total FROM orders GROUP BY region'
);

SELECT pgtrickle.create_stream_table_batch(
    'regional_totals_batch',
    'SELECT region, SUM(amount) AS total FROM orders GROUP BY region'
);

SELECT pgtrickle.create_stream_table_cost_optimized(
    'regional_totals_cost',
    'SELECT region, SUM(amount) AS total FROM orders GROUP BY region'
);
```

The documented SQL coverage includes joins, aggregates, window functions, set operations, scalar and table subqueries, CTEs including `WITH RECURSIVE`, LATERAL/SRFs, `JSON_TABLE`, TopK queries with `ORDER BY ... LIMIT`, views as sources, tables without primary keys, and stream-table dependency DAGs. No custom SQL operator is the main user-facing API; users primarily interact through functions, views, catalog tables, GUCs, and normal SQL queries over stream tables.

### Operations and Introspection

```sql
SELECT * FROM pgtrickle.pgt_status();
SELECT * FROM pgtrickle.refresh_timeline(20);
SELECT * FROM pgtrickle.health_check();
SELECT * FROM pgtrickle.health_summary();
SELECT * FROM pgtrickle.pg_stat_stream_tables;
SELECT * FROM pgtrickle.change_buffer_sizes();
SELECT * FROM pgtrickle.dependency_tree();
SELECT * FROM pgtrickle.explain_st('regional_totals');
SELECT * FROM pgtrickle.slot_health();
SELECT * FROM pgtrickle.check_cdc_health();
SELECT * FROM pgtrickle.commit_latency_stats();
SELECT * FROM pgtrickle.tune_recommendations();
SELECT * FROM pgtrickle.preview_stream_table(
    'SELECT region, SUM(amount) FROM orders GROUP BY region'
);
```

Other documented views and catalog tables include `pgtrickle.stream_tables_info`, `pgtrickle.quick_health`, `pgtrickle.pgt_cdc_status`, `pgtrickle.pgt_stream_tables`, `pgtrickle.pgt_dependencies`, `pgtrickle.pgt_refresh_history`, `pgtrickle.pgt_change_tracking`, `pgtrickle.pgt_source_gates`, and `pgtrickle.pgt_refresh_groups`.

### Outbox, Inbox, Relay, and Snapshots

`pg_trickle` can publish stream-table deltas through the transactional outbox pattern and consume idempotent inbox tables.

```sql
SELECT pgtrickle.enable_outbox('public.regional_totals');
SELECT pgtrickle.create_consumer_group('billing_workers', 'public.regional_totals');
SELECT * FROM pgtrickle.poll_outbox('billing_workers', 'worker-1');
SELECT pgtrickle.commit_offset('billing_workers', 'worker-1', 42);

SELECT pgtrickle.create_inbox('orders_inbox');
SELECT pgtrickle.inbox_health('orders_inbox');
```

The SQL reference also documents snapshot operations and relay configuration helpers:

```sql
SELECT pgtrickle.snapshot_stream_table('public.regional_totals');
SELECT pgtrickle.restore_from_snapshot(
    'public.regional_totals',
    'pgtrickle.regional_totals_snapshot'
);

SELECT pgtrickle.set_relay_outbox(
    'orders-to-nats',
    'public.regional_totals',
    'relay_group_1',
    '{"type": "nats", "subject": "orders.deltas", "url": "nats://nats:4222"}'::jsonb
);
```

### Important GUCs

The v0.81.0 release documents 129 configuration parameters. Common operational GUCs include:

- `pg_trickle.enabled`
- `pg_trickle.cdc_mode`
- `pg_trickle.scheduler_interval_ms`
- `pg_trickle.min_schedule_seconds`
- `pg_trickle.default_schedule_seconds`
- `pg_trickle.max_consecutive_errors`
- `pg_trickle.wal_transition_timeout`
- `pg_trickle.slot_lag_warning_threshold_mb`
- `pg_trickle.slot_lag_critical_threshold_mb`
- `pg_trickle.differential_max_change_ratio`
- `pg_trickle.refresh_strategy`
- `pg_trickle.cost_model_safety_margin`
- `pg_trickle.planner_aggressive`
- `pg_trickle.merge_join_strategy`
- `pg_trickle.merge_strategy`
- `pg_trickle.auto_backoff`
- `pg_trickle.tiered_scheduling`
- `pg_trickle.cleanup_use_truncate`
- `pg_trickle.block_source_ddl`
- `pg_trickle.buffer_alert_threshold`
- `pg_trickle.compact_threshold`
- `pg_trickle.max_buffer_rows`
- `pg_trickle.auto_index`
- `pg_trickle.aggregate_fast_path`
- `pg_trickle.template_cache`
- `pg_trickle.buffer_partitioning`
- `pg_trickle.ivm_topk_max_limit`
- `pg_trickle.ivm_recursive_max_depth`
- `pg_trickle.parallel_refresh_mode`
- `pg_trickle.max_dynamic_refresh_workers`
- `pg_trickle.max_concurrent_refreshes`
- `pg_trickle.worker_pool_size`
- `pg_trickle.merge_batch_size`
- `pg_trickle.change_buffer_schema`
- `pg_trickle.foreign_table_polling`
- `pg_trickle.matview_polling`
- `pg_trickle.log_delta_sql`
- `pg_trickle.metrics_port`
- `pg_trickle.outbox_enabled`
- `pg_trickle.inbox_enabled`
- `pg_trickle.citus_st_lock_lease_ms`
- `pg_trickle.citus_worker_retry_ticks`
- `pg_trickle.enable_vector_agg`
- `pg_trickle.enable_trace_propagation`
- `pg_trickle.otel_endpoint`
- `pg_trickle.trace_id`
- `pg_trickle.cdc_capture_mode`
- `pg_trickle.commit_timestamp_tracking`
- `pg_trickle.l1_cache_max_entries`
- `pg_trickle.self_heal_oom`
- `pg_trickle.self_heal_lock_timeout`

`pg_trickle.event_driven_wake` and `pg_trickle.wake_debounce_ms` are preserved for upgrade compatibility but are formally deprecated and have no effect, because PostgreSQL background workers cannot use `LISTEN`; the scheduler uses latch-based polling.

### v0.81.0 Operator Notes

The v0.81.0 release adds operator-facing introspection and tuning helpers including `pgtrickle.commit_latency_stats()`, `pgtrickle.tune_recommendations()`, and `pgtrickle.preview_stream_table(query text)`. It also adds bounded LRU DVM caches through `pg_trickle.l1_cache_max_entries`, a `pg_trickle.merge_batch_size` GUC, and self-healing circuit-breaker settings for out-of-memory and lock-timeout cases.

The release notes say no schema migration is needed for the new code paths; upgrade existing installations with `ALTER EXTENSION pg_trickle UPDATE` after replacing the extension binaries.

### Caveats

- `pg_trickle` v0.81.0 is PostgreSQL 18 only; the release packages are named for `pg18`, and Cargo defaults to the `pg18` pgrx feature.
- Pigsty builds use `pgrx` 0.18.0; keep pgrx schema metadata from linker garbage collection when rebuilding packages.
- The extension control file marks it `superuser = true` and `trusted = false`.
- Direct DML on stream tables is not allowed because their contents are managed by the refresh engine.
- `IMMEDIATE` mode bypasses CDC and uses statement-level IVM triggers; WAL CDC is asynchronous and incompatible with in-transaction maintenance.
- Materialized views in `DIFFERENTIAL` mode require `pg_trickle.matview_polling = on`; `FULL` mode works without that snapshot-comparison path.
- `LIMIT` or `OFFSET` without `ORDER BY` is rejected for stream-table definitions; use `ORDER BY ... LIMIT` for TopK.
- Volatile functions are rejected by default in defining queries according to `pg_trickle.volatile_function_policy`.
