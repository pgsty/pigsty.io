---
title: "vchord"
linkTitle: "vchord"
description: "Vector database plugin for Postgres, written in Rust"
weight: 1810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tensorchord/VectorChord">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tensorchord/VectorChord</div>
    <div class="ext-card__desc">https://github.com/tensorchord/VectorChord</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/VectorChord-1.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">VectorChord-1.1.1.tar.gz</div>
    <div class="ext-card__desc">VectorChord-1.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`vchord`**](/ext/e/vchord) | `1.1.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1810  | [**`vchord`**](/ext/e/vchord) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`vectorscale`](/ext/e/vectorscale) [`vectorize`](/ext/e/vectorize) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pgml`](/ext/e/pgml) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `vchord` | `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `vchord_$v` | `pgvector_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-vchord` | `postgresql-$v-pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
@ el8.x86_64 18 vchord_18 vchord_18-1.1.1-3PIGSTY.el8.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_18-1.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vchord_18 vchord_18-1.1.1-3PIGSTY.el8.aarch64.rpm pigsty 1.1.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_18-1.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vchord_18 vchord_18-1.1.1-3PIGSTY.el9.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_18-1.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vchord_18 vchord_18-1.1.1-3PIGSTY.el9.aarch64.rpm pigsty 1.1.1 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_18-1.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vchord_18 vchord_18-1.1.1-3PIGSTY.el10.x86_64.rpm pigsty 1.1.1 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_18-1.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vchord_18 vchord_18-1.1.1-3PIGSTY.el10.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_18-1.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~trixie_amd64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~trixie_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~jammy_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~jammy_arm64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~noble_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~noble_arm64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~resolute_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.1.1-3PIGSTY~resolute_arm64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-18-vchord_1.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 vchord_17 vchord_17-1.1.1-3PIGSTY.el8.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_17-1.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vchord_17 vchord_17-1.1.1-3PIGSTY.el8.aarch64.rpm pigsty 1.1.1 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_17-1.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vchord_17 vchord_17-1.1.1-3PIGSTY.el9.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_17-1.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vchord_17 vchord_17-1.1.1-3PIGSTY.el9.aarch64.rpm pigsty 1.1.1 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_17-1.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vchord_17 vchord_17-1.1.1-3PIGSTY.el10.x86_64.rpm pigsty 1.1.1 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_17-1.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vchord_17 vchord_17-1.1.1-3PIGSTY.el10.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_17-1.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~trixie_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~trixie_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~jammy_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~jammy_arm64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~noble_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~noble_arm64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~resolute_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.1.1-3PIGSTY~resolute_arm64.deb pigsty 1.1.1 2.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-17-vchord_1.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 vchord_16 vchord_16-1.1.1-3PIGSTY.el8.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_16-1.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vchord_16 vchord_16-1.1.1-3PIGSTY.el8.aarch64.rpm pigsty 1.1.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_16-1.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vchord_16 vchord_16-1.1.1-3PIGSTY.el9.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_16-1.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vchord_16 vchord_16-1.1.1-3PIGSTY.el9.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_16-1.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vchord_16 vchord_16-1.1.1-3PIGSTY.el10.x86_64.rpm pigsty 1.1.1 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_16-1.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vchord_16 vchord_16-1.1.1-3PIGSTY.el10.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_16-1.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~trixie_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~trixie_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~jammy_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~jammy_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~noble_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~noble_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~resolute_amd64.deb pigsty 1.1.1 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.1.1-3PIGSTY~resolute_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-16-vchord_1.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 vchord_15 vchord_15-1.1.1-3PIGSTY.el8.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_15-1.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vchord_15 vchord_15-1.1.1-3PIGSTY.el8.aarch64.rpm pigsty 1.1.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_15-1.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vchord_15 vchord_15-1.1.1-3PIGSTY.el9.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_15-1.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vchord_15 vchord_15-1.1.1-3PIGSTY.el9.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_15-1.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vchord_15 vchord_15-1.1.1-3PIGSTY.el10.x86_64.rpm pigsty 1.1.1 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_15-1.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vchord_15 vchord_15-1.1.1-3PIGSTY.el10.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_15-1.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~trixie_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~trixie_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~jammy_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~jammy_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~noble_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~noble_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~resolute_amd64.deb pigsty 1.1.1 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.1.1-3PIGSTY~resolute_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-15-vchord_1.1.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 vchord_14 vchord_14-1.1.1-3PIGSTY.el8.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_14-1.1.1-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vchord_14 vchord_14-1.1.1-3PIGSTY.el8.aarch64.rpm pigsty 1.1.1 2.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_14-1.1.1-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vchord_14 vchord_14-1.1.1-3PIGSTY.el9.x86_64.rpm pigsty 1.1.1 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_14-1.1.1-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vchord_14 vchord_14-1.1.1-3PIGSTY.el9.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_14-1.1.1-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vchord_14 vchord_14-1.1.1-3PIGSTY.el10.x86_64.rpm pigsty 1.1.1 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_14-1.1.1-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vchord_14 vchord_14-1.1.1-3PIGSTY.el10.aarch64.rpm pigsty 1.1.1 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_14-1.1.1-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~trixie_amd64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~trixie_arm64.deb pigsty 1.1.1 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~jammy_amd64.deb pigsty 1.1.1 3.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~jammy_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~noble_amd64.deb pigsty 1.1.1 3.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~noble_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~resolute_amd64.deb pigsty 1.1.1 3.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.1.1-3PIGSTY~resolute_arm64.deb pigsty 1.1.1 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-14-vchord_1.1.1-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `vchord` using `pig build`:

```bash
pig build pkg vchord         # build RPM / DEB packages
```


## Install

You can install `vchord` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install vchord;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y vchord -v 18  # PG 18
pig ext install -y vchord -v 17  # PG 17
pig ext install -y vchord -v 16  # PG 16
pig ext install -y vchord -v 15  # PG 15
pig ext install -y vchord -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y vchord_18       # PG 18
dnf install -y vchord_17       # PG 17
dnf install -y vchord_16       # PG 16
dnf install -y vchord_15       # PG 15
dnf install -y vchord_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-vchord   # PG 18
apt install -y postgresql-17-vchord   # PG 17
apt install -y postgresql-16-vchord   # PG 16
apt install -y postgresql-15-vchord   # PG 15
apt install -y postgresql-14-vchord   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'vchord';
```


**Create Extension**:

```sql
CREATE EXTENSION vchord CASCADE;  -- requires: vector
```




## Usage

- https://github.com/tensorchord/VectorChord
- Launch Blog: [VectorChord: Store 400k Vectors for $1 in PostgreSQL](https://blog.pgvecto.rs/vectorchord-store-400k-vectors-for-1-in-postgresql)

Add this extension to shared_preload_libraries in postgresql.conf

```sql
CREATE EXTENSION vchord CASCADE;
```

Create Index on embedding:

```sql
CREATE INDEX ON gist_train USING vchordrq (embedding vector_l2_ops) WITH (options = $$
residual_quantization = true
[build.internal]
lists = [4096]
spherical_centroids = false
build_threads = 8
$$);
```

--------

## Docs

### Query

The query statement is exactly the same as pgvector. VectorChord supports any filter operation and WHERE/JOIN clauses like pgvecto.rs with VBASE.

```sql
SELECT * FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

Supported distance functions are:

- `<->` - L2 distance
- `<#>` - (negative) inner product
- `<=>` - cosine distance


> Due to the limitation of postgresql query planner, we cannot support the range query like `SELECT embedding <-> '[3,1,2]' as distance WHERE distance < 0.1 ORDER BY distance` directly.

To query vectors within a certain distance range, you can use the following syntax.

```sql
-- Query vectors within a certain distance range
-- sphere(center, radius) means the vectors within the sphere with the center and radius, aka range query
-- <<->> is L2 distance, <<#>> is inner product, <<=>> is cosine distance
SELECT vec FROM t WHERE vec <<->> sphere('[0.24, 0.24, 0.24]'::vector, 0.012) 
```

### Query Performance Tuning

You can fine-tune the search performance by adjusting the `probes` and `epsilon` parameters:

```sql
-- Set probes to control the number of lists scanned.
-- Recommended range: 3%–10% of the total `lists` value.
SET vchordrq.probes = 100;

-- Set epsilon to control the reranking precision.
-- Smaller value means less rerank for faster speed, larger value for higher recall.
-- Recommended range: 0.0–4.0. Default value is 1.9.
SET vchordrq.epsilon = 1.9;
```

And for postgres's setting
```sql
-- If using SSDs, set `effective_io_concurrency` to 200 for faster disk I/O.
SET effective_io_concurrency = 200;

-- Disable JIT (Just-In-Time Compilation) as it offers minimal benefit (1–2%) 
-- and adds overhead for single-query workloads.
SET jit = off;

-- Allocate at least 25% of total memory to `shared_buffers`. 
-- For disk-heavy workloads, you can increase this to up to 90% of total memory. You may also want to disable swap with network storage to avoid io hang.
-- Note: A restart is required for this setting to take effect.
ALTER SYSTEM SET shared_buffers = '8GB';
```

### Indexing prewarm

To prewarm the index, you can use the following SQL. It will significantly improve performance when using limited memory.

```sql
-- vchordrq_prewarm(index_name::regclass) to prewarm the index into the shared buffer
SELECT vchordrq_prewarm('gist_train_embedding_idx'::regclass);
```


### Index Build Time

Index building can be parallelized using `build_threads` in the index options and PostgreSQL settings. Optimize parallelism using the following settings:

```sql
-- Set this to the number of CPU cores available for parallel operations.
SET max_parallel_maintenance_workers = 8;
SET max_parallel_workers = 8;

-- Adjust the total number of worker processes.
-- Note: A restart is required for this setting to take effect.
ALTER SYSTEM SET max_worker_processes = 8;
```

### Indexing Progress


You can check the indexing progress by querying the `pg_stat_progress_create_index` view.

```sql
SELECT phase, round(100.0 * blocks_done / nullif(blocks_total, 0), 1) AS "%" FROM pg_stat_progress_create_index;
```

### External Index Precomputation

Unlike an internal build, external index precomputation performs the partitioning work outside PostgreSQL and inserts the resulting centroids into a PostgreSQL table. This can reduce database-side build time and memory use for large datasets.

To get started, you need to do a clustering of vectors using `faiss`, `scikit-learn` or any other clustering library.

The centroids should be preset in a table of any name with 3 columns:
- id(integer): id of each centroid, should be unique
- parent(integer, nullable): parent id of each centroid, should be NULL for normal clustering
- vector(vector): representation of each centroid, `pgvector` vector type

And example could be like this:

```sql
-- Create table of centroids
CREATE TABLE public.centroids (id integer NOT NULL UNIQUE, parent integer, vector vector(768));
-- Insert centroids into it
INSERT INTO public.centroids (id, parent, vector) VALUES (1, NULL, '{0.1, 0.2, 0.3, ..., 0.768}');
INSERT INTO public.centroids (id, parent, vector) VALUES (2, NULL, '{0.4, 0.5, 0.6, ..., 0.768}');
INSERT INTO public.centroids (id, parent, vector) VALUES (3, NULL, '{0.7, 0.8, 0.9, ..., 0.768}');
-- ...

-- Create index using the external centroid table
CREATE INDEX ON gist_train USING vchordrq (embedding vector_l2_ops) WITH (options = $$
[build.external]
table = 'public.centroids'
$$);
```

For the complete workflow and table requirements, see the official [External Build documentation](https://docs.vectorchord.ai/vectorchord/usage/external-index-precomputation.html).



------

## Limitations

- Architecture Compatibility: The fast-scan kernel is optimized for x86_64 architectures. While it runs on aarch64, performance may be lower.


------

## Build

Building this extension requires [clang-17+](https://github.com/tensorchord/VectorChord/issues/188)

Which is available on EL 8/9, Ubuntu 24.04 directly, but require manual installation on Ubuntu 22.04 / Debian 12.

For example, install clang-18 on Ubuntu 22 / Debian 12 and set it as the default clang:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://apt.llvm.org/llvm.sh | bash -s -- 18
sudo update-alternatives --install /usr/bin/clang clang $(which clang-18) 255
```
