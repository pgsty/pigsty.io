---
title: "documentdb_extended_rum"
linkTitle: "documentdb_extended_rum"
description: "DocumentDB Extended RUM index access method"
weight: 9030
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

| **Related** | [`documentdb`](/ext/e/documentdb) [`rum`](/ext/e/rum) [`documentdb`](/ext/e/documentdb) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb_distributed`](/ext/e/documentdb_distributed) [`mongo_fdw`](/ext/e/mongo_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.114` | {{< pgvers "18,17,16,15" >}} | `documentdb` | `documentdb` |
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install documentdb;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y documentdb -v 18  # PG 18
pig ext install -y documentdb -v 17  # PG 17
pig ext install -y documentdb -v 16  # PG 16
pig ext install -y documentdb -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y documentdb_18       # PG 18
dnf install -y documentdb_17       # PG 17
dnf install -y documentdb_16       # PG 16
dnf install -y documentdb_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-documentdb   # PG 18
apt install -y postgresql-17-documentdb   # PG 17
apt install -y postgresql-16-documentdb   # PG 16
apt install -y postgresql-15-documentdb   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_documentdb, pg_documentdb_core, pg_documentdb_extended_rum';
```


**Create Extension**:

```sql
CREATE EXTENSION documentdb_extended_rum CASCADE;  -- requires: documentdb
```

## Usage

Sources:

- [DocumentDB Extended RUM README](https://github.com/documentdb/documentdb/blob/v0.114-0/pg_documentdb_extended_rum/README.md)
- [`documentdb_extended_rum` control file](https://github.com/documentdb/documentdb/blob/v0.114-0/pg_documentdb_extended_rum/documentdb_extended_rum.control)
- [Access-method SQL definitions](https://github.com/documentdb/documentdb/blob/v0.114-0/pg_documentdb_extended_rum/sql/documentdb_extended_rum--0.106-0.sql)
- [DocumentDB v0.114-0 changelog](https://github.com/documentdb/documentdb/blob/v0.114-0/CHANGELOG.md)

`documentdb_extended_rum` is DocumentDB's extended RUM index access method. It is an implementation component selected by DocumentDB's indexing layer, not a general-purpose application index or a replacement for installing `documentdb`.

### Configure and Install

The library can only be initialized from `shared_preload_libraries`. Preload it after the base DocumentDB libraries and restart PostgreSQL:

```conf
shared_preload_libraries = 'pg_cron, pg_documentdb_core, pg_documentdb, pg_documentdb_extended_rum'
documentdb.alternate_index_handler_name = 'extended_rum'
```

Then install the extension using the same release as the base stack:

```sql
CREATE EXTENSION documentdb CASCADE;
CREATE EXTENSION documentdb_extended_rum;
```

DocumentDB deployment tooling normally owns this configuration. Existing databases should follow the release-specific upgrade procedure rather than switching an index handler ad hoc.

### Important Objects

- `documentdb_extended_rum` is the index access method registered by the extension.
- `documentdb_extended_rum_catalog` contains BSON operator families and classes used by DocumentDB.
- `documentdb.alternate_index_handler_name = 'extended_rum'` directs the DocumentDB index layer to the adapter.
- The implementation is a RUM fork whose on-disk layout and content are designed to remain backward compatible with upstream RUM while changing query and volatile paths for document workloads.

### Operational Boundaries

Install and upgrade this component with matching `documentdb` and `documentdb_core` binaries. Do not build indexes with its internal operator classes directly unless following upstream development guidance; create and manage indexes through the DocumentDB APIs so metadata stays consistent.

The v0.114-0 changelog describes a RUM WAL page-reuse marker and targeted posting-tree pruning, but both are feature-flagged and disabled by default pending stabilization. They are not default user-visible capabilities of this release.
