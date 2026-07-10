---
title: "pgmnemo"
linkTitle: "pgmnemo"
description: "Provenance-gated vector memory for LLM agents in PostgreSQL"
weight: 1900
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgmnemo/pgmnemo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgmnemo/pgmnemo</div>
    <div class="ext-card__desc">https://github.com/pgmnemo/pgmnemo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmnemo-0.12.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmnemo-0.12.1.tar.gz</div>
    <div class="ext-card__desc">pgmnemo-0.12.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmnemo`**](/ext/e/pgmnemo) | `0.12.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1900  | [**`pgmnemo`**](/ext/e/pgmnemo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `pgmnemo` |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`vector`](/ext/e/vector) [`pg_search`](/ext/e/pg_search) [`pg_ai_query`](/ext/e/pg_ai_query) [`pg_later`](/ext/e/pg_later) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL-only extension; requires pgvector.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.12.1` | {{< pgvers "14,15,16,17,18" >}} | `pgmnemo` | `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.12.1` | {{< pgvers "14,15,16,17,18" >}} | `pgmnemo_$v` | `pgvector` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.12.1` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pgmnemo` | `pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 | AVAIL PIGSTY 0.12.1 1 |
@ el8.x86_64 18 pgmnemo_18 pgmnemo_18-0.12.1-1PIGSTY.el8.x86_64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_18-0.12.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmnemo_18 pgmnemo_18-0.12.1-1PIGSTY.el8.aarch64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_18-0.12.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmnemo_18 pgmnemo_18-0.12.1-1PIGSTY.el9.x86_64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_18-0.12.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmnemo_18 pgmnemo_18-0.12.1-1PIGSTY.el9.aarch64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_18-0.12.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmnemo_18 pgmnemo_18-0.12.1-1PIGSTY.el10.x86_64.rpm pigsty 0.12.1 134.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_18-0.12.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmnemo_18 pgmnemo_18-0.12.1-1PIGSTY.el10.aarch64.rpm pigsty 0.12.1 133.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_18-0.12.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pgmnemo_17 pgmnemo_17-0.12.1-1PIGSTY.el8.x86_64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_17-0.12.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmnemo_17 pgmnemo_17-0.12.1-1PIGSTY.el8.aarch64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_17-0.12.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmnemo_17 pgmnemo_17-0.12.1-1PIGSTY.el9.x86_64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_17-0.12.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmnemo_17 pgmnemo_17-0.12.1-1PIGSTY.el9.aarch64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_17-0.12.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmnemo_17 pgmnemo_17-0.12.1-1PIGSTY.el10.x86_64.rpm pigsty 0.12.1 134.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_17-0.12.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmnemo_17 pgmnemo_17-0.12.1-1PIGSTY.el10.aarch64.rpm pigsty 0.12.1 133.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_17-0.12.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pgmnemo_16 pgmnemo_16-0.12.1-1PIGSTY.el8.x86_64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_16-0.12.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmnemo_16 pgmnemo_16-0.12.1-1PIGSTY.el8.aarch64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_16-0.12.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmnemo_16 pgmnemo_16-0.12.1-1PIGSTY.el9.x86_64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_16-0.12.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmnemo_16 pgmnemo_16-0.12.1-1PIGSTY.el9.aarch64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_16-0.12.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmnemo_16 pgmnemo_16-0.12.1-1PIGSTY.el10.x86_64.rpm pigsty 0.12.1 134.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_16-0.12.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmnemo_16 pgmnemo_16-0.12.1-1PIGSTY.el10.aarch64.rpm pigsty 0.12.1 133.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_16-0.12.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pgmnemo_15 pgmnemo_15-0.12.1-1PIGSTY.el8.x86_64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_15-0.12.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmnemo_15 pgmnemo_15-0.12.1-1PIGSTY.el8.aarch64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_15-0.12.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmnemo_15 pgmnemo_15-0.12.1-1PIGSTY.el9.x86_64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_15-0.12.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmnemo_15 pgmnemo_15-0.12.1-1PIGSTY.el9.aarch64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_15-0.12.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmnemo_15 pgmnemo_15-0.12.1-1PIGSTY.el10.x86_64.rpm pigsty 0.12.1 134.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_15-0.12.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmnemo_15 pgmnemo_15-0.12.1-1PIGSTY.el10.aarch64.rpm pigsty 0.12.1 133.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_15-0.12.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pgmnemo_14 pgmnemo_14-0.12.1-1PIGSTY.el8.x86_64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_14-0.12.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmnemo_14 pgmnemo_14-0.12.1-1PIGSTY.el8.aarch64.rpm pigsty 0.12.1 158.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_14-0.12.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmnemo_14 pgmnemo_14-0.12.1-1PIGSTY.el9.x86_64.rpm pigsty 0.12.1 133.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_14-0.12.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmnemo_14 pgmnemo_14-0.12.1-1PIGSTY.el9.aarch64.rpm pigsty 0.12.1 133.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_14-0.12.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmnemo_14 pgmnemo_14-0.12.1-1PIGSTY.el10.x86_64.rpm pigsty 0.12.1 134.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_14-0.12.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmnemo_14 pgmnemo_14-0.12.1-1PIGSTY.el10.aarch64.rpm pigsty 0.12.1 133.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_14-0.12.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb pigsty 0.12.1 124.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb pigsty 0.12.1 125.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~noble_all.deb pigsty 0.12.1 124.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb pigsty 0.12.1 124.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.12.1-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmnemo` using `pig build`:

```bash
pig build pkg pgmnemo         # build RPM / DEB packages
```


## Install

You can install `pgmnemo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmnemo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmnemo -v 18  # PG 18
pig ext install -y pgmnemo -v 17  # PG 17
pig ext install -y pgmnemo -v 16  # PG 16
pig ext install -y pgmnemo -v 15  # PG 15
pig ext install -y pgmnemo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmnemo_18       # PG 18
dnf install -y pgmnemo_17       # PG 17
dnf install -y pgmnemo_16       # PG 16
dnf install -y pgmnemo_15       # PG 15
dnf install -y pgmnemo_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmnemo   # PG 18
apt install -y postgresql-17-pgmnemo   # PG 17
apt install -y postgresql-16-pgmnemo   # PG 16
apt install -y postgresql-15-pgmnemo   # PG 15
apt install -y postgresql-14-pgmnemo   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmnemo CASCADE;  -- requires: vector
```




## Usage

Sources:

- [PGXN pgmnemo 0.12.1](https://pgxn.org/dist/pgmnemo/0.12.1/)
- [pgmnemo README](https://github.com/pgmnemo/pgmnemo/blob/v0.12.1/README.md)
- [pgmnemo CHANGELOG](https://github.com/pgmnemo/pgmnemo/blob/v0.12.1/CHANGELOG.md)
- [pgmnemo control file](https://github.com/pgmnemo/pgmnemo/blob/v0.12.1/extension/pgmnemo.control)

`pgmnemo` stores agent memory in PostgreSQL and retrieves it through a single multimodal plan that combines pgvector HNSW search, BM25-style text matching, graph-edge proximity, JSONB metadata filtering, temporal filters, and outcome confidence. It is a SQL-only extension that requires `vector`, installs into schema `pgmnemo`, is marked trusted, and does not require superuser privileges in the v0.12.1 control file.

v0.12.1 keeps the v0.12.0 typed write API and changes `guard_no_test_project()` so project-id floor enforcement is opt-in through `pgmnemo.test_project_floor`; the default `0` disables that floor check.

### Install

```sql
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pgmnemo CASCADE;

SELECT pgmnemo.version();
SELECT * FROM pgmnemo.stats();
```

### Ingest Lessons

```sql
SELECT pgmnemo.ingest(
  p_role        := 'developer',
  p_project_id  := 1,
  p_topic       := 'security',
  p_lesson_text := 'Rotate JWT signing keys after a key-compromise incident.',
  p_importance  := 4,
  p_embedding   := NULL,
  p_commit_sha  := 'abc1234',
  p_metadata    := '{"source":"incident-runbook"}'::jsonb
);
```

`pgmnemo.ingest()` is the baseline write path. It applies the provenance gate, validates 1024-dimensional embeddings when supplied, truncates long lesson text according to `pgmnemo.max_query_text_chars`, and stamps `verified_at` when provenance exists.

### Provenance Gate

```sql
SHOW pgmnemo.gate_strict;

SET pgmnemo.gate_strict = 'enforce';
SET pgmnemo.gate_strict = 'warn';
SET pgmnemo.gate_strict = 'off';
```

When `pgmnemo.gate_strict = 'enforce'`, writes without either `commit_sha` or `artifact_hash` are rejected. `warn` accepts the write with an audit warning, and `off` disables the gate.

The v0.12.1 test-project guard is opt-in:

```sql
SHOW pgmnemo.test_project_floor;  -- default 0
SET pgmnemo.test_project_floor = '1000000';
```

With the default `0`, the production-floor check is disabled. Set a positive value in test harnesses that reserve low project IDs.

### Recall

```sql
SELECT lesson_id, topic, lesson_text, score
FROM pgmnemo.recall_fast(
  '<1024-dimensional vector literal>'::vector(1024),
  10,
  'developer',
  1,
  'dag-2026-abc',
  ARRAY['note', 'fact']
);

SELECT lesson_id, topic, score, vec_score, bm25_score, rrf_score, match_confidence
FROM pgmnemo.recall_hybrid(
  '<1024-dimensional vector literal>'::vector(1024),
  'JWT rotation key compromise',
  10,
  'developer',
  1,
  0.4,
  0.4,
  60,
  'dag-2026-abc',
  ARRAY['note', 'fact']
);
```

`recall_lessons()` routes to hybrid recall when both text and embedding are present and `pgmnemo.disable_hybrid` is false. `exclude_dag_id` avoids retrieving records from the same workflow run, and `p_content_types` filters typed memories.

Recall functions update `last_recalled_at` and `recall_count` by default. Disable that side effect for read-only analysis:

```sql
SET pgmnemo.track_recall_recency = 'off';
```

### Navigate and Expand

```sql
SELECT *
FROM pgmnemo.navigate_locate(
  NULL::vector(1024),
  'JWT rotation',
  2000,
  '{"topic":"security"}'::jsonb,
  1
);

SELECT *
FROM pgmnemo.navigate_locate_dispatch(
  query_text            := 'JWT rotation',
  content_type_dispatch := 'entity',
  project_id_filter     := 1,
  token_budget_chars    := 2000
);

SELECT *
FROM pgmnemo.navigate_expand_typed(
  ARRAY[1001, 1002]::bigint[],
  graph_expand_depth := 1,
  relation_types     := ARRAY['CAUSED_BY', 'DERIVED_FROM']
);
```

Use `navigate_locate()` to find candidate IDs within a character budget, then use expand functions to fetch full content and graph neighbors only for the selected IDs.

### Typed Writes

```sql
SELECT pgmnemo.canonical_slug('concept', 'JWT Rotation');

SELECT *
FROM pgmnemo.remember_fact(
  p_role            := 'developer',
  p_entity_key      := 'concept:jwt_rotation',
  p_property        := 'runbook',
  p_value           := 'Rotate signing secrets within 24 hours after compromise.',
  p_confidence      := 0.82,
  p_has_contact_pii := false,
  p_source_type     := 'agent_authored',
  p_project_id      := 1,
  p_commit_sha      := 'abc1234'
);

SELECT pgmnemo.remember_event(
  p_role        := 'developer',
  p_entity_key  := 'concept:jwt_rotation',
  p_event_label := 'incident_response',
  p_event_body  := 'Rotation procedure validated during the July drill.',
  p_project_id  := 1,
  p_commit_sha  := 'abc1234'
);

SELECT pgmnemo.remember_relation(
  p_role          := 'developer',
  p_from_key      := 'concept:jwt_rotation',
  p_to_key        := 'concept:key_compromise',
  p_relation_type := 'MITIGATES',
  p_project_id    := 1,
  p_commit_sha    := 'abc1234'
);
```

`remember_fact()` supersedes prior active facts for the same entity/property, `remember_event()` is append-only, and `remember_relation()` writes relation memories and graph edges.

### Edges, Reinforcement, and Maintenance

```sql
SELECT pgmnemo.add_edge(1001, 1002, 'CAUSED_BY', 0.85, '{"run_id":7320}'::jsonb);

SELECT pgmnemo.reinforce(1001, 'success');
SELECT pgmnemo.reinforce(ARRAY[1001, 1002]::bigint[], 'failure');

SELECT pgmnemo.reembed(1001, '<1024-dimensional vector literal>'::vector(1024));
SELECT pgmnemo.recompute_content(1001, 'Updated lesson text.');
```

Useful settings include `pgmnemo.gate_strict`, `pgmnemo.include_unverified`, `pgmnemo.ef_search`, `pgmnemo.disable_hybrid`, `pgmnemo.recency_weight`, `pgmnemo.importance_weight`, `pgmnemo.graph_proximity_weight`, `pgmnemo.temporal_boost`, `pgmnemo.confidence_boost_weight`, `pgmnemo.track_recall_recency`, `pgmnemo.max_query_text_chars`, `pgmnemo.tenant_id`, and `pgmnemo.test_project_floor`.

### Caveats

- `pgmnemo` requires `vector >= 0.7.0` according to PGXN metadata.
- Embeddings are expected to be 1024-dimensional in the current SQL definition.
- The default provenance gate is intentional. Prefer `warn` over `off` when migrating legacy memory rows.
- Recall functions can write recency metadata; turn off `pgmnemo.track_recall_recency` for read-only diagnostics.
