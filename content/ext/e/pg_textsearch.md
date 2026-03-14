---
title: "pg_textsearch"
linkTitle: "pg_textsearch"
description: "Full-text search with BM25 ranking"
weight: 2180
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/timescale/pg_textsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">timescale/pg_textsearch</div>
    <div class="ext-card__desc">https://github.com/timescale/pg_textsearch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_textsearch-0.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_textsearch-0.5.0.tar.gz</div>
    <div class="ext-card__desc">pg_textsearch-0.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_textsearch`**](/ext/e/pg_textsearch) | `0.5.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2180  | [**`pg_textsearch`**](/ext/e/pg_textsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pgroonga`](/ext/e/pgroonga) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_trgm`](/ext/e/pg_trgm) [`rum`](/ext/e/rum) [`biscuit`](/ext/e/biscuit) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17" >}} | `pg_textsearch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17" >}} | `pg_textsearch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17" >}} | `postgresql-$v-textsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_textsearch_18 pg_textsearch_18-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 100.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_textsearch_18-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_textsearch_18 pg_textsearch_18-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 96.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_textsearch_18-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_textsearch_18 pg_textsearch_18-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 92.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_textsearch_18-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_textsearch_18 pg_textsearch_18-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 89.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_textsearch_18-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_textsearch_18 pg_textsearch_18-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 95.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_textsearch_18-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_textsearch_18 pg_textsearch_18-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 92.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_textsearch_18-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 831.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 824.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 832.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 825.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 919.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 918.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 887.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 882.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-18-textsearch_0.5.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_textsearch_17 pg_textsearch_17-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 100.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_textsearch_17-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_textsearch_17 pg_textsearch_17-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 96.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_textsearch_17-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_textsearch_17 pg_textsearch_17-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 92.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_textsearch_17-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_textsearch_17 pg_textsearch_17-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 89.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_textsearch_17-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_textsearch_17 pg_textsearch_17-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 95.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_textsearch_17-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_textsearch_17 pg_textsearch_17-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 91.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_textsearch_17-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 822.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 814.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 822.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 814.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 963.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 960.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 872.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 869.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-17-textsearch_0.5.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_textsearch` using `pig build`:

```bash
pig build pkg pg_textsearch         # build RPM / DEB packages
```


## Install

You can install `pg_textsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_textsearch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_textsearch -v 18  # PG 18
pig ext install -y pg_textsearch -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_textsearch_18       # PG 18
dnf install -y pg_textsearch_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-textsearch   # PG 18
apt install -y postgresql-17-textsearch   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_textsearch;
```



## Usage

> [pg_textsearch: Modern ranked text search for PostgreSQL with BM25](https://github.com/timescale/pg_textsearch)

Modern ranked text search using BM25 scoring with Block-Max WAND optimization. Simple syntax, fast top-k queries, parallel index builds, and partitioned table support.

Add to `shared_preload_libraries`:

```
shared_preload_libraries = 'pg_textsearch'
```

```sql
CREATE EXTENSION pg_textsearch;
```

### Quick Start

```sql
CREATE TABLE documents (id bigserial PRIMARY KEY, content text);
INSERT INTO documents (content) VALUES
    ('PostgreSQL is a powerful database system'),
    ('BM25 is an effective ranking function'),
    ('Full text search with custom scoring');

-- Create a BM25 index
CREATE INDEX docs_idx ON documents USING bm25(content) WITH (text_config='english');

-- Query using the <@> operator (returns negative BM25 score, lower = better match)
SELECT * FROM documents
ORDER BY content <@> 'database system'
LIMIT 5;
```

### Querying

```sql
-- Auto-detect index from column
SELECT * FROM documents
ORDER BY content <@> 'database system'
LIMIT 5;

-- Explicit index specification
SELECT * FROM documents
WHERE content <@> to_bm25query('database system', 'docs_idx') < -1.0;
```

### Filtering

**Pre-filtering** reduces rows before scoring (best with selective filters):

```sql
CREATE INDEX ON documents (category_id);
SELECT * FROM documents
WHERE category_id = 123
ORDER BY content <@> 'search terms'
LIMIT 10;
```

**Post-filtering** applies BM25 scan first, then filters:

```sql
SELECT * FROM documents
WHERE content <@> to_bm25query('search terms', 'docs_idx') < -5.0
ORDER BY content <@> 'search terms'
LIMIT 10;
```

### Index Options

| Option | Default | Description |
|--------|---------|-------------|
| `text_config` | (required) | PostgreSQL text search configuration |
| `k1` | 1.2 | Term frequency saturation parameter |
| `b` | 0.75 | Length normalization parameter |

```sql
CREATE INDEX ON documents USING bm25(content)
  WITH (text_config='english', k1=1.5, b=0.8);

-- Language-specific configurations
CREATE INDEX ON french_docs USING bm25(content) WITH (text_config='french');
CREATE INDEX ON german_docs USING bm25(content) WITH (text_config='german');
```

### Data Types

**bm25query** — represents queries for BM25 scoring:

```sql
SELECT to_bm25query('search query text', 'docs_idx');
-- docs_idx:search query text
```
