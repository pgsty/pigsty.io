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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_textsearch-1.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_textsearch-1.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_textsearch-1.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_textsearch`**](/ext/e/pg_textsearch) | `1.2.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2180  | [**`pg_textsearch`**](/ext/e/pg_textsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pgroonga`](/ext/e/pgroonga) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_trgm`](/ext/e/pg_trgm) [`rum`](/ext/e/rum) [`biscuit`](/ext/e/biscuit) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> bm25 am conflicts with pg_search and vchord_bm25


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17" >}} | `pg_textsearch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17" >}} | `pg_textsearch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17" >}} | `postgresql-$v-textsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 127.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_textsearch_18-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 121.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_textsearch_18-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 118.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_textsearch_18-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 115.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_textsearch_18-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 121.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_textsearch_18-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 117.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_textsearch_18-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.2.0-1PIGSTY.el8.x86_64.rpm pigsty 1.2.0 127.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_textsearch_17-1.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.2.0-1PIGSTY.el8.aarch64.rpm pigsty 1.2.0 121.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_textsearch_17-1.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.2.0-1PIGSTY.el9.x86_64.rpm pigsty 1.2.0 118.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_textsearch_17-1.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.2.0-1PIGSTY.el9.aarch64.rpm pigsty 1.2.0 115.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_textsearch_17-1.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.2.0-1PIGSTY.el10.x86_64.rpm pigsty 1.2.0 121.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_textsearch_17-1.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.2.0-1PIGSTY.el10.aarch64.rpm pigsty 1.2.0 117.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_textsearch_17-1.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~bookworm_amd64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~bookworm_arm64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~trixie_amd64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~trixie_arm64.deb pigsty 1.2.0 1.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~jammy_amd64.deb pigsty 1.2.0 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~jammy_arm64.deb pigsty 1.2.0 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~noble_amd64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~noble_arm64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~resolute_amd64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.2.0-1PIGSTY~resolute_arm64.deb pigsty 1.2.0 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.2.0-1PIGSTY~resolute_arm64.deb
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


**Preload**:

```bash
shared_preload_libraries = 'pg_textsearch';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_textsearch;
```




## Usage

Sources: [README v1.2.0](https://github.com/timescale/pg_textsearch/blob/v1.2.0/README.md), [v1.2.0 release notes](https://github.com/timescale/pg_textsearch/releases/tag/v1.2.0)

`pg_textsearch` provides BM25-ranked full-text search for PostgreSQL with a `bm25` access method and the `<@>` scoring operator. Upstream marks `v1.2.0` as production ready.

`v1.2.0` supports PostgreSQL 17 and 18. Prebuilt release assets are published for both PostgreSQL versions on Linux and macOS. The extension must be loaded through `shared_preload_libraries` before `CREATE EXTENSION`.

### Enable the Extension

```ini
shared_preload_libraries = 'pg_textsearch'  # add to any existing list
```

```sql
CREATE EXTENSION pg_textsearch;
```

Install the new binary and restart PostgreSQL before running an extension upgrade:

```sql
ALTER EXTENSION pg_textsearch UPDATE;
```

The `v1.2.0` release adds physical replication support and correctness fixes for update-heavy workloads. Install the matching binary and run the SQL extension upgrade before relying on the new version.

### Build and Query BM25 Indexes

```sql
CREATE TABLE documents (id bigserial PRIMARY KEY, content text);

CREATE INDEX docs_idx
ON documents USING bm25(content)
WITH (text_config = 'english');

SELECT *
FROM documents
ORDER BY content <@> 'database system'
LIMIT 5;
```

`<@>` returns the negative BM25 score because PostgreSQL operator index scans are ascending; lower values are better matches. Use `ORDER BY ... LIMIT` for fast top-k searches.

For an explicit index reference, use `to_bm25query()`:

```sql
SELECT *
FROM documents
ORDER BY content <@> to_bm25query('database system', 'docs_idx')
LIMIT 5;
```

The main documented SQL surface is:

- `text <@> 'query'` to score text with planner-detected index context.
- `text <@> bm25query` to score with an explicit `bm25query`.
- `to_bm25query(text)` for ORDER BY use with planner-selected index context.
- `to_bm25query(text, text)` for query text plus index name.
- `bm25query = bm25query` for equality checks.

### Index Options and Data Shapes

```sql
CREATE INDEX ON documents USING bm25(content)
WITH (text_config = 'english', k1 = 1.5, b = 0.8);
```

Index options are `text_config` (required), `k1` (default `1.2`), and `b` (default `0.75`). Text search configurations such as `english`, `simple`, `french`, and `german` use PostgreSQL text search configuration names.

The extension supports native array input for `text[]`, `varchar[]`, and `bpchar[]` columns; array elements are concatenated before tokenization.

```sql
CREATE TABLE posts (id serial PRIMARY KEY, tags text[]);
CREATE INDEX posts_tags_idx ON posts USING bm25(tags)
WITH (text_config = 'english');

SELECT *
FROM posts
ORDER BY tags <@> 'database'
LIMIT 10;
```

Expression indexes support immutable text expressions, including JSONB extraction, text transformations, and multi-column concatenation:

```sql
CREATE INDEX events_msg_idx ON events USING bm25 ((data->>'message'))
WITH (text_config = 'english');

SELECT *
FROM events
ORDER BY (data->>'message') <@> to_bm25query('network error', 'events_msg_idx')
LIMIT 10;
```

Partial indexes scope search to a subset of rows. Query them with an explicit index name:

```sql
CREATE INDEX docs_en_idx ON docs USING bm25(content)
WITH (text_config = 'english')
WHERE lang = 'en';

SELECT *
FROM docs
WHERE lang = 'en'
ORDER BY content <@> to_bm25query('databases', 'docs_en_idx')
LIMIT 10;
```

### Operations and GUCs

```sql
SELECT bm25_force_merge('docs_idx');
SELECT * FROM bm25_memory_usage();
```

`bm25_force_merge(index_name)` consolidates all segments into one and is best used after bulk loads, not during steady write traffic. `bm25_memory_usage()` reports shared memory usage for memtables.

Documented `pg_textsearch` GUCs in v1.2.0 include:

- `pg_textsearch.default_limit`
- `pg_textsearch.compress_segments`
- `pg_textsearch.segments_per_level`
- `pg_textsearch.memory_limit`
- `pg_textsearch.bulk_load_threshold`
- `pg_textsearch.memtable_spill_threshold` (deprecated; use `memory_limit` for new deployments)

`pg_textsearch.memory_limit` defaults to `2GB` and caps dynamic shared memory used by memtables. The README also documents `bm25_spill_index(index_name)`, `bm25_dump_index(index_name)`, and `bm25_summarize_index(index_name)` as development or diagnostic helpers.

### Caveats

- `pg_textsearch` requires `shared_preload_libraries = 'pg_textsearch'` and a PostgreSQL restart before `CREATE EXTENSION`.
- The `bm25` access method name conflicts with `pg_search` and `vchord_bm25`; avoid installing those BM25 access-method extensions into the same database.
- Inside PL/pgSQL and stored procedures, the implicit `text <@> 'query'` form does not use planner hooks; upstream says to use `to_bm25query()` with an explicit index name there.
- Phrase queries are not native because the index stores term frequencies, not term positions; use BM25 ranking plus a post-filter for phrase-like matching.
- Partial indexes require `to_bm25query()` with the index name because the implicit query form skips them.
- BM25 indexes on partitioned tables use partition-local statistics, so cross-partition scores may not be directly comparable.
- Words longer than PostgreSQL's `tsvector` word length limit are ignored during tokenization.
- `pg_textsearch` uses fixed LWLock tranche IDs 1001-1008; another extension using the same fixed IDs can make wait-event names inaccurate.
