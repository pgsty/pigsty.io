---
title: "citus_columnar"
linkTitle: "citus_columnar"
description: "Citus columnar storage engine"
weight: 2401
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/citusdata/citus">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">citusdata/citus</div>
    <div class="ext-card__desc">https://github.com/citusdata/citus</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/citus-14.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">citus-14.0.0.tar.gz</div>
    <div class="ext-card__desc">citus-14.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`citus`**](/ext/e/citus) | `14.0.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2400  | [**`citus`**](/ext/e/citus) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 2401  | [**`citus_columnar`**](/ext/e/citus_columnar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`columnar`](/ext/e/columnar) [`pg_parquet`](/ext/e/pg_parquet) [`timescaledb`](/ext/e/timescaledb) [`pg_analytics`](/ext/e/pg_analytics) [`pg_mooncake`](/ext/e/pg_mooncake) [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`orioledb`](/ext/e/orioledb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> conflict with hydra columnar, no pg18


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.0.0` | {{< pgvers "18,17,16" >}} | `citus` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.0.0` | {{< pgvers "18,17,16" >}} | `citus_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.0.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-citus` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 8 | AVAIL PIGSTY 14.0.0 15 | AVAIL PGDG 13.2.0 21 | AVAIL PGDG 13.0.0 28 |
| el8.aarch64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 8 | AVAIL PIGSTY 14.0.0 15 | AVAIL PGDG 13.2.0 20 | AVAIL PGDG 13.0.0 15 |
| el9.x86_64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | AVAIL PIGSTY 14.0.0 2 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | AVAIL PIGSTY 14.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `citus` using `pig build`:

```bash
pig build pkg citus         # build RPM / DEB packages
```


## Install

You can install `citus` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install citus;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y citus -v 18  # PG 18
pig ext install -y citus -v 17  # PG 17
pig ext install -y citus -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y citus_18       # PG 18
dnf install -y citus_17       # PG 17
dnf install -y citus_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-citus   # PG 18
apt install -y postgresql-17-citus   # PG 17
apt install -y postgresql-16-citus   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION citus_columnar;
```



## Usage

> [citus_columnar: Columnar storage access method for PostgreSQL](https://github.com/citusdata/citus)

Citus Columnar provides a columnar storage engine for PostgreSQL. It stores data in a column-oriented format with automatic compression, making it ideal for analytical workloads on append-only data where queries typically read a subset of columns.

**Key Documentation:**

- [Columnar Storage](https://docs.citusdata.com/en/stable/admin_guide/table_management.html#columnar-storage)
- [Columnar Compression](https://docs.citusdata.com/en/stable/admin_guide/table_management.html#compression)

### Creating Columnar Tables

Use the `USING columnar` clause when creating a table:

```sql
CREATE TABLE events (
    event_id    BIGINT,
    event_time  TIMESTAMPTZ,
    event_type  TEXT,
    user_id     INT,
    payload     JSONB
) USING columnar;
```

### Compression Options

Configure compression per table. Supported methods: `zstd` (default), `lz4`, `pglz`, `none`.

```sql
ALTER TABLE events SET (
    columnar.compression = zstd,
    columnar.compression_level = 3
);
```

### Chunk Group and Stripe Settings

Columnar stores data in stripes, each containing chunk groups. Tuning these affects both compression ratio and query performance.

```sql
ALTER TABLE events SET (
    columnar.stripe_row_limit = 150000,    -- max rows per stripe (default 150000)
    columnar.chunk_group_row_limit = 10000 -- rows per chunk group (default 10000)
);
```

### When to Use Columnar

Columnar storage works best for:

- **Analytics and reporting** on wide tables where queries read few columns
- **Append-only workloads** (e.g., logs, events, time-series archives)
- **Large fact tables** scanned in bulk with aggregations
- **Cold data archival** where high compression is valuable

### Limitations

- **No UPDATE or DELETE**: columnar tables are append-only
- **No indexes**: sequential/columnar scans only
- **No TOAST**: large values stored inline
- **No logical replication** as a publisher
- **No tid scans**

### Column Projection and Chunk Group Skipping

Columnar automatically reads only the columns referenced in a query (column projection) and skips chunk groups whose min/max metadata does not match the query predicates:

```sql
-- Only reads event_type and event_time columns; skips irrelevant chunks
SELECT event_type, count(*)
FROM events
WHERE event_time > '2025-01-01'
GROUP BY event_type;
```

### Monitoring Columnar Storage

Inspect stripe and chunk metadata:

```sql
-- View stripes for a columnar table
SELECT * FROM columnar.stripe WHERE relation = 'events'::regclass;

-- View chunk group details
SELECT * FROM columnar.chunk_group WHERE relation = 'events'::regclass;

-- Check storage size and compression ratio
SELECT pg_size_pretty(pg_total_relation_size('events')) AS total_size;
```

### Converting Between Heap and Columnar

Convert an existing heap table to columnar:

```sql
-- Create a columnar copy
CREATE TABLE events_columnar (LIKE events) USING columnar;
INSERT INTO events_columnar SELECT * FROM events;

-- Or use ALTER TABLE (Citus 11+)
SELECT alter_table_set_access_method('events', 'columnar');
```

Convert columnar back to heap:

```sql
SELECT alter_table_set_access_method('events', 'heap');
```

### Using with Partitioning

Combine columnar with partitioning to keep recent data in heap (for updates/indexes) and archive older partitions as columnar:

```sql
CREATE TABLE events (
    event_time TIMESTAMPTZ,
    data       JSONB
) PARTITION BY RANGE (event_time);

-- Recent data: heap (supports indexes and updates)
CREATE TABLE events_current PARTITION OF events
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Archived data: columnar (compressed, read-optimized)
CREATE TABLE events_archive PARTITION OF events
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01')
    USING columnar;
```
