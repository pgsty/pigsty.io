---
title: "pg_lion_vector"
linkTitle: "pg_lion_vector"
description: "Filtered nearest-neighbor indexes for pgvector vector and halfvec"
weight: 2717
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cgkanchi/pg_lion">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cgkanchi/pg_lion</div>
    <div class="ext-card__desc">https://github.com/cgkanchi/pg_lion</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_lion-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_lion-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_lion-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_lion`**](/ext/e/pg_lion) | `0.3.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2715  | [**`pg_lion`**](/ext/e/pg_lion) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 2716  | [**`pg_lion_citext`**](/ext/e/pg_lion_citext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 2717  | [**`pg_lion_vector`**](/ext/e/pg_lion_vector) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_lion`](/ext/e/pg_lion) [`vector`](/ext/e/vector) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgvector >= 0.7.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "16,17,18" >}} | `pg_lion` | `pg_lion`, `vector` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "16,17,18" >}} | `pg_lion_$v` | `pgvector_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-lion` | `postgresql-$v-pgvector` |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_lion` using `pig build`:

```bash
pig build pkg pg_lion         # build RPM / DEB packages
```


## Install

You can install `pg_lion` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_lion;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_lion -v 18  # PG 18
pig ext install -y pg_lion -v 17  # PG 17
pig ext install -y pg_lion -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_lion_18       # PG 18
dnf install -y pg_lion_17       # PG 17
dnf install -y pg_lion_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-lion   # PG 18
apt install -y postgresql-17-pg-lion   # PG 17
apt install -y postgresql-16-pg-lion   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_lion_vector CASCADE;  -- requires: pg_lion, vector
```

## Usage

Sources:

- [README](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/README.md)
- [Reference](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/docs/REFERENCE.md)
- [Control file](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/pg_lion_vector.control)
- [Extension SQL](https://github.com/cgkanchi/pg_lion/blob/v0.3.0/pg_lion_vector--0.3.0.sql)

`pg_lion_vector` 0.3.0 adds the `lionvec` nearest-neighbor access method for pgvector `vector` and `halfvec` values. It uses the parent `pg_lion` library and requires pgvector 0.7 or later.

### Core Workflow

Create the parent and `vector` extensions first. A separate `lion` index can filter candidates before distance ranking.

```sql
CREATE EXTENSION vector;
CREATE EXTENSION pg_lion;
CREATE EXTENSION pg_lion_vector;
CREATE TABLE lion_items (id integer, category integer, embedding vector(3));
INSERT INTO lion_items VALUES (1, 3, '[1,0,0]'), (2, 3, '[0,1,0]'), (3, 4, '[0,0,1]');
CREATE INDEX lion_embedding ON lion_items USING lionvec (embedding vector_cosine_ops);
CREATE INDEX lion_category ON lion_items USING lion (category);
ALTER FUNCTION cosine_distance(vector, vector) COST 100;
VACUUM ANALYZE lion_items;
SELECT id FROM lion_items
WHERE category = 3
ORDER BY embedding <=> '[1,0,0]'::vector
LIMIT 10;
```

Upstream recommends `COST 100` for the distance function used by the chosen operator class so the planner can compare scan and sort costs. This setting is not preserved by `pg_dump` and may be reset by an update of `vector`.

### Operator Classes and Tuning

| Type | L2 (`<->`) | Negative inner product (`<#>`) | Cosine (`<=>`) |
| --- | --- | --- | --- |
| `vector` | `vector_l2_ops` (default) | `vector_ip_ops` | `vector_cosine_ops` |
| `halfvec` | `halfvec_l2_ops` (default) | `halfvec_ip_ops` | `halfvec_cosine_ops` |

`partitions` controls the index build's clustering; `maintenance_work_mem` must hold an adequate sample. `pg_lion.vector_margin` and `pg_lion.vector_patience` control approximate search. Small candidate sets under a supported lion filter can use exact scoring. `pg_lion.vector_postfilter` controls predicates the lion indexes cannot answer; review the reference before changing it.

### Operational Boundaries

Requires PostgreSQL 16 or later and superuser installation. Only one `vector` or `halfvec` column, up to 8128 dimensions, is supported; this is generally approximate search. A filter does not turn every query into exact nearest-neighbor search. Heavy churn may require occasional `REINDEX`. Parent custom-WAL indexes retain their preload requirement. Keep parent and companion files at the same version.
