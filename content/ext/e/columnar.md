---
title: "columnar"
linkTitle: "columnar"
description: "Hydra Columnar extension"
weight: 2410
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hydradatabase/columnar">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hydradatabase/columnar</div>
    <div class="ext-card__desc">https://github.com/hydradatabase/columnar</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/hydra-1.1.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">hydra-1.1.2.tar.gz</div>
    <div class="ext-card__desc">hydra-1.1.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hydra`**](/ext/e/columnar) | `1.1.2` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2410  | [**`columnar`**](/ext/e/columnar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`storage_engine`](/ext/e/storage_engine) [`orioledb`](/ext/e/orioledb) [`pg_sorted_heap`](/ext/e/pg_sorted_heap) [`citus_columnar`](/ext/e/citus_columnar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Unmaintained; SQL 11.1-11; conflicts with citus_columnar.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "16,15" >}} | `hydra` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "16,15" >}} | `hydra_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "16,15" >}} | `postgresql-$v-hydra` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el9.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el9.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el10.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el10.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d12.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d12.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d13.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d13.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u22.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u22.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u24.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u24.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u26.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u26.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
@ el8.x86_64 16 hydra_16 hydra_16-1.1.2-2PGSTY.el8.x86_64.rpm pigsty 1.1.2 385.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hydra_16-1.1.2-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 hydra_16 hydra_16-1.1.2-2PGSTY.el8.aarch64.rpm pigsty 1.1.2 375.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hydra_16-1.1.2-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 hydra_16 hydra_16-1.1.2-2PGSTY.el9.x86_64.rpm pigsty 1.1.2 372.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hydra_16-1.1.2-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 hydra_16 hydra_16-1.1.2-2PGSTY.el9.aarch64.rpm pigsty 1.1.2 367.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hydra_16-1.1.2-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 hydra_16 hydra_16-1.1.2-2PGSTY.el10.x86_64.rpm pigsty 1.1.2 375.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hydra_16-1.1.2-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 hydra_16 hydra_16-1.1.2-2PGSTY.el10.aarch64.rpm pigsty 1.1.2 370.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hydra_16-1.1.2-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~bookworm_amd64.deb pigsty 1.1.2 345.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~bookworm_arm64.deb pigsty 1.1.2 336.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~trixie_amd64.deb pigsty 1.1.2 346.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~trixie_arm64.deb pigsty 1.1.2 338.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~jammy_amd64.deb pigsty 1.1.2 421.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~jammy_arm64.deb pigsty 1.1.2 415.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~noble_amd64.deb pigsty 1.1.2 350.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~noble_arm64.deb pigsty 1.1.2 347.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~resolute_amd64.deb pigsty 1.1.2 348.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-2PGSTY~resolute_arm64.deb pigsty 1.1.2 346.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hydra/postgresql-16-hydra_1.1.2-2PGSTY~resolute_arm64.deb
@ el8.x86_64 15 hydra_15 hydra_15-1.1.2-2PGSTY.el8.x86_64.rpm pigsty 1.1.2 388.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hydra_15-1.1.2-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 hydra_15 hydra_15-1.1.2-2PGSTY.el8.aarch64.rpm pigsty 1.1.2 377.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hydra_15-1.1.2-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 hydra_15 hydra_15-1.1.2-2PGSTY.el9.x86_64.rpm pigsty 1.1.2 392.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hydra_15-1.1.2-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 hydra_15 hydra_15-1.1.2-2PGSTY.el9.aarch64.rpm pigsty 1.1.2 385.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hydra_15-1.1.2-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 hydra_15 hydra_15-1.1.2-2PGSTY.el10.x86_64.rpm pigsty 1.1.2 394.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hydra_15-1.1.2-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 hydra_15 hydra_15-1.1.2-2PGSTY.el10.aarch64.rpm pigsty 1.1.2 387.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hydra_15-1.1.2-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~bookworm_amd64.deb pigsty 1.1.2 349.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~bookworm_arm64.deb pigsty 1.1.2 338.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~trixie_amd64.deb pigsty 1.1.2 350.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~trixie_arm64.deb pigsty 1.1.2 340.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~jammy_amd64.deb pigsty 1.1.2 439.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~jammy_arm64.deb pigsty 1.1.2 433.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~noble_amd64.deb pigsty 1.1.2 368.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~noble_arm64.deb pigsty 1.1.2 363.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~resolute_amd64.deb pigsty 1.1.2 366.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-2PGSTY~resolute_arm64.deb pigsty 1.1.2 362.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hydra/postgresql-15-hydra_1.1.2-2PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `hydra` using `pig build`:

```bash
pig build pkg hydra         # build RPM / DEB packages
```


## Install

You can install `hydra` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install hydra;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y hydra -v 16  # PG 16
pig ext install -y hydra -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y hydra_16       # PG 16
dnf install -y hydra_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-16-hydra   # PG 16
apt install -y postgresql-15-hydra   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION columnar;
```

## Usage

Sources:

- [Hydra v1.1.2 README](https://github.com/hydradatabase/columnar/blob/v1.1.2/README.md)
- [Hydra Columnar README](https://github.com/hydradatabase/columnar/blob/v1.1.2/columnar/README.md)
- [Columnar storage README](https://github.com/hydradatabase/columnar/blob/v1.1.2/columnar/src/backend/columnar/README.md)
- [columnar.control](https://github.com/hydradatabase/columnar/blob/v1.1.2/columnar/src/backend/columnar/columnar.control)
- [CHANGELOG 1.1.2](https://github.com/hydradatabase/columnar/blob/v1.1.2/CHANGELOG.md)

> [!WARNING]
> `columnar` is the PostgreSQL extension name, while Pigsty packages it as `hydra`. Pigsty metadata marks this extension as obsolete and no longer maintained; local packages are retained for PostgreSQL 14-16 only. Prefer newer actively maintained analytics extensions for new deployments.

Hydra Columnar is a PostgreSQL table access method for column-oriented storage. It stores selected tables in a columnar format to reduce I/O for analytical scans, compression-heavy datasets, projections over a subset of columns, and aggregate queries. It originated from Citus Columnar and is exposed through `CREATE EXTENSION columnar`.

### Create Columnar Tables

```sql
CREATE EXTENSION IF NOT EXISTS columnar;

CREATE TABLE events_columnar (
  event_id     bigint,
  account_id   bigint,
  event_time   timestamptz,
  event_type   text,
  amount       numeric
) USING columnar;

INSERT INTO events_columnar
SELECT
  g,
  g % 10000,
  now() - (g || ' seconds')::interval,
  CASE WHEN g % 10 = 0 THEN 'purchase' ELSE 'view' END,
  (g % 1000)::numeric / 10
FROM generate_series(1, 1000000) AS g;

SELECT event_type, count(*), sum(amount)
FROM events_columnar
WHERE event_time >= now() - interval '1 day'
GROUP BY event_type;
```

Use `USING columnar` when creating a table or materialized view. Reads and bulk inserts use normal PostgreSQL SQL, but the storage format is optimized for large analytical scans rather than high-churn OLTP tables.

### Table Options

```sql
SELECT columnar.alter_columnar_table_set(
  'events_columnar'::regclass,
  compression           => 'zstd',
  compression_level     => 3,
  stripe_row_limit      => 150000,
  chunk_group_row_limit => 10000
);

SELECT * FROM columnar.options;

SELECT columnar.alter_columnar_table_reset(
  'events_columnar'::regclass,
  compression => true,
  stripe_row_limit => true
);
```

Available table options include `compression`, `compression_level`, `stripe_row_limit`, and `chunk_group_row_limit`. Compression choices depend on build support, but documented values include `none`, `pglz`, `zstd`, `lz4`, and `lz4hc`. Option changes apply to newly inserted data; existing stripes are not automatically rewritten.

You can also set defaults for newly created columnar tables with GUCs:

```sql
SET columnar.compression = 'zstd';
SET columnar.compression_level = 3;
SET columnar.stripe_row_limit = 150000;
SET columnar.chunk_group_row_limit = 10000;
```

These GUCs affect newly created tables, not new stripes on an already existing table.

### Convert Existing Tables

```sql
CREATE TABLE events_heap (
  event_id bigint,
  payload  jsonb
);

INSERT INTO events_heap
SELECT g, jsonb_build_object('kind', 'view', 'seq', g)
FROM generate_series(1, 10000) AS g;

SELECT columnar.alter_table_set_access_method('events_heap', 'columnar');
SELECT columnar.alter_table_set_access_method('events_heap', 'heap');
```

`columnar.alter_table_set_access_method(table, method)` rewrites a heap table as columnar storage or a columnar table back to heap storage. Review foreign keys, identity columns, row-level security, triggers, indexes, constraints, inheritance, and storage options before conversion; the helper rejects or skips features it cannot safely recreate.

### Partitioning

```sql
CREATE TABLE measurements (
  ts timestamptz,
  device_id bigint,
  value double precision
) PARTITION BY RANGE (ts);

CREATE TABLE measurements_2024 PARTITION OF measurements
  FOR VALUES FROM ('2024-01-01') TO ('2025-01-01')
  USING columnar;

CREATE TABLE measurements_hot PARTITION OF measurements
  FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
```

Partitioned tables can mix row and columnar partitions. Operations that target only row partitions can use row-table behavior, while operations that touch columnar partitions must respect columnar limitations. This is useful for keeping recent mutable data in heap partitions and older analytical history in columnar partitions.

### Maintenance and Introspection

```sql
VACUUM VERBOSE events_columnar;
VACUUM FULL events_columnar;

SELECT * FROM columnar.stats('events_columnar'::regclass);
SELECT columnar.vacuum('events_columnar'::regclass);
SELECT columnar.vacuum_full('public', 0.1, 25);
```

`VACUUM VERBOSE` reports columnar storage statistics such as file size, compression rate, row count, stripe count, and chunk count. `columnar.stats()` exposes stripe-level metadata. `columnar.vacuum()` and `columnar.vacuum_full()` compact columnar storage incrementally; ordinary `VACUUM` is metadata-oriented and cheaper than a full rewrite.

### Caveats

- This extension is obsolete in Pigsty metadata and conflicts with `citus`/`citus_columnar` style columnar storage. Avoid installing conflicting columnar table access methods in the same PostgreSQL major unless you have tested the exact combination.
- Pigsty packages `hydra`/`columnar` for PostgreSQL 14-16; PostgreSQL 17 and 18 are marked unsupported locally.
- Hydra 1.1.x added update/delete and upsert improvements, but the project itself still describes columnar storage as unsuitable for frequent large updates, small transactions, and OLTP-style single-row workloads.
- Inherited Citus storage documentation does not fully describe Hydra index support: the Hydra changelog explicitly adds GIN, GiST, SP-GiST, and RUM indexes. Logical decoding, unlogged tables, serializable isolation, and some scan paths remain limited; verify the exact feature and constraint combination.
- The `columnar` schema contains internal metadata tables such as `columnar.options`, `columnar.stripe`, `columnar.chunk_group`, and `columnar.chunk`. Query public views/functions for inspection, but do not mutate metadata tables directly.
