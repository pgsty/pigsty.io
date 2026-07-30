---
title: "pg_fts"
linkTitle: "pg_fts"
description: "Full-text search with BM25 and BM25F ranking"
weight: 2220
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/pg_fts">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/pg_fts</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/pg_fts</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_fts-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_fts-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_fts-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_fts`**](/ext/e/pg_fts) | `0.2.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2220  | [**`pg_fts`**](/ext/e/pg_fts) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_rrf`](/ext/e/pg_rrf) [`pgroonga`](/ext/e/pgroonga) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires PostgreSQL 17 or newer; the control file marks the extension trusted and relocatable; RPM builds also provide an llvmjit subpackage.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `pg_fts` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `pg_fts_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-fts` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_fts_18 pg_fts_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 113.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fts_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_fts_18 pg_fts_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 109.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fts_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_fts_18 pg_fts_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 88.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fts_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_fts_18 pg_fts_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 88.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fts_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_fts_18 pg_fts_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fts_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_fts_18 pg_fts_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 90.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fts_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 265.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 258.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 266.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 260.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 271.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 268.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 256.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 253.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 256.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 252.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-18-pg-fts_0.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_fts_17 pg_fts_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 113.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fts_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_fts_17 pg_fts_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 109.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fts_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_fts_17 pg_fts_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 88.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fts_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_fts_17 pg_fts_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 88.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fts_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_fts_17 pg_fts_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fts_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_fts_17 pg_fts_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 90.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fts_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 265.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 258.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 266.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 260.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 290.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 285.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 256.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 253.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 256.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 252.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-17-pg-fts_0.2.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_fts` using `pig build`:

```bash
pig build pkg pg_fts         # build RPM / DEB packages
```


## Install

You can install `pg_fts` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_fts;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_fts -v 18  # PG 18
pig ext install -y pg_fts -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_fts_18       # PG 18
dnf install -y pg_fts_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-fts   # PG 18
apt install -y postgresql-17-pg-fts   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_fts;
```

## Usage

Sources:

- [Official v0.2.0 README](https://codeberg.org/gregburd/pg_fts/src/tag/v0.2.0/README.md)
- [v0.2.0 changelog](https://codeberg.org/gregburd/pg_fts/src/tag/v0.2.0/CHANGELOG.md)
- [v0.2.0 SQL API](https://codeberg.org/gregburd/pg_fts/src/tag/v0.2.0/pg_fts--0.2.0.sql)
- [v0.2.0 control file](https://codeberg.org/gregburd/pg_fts/src/tag/v0.2.0/pg_fts.control)

`pg_fts` provides BM25/BM25F full-text ranking through dedicated `ftsdoc` and `ftsquery` types and an `fts` inverted-index access method. It supports boolean, phrase, NEAR, prefix, fuzzy, and regular-expression terms while keeping corpus statistics in the index for relevance scoring. Version `0.2.0` requires PostgreSQL 17 or newer.

### Create and Query an Index

```sql
CREATE EXTENSION pg_fts;

CREATE TABLE docs (
    id bigint PRIMARY KEY,
    body text NOT NULL
);

CREATE INDEX docs_fts
ON docs USING fts (to_ftsdoc('english', body));
```

Use the same text-search configuration for documents and ordinary query terms:

```sql
WITH q AS (
    SELECT to_ftsquery('english', 'postgres & "query planner" & index*') AS query
)
SELECT d.id,
       fts_snippet(d.body, q.query) AS excerpt
FROM docs AS d
CROSS JOIN q
WHERE to_ftsdoc('english', d.body) @@@ q.query
ORDER BY to_ftsdoc('english', d.body) <=> q.query
LIMIT 10;
```

`@@@` matches, while ascending `<=>` distance orders rows by descending relevance and can drive an index ordering scan for top-k queries.

### Query Language and API Index

- `to_ftsdoc([regconfig,] text)` and `to_ftsquery([regconfig,] text)`: analyze documents and parse queries.
- `quick brown`, `quick & brown`, `quick | brown`, and `!slow`: implicit/explicit AND, OR, and NOT.
- `"quick brown"`, `NEAR(...)`, `term*`, `term~2`, and `/regular-expression/`: phrase, proximity, prefix, fuzzy, and regex terms.
- `fts_bm25`, `fts_bm25_opts`, and `fts_bm25f`: explicit BM25 scoring variants and multi-field scoring.
- `fts_index_stats(index)` and `fts_index_df(index, query)`: index-maintained document count, average length, vocabulary size, and term frequencies.
- `fts_highlight` and `fts_snippet`: present matching text.
- `fts_search(index, query, k)` and `fts_count(index, query)`: index-native top-k and MVCC-aware count operations.
- `tsquery_to_ftsquery(tsquery)`: migration helper; it does not make `pg_fts` a transparent replacement for `tsvector`/GIN.

### Maintenance and Version Caveats

```sql
SELECT fts_merge('docs_fts');
SELECT fts_vacuum('docs_fts');
```

- Inserts enter an immediately matchable pending list, but ranked `<=>` and `fts_search` results cover merged segments. Run `fts_merge()` when newly inserted documents must participate in ranking immediately.
- `fts_vacuum()` compacts segments and truncates reclaimable index pages; ordinary `VACUUM` also participates in pending-list and tombstone maintenance.
- Version `0.2.0` renamed the access method from `bm25` to `fts`. Indexes created by `0.1.0` with `USING bm25` must be recreated.
- If the library reports an on-disk format mismatch, follow its `REINDEX` hint rather than attempting to read the index with a different format version.
- The access method is non-covering and does not provide parallel scans in this release. Provision the extension and index separately on logical-replication subscribers; indexes themselves are not logically replicated.

