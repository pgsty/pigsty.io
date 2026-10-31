---
title: "documentdb_distributed"
linkTitle: "documentdb_distributed"
description: "Multi-Node API surface for DocumentDB"
weight: 9020
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/documentdb/documentdb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">documentdb/documentdb</div>
    <div class="ext-card__desc">https://github.com/documentdb/documentdb</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`documentdb`**](/ext/e/documentdb) | `1.0-0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9000  | [**`documentdb`**](/ext/e/documentdb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `documentdb_api` |
| 9010  | [**`documentdb_core`**](/ext/e/documentdb_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `documentdb_core` |
| 9020  | [**`documentdb_distributed`**](/ext/e/documentdb_distributed) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9030  | [**`documentdb_extended_rum`**](/ext/e/documentdb_extended_rum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | `documentdb_extended_rum_catalog` |
{.ext-table}

| **Related** | [`citus`](/ext/e/citus) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb`](/ext/e/documentdb) [`mongo_fdw`](/ext/e/mongo_fdw) [`citus`](/ext/e/citus) [`pg_projection`](/ext/e/pg_projection) [`jsquery`](/ext/e/jsquery) [`pgbson`](/ext/e/pgbson) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Obsolete; internal DocumentDB component, excluded from current OSS packages.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | - | `1.0-0` | {{< pgvers "18,17,16" >}} | `documentdb` | `citus`, `documentdb_core`, `documentdb` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| d13.x86_64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A - - 0 |
| d13.aarch64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A - - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 0.117 1 | N/A - - 0 |
| u26.x86_64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A - - 0 |
| u26.aarch64 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | AVAIL PGDG 1.0 4 | N/A - - 0 |
{{< /pgext_matrix >}}


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


**Preload**:

```bash
shared_preload_libraries = 'citus, pg_documentdb_core, pg_cron, pg_documentdb';
```


**Create Extension**:

```sql
CREATE EXTENSION documentdb_distributed CASCADE;  -- requires: citus, documentdb_core, documentdb
```

## Usage

Sources:

- [`documentdb_distributed` v1.0-0 control file](https://github.com/documentdb/documentdb/blob/v1.0-0/internal/pg_documentdb_distributed/documentdb_distributed.control)
- [DocumentDB package scope](https://github.com/documentdb/documentdb/blob/v1.0-0/packaging/README.md)
- [Official preload helper](https://github.com/documentdb/documentdb/blob/v1.0-0/scripts/preload_libraries.sh)
- [DocumentDB v1.0-0 changelog](https://github.com/documentdb/documentdb/blob/v1.0-0/CHANGELOG.md)

`documentdb_distributed` is DocumentDB's internal multi-node execution layer. It integrates the public `documentdb` API with Citus; it is not a standalone document API and does not add a separate client workflow.

### Prerequisites and Install

All nodes need matching builds of Citus, `documentdb_core`, `documentdb`, and `documentdb_distributed`. The official helper places the libraries in preload order; restart every node after changing it:

```ini
shared_preload_libraries = 'pg_cron, citus, pg_documentdb_core, pg_documentdb, pg_documentdb_distributed, pg_documentdb_extended_rum'
```

After the Citus topology and the base DocumentDB stack are configured, install the distributed component as a superuser:

```sql
CREATE EXTENSION documentdb CASCADE;
CREATE EXTENSION documentdb_extended_rum;
CREATE EXTENSION documentdb_distributed;

SELECT extname, extversion
FROM pg_extension
WHERE extname IN ('citus', 'documentdb_core', 'documentdb', 'documentdb_distributed');
```

Use the normal DocumentDB gateway or `documentdb_api` functions after installation. Collection placement, shard topology, worker availability, and metadata consistency must be managed as part of the cluster deployment.

### Important Boundaries

- The control file requires `citus`, `documentdb_core`, and `documentdb` and marks the extension superuser-only and non-relocatable.
- `documentdb_distributed` supplies distributed planner and execution support to existing DocumentDB commands; it is not an alternative to the public API extension.
- Release versions should remain synchronized across coordinators and workers before extension upgrades are attempted.
- Backup, restore, failover, and rolling-upgrade procedures must include both Citus metadata and DocumentDB data.

This component lives under the upstream internal directory. Confirm that the selected distribution actually ships its control file, SQL and library before enabling it; a base DocumentDB package alone is not evidence of distributed-component availability. Keep Citus and all DocumentDB components on compatible builds.
