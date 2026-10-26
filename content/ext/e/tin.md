---
title: "tin"
linkTitle: "tin"
description: "TIN-compatible text search for development and testing"
weight: 2310
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/planetscale/lead">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">planetscale/lead</div>
    <div class="ext-card__desc">https://github.com/planetscale/lead</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/lead-1.0.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">lead-1.0.6.tar.gz</div>
    <div class="ext-card__desc">lead-1.0.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`lead`**](/ext/e/tin) | `1.0.6` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license agpl30orlater" href="/ext/license#agpl30orlater">AGPL-3.0-or-later</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2310  | [**`tin`**](/ext/e/tin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `tin` |
{.ext-table}

| **Related** | [`stannum`](/ext/e/stannum) [`pg_search`](/ext/e/pg_search) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Untagged 1.0.6 source snapshot for development/CI, not production PlanetScale TIN. Conflicts with stannum in the same database.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.6` | {{< pgvers "18,17" >}} | `lead` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.6` | {{< pgvers "17,18" >}} | `lead_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.6` | {{< pgvers "17,18" >}} | `postgresql-$v-lead` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.6 1 | AVAIL PIGSTY 1.0.6 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 lead_18 lead_18-1.0.6-1PGSTY.el8.x86_64.rpm pigsty 1.0.6 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lead_18-1.0.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 lead_18 lead_18-1.0.6-1PGSTY.el8.aarch64.rpm pigsty 1.0.6 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lead_18-1.0.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 lead_18 lead_18-1.0.6-1PGSTY.el9.x86_64.rpm pigsty 1.0.6 2.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lead_18-1.0.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 lead_18 lead_18-1.0.6-1PGSTY.el9.aarch64.rpm pigsty 1.0.6 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lead_18-1.0.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 lead_18 lead_18-1.0.6-1PGSTY.el10.x86_64.rpm pigsty 1.0.6 2.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lead_18-1.0.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 lead_18 lead_18-1.0.6-1PGSTY.el10.aarch64.rpm pigsty 1.0.6 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lead_18-1.0.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~bookworm_amd64.deb pigsty 1.0.6 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~bookworm_arm64.deb pigsty 1.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~trixie_amd64.deb pigsty 1.0.6 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~trixie_arm64.deb pigsty 1.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~jammy_amd64.deb pigsty 1.0.6 2.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~jammy_arm64.deb pigsty 1.0.6 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~noble_amd64.deb pigsty 1.0.6 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~noble_arm64.deb pigsty 1.0.6 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~resolute_amd64.deb pigsty 1.0.6 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-lead postgresql-18-lead_1.0.6-1PGSTY~resolute_arm64.deb pigsty 1.0.6 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/lead/postgresql-18-lead_1.0.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 lead_17 lead_17-1.0.6-1PGSTY.el8.x86_64.rpm pigsty 1.0.6 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lead_17-1.0.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 lead_17 lead_17-1.0.6-1PGSTY.el8.aarch64.rpm pigsty 1.0.6 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lead_17-1.0.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 lead_17 lead_17-1.0.6-1PGSTY.el9.x86_64.rpm pigsty 1.0.6 2.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lead_17-1.0.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 lead_17 lead_17-1.0.6-1PGSTY.el9.aarch64.rpm pigsty 1.0.6 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lead_17-1.0.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 lead_17 lead_17-1.0.6-1PGSTY.el10.x86_64.rpm pigsty 1.0.6 2.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lead_17-1.0.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 lead_17 lead_17-1.0.6-1PGSTY.el10.aarch64.rpm pigsty 1.0.6 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lead_17-1.0.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~bookworm_amd64.deb pigsty 1.0.6 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~bookworm_arm64.deb pigsty 1.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~trixie_amd64.deb pigsty 1.0.6 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~trixie_arm64.deb pigsty 1.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~jammy_amd64.deb pigsty 1.0.6 2.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~jammy_arm64.deb pigsty 1.0.6 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~noble_amd64.deb pigsty 1.0.6 2.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~noble_arm64.deb pigsty 1.0.6 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~resolute_amd64.deb pigsty 1.0.6 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-lead postgresql-17-lead_1.0.6-1PGSTY~resolute_arm64.deb pigsty 1.0.6 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/lead/postgresql-17-lead_1.0.6-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `lead` using `pig build`:

```bash
pig build pkg lead         # build RPM / DEB packages
```


## Install

You can install `lead` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install lead;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y lead -v 18  # PG 18
pig ext install -y lead -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y lead_18       # PG 18
dnf install -y lead_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-lead   # PG 18
apt install -y postgresql-17-lead   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION tin;
```

## Usage

Sources:

- [README](https://github.com/planetscale/lead/blob/e3ed2f4ce1388167b0254a0c0c706a61d0a37d83/README.md)
- [Control file](https://github.com/planetscale/lead/blob/e3ed2f4ce1388167b0254a0c0c706a61d0a37d83/postgres/tin.control)
- [Cargo.toml](https://github.com/planetscale/lead/blob/e3ed2f4ce1388167b0254a0c0c706a61d0a37d83/Cargo.toml)
- [postgres/src/lib.rs](https://github.com/planetscale/lead/blob/e3ed2f4ce1388167b0254a0c0c706a61d0a37d83/postgres/src/lib.rs)
- [PlanetScale TIN and Lead](https://planetscale.com/docs/postgres/search)

`tin` is the extension name of Lead, a TIN-compatible text-search implementation for development, CI, and staging. The reviewed 1.0.6 source snapshot deliberately trades performance for a small reference implementation and is unsuitable for production search.

### Core Workflow

```sql
CREATE EXTENSION tin;
CREATE TABLE documents (id integer, body text);
INSERT INTO documents VALUES (1, 'craft beer'), (2, 'wine'), (3, 'beer festival');
CREATE INDEX documents_search ON documents USING tin (body);
SELECT id, tin.full_score(ctid) AS score
FROM documents WHERE body ==> 'beer' ORDER BY score DESC;
```

### Objects and Behavior

The `tin` access method and `==>` operator evaluate TINQL predicates. `tin.score`, `tin.full_score`, `tin.max_score`, and `tin.score_inspect` expose scoring; `tin.highlight` and `tin.highlight_ansi` mark matches. Scoring calls bind to the matching search expression and index.

Every index scan returns all heap pages as lossy candidates. PostgreSQL rechecks the visible tuples, expressions, and partial-index predicates. The index stores no search data; scoring may rescan visible heap rows. This preserves query semantics without providing a production inverted index.

### Requirements

The reviewed source targets PostgreSQL 17 and 18. Installation requires a superuser; objects use the fixed `tin` schema. The library loads on demand and needs no preload or restart. Keep realistic data volumes in mind when using it in tests.

PlanetScale documents TIN as its production search implementation and Lead as the local development substitute. Both use the canonical extension name `tin`; this catalog entry tracks the open-source Lead implementation. Its source-snapshot version is not a claim about the version deployed by PlanetScale.

The current source adds a trailing `stemmer` argument to `tin.tokenize`, `tin.ql_parse`, `tin.highlight`, and `tin.highlight_ansi`, while keeping the earlier signatures under names ending in `_v1_0_3`. Changing an index's `stemmer` requires `REINDEX`. A score call must be at the same query level as its matching `==>` predicate.
