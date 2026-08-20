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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/documentdb-0.114-0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">documentdb-0.114-0.tar.gz</div>
    <div class="ext-card__desc">documentdb-0.114-0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`documentdb`**](/ext/e/documentdb) | `0.114` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9000  | [**`documentdb`**](/ext/e/documentdb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9010  | [**`documentdb_core`**](/ext/e/documentdb_core) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9020  | [**`documentdb_distributed`**](/ext/e/documentdb_distributed) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 9030  | [**`documentdb_extended_rum`**](/ext/e/documentdb_extended_rum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`citus`](/ext/e/citus) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb`](/ext/e/documentdb) [`mongo_fdw`](/ext/e/mongo_fdw) [`citus`](/ext/e/citus) [`pg_projection`](/ext/e/pg_projection) [`jsquery`](/ext/e/jsquery) [`pgbson`](/ext/e/pgbson) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `documentdb` | `citus`, `documentdb_core`, `documentdb` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `documentdb_$v` | `postgresql$v-contrib`, `pg_cron_$v`, `pgvector_$v`, `rum_$v`, `postgis36_$v` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-documentdb` | `postgresql-$v-cron`, `postgresql-$v-pgvector`, `postgresql-$v-rum`, `postgresql-$v-postgis-3` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | AVAIL PIGSTY 0.114 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | AVAIL PGDG 0.114 4 | N/A PIGSTY - 0 |
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

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install documentdb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y documentdb -v 18  # PG 18
pig ext install -y documentdb -v 17  # PG 17
pig ext install -y documentdb -v 16  # PG 16
pig ext install -y documentdb -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y documentdb_18       # PG 18
dnf install -y documentdb_17       # PG 17
dnf install -y documentdb_16       # PG 16
dnf install -y documentdb_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-documentdb   # PG 18
apt install -y postgresql-17-documentdb   # PG 17
apt install -y postgresql-16-documentdb   # PG 16
apt install -y postgresql-15-documentdb   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'citus, pg_documentdb, pg_documentdb_core';
```


**Create Extension**:

```sql
CREATE EXTENSION documentdb_distributed CASCADE;  -- requires: citus, documentdb_core, documentdb
```

## Usage

Sources:

- [`documentdb_distributed` v0.114-0 control file](https://github.com/documentdb/documentdb/blob/v0.114-0/internal/pg_documentdb_distributed/documentdb_distributed.control)
- [DocumentDB package scope](https://github.com/documentdb/documentdb/blob/v0.114-0/packaging/README.md)
- [Official preload helper](https://github.com/documentdb/documentdb/blob/v0.114-0/scripts/preload_libraries.sh)
- [DocumentDB v0.114-0 changelog](https://github.com/documentdb/documentdb/blob/v0.114-0/CHANGELOG.md)

`documentdb_distributed` is DocumentDB's internal multi-node execution layer. It integrates the public `documentdb` API with Citus; it is not a standalone document API and does not add a separate client workflow.

### Prerequisites and Install

All nodes need matching builds of Citus, `documentdb_core`, `documentdb`, and `documentdb_distributed`. The official helper places the libraries in preload order; restart every node after changing it:

```conf
shared_preload_libraries = 'citus, pg_cron, pg_documentdb_core, pg_documentdb, pg_documentdb_distributed'
```

After the Citus topology and the base DocumentDB stack are configured, install the distributed component as a superuser:

```sql
CREATE EXTENSION documentdb CASCADE;
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

The upstream `packaging/README.md` explicitly says the standard packages do not include the `internal/pg_documentdb_distributed` component. Confirm that a distribution actually ships this extension before adding it to configuration. Version 0.114-0 includes a sharded `$sample` optimization fix behind a feature flag; it should not be treated as unconditional behavior.
