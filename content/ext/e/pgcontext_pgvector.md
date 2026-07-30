---
title: "pgcontext_pgvector"
linkTitle: "pgcontext_pgvector"
description: "Optional pgvector compatibility bridge for pgcontext HNSW indexes."
weight: 1970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://pgxn.org/dist/pgContext/0.2.0/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://pgxn.org/dist/pgContext/0.2.0/</div>
    <div class="ext-card__desc">https://pgxn.org/dist/pgContext/0.2.0/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgcontext-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgcontext-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pgcontext-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgcontext`**](/ext/e/pgcontext) | `0.2.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1960  | [**`pgcontext`**](/ext/e/pgcontext) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgcontext` |
| 1970  | [**`pgcontext_pgvector`**](/ext/e/pgcontext_pgvector) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgcontext`](/ext/e/pgcontext) [`vector`](/ext/e/vector) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`vectorize`](/ext/e/vectorize) [`pg_rrf`](/ext/e/pg_rrf) [`pg_search`](/ext/e/pg_search) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pgml`](/ext/e/pgml) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Optional control shipped by pgcontext 0.2.0; requires pgcontext and vector.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `pgcontext` | `pgcontext`, `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `pgcontext_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `postgresql-$v-pgcontext` | - |
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
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgcontext` using `pig build`:

```bash
pig build pkg pgcontext         # build RPM / DEB packages
```


## Install

You can install `pgcontext` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgcontext;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgcontext -v 18  # PG 18
pig ext install -y pgcontext -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgcontext_18       # PG 18
dnf install -y pgcontext_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgcontext   # PG 18
apt install -y postgresql-17-pgcontext   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgcontext_pgvector CASCADE;  -- requires: pgcontext, vector
```

## Usage

Sources:

- [pgContext 0.2.0 pgvector coexistence guide](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/pgvector_coexist.md)
- [pgContext 0.2.0 pgvector migration guide](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/pgvector_migration.md)
- [pgcontext_pgvector control file](https://github.com/evokoa/pgcontext/blob/v0.2.0/pgcontext_pgvector.control)
- [pgcontext_pgvector extension SQL](https://github.com/evokoa/pgcontext/blob/v0.2.0/sql/pgcontext_pgvector--0.2.0.sql)
- [pgContext 0.2.0 release notes](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/release_notes.md)

`pgcontext_pgvector` is the optional pgContext companion bridge for serving pgContext HNSW indexes over columns owned by the pgvector extension. It does not merge the two type systems or copy application data; it adds certified casts, support functions, and operator classes while exact distance semantics remain bound to pgvector operators.

### Certified Profile and Installation

Version 0.2.0 fails closed unless the database uses PostgreSQL 17, pgContext 0.2.0, and pgvector 0.8.x installed in `public`. Install the prerequisites and bridge explicitly:

```sql
CREATE EXTENSION vector;
CREATE EXTENSION pgcontext;
CREATE EXTENSION pgcontext_pgvector;
```

The reverse order of the two prerequisite extensions is also valid, but `pgcontext_pgvector` must come after both. Installation requires superuser privileges.

### Index an Existing pgvector Column

```sql
CREATE INDEX items_embedding_pgc
    ON items USING pgcontext_hnsw
       (embedding pgcontext.vector_hnsw_pgvector_cosine_ops);

SELECT id
FROM items
ORDER BY embedding <=> $1::public.vector
LIMIT 10;
```

Existing pgvector-spelled SQL can use the pgContext access method. ANN candidates are resolved to live heap rows and reranked with the pgvector operator, preserving its `double precision` distance result semantics.

### Important Objects

- `pgcontext.vector_hnsw_pgvector_l2_ops`, `pgcontext.vector_hnsw_pgvector_ip_ops`, `pgcontext.vector_hnsw_pgvector_cosine_ops`, and `pgcontext.vector_hnsw_pgvector_l1_ops` serve existing `public.vector` columns.
- `pgcontext.sparsevec_hnsw_pgvector_cosine_ops` serves certified `public.sparsevec` columns, subject to the documented 16,000-dimension and page-envelope limits.
- `pgcontext.migration_report()` inventories pgvector columns, dependencies, HNSW, and IVFFlat without requiring the bridge.
- Ownership-conversion functions provide reviewed fast or restricted-online workflows; IVFFlat is rebuilt as HNSW rather than converted in place.

### Dependency and Removal Boundaries

The main `pgcontext` extension remains independent of pgvector. Bridge indexes depend on `pgcontext_pgvector`, and the bridge depends on both parent extensions, so PostgreSQL blocks removal under `RESTRICT` until those indexes are removed or converted.

Do not use `DROP EXTENSION vector CASCADE` as a migration method. Inventory arrays, views, functions, prepared sessions, expression indexes, and other application dependencies first. The bridge does not provide every pgvector helper, IVFFlat, iterative-scan GUC, parallel-build, subvector, or progress-reporting behavior.

No preload or restart is required. The bridge is a privileged compatibility surface, not a promise that all future pgContext, pgvector, PostgreSQL-major, or on-disk index combinations are compatible; rerun the certified preflight and rebuild validation when any component changes.
