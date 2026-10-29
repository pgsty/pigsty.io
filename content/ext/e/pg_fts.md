---
title: "pg_fts"
linkTitle: "pg_fts"
description: "Full-text search with BM25 and BM25F ranking"
weight: 2230
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/pg_fts">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/pg_fts</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/pg_fts</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_fts-1.14.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_fts-1.14.3.tar.gz</div>
    <div class="ext-card__desc">pg_fts-1.14.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_fts`**](/ext/e/pg_fts) | `1.14.3` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2230  | [**`pg_fts`**](/ext/e/pg_fts) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_rrf`](/ext/e/pg_rrf) [`pgroonga`](/ext/e/pgroonga) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL 1.14.3 fixes ranked-scan crashes and a short-dfs out-of-bounds read, plus pending-frequency and planner issues; SQL update is a no-op and the format is unchanged. Known unfixed concurrent-flush ranked scans can duplicate rows. No routine REINDEX for this patch; indexes written by 1.10.0 or earlier still require rebuilding.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.14.3` | {{< pgvers "18,17" >}} | `pg_fts` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.14.3` | {{< pgvers "18,17" >}} | `pg_fts_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.14.3` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-fts` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.14.3 1 | AVAIL PIGSTY 1.14.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_fts_18 pg_fts_18-1.14.3-1PGSTY.el8.x86_64.rpm pigsty 1.14.3 585.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fts_18-1.14.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_fts_18 pg_fts_18-1.14.3-1PGSTY.el8.aarch64.rpm pigsty 1.14.3 572.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fts_18-1.14.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_fts_18 pg_fts_18-1.14.3-1PGSTY.el9.x86_64.rpm pigsty 1.14.3 557.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fts_18-1.14.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_fts_18 pg_fts_18-1.14.3-1PGSTY.el9.aarch64.rpm pigsty 1.14.3 552.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fts_18-1.14.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_fts_18 pg_fts_18-1.14.3-1PGSTY.el10.x86_64.rpm pigsty 1.14.3 565.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fts_18-1.14.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_fts_18 pg_fts_18-1.14.3-1PGSTY.el10.aarch64.rpm pigsty 1.14.3 556.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fts_18-1.14.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~bookworm_amd64.deb pigsty 1.14.3 569.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~bookworm_arm64.deb pigsty 1.14.3 555.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~trixie_amd64.deb pigsty 1.14.3 572.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~trixie_arm64.deb pigsty 1.14.3 558.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~jammy_amd64.deb pigsty 1.14.3 589.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~jammy_arm64.deb pigsty 1.14.3 583.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~noble_amd64.deb pigsty 1.14.3 568.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~noble_arm64.deb pigsty 1.14.3 562.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~resolute_amd64.deb pigsty 1.14.3 564.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-fts postgresql-18-pg-fts_1.14.3-1PGSTY~resolute_arm64.deb pigsty 1.14.3 557.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-18-pg-fts_1.14.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_fts_17 pg_fts_17-1.14.3-1PGSTY.el8.x86_64.rpm pigsty 1.14.3 585.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_fts_17-1.14.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_fts_17 pg_fts_17-1.14.3-1PGSTY.el8.aarch64.rpm pigsty 1.14.3 573.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_fts_17-1.14.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_fts_17 pg_fts_17-1.14.3-1PGSTY.el9.x86_64.rpm pigsty 1.14.3 557.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_fts_17-1.14.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_fts_17 pg_fts_17-1.14.3-1PGSTY.el9.aarch64.rpm pigsty 1.14.3 552.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_fts_17-1.14.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_fts_17 pg_fts_17-1.14.3-1PGSTY.el10.x86_64.rpm pigsty 1.14.3 565.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_fts_17-1.14.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_fts_17 pg_fts_17-1.14.3-1PGSTY.el10.aarch64.rpm pigsty 1.14.3 556.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_fts_17-1.14.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~bookworm_amd64.deb pigsty 1.14.3 569.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~bookworm_arm64.deb pigsty 1.14.3 555.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~trixie_amd64.deb pigsty 1.14.3 572.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~trixie_arm64.deb pigsty 1.14.3 558.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~jammy_amd64.deb pigsty 1.14.3 619.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~jammy_arm64.deb pigsty 1.14.3 611.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~noble_amd64.deb pigsty 1.14.3 568.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~noble_arm64.deb pigsty 1.14.3 562.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~resolute_amd64.deb pigsty 1.14.3 564.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-fts postgresql-17-pg-fts_1.14.3-1PGSTY~resolute_arm64.deb pigsty 1.14.3 557.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-fts/postgresql-17-pg-fts_1.14.3-1PGSTY~resolute_arm64.deb
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

- [1.14.3 upgrade](https://api.pgxn.org/src/pg_fts/pg_fts-1.14.3/pg_fts--1.14.2--1.14.3.sql)
- [README.md](https://api.pgxn.org/src/pg_fts/pg_fts-1.14.3/README.md)
- [pg_fts.control](https://api.pgxn.org/src/pg_fts/pg_fts-1.14.3/pg_fts.control)
- [CHANGELOG.md](https://api.pgxn.org/src/pg_fts/pg_fts-1.14.3/CHANGELOG.md)
- [pg_fts--1.14.3.sql](https://api.pgxn.org/src/pg_fts/pg_fts-1.14.3/pg_fts--1.14.3.sql)

`pg_fts` 1.14.3 provides full-text search with BM25/BM25F ranking and the dedicated fts inverted index. PostgreSQL 17 and 18 are supported; PostgreSQL 19/master CI is best-effort. The control is trusted and relocatable, and core use needs no shared preload.

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

### Upgrade to 1.10.0

After installing matching files, run `ALTER EXTENSION pg_fts UPDATE TO '1.10.0'`. Version 1.10.0 shares each segment's document-length array across backends by default and adds `fts_shared_doclen_stats()` to inspect the shared cache. A superuser can change `pg_fts.shared_doclen`; unavailable shared memory falls back to a private copy. There is no on-disk format change and no REINDEX requirement. Earlier delete-ranking and posting-block fixes remain included; distinguish shared-cache memory from fallback per-backend copies when planning capacity.

### Version 1.11.0

Version 1.11.0 fixes wrong-result cases and concurrent insert/VACUUM/merge failures. Ranked traversal uses best-first block ordering; `pg_fts.bestfirst` defaults on. The index format is unchanged and the SQL upgrade adds no objects. REINDEX is not required merely to upgrade, but it repairs index entries already left or lost by the earlier bugs.

### Version 1.12.0

Version 1.12.0 caches the segment dictionary index in each backend, charging it against `pg_fts.doclen_cache_mb`; a segment that does not fit falls back to the page-chain lookup. Changes to that budget now take effect without waiting for a segment-directory change. There is no index-format change, no new SQL object and no REINDEX requirement. A cancellation or error during cache reconstruction can leave memory allocated until that backend exits; this known limitation does not change query results.

### Compound Proximity and 1.13.0 Fixes

Queries now support unordered `w/N`, ordered `p/N`, exact-gap `<N>`, adjacency `<->`, and same-position `<0>`. Either operand can be a term, phrase, OR group or another proximity group; direct AND/NOT operands are rejected. Quoted phrases preserve removed-stopword gaps. Ranked prefix, fuzzy and regex searches now include all matching rows, and pending documents participate in ranking; expansion-only matches can still score zero because scores use literal query terms.

This release fixes malformed binary-query crashes, non-ASCII fuzzy matching and a positional-scan double free during concurrent merges. Install matching files and run `ALTER EXTENSION pg_fts UPDATE TO '1.13.0'`; no index-format change or routine REINDEX is required.

### 1.14.0 Vacuum and Write-Load Fixes

Version 1.14.0 bounds posting-list vacuum batches by `maintenance_work_mem` and skips tail truncation during parallel VACUUM. Deferred free space remains reusable and can be reclaimed by a later non-parallel VACUUM or `fts_vacuum()`. The new `fts_matchsel` estimator improves ranked-search plan selection. `pg_fts.pending_flush_threshold` defaults to 20000 pending documents; 0 disables insert-triggered flushing. The insert path attempts the maintenance lock without waiting.

Install matching files and run `ALTER EXTENSION pg_fts UPDATE TO '1.14.0'` to rewire the match operators. Index format is unchanged; routine REINDEX is unnecessary.

### Counting and Maintenance Fixes in 1.14.1

1.14.1 prevents the exact-count fast path from using partial, invalid or snapshot-ineligible new indexes, and corrects selectivity estimates inflated by pending documents. VACUUM no longer evacuates tail pages when it cannot acquire the truncation lock, avoiding index growth under concurrent readers; bounded memory batches also cover configurations without the document-length sidecar. Install matching files and run `ALTER EXTENSION pg_fts UPDATE TO '1.14.1'`. The upgrade from 1.14.0 changes neither SQL objects nor index format and needs no routine REINDEX.

### 1.14.2: Rebuild Indexes Written Before 1.11.0

Version 1.14.2 changes documentation and the extension version only; its SQL upgrade is a no-op. Rebuild every index that received writes under 1.10.0 or earlier with REINDEX. Those versions could leave false matches after aborted or dead pending inserts, and omit rows inserted during a flush. An in-place extension update, VACUUM, fts_merge or fts_vacuum cannot repair that old state. A clean result from probing a few terms is not proof that the index is sound. Indexes built and written only by 1.11.0 or later do not need this historical repair.

### 1.14.3 Fixes and Remaining Race

Version 1.14.3 fixes a ranked-scan backend crash during frequent concurrent pending-list flushes and an out-of-bounds read when a BM25 scorer receives a short document-frequency array. It also corrects pending-document frequencies, partial-index plan estimates and some boolean-query work. Install matching files, replace old-library sessions and run the no-op SQL upgrade to 1.14.3. Formats and SQL objects are unchanged; the historical REINDEX requirement above still applies.

A separate concurrent-flush race remains unfixed: ranked scans can return a pending row twice and double-count ranking statistics. Bitmap scans, count queries and match filters remove duplicate tuple IDs and are unaffected by that specific race. Do not assume this patch makes ranked results duplicate-free under concurrent flushes.
