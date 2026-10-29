---
title: "documentdb_core"
linkTitle: "documentdb_core"
description: "Core API surface for DocumentDB on PostgreSQL"
weight: 9010
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/documentdb/documentdb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">documentdb/documentdb</div>
    <div class="ext-card__desc">https://github.com/documentdb/documentdb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/documentdb-1.0-0.tar.gz intelrdfpmath-applied-2.0u3-1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">documentdb-1.0-0.tar.gz intelrdfpmath-applied-2.0u3-1.tar.gz</div>
    <div class="ext-card__desc">documentdb-1.0-0.tar.gz intelrdfpmath-applied-2.0u3-1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`documentdb`**](/ext/e/documentdb) | `1.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9000  | [**`documentdb`**](/ext/e/documentdb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `documentdb_api` |
| 9010  | [**`documentdb_core`**](/ext/e/documentdb_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `documentdb_core` |
| 9020  | [**`documentdb_distributed`**](/ext/e/documentdb_distributed) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9030  | [**`documentdb_extended_rum`**](/ext/e/documentdb_extended_rum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `documentdb_extended_rum_catalog` |
{.ext-table}

| **Related** | [`mongo_fdw`](/ext/e/mongo_fdw) [`pg_projection`](/ext/e/pg_projection) [`pgbson`](/ext/e/pgbson) [`jsquery`](/ext/e/jsquery) [`pgjq`](/ext/e/pgjq) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsonschema`](/ext/e/jsonschema) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) [`documentdb_distributed`](/ext/e/documentdb_distributed) |
{.ext-table .ext-table--rel}


> DocumentDB 1.0 packages install SQL 1.0-0. PGSTY supports PostgreSQL 16-18; PG15 is excluded due to the libbson allocation alignment failure. The OSS package includes documentdb, documentdb_core and documentdb_extended_rum only. External RUM is a package dependency on PG16/17 only, not PG18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16" >}} | `documentdb` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16" >}} | `documentdb_$v` | `postgresql$v-contrib`, `pg_cron_$v`, `pgvector_$v`, `rum_$v`, `postgis36_$v` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-documentdb` | `postgresql-$v-cron`, `postgresql-$v-pgvector`, `postgresql-$v-rum`, `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `documentdb` using `pig build`:

```bash
pig build pkg documentdb         # build RPM / DEB packages
```


## Install

You can install `documentdb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install documentdb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y documentdb -v 18  # PG 18
pig ext install -y documentdb -v 17  # PG 17
pig ext install -y documentdb -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y documentdb_18       # PG 18
dnf install -y documentdb_17       # PG 17
dnf install -y documentdb_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-documentdb   # PG 18
apt install -y postgresql-17-documentdb   # PG 17
apt install -y postgresql-16-documentdb   # PG 16
```


**Preload**:

```bash
shared_preload_libraries = 'pg_documentdb_core';
```


**Create Extension**:

```sql
CREATE EXTENSION documentdb_core;
```

## Usage

Sources:

- [DocumentDB v1.0-0 README](https://github.com/documentdb/documentdb/blob/v1.0-0/README.md)
- [`documentdb_core` control file](https://github.com/documentdb/documentdb/blob/v1.0-0/pg_documentdb_core/documentdb_core.control)
- [BSON SQL definitions](https://github.com/documentdb/documentdb/blob/v1.0-0/pg_documentdb_core/sql/udfs/bson_io/bson_io--latest.sql)
- [Official preload helper](https://github.com/documentdb/documentdb/blob/v1.0-0/scripts/preload_libraries.sh)

`documentdb_core` is the low-level BSON type and operator layer used by DocumentDB. It is normally installed as a dependency of `documentdb`; by itself it does not provide collection CRUD, the MongoDB wire protocol, or the gateway.

### Configure and Install

`pg_documentdb_core` must be loaded through `shared_preload_libraries`, followed by a PostgreSQL restart:

```ini
shared_preload_libraries = 'pg_documentdb_core'
```

For a complete single-node stack, the official helper also preloads `pg_cron` and `pg_documentdb`. Install the parent extension in normal deployments:

```sql
CREATE EXTENSION documentdb CASCADE;
```

Direct installation is useful only for low-level BSON work:

```sql
CREATE EXTENSION documentdb_core;
```

The extension is superuser-only and non-relocatable.

### BSON Workflow

```sql
SELECT '{"name":"Ada","score":42}'::documentdb_core.bson;

SELECT documentdb_core.bson_get_value_text(
  '{"name":"Ada","score":42}'::documentdb_core.bson,
  'name'
);
```

Use explicit schema qualification unless `documentdb_core` is in `search_path`.

### Important Objects

- `documentdb_core.bson` stores BSON documents.
- `documentdb_core.bsonquery` represents BSON query values used by the DocumentDB planner and operator layer.
- `documentdb_core.bsonsequence` represents sequences of BSON values.
- `bson_get_value` and `bson_get_value_text`, also exposed through `->` and `->>`, extract a path from a BSON document.
- `bson_from_bytea`, `bson_to_bytea`, `bson_json_to_bson`, and `bson_to_json_string` support serialization boundaries.
- `bson_btree_ops` and `bson_hash_ops` provide comparison and hashing support required by higher layers.

### Operational Boundaries

BSON comparison, indexing, and numeric semantics follow DocumentDB's implementation and should not be assumed to match PostgreSQL `jsonb`. Most objects are infrastructure for `documentdb`; applications seeking collections and MongoDB commands should use the parent extension or gateway rather than building directly on internal types.

Use SQL extension version 1.0-0 with matching DocumentDB components. This core layer continues to supply BSON infrastructure; collection and gateway workflows belong to the parent extension.
