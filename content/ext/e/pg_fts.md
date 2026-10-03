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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_fts-1.9.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_fts-1.9.0.tar.gz</div>
    <div class="ext-card__desc">pg_fts-1.9.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_fts`**](/ext/e/pg_fts) | `1.9.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2220  | [**`pg_fts`**](/ext/e/pg_fts) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_rrf`](/ext/e/pg_rrf) [`pgroonga`](/ext/e/pgroonga) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG17-18; trusted and relocatable.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.9.0` | {{< pgvers "18,17" >}} | `pg_fts` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.9.0` | {{< pgvers "18,17" >}} | `pg_fts_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.9.0` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-fts` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.9.0 1 | AVAIL PIGSTY 1.9.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_fts_18 pg_fts_18-1.9.0-1PGSTY.el8.x86_64.rpm pigsty 1.9.0 469.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fts_18-1.9.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_fts_18 pg_fts_18-1.9.0-1PGSTY.el8.aarch64.rpm pigsty 1.9.0 458.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fts_18-1.9.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_fts_18 pg_fts_18-1.9.0-1PGSTY.el9.x86_64.rpm pigsty 1.9.0 446.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fts_18-1.9.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_fts_18 pg_fts_18-1.9.0-1PGSTY.el9.aarch64.rpm pigsty 1.9.0 440.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fts_18-1.9.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_fts_18 pg_fts_18-1.9.0-1PGSTY.el10.x86_64.rpm pigsty 1.9.0 450.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fts_18-1.9.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_fts_18 pg_fts_18-1.9.0-1PGSTY.el10.aarch64.rpm pigsty 1.9.0 442.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fts_18-1.9.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~bookworm_amd64.deb pigsty 1.9.0 453.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~bookworm_arm64.deb pigsty 1.9.0 442.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~trixie_amd64.deb pigsty 1.9.0 455.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~trixie_arm64.deb pigsty 1.9.0 444.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~jammy_amd64.deb pigsty 1.9.0 469.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~jammy_arm64.deb pigsty 1.9.0 462.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~noble_amd64.deb pigsty 1.9.0 448.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~noble_arm64.deb pigsty 1.9.0 443.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~resolute_amd64.deb pigsty 1.9.0 446.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.9.0-1PGSTY~resolute_arm64.deb pigsty 1.9.0 439.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-18-pg-fts_1.9.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_fts_17 pg_fts_17-1.9.0-1PGSTY.el8.x86_64.rpm pigsty 1.9.0 469.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fts_17-1.9.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_fts_17 pg_fts_17-1.9.0-1PGSTY.el8.aarch64.rpm pigsty 1.9.0 458.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fts_17-1.9.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_fts_17 pg_fts_17-1.9.0-1PGSTY.el9.x86_64.rpm pigsty 1.9.0 446.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fts_17-1.9.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_fts_17 pg_fts_17-1.9.0-1PGSTY.el9.aarch64.rpm pigsty 1.9.0 440.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fts_17-1.9.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_fts_17 pg_fts_17-1.9.0-1PGSTY.el10.x86_64.rpm pigsty 1.9.0 450.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fts_17-1.9.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_fts_17 pg_fts_17-1.9.0-1PGSTY.el10.aarch64.rpm pigsty 1.9.0 442.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fts_17-1.9.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~bookworm_amd64.deb pigsty 1.9.0 453.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~bookworm_arm64.deb pigsty 1.9.0 442.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~trixie_amd64.deb pigsty 1.9.0 455.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~trixie_arm64.deb pigsty 1.9.0 444.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~jammy_amd64.deb pigsty 1.9.0 495.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~jammy_arm64.deb pigsty 1.9.0 486.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~noble_amd64.deb pigsty 1.9.0 448.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~noble_arm64.deb pigsty 1.9.0 444.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~resolute_amd64.deb pigsty 1.9.0 445.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.9.0-1PGSTY~resolute_arm64.deb pigsty 1.9.0 439.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-17-pg-fts_1.9.0-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_fts;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_fts -v 18  # PG 18
pig ext install -y pg_fts -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_fts_18       # PG 18
dnf install -y pg_fts_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-fts   # PG 18
apt install -y postgresql-17-pg-fts   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION pg_fts;
```

## Usage

Sources:

- [README.md](https://github.com/gburd/pg_fts/blob/d5c645f615b7a4f4e1a9374c30200a33858be401/README.md)
- [pg_fts.control](https://github.com/gburd/pg_fts/blob/d5c645f615b7a4f4e1a9374c30200a33858be401/pg_fts.control)
- [CHANGELOG.md](https://github.com/gburd/pg_fts/blob/d5c645f615b7a4f4e1a9374c30200a33858be401/CHANGELOG.md)
- [pg_fts--1.8.6--1.9.0.sql](https://github.com/gburd/pg_fts/blob/d5c645f615b7a4f4e1a9374c30200a33858be401/pg_fts--1.8.6--1.9.0.sql)

`pg_fts` 1.9.0 provides full-text search with BM25/BM25F ranking and the dedicated fts inverted index. PostgreSQL 17 and 18 are supported; PostgreSQL 19/master CI is best-effort. The control is trusted and relocatable, and core use needs no shared preload.

### Search and Rank

```sql
CREATE EXTENSION pg_fts;
CREATE TABLE docs (id bigint, body text);
CREATE INDEX docs_fts ON docs USING fts (to_ftsdoc('english', body));
SELECT id FROM docs
 WHERE to_ftsdoc('english', body) @@@ to_ftsquery('english', 'quick fox')
 ORDER BY to_ftsdoc('english', body) <=> to_ftsquery('english', 'quick fox')
 LIMIT 10;
SELECT fts_merge('docs_fts');
SELECT fts_vacuum('docs_fts');
```

### Objects and Queries

`ftsdoc` and `ftsquery` represent analyzed documents and queries. `to_ftsdoc()` and `to_ftsquery()` construct them; `@@@` matches documents and `<=>` orders relevance distance. The match predicate is required for an indexed KNN ordering scan. Queries support boolean terms, phrases, prefix, fuzzy and regular-expression matching. Multi-column documents support BM25F field weighting. `fts_count()` and ordinary count queries can use exact index counting; `fts_search()` exposes direct ranked results. Regex/long-fuzzy acceleration is opt-in through `trigrams = on`.

### Maintenance and Privileges

Pending inserts are immediately searchable; merging is not a visibility prerequisite. `fts_merge()` compacts segments and `fts_vacuum()` reclaims physical space. Both write WAL, require index ownership and must run on a primary. Large pending documents can temporarily consume substantial space, so merge and reclaim periodically during bulk ingestion. `fts_search()` and `fts_anomalous_docs()` expose indexed content and are revoked from PUBLIC by default; widen access only deliberately. Regular table-query visibility and direct helper access are different permission surfaces.

### Upgrade to 1.9.0

After installing matching files, run `ALTER EXTENSION pg_fts UPDATE TO '1.9.0'`. This release fixes incorrect ranking after deletes and missed top-k results at posting-block boundaries. There is no on-disk format change and no REINDEX requirement. `pg_fts.doclen_cache_mb` defaults to 64 (0 disables the cache); `pg_fts.dense_score_min_df` defaults to 32768 (0 disables that scoring path). Account for per-backend cache memory.
