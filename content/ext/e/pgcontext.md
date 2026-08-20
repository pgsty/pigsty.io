---
title: "pgcontext"
linkTitle: "pgcontext"
description: "Vector, filter-aware HNSW, and hybrid retrieval over authoritative PostgreSQL tables."
weight: 1960
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

| **Related** | [`vector`](/ext/e/vector) [`vectorize`](/ext/e/vectorize) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`pg_rrf`](/ext/e/pg_rrf) [`pg_search`](/ext/e/pg_search) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pgmnemo`](/ext/e/pgmnemo) [`pg_summarize`](/ext/e/pg_summarize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgcontext_pgvector`](/ext/e/pgcontext_pgvector) |
{.ext-table .ext-table--rel}


> Upstream 0.2.0 and PIGSTY packages support PostgreSQL 17 and 18; pgcontext_pgvector ships in the same package.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `pgcontext` | - |
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
@ el8.x86_64 18 pgcontext_18 pgcontext_18-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 3.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcontext_18-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgcontext_18 pgcontext_18-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcontext_18-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgcontext_18 pgcontext_18-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 3.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcontext_18-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgcontext_18 pgcontext_18-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcontext_18-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgcontext_18 pgcontext_18-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 3.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcontext_18-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgcontext_18 pgcontext_18-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 3.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcontext_18-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 3.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgcontext postgresql-18-pgcontext_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcontext/postgresql-18-pgcontext_0.2.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgcontext_17 pgcontext_17-0.2.0-1PIGSTY.el8.x86_64.rpm pigsty 0.2.0 3.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcontext_17-0.2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgcontext_17 pgcontext_17-0.2.0-1PIGSTY.el8.aarch64.rpm pigsty 0.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcontext_17-0.2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgcontext_17 pgcontext_17-0.2.0-1PIGSTY.el9.x86_64.rpm pigsty 0.2.0 3.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcontext_17-0.2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgcontext_17 pgcontext_17-0.2.0-1PIGSTY.el9.aarch64.rpm pigsty 0.2.0 3.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcontext_17-0.2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgcontext_17 pgcontext_17-0.2.0-1PIGSTY.el10.x86_64.rpm pigsty 0.2.0 3.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcontext_17-0.2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgcontext_17 pgcontext_17-0.2.0-1PIGSTY.el10.aarch64.rpm pigsty 0.2.0 3.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcontext_17-0.2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~bookworm_amd64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~bookworm_arm64.deb pigsty 0.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~trixie_amd64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~trixie_arm64.deb pigsty 0.2.0 2.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~jammy_amd64.deb pigsty 0.2.0 3.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~jammy_arm64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~noble_amd64.deb pigsty 0.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~noble_arm64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~resolute_amd64.deb pigsty 0.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgcontext postgresql-17-pgcontext_0.2.0-1PIGSTY~resolute_arm64.deb pigsty 0.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcontext/postgresql-17-pgcontext_0.2.0-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pgcontext;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgcontext -v 18  # PG 18
pig ext install -y pgcontext -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgcontext_18       # PG 18
dnf install -y pgcontext_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgcontext   # PG 18
apt install -y postgresql-17-pgcontext   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION pgcontext;
```

## Usage

Sources:

- [pgContext 0.2.0 README](https://github.com/evokoa/pgcontext/blob/v0.2.0/README.md)
- [pgContext 0.2.0 release notes](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/release_notes.md)
- [pgContext collection quickstart](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/quickstart.md)
- [pgContext index guide](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/indexes.md)
- [pgContext known limitations](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/limitations.md)
- [pgContext control file](https://github.com/evokoa/pgcontext/blob/v0.2.0/pgcontext.control)
- [pgvector coexistence guide](https://github.com/evokoa/pgcontext/blob/v0.2.0/docs/user_guide/pgvector_coexist.md)

`pgcontext` keeps vector and hybrid retrieval inside PostgreSQL. It provides pgContext-owned vector types, collection metadata over application tables, registered-field filters, exact search, persisted HNSW, and dense plus full-text fusion. Application rows remain authoritative for MVCC, ACL/RLS, backup, and replication; indexes and generated artifacts are rebuildable acceleration state.

Version 0.2.0 targets PostgreSQL 17 and 18, with the release's controlled-pilot qualification centered on PostgreSQL 17. Advanced HNSW, non-dense, quantized, mapped, and late-interaction paths retain explicit experimental boundaries.

### Core Workflow

```sql
CREATE EXTENSION pgcontext;

CREATE TABLE public.docs (
    id text PRIMARY KEY,
    embedding pgcontext.vector(2) NOT NULL,
    status text NOT NULL,
    body text NOT NULL,
    metadata jsonb NOT NULL
);

INSERT INTO public.docs (id, embedding, status, body, metadata) VALUES
    ('doc-1', '[1,0]'::pgcontext.vector, 'published', 'postgres vector search', '{"topic":"postgres"}'),
    ('doc-2', '[0,1]'::pgcontext.vector, 'published', 'rust extension guide', '{"topic":"rust"}');

SELECT * FROM pgcontext.create_collection('docs', 'public.docs');
SELECT pgcontext.register_vector('docs', 'embedding', 'embedding', 2, 'l2');
SELECT pgcontext.register_filter_column('docs', 'status', 'status');
SELECT pgcontext.register_jsonb_path('docs', 'topic', 'metadata', ARRAY['topic']);
SELECT pgcontext.upsert_points('docs', ARRAY['doc-1', 'doc-2']);

SELECT source_key, score
FROM pgcontext.search(
    'docs',
    '[1,0]'::pgcontext.vector,
    '{"must":[{"key":"status","match":"published"}]}'::jsonb,
    10
);
```

Collections describe application-owned tables; they do not copy those rows into another authoritative store. Search, count, facets, grouping, scrolling, recommendation, and discovery share registered vector and filter definitions.

### HNSW and Hybrid Retrieval

```sql
SET maintenance_work_mem = '2GB';
CREATE INDEX docs_embedding_hnsw ON public.docs
    USING pgcontext_hnsw
    (embedding pgcontext.vector_hnsw_cosine_ops);
RESET maintenance_work_mem;

SELECT source_key, score
FROM pgcontext.query(
    'docs',
    '[1,0]'::pgcontext.vector,
    'postgres search',
    'body',
    10
);
```

Dense HNSW operator classes cover L2, inner product, cosine, and L1. Index builds enforce `maintenance_work_mem`; size the build budget first, then compare approximate results with exact search and `pgcontext.recall_check`. `pgcontext.query` combines dense and PostgreSQL full-text branches with reciprocal-rank fusion.

### Important Objects

- `pgcontext.vector`, `pgcontext.halfvec`, `pgcontext.sparsevec`, and `pgcontext.bitvec` are extension-owned types; the non-dense variants remain experimental.
- `pgcontext.create_collection`, registration functions, and point-mapping functions define the retrieval contract over source tables.
- `pgcontext.search`, `count`, `facet`, `scroll`, `grouped_search`, `recommend`, and `discover` provide table-backed retrieval.
- `pgcontext.query` and `explain` expose composable and hybrid retrieval.
- `pgcontext_hnsw` plus metric-specific operator classes provide ANN indexing.
- Index status, diagnostics, vacuum advice, recall checks, optimization status, and bounded telemetry support operational review.

### Upgrade and pgvector Boundary

Version 0.2.0 moves pgContext-owned types into the fixed `pgcontext` schema. Existing standalone 0.1.0 installations can use the packaged update as a superuser:

```sql
ALTER EXTENSION pgcontext UPDATE TO '0.2.0';
```

Afterward, qualify types such as `pgcontext.vector(1536)` or deliberately add the schema to `search_path`. A 0.1.0 database where public vector types are owned by pgvector is rejected before mutation; inventory dependencies, install 0.2.0 and the separate `pgcontext_pgvector` bridge, recreate registrations and dependents, and rebuild pgContext indexes over the unchanged pgvector columns.

The main extension has no dependency on pgvector. Its types are distinct from `public.vector`, `public.halfvec`, and `public.sparsevec`; do not assume install order aliases one extension's types to the other.

### Operational Boundaries

- `CREATE EXTENSION` and updates require a PostgreSQL superuser because pgContext installs an access method. Granted application APIs do not require superuser.
- No `shared_preload_libraries`, `LOAD`, or restart is required by the main extension.
- The early-release HNSW on-disk format is not stable; plan and validate index rebuilds across releases rather than treating index files as portable data.
- Exact reranking, MVCC, ACL, and RLS checks remain correctness boundaries, but they do not replace workload-specific recall, latency, restart, VACUUM, replication, and failure testing.
- Remove collection registrations and inspect dependent application objects before dropping the extension; avoid unreviewed `CASCADE`.
