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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_vectorize-0.26.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_vectorize-0.26.0.tar.gz</div>
    <div class="ext-card__desc">pg_vectorize-0.26.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_vectorize`**](/ext/e/vectorize) | `0.26.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1830  | [**`vectorize`**](/ext/e/vectorize) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `vectorize` |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pgmq`](/ext/e/pgmq) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg4ml`](/ext/e/pg4ml) [`pgml`](/ext/e/pgml) [`pg_later`](/ext/e/pg_later) [`pg_similarity`](/ext/e/pg_similarity) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_vectorize` | `pg_cron`, `pgmq`, `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_vectorize_$v` | `pgmq_$v`, `pg_cron_$v`, `pgvector_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.26.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-vectorize` | `postgresql-$v-pgmq`, `postgresql-$v-pg-cron`, `postgresql-$v-pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 | AVAIL PIGSTY 0.26.0 1 |
@ el8.x86_64 18 pg_vectorize_18 pg_vectorize_18-0.26.0-1PIGSTY.el8.x86_64.rpm pigsty 0.26.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_18-0.26.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_vectorize_18 pg_vectorize_18-0.26.0-1PIGSTY.el8.aarch64.rpm pigsty 0.26.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_18-0.26.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_vectorize_18 pg_vectorize_18-0.26.0-1PIGSTY.el9.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_18-0.26.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_vectorize_18 pg_vectorize_18-0.26.0-1PIGSTY.el9.aarch64.rpm pigsty 0.26.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_18-0.26.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_vectorize_18 pg_vectorize_18-0.26.0-1PIGSTY.el10.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_18-0.26.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_vectorize_18 pg_vectorize_18-0.26.0-1PIGSTY.el10.aarch64.rpm pigsty 0.26.0 7.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_18-0.26.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb pigsty 0.26.0 6.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb pigsty 0.26.0 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-vectorize postgresql-18-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-18-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_vectorize_17 pg_vectorize_17-0.26.0-1PIGSTY.el8.x86_64.rpm pigsty 0.26.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_17-0.26.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_vectorize_17 pg_vectorize_17-0.26.0-1PIGSTY.el8.aarch64.rpm pigsty 0.26.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_17-0.26.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_vectorize_17 pg_vectorize_17-0.26.0-1PIGSTY.el9.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_17-0.26.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_vectorize_17 pg_vectorize_17-0.26.0-1PIGSTY.el9.aarch64.rpm pigsty 0.26.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_17-0.26.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_vectorize_17 pg_vectorize_17-0.26.0-1PIGSTY.el10.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_17-0.26.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_vectorize_17 pg_vectorize_17-0.26.0-1PIGSTY.el10.aarch64.rpm pigsty 0.26.0 7.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_17-0.26.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb pigsty 0.26.0 6.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb pigsty 0.26.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb pigsty 0.26.0 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-vectorize postgresql-17-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-17-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_vectorize_16 pg_vectorize_16-0.26.0-1PIGSTY.el8.x86_64.rpm pigsty 0.26.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_16-0.26.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_vectorize_16 pg_vectorize_16-0.26.0-1PIGSTY.el8.aarch64.rpm pigsty 0.26.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_16-0.26.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_vectorize_16 pg_vectorize_16-0.26.0-1PIGSTY.el9.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_16-0.26.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_vectorize_16 pg_vectorize_16-0.26.0-1PIGSTY.el9.aarch64.rpm pigsty 0.26.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_16-0.26.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_vectorize_16 pg_vectorize_16-0.26.0-1PIGSTY.el10.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_16-0.26.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_vectorize_16 pg_vectorize_16-0.26.0-1PIGSTY.el10.aarch64.rpm pigsty 0.26.0 7.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_16-0.26.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb pigsty 0.26.0 6.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb pigsty 0.26.0 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-vectorize postgresql-16-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-16-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_vectorize_15 pg_vectorize_15-0.26.0-1PIGSTY.el8.x86_64.rpm pigsty 0.26.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_15-0.26.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_vectorize_15 pg_vectorize_15-0.26.0-1PIGSTY.el8.aarch64.rpm pigsty 0.26.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_15-0.26.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_vectorize_15 pg_vectorize_15-0.26.0-1PIGSTY.el9.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_15-0.26.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_vectorize_15 pg_vectorize_15-0.26.0-1PIGSTY.el9.aarch64.rpm pigsty 0.26.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_15-0.26.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_vectorize_15 pg_vectorize_15-0.26.0-1PIGSTY.el10.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_15-0.26.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_vectorize_15 pg_vectorize_15-0.26.0-1PIGSTY.el10.aarch64.rpm pigsty 0.26.0 7.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_15-0.26.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb pigsty 0.26.0 6.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb pigsty 0.26.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb pigsty 0.26.0 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-vectorize postgresql-15-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-15-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_vectorize_14 pg_vectorize_14-0.26.0-1PIGSTY.el8.x86_64.rpm pigsty 0.26.0 7.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_vectorize_14-0.26.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_vectorize_14 pg_vectorize_14-0.26.0-1PIGSTY.el8.aarch64.rpm pigsty 0.26.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_vectorize_14-0.26.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_vectorize_14 pg_vectorize_14-0.26.0-1PIGSTY.el9.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vectorize_14-0.26.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_vectorize_14 pg_vectorize_14-0.26.0-1PIGSTY.el9.aarch64.rpm pigsty 0.26.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vectorize_14-0.26.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_vectorize_14 pg_vectorize_14-0.26.0-1PIGSTY.el10.x86_64.rpm pigsty 0.26.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vectorize_14-0.26.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_vectorize_14 pg_vectorize_14-0.26.0-1PIGSTY.el10.aarch64.rpm pigsty 0.26.0 7.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vectorize_14-0.26.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb pigsty 0.26.0 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb pigsty 0.26.0 5.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb pigsty 0.26.0 6.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb pigsty 0.26.0 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-vectorize postgresql-14-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb pigsty 0.26.0 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vectorize/postgresql-14-pg-vectorize_0.26.0-1PIGSTY~noble_arm64.deb
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


**Create Extension**:

```sql
CREATE EXTENSION vectorize CASCADE;  -- requires: pg_cron, pgmq, vector
```



## Usage

> [pg_vectorize](https://github.com/ChuckHend/pg_vectorize): The simplest way to do vector search on Postgres.
> Source: [README.md](https://raw.githubusercontent.com/ChuckHend/pg_vectorize/main/README.md)

A Postgres extension that automates the transformation and orchestration of text to embeddings and provides hooks into the most popular LLMs. This allows you to get up and running and automate maintenance for vector search, full text search, and hybrid search, which enables you to quickly build RAG and search engines on Postgres.

This project relies heavily on [pgvector](https://github.com/pgvector/pgvector) for vector similarity search, [pgmq](https://github.com/pgmq/pgmq) for orchestration in background workers, and [SentenceTransformers](https://huggingface.co/sentence-transformers).

**API Documentation**: https://chuckhend.github.io/pg_vectorize/

--------

### Overview

pg_vectorize provides two ways to add semantic, full text, and hybrid search to any Postgres, making it easy to build retrieval-augmented generation (RAG) on Postgres.

Modes at a glance:

- **HTTP server** (recommended for managed DBs): run a standalone service that connects to Postgres and exposes a REST API (`POST /api/v1/table`, `GET /api/v1/search`).
- **Postgres extension** (SQL): install the extension into Postgres and use SQL functions like `vectorize.table()` and `vectorize.search()` (requires filesystem access to Postgres).

--------

### Quick Start -- HTTP Server

Run Postgres and the HTTP servers locally using docker compose:

```bash
# runs Postgres, the embeddings server, and the management API
docker compose up -d
```

Load the example dataset into Postgres (optional):

```bash
psql postgres://postgres:postgres@localhost:5432/postgres -f server/sql/example.sql
```

Create an embedding job via the HTTP API. This generates embeddings for the existing data and continuously watches for updates or new data:

```bash
curl -X POST http://localhost:8080/api/v1/table -d '{
		"job_name": "my_job",
		"src_table": "my_products",
		"src_schema": "public",
		"src_columns": ["product_name", "description"],
		"primary_key": "product_id",
		"update_time_col": "updated_at",
		"model": "sentence-transformers/all-MiniLM-L6-v2"
	}' -H "Content-Type: application/json"
```

```json
{"id":"16b80184-2e8e-4ee6-b7e2-1a068ff4b314"}
```

Search using the HTTP API:

```bash
curl -G \
  "http://localhost:8080/api/v1/search" \
  --data-urlencode "job_name=my_job" \
  --data-urlencode "query=camping backpack" \
  --data-urlencode "limit=1" \
  | jq .
```

```json
[
  {
    "description": "Storage solution for carrying personal items on ones back",
    "fts_rank": 1,
    "price": 45.0,
    "product_category": "accessories",
    "product_id": 6,
    "product_name": "Backpack",
    "rrf_score": 0.03278688524590164,
    "semantic_rank": 1,
    "similarity_score": 0.6296013593673706,
    "updated_at": "2025-10-05T00:14:39.220893+00:00"
  }
]
```

--------

### Which Mode Should I Pick?

- Use the **HTTP server** when your Postgres is managed (RDS, Cloud SQL, etc.) or you cannot install extensions. It requires only that `pgvector` is available in the database. You run the HTTP services separately.
- Use the **Postgres extension** when you self-host Postgres and can install extensions. This provides an in-database experience and direct SQL APIs for vectorization and RAG.

### Quick Start -- Postgres Extension (SQL)

```sql
CREATE EXTENSION vectorize CASCADE;
```

Use `vectorize.table()` to create an embedding job and `vectorize.search()` to perform semantic search directly from SQL.
