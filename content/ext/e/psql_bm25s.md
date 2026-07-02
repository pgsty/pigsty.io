---
title: "psql_bm25s"
linkTitle: "psql_bm25s"
description: "PostgreSQL extension for BM25-family lexical retrieval"
weight: 2210
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Intelligent-Internet/psql_bm25s">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Intelligent-Internet/psql_bm25s</div>
    <div class="ext-card__desc">https://github.com/Intelligent-Internet/psql_bm25s</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/psql_bm25s-0.4.13.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">psql_bm25s-0.4.13.tar.gz</div>
    <div class="ext-card__desc">psql_bm25s-0.4.13.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`psql_bm25s`**](/ext/e/psql_bm25s) | `0.4.13` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2210  | [**`psql_bm25s`**](/ext/e/psql_bm25s) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pgroonga`](/ext/e/pgroonga) [`pg_bigm`](/ext/e/pg_bigm) [`zhparser`](/ext/e/zhparser) [`pg_trgm`](/ext/e/pg_trgm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Supports PostgreSQL 17-18; optional shared_preload_libraries arena is not required for normal use.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.13` | {{< pgvers "18,17" >}} | `psql_bm25s` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.13` | {{< pgvers "18,17" >}} | `psql_bm25s_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.13` | {{< pgvers "18,17" >}} | `postgresql-$v-psql-bm25s` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.4.13 1 | AVAIL PIGSTY 0.4.13 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 psql_bm25s_18 psql_bm25s_18-0.4.13-1PIGSTY.el8.x86_64.rpm pigsty 0.4.13 244.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/psql_bm25s_18-0.4.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 psql_bm25s_18 psql_bm25s_18-0.4.13-1PIGSTY.el8.aarch64.rpm pigsty 0.4.13 229.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/psql_bm25s_18-0.4.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 psql_bm25s_18 psql_bm25s_18-0.4.13-1PIGSTY.el9.x86_64.rpm pigsty 0.4.13 231.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/psql_bm25s_18-0.4.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 psql_bm25s_18 psql_bm25s_18-0.4.13-1PIGSTY.el9.aarch64.rpm pigsty 0.4.13 221.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/psql_bm25s_18-0.4.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 psql_bm25s_18 psql_bm25s_18-0.4.13-1PIGSTY.el10.x86_64.rpm pigsty 0.4.13 239.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/psql_bm25s_18-0.4.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 psql_bm25s_18 psql_bm25s_18-0.4.13-1PIGSTY.el10.aarch64.rpm pigsty 0.4.13 227.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/psql_bm25s_18-0.4.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~bookworm_amd64.deb pigsty 0.4.13 497.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~bookworm_arm64.deb pigsty 0.4.13 475.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~trixie_amd64.deb pigsty 0.4.13 499.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~trixie_arm64.deb pigsty 0.4.13 479.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~jammy_amd64.deb pigsty 0.4.13 527.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~jammy_arm64.deb pigsty 0.4.13 511.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~noble_amd64.deb pigsty 0.4.13 510.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~noble_arm64.deb pigsty 0.4.13 497.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~resolute_amd64.deb pigsty 0.4.13 506.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-psql-bm25s postgresql-18-psql-bm25s_0.4.13-1PIGSTY~resolute_arm64.deb pigsty 0.4.13 492.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/psql-bm25s/postgresql-18-psql-bm25s_0.4.13-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 psql_bm25s_17 psql_bm25s_17-0.4.13-1PIGSTY.el8.x86_64.rpm pigsty 0.4.13 244.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/psql_bm25s_17-0.4.13-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 psql_bm25s_17 psql_bm25s_17-0.4.13-1PIGSTY.el8.aarch64.rpm pigsty 0.4.13 229.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/psql_bm25s_17-0.4.13-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 psql_bm25s_17 psql_bm25s_17-0.4.13-1PIGSTY.el9.x86_64.rpm pigsty 0.4.13 231.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/psql_bm25s_17-0.4.13-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 psql_bm25s_17 psql_bm25s_17-0.4.13-1PIGSTY.el9.aarch64.rpm pigsty 0.4.13 221.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/psql_bm25s_17-0.4.13-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 psql_bm25s_17 psql_bm25s_17-0.4.13-1PIGSTY.el10.x86_64.rpm pigsty 0.4.13 239.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/psql_bm25s_17-0.4.13-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 psql_bm25s_17 psql_bm25s_17-0.4.13-1PIGSTY.el10.aarch64.rpm pigsty 0.4.13 227.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/psql_bm25s_17-0.4.13-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~bookworm_amd64.deb pigsty 0.4.13 497.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~bookworm_arm64.deb pigsty 0.4.13 475.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~trixie_amd64.deb pigsty 0.4.13 499.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~trixie_arm64.deb pigsty 0.4.13 479.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~jammy_amd64.deb pigsty 0.4.13 553.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~jammy_arm64.deb pigsty 0.4.13 538.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~noble_amd64.deb pigsty 0.4.13 510.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~noble_arm64.deb pigsty 0.4.13 497.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~resolute_amd64.deb pigsty 0.4.13 506.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-psql-bm25s postgresql-17-psql-bm25s_0.4.13-1PIGSTY~resolute_arm64.deb pigsty 0.4.13 492.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/psql-bm25s/postgresql-17-psql-bm25s_0.4.13-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `psql_bm25s` using `pig build`:

```bash
pig build pkg psql_bm25s         # build RPM / DEB packages
```


## Install

You can install `psql_bm25s` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install psql_bm25s;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y psql_bm25s -v 18  # PG 18
pig ext install -y psql_bm25s -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y psql_bm25s_18       # PG 18
dnf install -y psql_bm25s_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-psql-bm25s   # PG 18
apt install -y postgresql-17-psql-bm25s   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION psql_bm25s;
```




## Usage

Sources: [README v0.4.13](https://github.com/Intelligent-Internet/psql_bm25s/blob/v0.4.13/README.md), [API reference](https://github.com/Intelligent-Internet/psql_bm25s/blob/v0.4.13/docs/api-reference.md), [query semantics](https://github.com/Intelligent-Internet/psql_bm25s/blob/v0.4.13/docs/query-semantics.md), [input types](https://github.com/Intelligent-Internet/psql_bm25s/blob/v0.4.13/docs/input-types.md), [index parameters](https://github.com/Intelligent-Internet/psql_bm25s/blob/v0.4.13/docs/index-parameters.md), [index policy](https://github.com/Intelligent-Internet/psql_bm25s/blob/v0.4.13/docs/index-policy.md)

`psql_bm25s` is a PostgreSQL-native index access method for BM25-family lexical retrieval. It keeps the BM25 contract explicit through corpus-statistics-driven ranking, exact top-k retrieval APIs, and PostgreSQL storage/maintenance behavior for mutable tables.

Version `0.4.13` is packaged for PostgreSQL 17 and 18 in this catalog.

### Basic Search

```sql
CREATE EXTENSION psql_bm25s;

CREATE TABLE docs (
    id integer PRIMARY KEY,
    title text NOT NULL,
    body text NOT NULL
);

INSERT INTO docs (id, title, body) VALUES
    (1, 'red apple', 'fresh red apple fruit'),
    (2, 'green apple', 'green apple slices'),
    (3, 'orange citrus', 'orange citrus fruit'),
    (4, 'cat guide', 'small cat animal care');

CREATE INDEX docs_bm25_idx
    ON docs USING psql_bm25s (body);

SELECT d.id, d.title, h.score
FROM psql_bm25s_query(
    'docs_bm25_idx'::regclass,
    'apple fruit',
    5
) AS h
JOIN docs AS d ON d.ctid = h.ctid
ORDER BY h.score DESC, d.id;
```

With no `WITH (...)` options, the index uses Lucene-style BM25 and IDF defaults with the `realtime` consistency policy.

### Indexed Inputs

`psql_bm25s` supports five indexed source-column types:

- `text` and `varchar` for direct indexing of ordinary scalar text columns.
- `text[]` and `varchar[]` for application-owned token streams.
- `int4[]` for applications that manage token IDs externally.

Scalar `text` and `varchar` columns are tokenized at the index boundary. Pretokenized arrays avoid scalar retokenization and are the preferred shape when the application already owns tokenization.

### Retrieval APIs

The canonical exact BM25 APIs are:

- `psql_bm25s_query_tokens(regclass, text[], k, weight_mask)` for token-text indexes.
- `psql_bm25s_query_ids(regclass, int4[], k, weight_mask)` for token-ID indexes.

The main SQL convenience APIs are:

- `psql_bm25s_query(regclass, query_text, k, weight_mask, ...)`
- `psql_bm25s_prepared_query(regclass, query_text, ...)`
- `psql_bm25s_query_prepared(prepared_query, k, weight_mask)`

These rowset APIs return `psql_bm25s_result_hit` rows with `ctid`, `doc_id`, and `score`. Join hits back to application rows with `ctid` when the query needs both row data and the query-time score.

### Operators

The operator surface is useful for SQL-native filtering and ordering:

- `tokens @@ 'query text'` is a boolean document-match predicate.
- `tokens @@@ psql_bm25s_prepared_query(...)` is an index-bound prepared predicate.
- `ORDER BY tokens <=> psql_bm25s_order_tokens(...) ASC LIMIT k` is the ordered retrieval form.

`@@` is not a ranking API. `<=>` aligns with true BM25 ordering only when PostgreSQL chooses a real `psql_bm25s` index scan; use the rowset retrieval APIs when you need the clearest exact top-k contract.

```sql
WITH rq AS (
    SELECT psql_bm25s_ranked_query(
        'docs_bm25_idx'::regclass,
        'apple fruit',
        10
    ) AS q
)
SELECT d.*
FROM docs AS d, rq
WHERE d.body @@@ psql_bm25s_filter_query(rq.q)
ORDER BY d.body <=> psql_bm25s_order_tokens(rq.q) ASC
LIMIT (rq.q).k;
```

### Index Options

Scoring reloptions include:

- `method` and `idf_method`, defaulting to `lucene`; supported variants are `robertson`, `lucene`, `atire`, `bm25l`, and `bm25+`.
- `k1`, default `1.5`.
- `b`, default `0.75`.
- `delta`, default `0.5`, used by BM25L and BM25+.

Scalar text processing reloptions include:

- `text_lowercase`, default `true`.
- `text_stopwords`, default `NULL`.
- `text_stem_english`, default `false`.
- `text_fold_diacritics`, default `false`.

```sql
CREATE INDEX docs_body_bm25_idx
    ON docs USING psql_bm25s (body)
    WITH (
        method = 'lucene',
        idf_method = 'lucene',
        k1 = 1.5,
        b = 0.75,
        text_stem_english = true
    );
```

### Multi-Field and Hybrid Search

For separate title, abstract, and body indexes, use late fusion helpers so each field produces query-scoped hits before scores are combined:

```sql
SELECT d.id, d.title, h.score
FROM psql_bm25s_fusion_query(
    ARRAY[
        'docs_title_bm25_idx'::regclass,
        'docs_body_bm25_idx'::regclass
    ],
    'apple fruit',
    ARRAY[3.0, 1.0]::real[],
    10,
    30,
    NULL
) AS h
JOIN docs AS d ON d.ctid = h.ctid
ORDER BY h.score DESC, d.id;
```

Hybrid vector/BM25 search is also a late-fusion layer. BM25 and vector indexes produce candidates independently, and `psql_bm25s_hybrid_fuse_candidates(...)` combines them using `rrf` by default. The core extension does not require `pgvector`, VectorChord, or any vector type to be installed.

### Maintenance and Cache

The public maintenance switch is the `consistency` reloption:

- `realtime`, the default, keeps committed writes searchable immediately.
- `eventual` favors foreground read/write latency and allows short-term stale BM25 results while maintenance converges.
- `manual` leaves refresh under explicit operator or scheduler control.

Operational helpers include:

- `psql_bm25s_index_details(regclass)`
- `psql_bm25s_index_policy_recommend(regclass, profile)`
- `psql_bm25s_index_refresh(regclass)`
- `psql_bm25s_index_maintain(regclass)`
- `psql_bm25s_index_try_maintain(regclass)`
- `psql_bm25s_index_maintain_due(max_indexes)`

Large immutable index payloads can use a shared generation cache. The zero-configuration DSM cache does not require `shared_preload_libraries`. For large connection-pool deployments, an optional shared-preload arena can be enabled with `shared_preload_libraries = 'psql_bm25s'` and `psql_bm25s.shared_generation_cache_size`, but that arena is not required for normal use.

Related global GUCs include:

- `psql_bm25s.maintenance_worker_limit`
- `psql_bm25s.preload_timer_interval_ms`
- `psql_bm25s.maintenance_timer_interval_ms`
- `psql_bm25s.maintenance_rebuild_memory_budget`

### Caveats

- The extension is not relocatable after creation; choose a non-`public` schema at `CREATE EXTENSION` time if needed.
- `eventual` and `manual` consistency deliberately trade immediate freshness for lower foreground cost or explicit refresh control.
- Logical replication follows PostgreSQL behavior: table rows replicate, but index relations do not replicate as logical data objects, so indexes should be created or rebuilt on subscribers.
- The optional shared-preload cache requires PostgreSQL configuration and a restart because the shared arena is allocated at server start.
