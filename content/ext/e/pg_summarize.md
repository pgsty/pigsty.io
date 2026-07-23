---
title: "pg_summarize"
linkTitle: "pg_summarize"
description: "Text Summarization using LLMs. Built using pgrx"
weight: 1860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HexaCluster/pg_summarize">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HexaCluster/pg_summarize</div>
    <div class="ext-card__desc">https://github.com/HexaCluster/pg_summarize</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_summarize-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_summarize-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_summarize-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_summarize`**](/ext/e/pg_summarize) | `0.0.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1860  | [**`pg_summarize`**](/ext/e/pg_summarize) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`vectorize`](/ext/e/vectorize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg4ml`](/ext/e/pg4ml) [`pgml`](/ext/e/pgml) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`pg_net`](/ext/e/pg_net) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 fix by https://github.com/Vonng/pg_summarize.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_summarize` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_summarize_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-summarize` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_summarize_18 pg_summarize_18-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_summarize_18-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_summarize_18 pg_summarize_18-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_summarize_18-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_summarize_18 pg_summarize_18-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_summarize_18-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_summarize_18 pg_summarize_18-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_summarize_18-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_summarize_18 pg_summarize_18-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_summarize_18-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_summarize_18 pg_summarize_18-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_summarize_18-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-summarize postgresql-18-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-18-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_summarize_17 pg_summarize_17-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_summarize_17-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_summarize_17 pg_summarize_17-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_summarize_17-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_summarize_17 pg_summarize_17-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_summarize_17-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_summarize_17 pg_summarize_17-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_summarize_17-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_summarize_17 pg_summarize_17-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_summarize_17-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_summarize_17 pg_summarize_17-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_summarize_17-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-summarize postgresql-17-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-17-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_summarize_16 pg_summarize_16-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_summarize_16-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_summarize_16 pg_summarize_16-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_summarize_16-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_summarize_16 pg_summarize_16-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_summarize_16-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_summarize_16 pg_summarize_16-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_summarize_16-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_summarize_16 pg_summarize_16-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_summarize_16-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_summarize_16 pg_summarize_16-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_summarize_16-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-summarize postgresql-16-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-16-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_summarize_15 pg_summarize_15-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_summarize_15-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_summarize_15 pg_summarize_15-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_summarize_15-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_summarize_15 pg_summarize_15-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_summarize_15-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_summarize_15 pg_summarize_15-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_summarize_15-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_summarize_15 pg_summarize_15-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_summarize_15-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_summarize_15 pg_summarize_15-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_summarize_15-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-summarize postgresql-15-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-15-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_summarize_14 pg_summarize_14-0.0.1-3PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_summarize_14-0.0.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_summarize_14 pg_summarize_14-0.0.1-3PIGSTY.el8.aarch64.rpm pigsty 0.0.1 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_summarize_14-0.0.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_summarize_14 pg_summarize_14-0.0.1-3PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_summarize_14-0.0.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_summarize_14 pg_summarize_14-0.0.1-3PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_summarize_14-0.0.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_summarize_14 pg_summarize_14-0.0.1-3PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_summarize_14-0.0.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_summarize_14 pg_summarize_14-0.0.1-3PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_summarize_14-0.0.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-summarize postgresql-14-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-summarize/postgresql-14-pg-summarize_0.0.1-5PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_summarize` using `pig build`:

```bash
pig build pkg pg_summarize         # build RPM / DEB packages
```


## Install

You can install `pg_summarize` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_summarize;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_summarize -v 18  # PG 18
pig ext install -y pg_summarize -v 17  # PG 17
pig ext install -y pg_summarize -v 16  # PG 16
pig ext install -y pg_summarize -v 15  # PG 15
pig ext install -y pg_summarize -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_summarize_18       # PG 18
dnf install -y pg_summarize_17       # PG 17
dnf install -y pg_summarize_16       # PG 16
dnf install -y pg_summarize_15       # PG 15
dnf install -y pg_summarize_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-summarize   # PG 18
apt install -y postgresql-17-pg-summarize   # PG 17
apt install -y postgresql-16-pg-summarize   # PG 16
apt install -y postgresql-15-pg-summarize   # PG 15
apt install -y postgresql-14-pg-summarize   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_summarize;
```




## Usage

> [pg_summarize](https://github.com/HexaCluster/pg_summarize): Text Summarization using LLMs, built using pgrx.
> Source: [README.md](https://raw.githubusercontent.com/HexaCluster/pg_summarize/main/README.md)

`pg_summarize` is a PostgreSQL extension written in Rust (using `pgrx`) that integrates with the OpenAI API. It includes a basic "Hello, pg_summarize!" function and a `summarize` function that summarizes text using OpenAI's models.


--------

### Getting Started

```sql
CREATE EXTENSION pg_summarize;

-- Test the hello function
SELECT hello_pg_summarize();
--  hello_pg_summarize
-- ----------------------
--  Hello, pg_summarize
```


--------

### Configuration

The extension retrieves configuration from PostgreSQL settings. Set the following before using the `summarize` function:

```sql
-- Set the OpenAI API key (required)
ALTER SYSTEM SET pg_summarizer.api_key = 'your_openai_api_key';

-- Optionally set the model (default: gpt-3.5-turbo)
ALTER SYSTEM SET pg_summarizer.model = 'gpt-3.5-turbo';

-- Or set the prompt at session level
SET pg_summarizer.prompt = 'Your custom prompt here';

-- Reload the configuration if set at SYSTEM level
SELECT pg_reload_conf();
```


--------

### Summarize Function

The `summarize` function takes text input, sends it to the OpenAI API, and returns a summary:

```sql
-- Summarize a text input
SELECT summarize('<This is the text to be summarized.>');

-- Create a summary table from existing data
CREATE TABLE blogs_summary AS
  SELECT blog_url, summarize(blogs_text)
  FROM hexacluster_blogs;

-- Use a different model
SET pg_summarizer.model = 'gpt-4o';
CREATE TABLE blogs_summary_4o AS
  SELECT blog_url, summarize(blogs_text)
  FROM hexacluster_blogs;
```


--------

### How It Works

- **Configuration Retrieval**: The `summarize` function retrieves settings (API key, model, prompt) from PostgreSQL using `current_setting()`. Defaults are used if settings are not found.
- **Default Prompt**: A built-in prompt instructs the AI to summarize text from `<text>` tags, focusing on capturing the most important information concisely.
- **API Call**: The function sends a POST request to the OpenAI chat completions endpoint with the configured model and prompt, returning the summary content.
