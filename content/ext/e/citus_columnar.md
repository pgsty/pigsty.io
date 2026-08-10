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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/citus-14.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">citus-14.2.0.tar.gz</div>
    <div class="ext-card__desc">citus-14.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`citus`**](/ext/e/citus) | `14.2.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2400  | [**`citus`**](/ext/e/citus) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 2401  | [**`citus_columnar`**](/ext/e/citus_columnar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`columnar`](/ext/e/columnar) [`storage_engine`](/ext/e/storage_engine) [`orioledb`](/ext/e/orioledb) [`pg_sorted_heap`](/ext/e/pg_sorted_heap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Packaged with Citus 14.2.0; the control default_version is 14.2-1; citus_columnar itself does not require preload and conflicts with Hydra Columnar.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.2.0` | {{< pgvers "16,17,18" >}} | `citus` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.2.0` | {{< pgvers "18,17,16" >}} | `citus_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `14.2.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-citus` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 14.2.0 4 | AVAIL PGDG 14.2.0 10 | AVAIL PGDG 14.2.0 17 | AVAIL PGDG 13.2.0 21 | AVAIL PGDG 13.0.0 28 |
| el8.aarch64 | AVAIL PGDG 14.2.0 4 | AVAIL PGDG 14.2.0 10 | AVAIL PGDG 14.2.0 17 | AVAIL PGDG 13.2.0 20 | AVAIL PGDG 13.0.0 15 |
| el9.x86_64 | AVAIL PGDG 14.2.0 6 | AVAIL PGDG 14.2.0 12 | AVAIL PGDG 14.2.0 19 | AVAIL PGDG 13.2.0 21 | AVAIL PGDG 13.0.0 25 |
| el9.aarch64 | AVAIL PGDG 14.2.0 6 | AVAIL PGDG 14.2.0 12 | AVAIL PGDG 14.2.0 19 | AVAIL PGDG 13.2.0 21 | AVAIL PGDG 13.0.0 15 |
| el10.x86_64 | AVAIL PGDG 14.2.0 6 | AVAIL PGDG 14.2.0 10 | AVAIL PGDG 14.2.0 10 | AVAIL PGDG 13.2.0 4 | AVAIL PIGSTY 13.0.0 1 |
| el10.aarch64 | AVAIL PGDG 14.2.0 6 | AVAIL PGDG 14.2.0 10 | AVAIL PGDG 14.2.0 10 | AVAIL PGDG 13.2.0 4 | AVAIL PIGSTY 13.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 14.2.0 1 | AVAIL PIGSTY 13.2.0 1 | AVAIL PIGSTY 13.0.0 1 |
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

Sources:

- [Citus v14.2.0 columnar control file](https://github.com/citusdata/citus/blob/v14.2.0/src/backend/columnar/citus_columnar.control)
- [Citus v14.2.0 columnar option helper](https://github.com/citusdata/citus/blob/v14.2.0/src/backend/columnar/sql/udfs/alter_columnar_table_set/latest.sql)
- [Citus columnar-storage documentation](https://docs.citusdata.com/en/stable/admin_guide/table_management.html#columnar-storage)
- [Citus v14.2.0 release](https://github.com/citusdata/citus/releases/tag/v14.2.0)

`citus_columnar` provides an append-oriented columnar table access method for PostgreSQL. It is shipped by the Citus 14.2 package but is a separate extension: the package release is `14.2.0`, while the extension control version is `14.2-1`. Use it for scan-heavy archival or analytical tables whose workload fits its write and feature restrictions.

### Create a Columnar Table

```sql
CREATE EXTENSION citus_columnar;

CREATE TABLE events_archive (
  event_at timestamptz NOT NULL,
  tenant_id bigint NOT NULL,
  kind text,
  payload jsonb
) USING columnar;
```

`citus_columnar` itself does not require `shared_preload_libraries`. Preloading `citus` is still required when the database also uses the distributed `citus` extension.

### Load and Query Data

Columnar storage groups rows into stripes and compresses columns in chunks. Bulk inserts in reasonably sized transactions produce better stripes than a stream of tiny transactions.

```sql
INSERT INTO events_archive
SELECT event_at, tenant_id, kind, payload
FROM events
WHERE event_at < now() - interval '90 days';

SELECT tenant_id, count(*), min(event_at), max(event_at)
FROM events_archive
GROUP BY tenant_id;
```

### Convert with the Citus Extension

When the main `citus` extension is also preloaded and installed, use its helper to convert a local or distributed table:

```sql
SELECT alter_table_set_access_method('events_archive', 'columnar');
SELECT alter_table_set_access_method('events_archive', 'heap');
```

Conversion rewrites the table. Converting to columnar drops existing indexes, so inventory dependent indexes and constraints before running it and schedule enough disk and lock time for the rewrite.

`alter_table_set_access_method()` belongs to `citus`, not to standalone `citus_columnar`. Without the main extension, create a new `USING columnar` table and copy data into it instead of assuming this helper exists.

### Tune Compression

Inspect and change table-level columnar options with the documented helpers:

```sql
SELECT alter_columnar_table_set(
  'events_archive',
  compression => 'zstd',
  compression_level => 3,
  stripe_row_limit => 150000,
  chunk_group_row_limit => 10000
);
```

New settings affect newly written stripes. Rewrite existing data when old stripes also need the new layout.

### Operational Boundaries

- Columnar tables are intended for append-heavy use. `UPDATE` and `DELETE` are not supported, and space left by rolled-back writes is not reclaimed through ordinary heap-style maintenance.
- TOAST is not available; large values remain inline and can hit PostgreSQL's row-size limits.
- Row locks, `AFTER ... FOR EACH ROW` triggers, serializable isolation, logical decoding, foreign keys, unlogged tables, and several scan types are unsupported. Check the current upstream limitation list before adopting the access method.
- Ordinary heap assumptions about indexes, vacuum, replication, triggers, and constraints do not automatically apply. Validate every required database feature against a representative columnar table.
- The extension installs in `pg_catalog`, is not relocatable, and has SQL version `14.2-1`; use that version when checking or updating `pg_extension`, not the package version `14.2.0`.
