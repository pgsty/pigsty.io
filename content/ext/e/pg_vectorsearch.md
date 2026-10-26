---
title: "pg_vectorsearch"
linkTitle: "pg_vectorsearch"
description: "Approximate vector search with PRISM indexes and RaBitQ quantization"
weight: 1990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/timescale/pg_vectorsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">timescale/pg_vectorsearch</div>
    <div class="ext-card__desc">https://github.com/timescale/pg_vectorsearch</div>
  </a>
  <div class="ext-card ext-card--source">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title"><a href="https://repo.pigsty.io/ext/src/pg_vectorsearch-0.1.0.tar.gz">pg_vectorsearch-0.1.0.tar.gz</a></div>
    <div class="ext-card__desc"><a href="https://repo.pigsty.io/ext/src/meson-0.63.3.tar.gz">meson-0.63.3.tar.gz</a>
    </div>
  </div>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_vectorsearch`**](/ext/e/pg_vectorsearch) | `0.1.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1990  | [**`pg_vectorsearch`**](/ext/e/pg_vectorsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`vectorscale`](/ext/e/vectorscale) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Alpha; PG18 packages; OpenBLAS required; no pgvector dependency; no in-place RC upgrade.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18" >}} | `pg_vectorsearch` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18" >}} | `pg_vectorsearch_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18" >}} | `postgresql-$v-vectorsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_vectorsearch_18 pg_vectorsearch_18-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 533.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorsearch_18-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_vectorsearch_18 pg_vectorsearch_18-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 453.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorsearch_18-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_vectorsearch_18 pg_vectorsearch_18-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 528.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorsearch_18-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_vectorsearch_18 pg_vectorsearch_18-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 458.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorsearch_18-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_vectorsearch_18 pg_vectorsearch_18-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 533.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorsearch_18-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_vectorsearch_18 pg_vectorsearch_18-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 465.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorsearch_18-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 498.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 426.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 497.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 428.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 529.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 468.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 522.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 455.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 521.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vectorsearch postgresql-18-vectorsearch_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 456.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorsearch/postgresql-18-vectorsearch_0.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_vectorsearch` using `pig build`:

```bash
pig build pkg pg_vectorsearch         # build RPM / DEB packages
```


## Install

You can install `pg_vectorsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_vectorsearch;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_vectorsearch -v 18  # PG 18
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_vectorsearch_18       # PG 18
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-vectorsearch   # PG 18
```


**Create Extension**:

```sql
CREATE EXTENSION pg_vectorsearch;
```

## Usage

Sources:

- [README.md](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/README.md)
- [sql/pg_vectorsearch.sql](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/sql/pg_vectorsearch.sql)
- [docs/maintenance.md](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/docs/maintenance.md)
- [docs/tuning.md](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/docs/tuning.md)
- [CHANGELOG.md](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/CHANGELOG.md)
- [VERSION](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/VERSION)
- [meson.build](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/meson.build)
- [pg_vectorsearch.control.in](https://github.com/timescale/pg_vectorsearch/blob/36b75d1cb56c12a380d600ef27217d88c9f419ec/pg_vectorsearch.control.in)

`pg_vectorsearch` 0.1.0 is an alpha extension for approximate nearest-neighbor search with the PRISM index. It supports PostgreSQL 18 and 19, native `vec32` / `vec16` types and optional pgvector interoperability. It is intended for testing, with evolving behavior and maintenance requirements.

### Core Workflow

```sql
CREATE EXTENSION pg_vectorsearch;
CREATE TABLE vectorsearch_items (
    id serial PRIMARY KEY,
    embedding vec32(3) STORAGE PLAIN
);
INSERT INTO vectorsearch_items (embedding)
SELECT ARRAY[i::real, (i % 7)::real, (i % 5)::real]::vec32
FROM generate_series(1, 1000) AS i;
CREATE INDEX vectorsearch_items_prism ON vectorsearch_items
USING prism (embedding vec32_l2_ops);
SET prism.nprobe = 40;
SELECT id FROM vectorsearch_items
ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

### Operational Boundaries

Install as a superuser; no preload is required and the extension is not relocatable. The `prism` access method has `vec32_l2_ops`, `vec32_ip_ops`, `vec32_cosine_ops` and corresponding vec16 operator classes; `<->`, `<#>` and `<=>` express L2, negative inner product and cosine distance. `prism.nprobe` trades recall for query work; zero selects automatic tuning, not exact recall.

Load representative data before building the index. Indexed dimensions are limited to 1968; expression and unlogged indexes are unsupported. Keep `prism.leaf_refine_threshold` at zero. Filtering can return fewer rows than LIMIT, and candidate buffers bounded by `work_mem` can truncate large or unbounded results. Measure against an exact baseline.

Inspect `prism_index_settings` and follow the maintenance guide for churn. `prism_rebalance` supports only flat RaBitQ centroid-page indexes with `centroid_fastscan` off, not the default multilevel format. DELETE leaves tombstones, and retired pages are reclaimed only by REINDEX. There is no in-place upgrade from the earlier release candidates.
