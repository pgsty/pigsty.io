---
title: "onesparse"
linkTitle: "onesparse"
description: "Sparse linear algebra and graph extension for PostgreSQL 18"
weight: 2620
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/OneSparse/OneSparse">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">OneSparse/OneSparse</div>
    <div class="ext-card__desc">https://github.com/OneSparse/OneSparse</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/onesparse-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">onesparse-1.0.0.tar.gz</div>
    <div class="ext-card__desc">onesparse-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`one_sparse`**](/ext/e/onesparse) | `1.0.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2620  | [**`onesparse`**](/ext/e/onesparse) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `onesparse` |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`pgrouting`](/ext/e/pgrouting) [`postgis`](/ext/e/postgis) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 only; upstream release v1.0.0 ships extension SQL version 0.1.0


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18" >}} | `one_sparse` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18" >}} | `onesparse_$v` | `graphblas`, `lagraph` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18" >}} | `postgresql-$v-onesparse` | `libgraphblas10`, `liblagraph1`, `liblagraphx1` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 onesparse_18 onesparse_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 222.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/onesparse_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 onesparse_18 onesparse_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 201.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/onesparse_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 onesparse_18 onesparse_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 195.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/onesparse_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 onesparse_18 onesparse_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 182.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/onesparse_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 onesparse_18 onesparse_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 200.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/onesparse_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 onesparse_18 onesparse_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 185.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/onesparse_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 598.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 578.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 592.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 574.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 693.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 681.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 645.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-onesparse postgresql-18-onesparse_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 634.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/onesparse/postgresql-18-onesparse_1.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `one_sparse` using `pig build`:

```bash
pig build pkg one_sparse         # build RPM / DEB packages
```


## Install

You can install `one_sparse` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install one_sparse;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y one_sparse -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y onesparse_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-onesparse   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION onesparse;
```

## Usage
> Sources: [homepage](https://onesparse.com/), [release v1.0.0](https://github.com/OneSparse/OneSparse/releases/tag/v1.0.0), [control file at v1.0.0](https://raw.githubusercontent.com/OneSparse/OneSparse/v1.0.0/onesparse.control), [intro docs](https://onesparse.com/docs.html), [matrix docs](https://onesparse.com/test_matrix_header.html), [vector docs](https://onesparse.com/test_vector_header.html), [algorithm examples](https://onesparse.com/test_examples_header.html)

OneSparse is a PostgreSQL extension that binds SuiteSparse:GraphBLAS into Postgres and exposes sparse linear algebra and graph algorithms as new types, functions, and operators.
The docs treat `matrix` as the core type, with `vector` and `scalar` built on top of the same model. The `v1.0.0` release exists, while the extension control file at that tag still declares SQL `default_version = '0.1.0'`.

### Core Setup

```sql
CREATE EXTENSION onesparse;
SET search_path TO public,onesparse;

SELECT 'int32'::matrix;
SELECT 'int32'::vector;
SELECT 'int32:42'::scalar;
```

The docs site organizes the API around `matrix`, `vector`, and `scalar`, with interactive examples using casts and constructors.

### Matrix and Vector

The matrix page shows common operations such as construction, `print()`, `draw()`, assignment, extraction, `cast_to()`, resize, and aggregation. The vector page documents the matching vector API including `nvals()`, `size()`, `eadd()`, `emult()`, `reduce_scalar()`, `choose()`, and `apply()`.

```sql
SELECT print('int32(4:4)'::matrix);
SELECT draw('int32(4:4)[1:2:1 2:3:2 3:1:3]'::matrix);
SELECT eadd('int32[0:1 1:2 2:3]'::vector, 'int32[0:1 1:2 2:3]'::vector, 'plus_int32');
SELECT reduce_scalar('int32[0:1 1:2 2:3]'::vector, 'plus_monoid_int32');
```

### Graph Algorithms

The examples page uses Matrix Market input and graph visualization with `draw(...)`. The documented graph algorithms include:

- `bfs(graph, 1)` for level and parent BFS
- `sssp(cast_to(graph, 'int32'), 1::bigint, 1)` for single-source shortest path
- `pagerank(graph)` for ranking vertices by link structure
- `triangle_centrality(graph)` for triangle-based centrality
- `betweenness(graph, ARRAY[...])` and `square_clustering(graph)` for additional graph analysis

Representative example from the docs:

```sql
SELECT draw(triu(graph), (SELECT level FROM bfs(graph, 1)), false, false, true, 0.5)
FROM karate;
```

The same guide shows loading a graph with `mmread('/home/postgres/onesparse/demo/karate.mtx')`.
