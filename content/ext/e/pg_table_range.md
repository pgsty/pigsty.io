---
title: "pg_table_range"
linkTitle: "pg_table_range"
description: "Planning-time partition pruning by per-partition data ranges, including non-key columns."
weight: 2570
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bitner/pg_table_range">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bitner/pg_table_range</div>
    <div class="ext-card__desc">https://github.com/bitner/pg_table_range</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_table_range-0.1.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_table_range-0.1.2.tar.gz</div>
    <div class="ext-card__desc">pg_table_range-0.1.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_table_range`**](/ext/e/pg_table_range) | `0.1.2` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2570  | [**`pg_table_range`**](/ext/e/pg_table_range) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_kpart`](/ext/e/pg_kpart) [`qdgc`](/ext/e/qdgc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Experimental. 0.1.2 fixes missing rows and backend crashes. From 0.1.1: install new binaries, restart all backends, UPDATE extension, REINDEX each table_range index (parent for partitioned tables); old summaries are ignored until rebuilt.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.2` | {{< pgvers "16,17,18" >}} | `pg_table_range` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.2` | {{< pgvers "16,17,18" >}} | `pg_table_range_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | AVAIL PIGSTY 0.1.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_table_range_18 pg_table_range_18-0.1.2-1PGSTY.el8.x86_64.rpm pigsty 0.1.2 984.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_table_range_18-0.1.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_table_range_18 pg_table_range_18-0.1.2-1PGSTY.el8.aarch64.rpm pigsty 0.1.2 851.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_table_range_18-0.1.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_table_range_18 pg_table_range_18-0.1.2-1PGSTY.el9.x86_64.rpm pigsty 0.1.2 1010.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_table_range_18-0.1.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_table_range_18 pg_table_range_18-0.1.2-1PGSTY.el9.aarch64.rpm pigsty 0.1.2 909.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_table_range_18-0.1.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_table_range_18 pg_table_range_18-0.1.2-1PGSTY.el10.x86_64.rpm pigsty 0.1.2 1009.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_table_range_18-0.1.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_table_range_18 pg_table_range_18-0.1.2-1PGSTY.el10.aarch64.rpm pigsty 0.1.2 889.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_table_range_18-0.1.2-1PGSTY.el10.aarch64.rpm
@ el8.x86_64 17 pg_table_range_17 pg_table_range_17-0.1.2-1PGSTY.el8.x86_64.rpm pigsty 0.1.2 983.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_table_range_17-0.1.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_table_range_17 pg_table_range_17-0.1.2-1PGSTY.el8.aarch64.rpm pigsty 0.1.2 848.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_table_range_17-0.1.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_table_range_17 pg_table_range_17-0.1.2-1PGSTY.el9.x86_64.rpm pigsty 0.1.2 1000.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_table_range_17-0.1.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_table_range_17 pg_table_range_17-0.1.2-1PGSTY.el9.aarch64.rpm pigsty 0.1.2 906.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_table_range_17-0.1.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_table_range_17 pg_table_range_17-0.1.2-1PGSTY.el10.x86_64.rpm pigsty 0.1.2 1000.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_table_range_17-0.1.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_table_range_17 pg_table_range_17-0.1.2-1PGSTY.el10.aarch64.rpm pigsty 0.1.2 887.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_table_range_17-0.1.2-1PGSTY.el10.aarch64.rpm
@ el8.x86_64 16 pg_table_range_16 pg_table_range_16-0.1.2-1PGSTY.el8.x86_64.rpm pigsty 0.1.2 980.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_table_range_16-0.1.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_table_range_16 pg_table_range_16-0.1.2-1PGSTY.el8.aarch64.rpm pigsty 0.1.2 846.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_table_range_16-0.1.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_table_range_16 pg_table_range_16-0.1.2-1PGSTY.el9.x86_64.rpm pigsty 0.1.2 1004.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_table_range_16-0.1.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_table_range_16 pg_table_range_16-0.1.2-1PGSTY.el9.aarch64.rpm pigsty 0.1.2 904.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_table_range_16-0.1.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_table_range_16 pg_table_range_16-0.1.2-1PGSTY.el10.x86_64.rpm pigsty 0.1.2 1004.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_table_range_16-0.1.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_table_range_16 pg_table_range_16-0.1.2-1PGSTY.el10.aarch64.rpm pigsty 0.1.2 887.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_table_range_16-0.1.2-1PGSTY.el10.aarch64.rpm
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_table_range` using `pig build`:

```bash
pig build pkg pg_table_range         # build RPM packages
```


## Install

You can install `pg_table_range` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_table_range;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_table_range -v 18  # PG 18
pig ext install -y pg_table_range -v 17  # PG 17
pig ext install -y pg_table_range -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_table_range_18       # PG 18
dnf install -y pg_table_range_17       # PG 17
dnf install -y pg_table_range_16       # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_table_range;
```

## Usage

Sources:

- [Upstream README](https://github.com/bitner/pg_table_range/blob/v0.1.2/README.md)
- [Version and PostgreSQL feature matrix](https://github.com/bitner/pg_table_range/blob/v0.1.2/Cargo.toml)
- [Planner-hook and GUC registration](https://github.com/bitner/pg_table_range/blob/v0.1.2/src/lib.rs)
- [0.1.2 upgrade and correctness fixes](https://github.com/bitner/pg_table_range/blob/v0.1.2/CHANGELOG.md)

pg_table_range is an experimental PostgreSQL 16–18 extension for planning-time partition pruning on columns that are not partition keys. Its table_range index access method stores each partition's actual scalar minimum and maximum, range extent, or PostGIS geometry extent. A planner hook removes a partition only when its summary proves that the partition cannot match.

### Basic use

Build the summary index on a partitioned table and compare plans with representative predicates:

```sql
CREATE EXTENSION pg_table_range;

CREATE INDEX events_tr
ON events USING table_range (val, created_at);

EXPLAIN (COSTS OFF)
SELECT *
FROM events
WHERE val >= 250;

SET table_range.enable_pruning = off;
EXPLAIN (COSTS OFF)
SELECT *
FROM events
WHERE val >= 250;
RESET table_range.enable_pruning;
```

The index is never selected to scan rows; it owns compact summaries used by the planner. Inserts widen summaries automatically. Deletes remain safe but can leave them wider than live data until REINDEX tightens them; VACUUM does not rebuild summaries.

Supported pruning predicates include scalar comparisons, BETWEEN, null tests, constant IN or ANY lists, and overlap for range and PostGIS geometry types. Unsupported expressions conservatively keep the partition.

### Upgrade from 0.1.1

Version 0.1.2 fixes missing rows and backend crashes in 0.1.1. Install the new binaries and restart PostgreSQL so no backend still runs the old code. Then update the extension and rebuild every table_range index, using the parent index for partitioned tables:

```sql
ALTER EXTENSION pg_table_range UPDATE TO '0.1.2';
REINDEX INDEX events_tr;
```

Old summaries are ignored until rebuilt, keeping all partitions rather than risking incorrect pruning. Partial indexes are rejected. REINDEX is also the way to tighten summaries after deletes.

### Caveats

- Upstream explicitly labels the project experimental and heavily AI-driven. Qualify correctness, crash recovery, upgrades, and planner behavior on production-shaped data before adoption.
- Planning cost is linear in the partition count. Native partition-key pruning is far cheaper; use pg_table_range only for selective non-key predicates where the execution savings justify planning work.
- Index creation and non-key planning lock every partition. With thousands of partitions, the default max_locks_per_transaction can fail with out-of-shared-memory errors; increasing it consumes shared memory and requires a restart.
- Deletes can reduce selectivity until maintenance rebuilds or tightens summaries. An invalid table_range index silently disables its pruning.
- The control file requires superuser installation. Limit table and index DDL privileges and test the Rust/pgrx build for the exact PostgreSQL major version.
