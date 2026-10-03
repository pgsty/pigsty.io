---
title: "pg_textsearch"
linkTitle: "pg_textsearch"
description: "Full-text search with BM25 ranking"
weight: 2180
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/timescale/pg_textsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">timescale/pg_textsearch</div>
    <div class="ext-card__desc">https://github.com/timescale/pg_textsearch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_textsearch-1.5.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_textsearch-1.5.1.tar.gz</div>
    <div class="ext-card__desc">pg_textsearch-1.5.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_textsearch`**](/ext/e/pg_textsearch) | `1.5.1` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2180  | [**`pg_textsearch`**](/ext/e/pg_textsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_fts`](/ext/e/pg_fts) [`pgroonga`](/ext/e/pgroonga) [`pg_rrf`](/ext/e/pg_rrf) [`psql_bm25s`](/ext/e/psql_bm25s) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> bm25 am conflicts with pg_search and vchord_bm25


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.5.1` | {{< pgvers "18,17" >}} | `pg_textsearch` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5.1` | {{< pgvers "18,17" >}} | `pg_textsearch_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5.1` | {{< pgvers "18,17" >}} | `postgresql-$v-textsearch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.5.1 2 | AVAIL PGDG 1.5.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el8.aarch64 | AVAIL PGDG 1.5.1 2 | AVAIL PGDG 1.5.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 1.5.1 2 | AVAIL PGDG 1.5.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.aarch64 | AVAIL PGDG 1.5.1 2 | AVAIL PGDG 1.5.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 1.5.1 2 | AVAIL PGDG 1.5.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.aarch64 | AVAIL PGDG 1.5.1 2 | AVAIL PGDG 1.5.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.5.1 1 | AVAIL PIGSTY 1.5.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.5.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.1 210.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_textsearch_18-1.5.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 129.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_textsearch_18-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.5.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.1 194.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_textsearch_18-1.5.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 122.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_textsearch_18-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.5.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.5.1 206.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_textsearch_18-1.5.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 125.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_textsearch_18-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.5.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.5.1 196.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_textsearch_18-1.5.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 123.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_textsearch_18-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.5.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.5.1 212.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_textsearch_18-1.5.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_textsearch_18 pg_textsearch_18-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 129.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_textsearch_18-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.5.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.1 200.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_textsearch_18-1.5.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_textsearch_18 pg_textsearch_18-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 125.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_textsearch_18-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~bookworm_amd64.deb pigsty 1.5.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~bookworm_arm64.deb pigsty 1.5.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~trixie_amd64.deb pigsty 1.5.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~trixie_arm64.deb pigsty 1.5.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~jammy_amd64.deb pigsty 1.5.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~jammy_arm64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~noble_amd64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~noble_arm64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~resolute_amd64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-textsearch postgresql-18-textsearch_1.5.1-1PGSTY~resolute_arm64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-18-textsearch_1.5.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.5.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.5.1 210.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_textsearch_17-1.5.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 129.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_textsearch_17-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.5.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.5.1 194.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_textsearch_17-1.5.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 122.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_textsearch_17-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.5.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.5.1 206.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_textsearch_17-1.5.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.0 125.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_textsearch_17-1.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.5.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.5.1 196.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_textsearch_17-1.5.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.0 123.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_textsearch_17-1.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.5.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.5.1 212.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_textsearch_17-1.5.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_textsearch_17 pg_textsearch_17-1.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.0 129.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_textsearch_17-1.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.5.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.5.1 199.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_textsearch_17-1.5.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_textsearch_17 pg_textsearch_17-1.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.0 125.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_textsearch_17-1.4.0-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~bookworm_amd64.deb pigsty 1.5.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~bookworm_arm64.deb pigsty 1.5.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~trixie_amd64.deb pigsty 1.5.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~trixie_arm64.deb pigsty 1.5.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~jammy_amd64.deb pigsty 1.5.1 2.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~jammy_arm64.deb pigsty 1.5.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~noble_amd64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~noble_arm64.deb pigsty 1.5.1 1.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~resolute_amd64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-textsearch postgresql-17-textsearch_1.5.1-1PGSTY~resolute_arm64.deb pigsty 1.5.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-textsearch/postgresql-17-textsearch_1.5.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_textsearch` using `pig build`:

```bash
pig build pkg pg_textsearch         # build RPM / DEB packages
```


## Install

You can install `pg_textsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_textsearch;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_textsearch -v 18  # PG 18
pig ext install -y pg_textsearch -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_textsearch_18       # PG 18
dnf install -y pg_textsearch_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-textsearch   # PG 18
apt install -y postgresql-17-textsearch   # PG 17
```


**Preload**:

```bash
shared_preload_libraries = 'pg_textsearch';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_textsearch;
```

## Usage

Sources:

- [Version 1.5.1 README](https://github.com/timescale/pg_textsearch/blob/v1.5.1/README.md)
- [Control file](https://github.com/timescale/pg_textsearch/blob/v1.5.1/pg_textsearch.control)
- [Versioned SQL](https://github.com/timescale/pg_textsearch/blob/v1.5.1/sql/pg_textsearch--1.5.1.sql)
- [Version 1.5.1 release](https://github.com/timescale/pg_textsearch/releases/tag/v1.5.1)

`pg_textsearch` provides BM25-ranked full-text search with the `bm25` access method and `<@>` operator. Version 1.5.1 supports PostgreSQL 17 and 18 and requires preloading and restart. Preserve other entries when updating the preload list.

### Build and Query

```conf
shared_preload_libraries = 'pg_textsearch'
```

```sql
CREATE EXTENSION pg_textsearch;
CREATE TABLE documents (id bigserial PRIMARY KEY, content text);
INSERT INTO documents(content) VALUES
    ('PostgreSQL is a database system'),
    ('BM25 ranks full text search results');
CREATE INDEX docs_idx ON documents USING bm25(content)
WITH (text_config = 'english');

SELECT id, content <@> 'database system' AS score
FROM documents
ORDER BY content <@> 'database system'
LIMIT 5;
```

Scores are negative BM25 values, so lower scores rank first. Use `ORDER BY` with `LIMIT` for top-k execution. Specify the index explicitly for standalone scoring, partial indexes, or PL/pgSQL:

```sql
SELECT id FROM documents
ORDER BY content <@> to_bm25query('database system', 'docs_idx')
LIMIT 5;
```

### Index and Query Options

`text_config` is required and names a PostgreSQL text search configuration. `k1` defaults to 1.2 and `b` to 0.75. The `bm25query` type and `to_bm25query(text, text)` carry explicit query/index context. Standalone scoring requires SELECT permission on the table or indexed columns.

The extension supports `text[]`, `varchar[]` and `bpchar[]`, immutable text expression indexes, partial indexes and partitioned tables. Repeat an indexed expression in the query. Partial indexes need the matching predicate and an explicit index name. Version 1.5.0 improves filtered top-k execution, but restrictive post-filters can still return fewer rows than requested.

For Chinese tokenization, configure a parser such as `zhparser` and use that text search configuration. This is an optional workflow dependency. For very large texts without whitespace word boundaries, upstream recommends application-controlled chunks in a text array.

### Maintenance and Configuration

Starting with 1.3.0, the durable memtable is stored in index pages and uses standard PostgreSQL WAL replay. Queries can still use a shared-memory read cache, controlled by the cache and memory-limit settings below. Automatic compaction runs during spills, so write-heavy workloads can observe synchronous compaction latency.

```sql
SELECT bm25_spill_index('docs_idx');
SELECT bm25_force_merge('docs_idx');
```

Use force-merge after bulk loading rather than during steady write traffic. VACUUM also spills pending memtable pages. Relevant settings are:

| Setting | Default | Purpose |
| --- | --- | --- |
| `pg_textsearch.default_limit` | 1000 | Scoring bound without a query limit |
| `pg_textsearch.compress_segments` | on | Posting-block compression |
| `pg_textsearch.segments_per_level` | 8 | Compaction threshold |
| `pg_textsearch.bulk_load_threshold` | 100000 | Terms per transaction before spilling |
| `pg_textsearch.memtable_pages_threshold` | 64 | Chain-page count before spilling |
| `pg_textsearch.memtable_cache_enabled` | on | Shared-memory read cache |
| `pg_textsearch.memory_limit` | 2GB | Approximate cache admission budget; 0 removes the limit |

Parallel builds require at least 64 MB of `maintenance_work_mem` and available parallel maintenance workers. For upgrades, install the matching binary, restart PostgreSQL and run the extension update according to the release instructions.

```sql
ALTER EXTENSION pg_textsearch UPDATE;
```

### Boundaries

The `bm25` access-method name conflicts with `pg_search` and `vchord_bm25`; do not install conflicting providers in the same database. Phrase matching uses conservative heap rechecks where needed. Partition scores use partition-local statistics and may not be comparable across partitions. Very long tokens inherit PostgreSQL text-search limits. Fixed LWLock tranche IDs can also conflict with another extension and produce misleading wait-event names.

### Version 1.5.0 Queries and Maintenance

Boolean filtering now accepts PostgreSQL `tsquery`, including AND/OR/NOT, pure-negative, prefix, weight and phrase conditions. Phrase/weight conditions may require heap rechecks. PostgreSQL 19 support is beta. Optional managed background compaction requires `pg_durable` 0.2.8+ in the same configured database, preloaded and configured according to upstream; inline/manual modes do not require it. `pg_textsearch.allow_rls` defaults on: BM25 statistics include all indexed rows, including rows hidden by RLS. Turning it off prevents new/rebuilt BM25 indexes on protected tables and related RLS enablement; it does not disable existing indexes.

### Upgrade to 1.5.1

Version 1.5.1 fixes concurrent spill/force-merge truncation corruption, expression-index and array/domain handling, and maintenance in databases without the extension. Install the matching library, restart PostgreSQL, then run the extension update in each database. The 1.5.0-to-1.5.1 migration checks that the library was preloaded; it adds no SQL object or explicit index-format migration.

```sql
ALTER EXTENSION pg_textsearch UPDATE TO '1.5.1';
```

The cache budget is approximate and concurrent work can exceed it. Hot standbys serving BM25 queries require `hot_standby_feedback = on` to delay physical page reuse while snapshots are active. Mutating maintenance helpers require index ownership and cannot run during recovery; published physical merge replacements are not undone by transaction rollback.
