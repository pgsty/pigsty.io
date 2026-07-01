---
title: "vectorize"
linkTitle: "vectorize"
description: "The simplest way to do vector search on Postgres"
weight: 1830
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ChuckHend/pg_vectorize">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ChuckHend/pg_vectorize</div>
    <div class="ext-card__desc">https://github.com/ChuckHend/pg_vectorize</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_vectorize-0.26.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_vectorize-0.26.2.tar.gz</div>
    <div class="ext-card__desc">pg_vectorize-0.26.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_vectorize`**](/ext/e/vectorize) | `0.26.2` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1830  | [**`vectorize`**](/ext/e/vectorize) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `vectorize` |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pgmq`](/ext/e/pgmq) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg4ml`](/ext/e/pg4ml) [`pgml`](/ext/e/pgml) [`pg_later`](/ext/e/pg_later) [`pg_similarity`](/ext/e/pg_similarity) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> shared_preload_libraries should include vectorize and pg_cron; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_vectorize` | `pg_cron`, `pgmq`, `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_vectorize_$v` | `pgmq_$v`, `pg_cron_$v`, `pgvector_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-vectorize` | `postgresql-$v-pgmq`, `postgresql-$v-pg-cron`, `postgresql-$v-pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| u26.x86_64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
| u26.aarch64 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 | AVAIL PIGSTY 0.26.2 1 |
@ el8.x86_64 18 pg_vectorize_18 pg_vectorize_18-0.26.2-1PIGSTY.el8.x86_64.rpm pigsty 0.26.2 12.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_18-0.26.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_vectorize_18 pg_vectorize_18-0.26.2-1PIGSTY.el8.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_18-0.26.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_vectorize_18 pg_vectorize_18-0.26.2-1PIGSTY.el9.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_18-0.26.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_vectorize_18 pg_vectorize_18-0.26.2-1PIGSTY.el9.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_18-0.26.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_vectorize_18 pg_vectorize_18-0.26.2-1PIGSTY.el10.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_18-0.26.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_vectorize_18 pg_vectorize_18-0.26.2-1PIGSTY.el10.aarch64.rpm pigsty 0.26.2 11.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_18-0.26.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb pigsty 0.26.2 11.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb pigsty 0.26.2 10.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb pigsty 0.26.2 11.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb pigsty 0.26.2 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_vectorize_17 pg_vectorize_17-0.26.2-1PIGSTY.el8.x86_64.rpm pigsty 0.26.2 12.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_17-0.26.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_vectorize_17 pg_vectorize_17-0.26.2-1PIGSTY.el8.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_17-0.26.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_vectorize_17 pg_vectorize_17-0.26.2-1PIGSTY.el9.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_17-0.26.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_vectorize_17 pg_vectorize_17-0.26.2-1PIGSTY.el9.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_17-0.26.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_vectorize_17 pg_vectorize_17-0.26.2-1PIGSTY.el10.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_17-0.26.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_vectorize_17 pg_vectorize_17-0.26.2-1PIGSTY.el10.aarch64.rpm pigsty 0.26.2 11.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_17-0.26.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb pigsty 0.26.2 11.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb pigsty 0.26.2 10.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb pigsty 0.26.2 11.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb pigsty 0.26.2 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_vectorize_16 pg_vectorize_16-0.26.2-1PIGSTY.el8.x86_64.rpm pigsty 0.26.2 12.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_16-0.26.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_vectorize_16 pg_vectorize_16-0.26.2-1PIGSTY.el8.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_16-0.26.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_vectorize_16 pg_vectorize_16-0.26.2-1PIGSTY.el9.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_16-0.26.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_vectorize_16 pg_vectorize_16-0.26.2-1PIGSTY.el9.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_16-0.26.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_vectorize_16 pg_vectorize_16-0.26.2-1PIGSTY.el10.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_16-0.26.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_vectorize_16 pg_vectorize_16-0.26.2-1PIGSTY.el10.aarch64.rpm pigsty 0.26.2 11.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_16-0.26.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb pigsty 0.26.2 11.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb pigsty 0.26.2 10.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb pigsty 0.26.2 11.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb pigsty 0.26.2 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_vectorize_15 pg_vectorize_15-0.26.2-1PIGSTY.el8.x86_64.rpm pigsty 0.26.2 12.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_15-0.26.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_vectorize_15 pg_vectorize_15-0.26.2-1PIGSTY.el8.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_15-0.26.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_vectorize_15 pg_vectorize_15-0.26.2-1PIGSTY.el9.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_15-0.26.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_vectorize_15 pg_vectorize_15-0.26.2-1PIGSTY.el9.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_15-0.26.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_vectorize_15 pg_vectorize_15-0.26.2-1PIGSTY.el10.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_15-0.26.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_vectorize_15 pg_vectorize_15-0.26.2-1PIGSTY.el10.aarch64.rpm pigsty 0.26.2 11.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_15-0.26.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb pigsty 0.26.2 11.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb pigsty 0.26.2 10.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb pigsty 0.26.2 11.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb pigsty 0.26.2 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_vectorize_14 pg_vectorize_14-0.26.2-1PIGSTY.el8.x86_64.rpm pigsty 0.26.2 12.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_14-0.26.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_vectorize_14 pg_vectorize_14-0.26.2-1PIGSTY.el8.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_14-0.26.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_vectorize_14 pg_vectorize_14-0.26.2-1PIGSTY.el9.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_14-0.26.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_vectorize_14 pg_vectorize_14-0.26.2-1PIGSTY.el9.aarch64.rpm pigsty 0.26.2 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_14-0.26.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_vectorize_14 pg_vectorize_14-0.26.2-1PIGSTY.el10.x86_64.rpm pigsty 0.26.2 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_14-0.26.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_vectorize_14 pg_vectorize_14-0.26.2-1PIGSTY.el10.aarch64.rpm pigsty 0.26.2 10.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_14-0.26.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb pigsty 0.26.2 2.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb pigsty 0.26.2 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb pigsty 0.26.2 8.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb pigsty 0.26.2 11.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb pigsty 0.26.2 2.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb pigsty 0.26.2 11.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb pigsty 0.26.2 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb pigsty 0.26.2 10.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_vectorize` using `pig build`:

```bash
pig build pkg pg_vectorize         # build RPM / DEB packages
```


## Install

You can install `pg_vectorize` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_vectorize;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_vectorize -v 18  # PG 18
pig ext install -y pg_vectorize -v 17  # PG 17
pig ext install -y pg_vectorize -v 16  # PG 16
pig ext install -y pg_vectorize -v 15  # PG 15
pig ext install -y pg_vectorize -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_vectorize_18       # PG 18
dnf install -y pg_vectorize_17       # PG 17
dnf install -y pg_vectorize_16       # PG 16
dnf install -y pg_vectorize_15       # PG 15
dnf install -y pg_vectorize_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-vectorize   # PG 18
apt install -y postgresql-17-pg-vectorize   # PG 17
apt install -y postgresql-16-pg-vectorize   # PG 16
apt install -y postgresql-15-pg-vectorize   # PG 15
apt install -y postgresql-14-pg-vectorize   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_cron, vectorize';
```


**Create Extension**:

```sql
CREATE EXTENSION vectorize CASCADE;  -- requires: pg_cron, pgmq, vector
```

## Usage

Sources: [repo README](https://github.com/ChuckHend/pg_vectorize/blob/v0.26.2/README.md), [extension README](https://github.com/ChuckHend/pg_vectorize/blob/v0.26.2/extension/README.md), [v0.26.2 release](https://github.com/ChuckHend/pg_vectorize/releases/tag/v0.26.2)

`vectorize` is the PostgreSQL extension from `pg_vectorize`. Upstream documents two modes: a standalone HTTP service and the in-database SQL extension. For the packaged extension here, the SQL workflow is the relevant one.

### Enable The Extension

```sql
ALTER SYSTEM SET shared_preload_libraries = 'vectorize,pg_cron';
ALTER SYSTEM SET cron.database_name = 'postgres';

CREATE EXTENSION vectorize CASCADE;
```

The extension README lists `pg_cron`, `pgmq`, and `pgvector` as dependencies, plus `vectorize.embedding_service_url` for the embedding service.

### Create A Search Job

The high-level SQL API starts with `vectorize.table()`:

```sql
SELECT vectorize.table(
  job_name    => 'product_search_hf',
  relation    => 'products',
  primary_key => 'product_id',
  columns     => ARRAY['product_name', 'description'],
  transformer => 'sentence-transformers/all-MiniLM-L6-v2',
  schedule    => 'realtime'
);
```

The extension README says this creates and maintains an embeddings column for the source table.

### Search, RAG, And Direct Model Calls

Search with:

```sql
SELECT * FROM vectorize.search(
  job_name       => 'product_search_hf',
  query          => 'accessories for mobile devices',
  return_columns => ARRAY['product_id', 'product_name'],
  num_results    => 3
);
```

Upstream also documents:

- `vectorize.rag()` for retrieval-augmented answers.
- `vectorize.generate()` for text generation.
- `vectorize.encode()` for direct embedding generation.
- `vectorize.import_embeddings()` for loading precomputed vectors.

### Update Behavior And v0.26.2 Note

The extension README says `schedule => '* * * * *'` checks for updates every minute, while `schedule => 'realtime'` creates triggers for immediate refresh on inserts and updates.

`pg_vectorize` 0.26.2 updates vector-serve and security-related dependencies; there is no material SQL/API delta beyond the existing README surface.
