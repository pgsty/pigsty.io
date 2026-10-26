---
title: "stannum"
linkTitle: "stannum"
description: "Experimental TINQL text search with BM25 and segmented indexes"
weight: 2320
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/TeamSpringbird/stannum">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">TeamSpringbird/stannum</div>
    <div class="ext-card__desc">https://github.com/TeamSpringbird/stannum</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/stannum-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">stannum-0.1.0.tar.gz</div>
    <div class="ext-card__desc">stannum-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`stannum`**](/ext/e/stannum) | `0.1.0` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30orlater" href="/ext/license#agpl30orlater">AGPL-3.0-or-later</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2320  | [**`stannum`**](/ext/e/stannum) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `stannum` |
{.ext-table}

| **Related** | [`tin`](/ext/e/tin) [`pg_search`](/ext/e/pg_search) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Unreleased 0.1.0-dev snapshot; no version release/tag. Conflicts with tin in the same database. Optional preload enables maintenance workers and standby index reads; preload must match on primary and standbys.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17" >}} | `stannum` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "17,18" >}} | `stannum_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "17,18" >}} | `postgresql-$v-stannum` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 stannum_18 stannum_18-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/stannum_18-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 stannum_18 stannum_18-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/stannum_18-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 stannum_18 stannum_18-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/stannum_18-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 stannum_18 stannum_18-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/stannum_18-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 stannum_18 stannum_18-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/stannum_18-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 stannum_18 stannum_18-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/stannum_18-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 2.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-stannum postgresql-18-stannum_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/stannum/postgresql-18-stannum_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 stannum_17 stannum_17-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/stannum_17-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 stannum_17 stannum_17-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/stannum_17-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 stannum_17 stannum_17-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/stannum_17-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 stannum_17 stannum_17-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 3.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/stannum_17-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 stannum_17 stannum_17-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/stannum_17-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 stannum_17 stannum_17-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 3.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/stannum_17-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 3.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-stannum postgresql-17-stannum_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/stannum/postgresql-17-stannum_0.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `stannum` using `pig build`:

```bash
pig build pkg stannum         # build RPM / DEB packages
```


## Install

You can install `stannum` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install stannum;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y stannum -v 18  # PG 18
pig ext install -y stannum -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y stannum_18       # PG 18
dnf install -y stannum_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-stannum   # PG 18
apt install -y postgresql-17-stannum   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION stannum;
```

## Usage

Sources:

- [README](https://github.com/TeamSpringbird/stannum/blob/e163585cb9d6b6f78b8de067a9c4aa33ea238063/README.md)
- [Control file](https://github.com/TeamSpringbird/stannum/blob/e163585cb9d6b6f78b8de067a9c4aa33ea238063/postgres/stannum.control)
- [Cargo.toml](https://github.com/TeamSpringbird/stannum/blob/e163585cb9d6b6f78b8de067a9c4aa33ea238063/Cargo.toml)
- [postgres/sql/stannum--0.1.0.sql](https://github.com/TeamSpringbird/stannum/blob/e163585cb9d6b6f78b8de067a9c4aa33ea238063/postgres/sql/stannum--0.1.0.sql)

`stannum` is an experimental text-search extension derived from Lead, with persistent indexes, Boolean and phrase queries, and BM25 scoring. The reviewed 0.1.0 source has its own extension identity and storage format.

### Core Workflow

```sql
CREATE EXTENSION stannum;
CREATE TABLE documents (id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY, body text);
INSERT INTO documents (body) VALUES
  ('PostgreSQL supports full text search'), ('Search with exact phrase matching');
CREATE INDEX documents_search ON documents USING stannum (body);
ANALYZE documents;
SELECT id, stannum.full_score(ctid) AS score
FROM documents WHERE body ==> 'search' ORDER BY score DESC LIMIT 10;
SELECT * FROM stannum.segment_info('documents_search');
SELECT * FROM stannum.verify_index('documents_search', heap_check => true);
```

### Operation and Compatibility

The `==>` operator accepts TINQL. `stannum.highlight` marks matching text; `stannum.segment_info` inspects index segments and `stannum.verify_index` checks their consistency, optionally against the heap. Index maintenance follows PostgreSQL writes and vacuum.

PostgreSQL 17 and 18 are build targets, with most current lifecycle evidence on 18. A superuser installs the extension in its fixed `stannum` schema. Primary-server use loads on demand. For standby index reads, add the library to `shared_preload_libraries` on both primary and standbys and restart those servers.

### Migration Boundary

Do not install `tin` and `stannum` in the same database: their global `==>` operator conflicts. There is no supported in-place migration from the earlier extension names or storage layouts. Treat this as experimental software and validate recovery and maintenance on the intended workload.
