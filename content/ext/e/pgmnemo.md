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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmnemo-0.8.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmnemo-0.8.3.tar.gz</div>
    <div class="ext-card__desc">pgmnemo-0.8.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmnemo`**](/ext/e/pgmnemo) | `0.8.3` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
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
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "14,15,16,17,18" >}} | `pgmnemo` | `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "14,15,16,17,18" >}} | `pgmnemo_$v` | `pgvector` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.8.3` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pgmnemo` | `pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 | AVAIL PIGSTY 0.8.3 1 |
@ el8.x86_64 18 pgmnemo_18 pgmnemo_18-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 95.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_18-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgmnemo_18 pgmnemo_18-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 95.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_18-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgmnemo_18 pgmnemo_18-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_18-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgmnemo_18 pgmnemo_18-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_18-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgmnemo_18 pgmnemo_18-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 91.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_18-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgmnemo_18 pgmnemo_18-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_18-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgmnemo postgresql-18-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-18-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pgmnemo_17 pgmnemo_17-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 95.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_17-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgmnemo_17 pgmnemo_17-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 95.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_17-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgmnemo_17 pgmnemo_17-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_17-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgmnemo_17 pgmnemo_17-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_17-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgmnemo_17 pgmnemo_17-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 91.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_17-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgmnemo_17 pgmnemo_17-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_17-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgmnemo postgresql-17-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-17-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pgmnemo_16 pgmnemo_16-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 95.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_16-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgmnemo_16 pgmnemo_16-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 95.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_16-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgmnemo_16 pgmnemo_16-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_16-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgmnemo_16 pgmnemo_16-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_16-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgmnemo_16 pgmnemo_16-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 91.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_16-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgmnemo_16 pgmnemo_16-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_16-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgmnemo postgresql-16-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-16-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pgmnemo_15 pgmnemo_15-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 95.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_15-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgmnemo_15 pgmnemo_15-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 95.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_15-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgmnemo_15 pgmnemo_15-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_15-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgmnemo_15 pgmnemo_15-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_15-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgmnemo_15 pgmnemo_15-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 91.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_15-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgmnemo_15 pgmnemo_15-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_15-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgmnemo postgresql-15-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-15-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pgmnemo_14 pgmnemo_14-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 95.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmnemo_14-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgmnemo_14 pgmnemo_14-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 95.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmnemo_14-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgmnemo_14 pgmnemo_14-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 91.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmnemo_14-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgmnemo_14 pgmnemo_14-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmnemo_14-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgmnemo_14 pgmnemo_14-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 91.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmnemo_14-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgmnemo_14 pgmnemo_14-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 91.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmnemo_14-0.8.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb pigsty 0.8.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb pigsty 0.8.3 83.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~noble_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgmnemo postgresql-14-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb pigsty 0.8.3 83.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmnemo/postgresql-14-pgmnemo_0.8.3-1PIGSTY~resolute_all.deb
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

Source: [pgmnemo v0.8.3 README](https://github.com/pgmnemo/pgmnemo/blob/v0.8.3/README.md), [Usage Guide](https://github.com/pgmnemo/pgmnemo/blob/v0.8.3/docs/USAGE.md), [extension control file](https://github.com/pgmnemo/pgmnemo/blob/v0.8.3/extension/pgmnemo.control), [SQL definition](https://github.com/pgmnemo/pgmnemo/blob/v0.8.3/extension/pgmnemo--0.8.3.sql).

## Usage

`pgmnemo` stores provenance-gated agent lessons in PostgreSQL and retrieves them through vector, BM25-style text, graph-edge, JSONB metadata, and relational filters. The extension control file requires `vector`, so `pgvector` must be available before creating `pgmnemo`. The local package metadata targets PostgreSQL 14-18.

### Create and Ingest Lessons

```sql
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pgmnemo CASCADE;

SELECT pgmnemo.ingest(
  p_role        := 'developer',
  p_project_id  := 1,
  p_topic       := 'security',
  p_lesson_text := 'Rotate JWT secrets after any key-compromise incident.',
  p_importance  := 4,
  p_embedding   := NULL,
  p_commit_sha  := 'abc1234',
  p_metadata    := '{"source":"incident-runbook"}'::jsonb
);
```

`pgmnemo.ingest()` is the preferred write path. It validates the 1024-dimensional embedding when supplied, stamps verified rows when provenance is present, and applies the provenance gate.

### Provenance Gate

```sql
SHOW pgmnemo.gate_strict;

SET pgmnemo.gate_strict = 'warn';
SET pgmnemo.gate_strict = 'enforce';
```

`pgmnemo.gate_strict` accepts `enforce`, `warn`, or `off`. In the default enforced mode, inserts fail when both `p_commit_sha` and `p_artifact_hash` are NULL. `pgmnemo.include_unverified` is separate: it controls whether unverified rows are eligible for recall, not whether writes are allowed.

### Recall

```sql
-- Text-only recall.
SELECT topic, lesson_text, score
FROM pgmnemo.recall_lessons(
  NULL::vector(1024),
  5,
  'developer',
  1,
  'JWT secret rotation'
);

-- Hybrid vector and text recall.
SELECT lesson_id, topic, score, vec_score, bm25_score, rrf_score
FROM pgmnemo.recall_hybrid(
  '<1024-dimensional vector literal>'::vector(1024),
  'JWT rotation key compromise',
  10,
  'developer',
  1
);
```

Hybrid routing in `recall_lessons()` requires `pgmnemo.disable_hybrid` to be off, non-empty `query_text`, and a non-NULL embedding. Use `recall_hybrid()` directly when you want explicit diagnostic scores.

### Navigation and Expansion

```sql
SELECT *
FROM pgmnemo.navigate_locate(
  NULL::vector(1024),
  'JWT rotation',
  10,
  'developer',
  1,
  '{"topic":"security"}'::jsonb,
  2000
);

SELECT *
FROM pgmnemo.navigate_expand(
  ARRAY[1001, 1002]::bigint[],
  include_edges := true
);
```

`navigate_locate()` returns ranked lesson IDs and short previews within a character budget. `navigate_expand()` fetches selected full lessons and optional graph neighbors after the caller chooses which IDs are worth expanding.

### Edges and Outcome Learning

```sql
SELECT pgmnemo.add_edge(1001, 1002, 'CAUSED_BY', 0.85, '{"run_id":7320}'::jsonb);

SELECT pgmnemo.reinforce(1001, 'success');
SELECT pgmnemo.reinforce(1002, 'failure');
```

`pgmnemo.add_edge()` is the idempotent helper for lesson relationships. `reinforce()` adjusts confidence after observed outcomes and feeds later match confidence.

### Maintenance and GUCs

```sql
SELECT * FROM pgmnemo.stats();

SELECT pgmnemo.reembed(
  p_lesson_id  := 1001,
  p_new_vector := '<1024-dimensional vector literal>'::vector(1024)
);

SELECT pgmnemo.recompute_content(
  p_lesson_id       := 1001,
  p_new_lesson_text := 'Rotate JWT secrets within 24 hours after compromise.'
);
```

Useful settings include `pgmnemo.gate_strict`, `pgmnemo.include_unverified`, `pgmnemo.ef_search`, `pgmnemo.disable_hybrid`, `pgmnemo.recency_weight`, `pgmnemo.importance_weight`, `pgmnemo.graph_proximity_weight`, `pgmnemo.temporal_boost`, and `pgmnemo.max_query_text_chars`.
