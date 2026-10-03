---
title: "vchord"
linkTitle: "vchord"
description: "Vector database plugin for Postgres, written in Rust"
weight: 1810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supervc-stack/VectorChord">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supervc-stack/VectorChord</div>
    <div class="ext-card__desc">https://github.com/supervc-stack/VectorChord</div>
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

| **Related** | [`vector`](/ext/e/vector) [`vector`](/ext/e/vector) [`vectorscale`](/ext/e/vectorscale) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`pg_rrf`](/ext/e/pg_rrf) [`pg_search`](/ext/e/pg_search) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pgml`](/ext/e/pgml) [`pg4ml`](/ext/e/pg4ml) |
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install vchord;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y vchord -v 18  # PG 18
pig ext install -y vchord -v 17  # PG 17
pig ext install -y vchord -v 16  # PG 16
pig ext install -y vchord -v 15  # PG 15
pig ext install -y vchord -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y vchord_18       # PG 18
dnf install -y vchord_17       # PG 17
dnf install -y vchord_16       # PG 16
dnf install -y vchord_15       # PG 15
dnf install -y vchord_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-vchord   # PG 18
apt install -y postgresql-17-vchord   # PG 17
apt install -y postgresql-16-vchord   # PG 16
apt install -y postgresql-15-vchord   # PG 15
apt install -y postgresql-14-vchord   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'vchord';
```


**Create Extension**:

```sql
CREATE EXTENSION vchord CASCADE;  -- requires: vector
```

## Usage

Sources:

- [1.1.1 README](https://github.com/supervc-stack/VectorChord/blob/1.1.1/README.md)
- [Control and dependency](https://github.com/supervc-stack/VectorChord/blob/1.1.1/vchord.control)
- [Preload requirement](https://github.com/supervc-stack/VectorChord/blob/1.1.1/src/lib.rs)
- [1.1.1 SQL objects](https://github.com/supervc-stack/VectorChord/blob/1.1.1/sql/install/vchord--1.1.1.sql)
- [Query settings](https://github.com/supervc-stack/VectorChord/blob/1.1.1/src/index/gucs.rs)
- [1.1.1 migration](https://github.com/supervc-stack/VectorChord/blob/1.1.1/sql/upgrade/vchord--1.1.0--1.1.1.sql)
- [1.1.1 release notes](https://github.com/supervc-stack/VectorChord/releases/tag/1.1.1)

`vchord` adds approximate vector indexes to PostgreSQL using pgvector's types. It provides the partition-based `vchordrq` and graph-based `vchordg` access methods. The extension requires `vector`, shared preloading, and superuser privileges to create.

### Create and Query an Index

Add the library to the existing preload list, preserving other entries, and restart PostgreSQL:

```conf
shared_preload_libraries = 'vchord'
```

```sql
CREATE EXTENSION vchord CASCADE;
CREATE TABLE items (id bigserial PRIMARY KEY, embedding vector(3));
INSERT INTO items(embedding) VALUES ('[1,2,3]'), ('[4,5,6]');
CREATE INDEX items_embedding_idx ON items
USING vchordrq (embedding vector_l2_ops);

SELECT id FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
SELECT vchordrq_prewarm('items_embedding_idx'::regclass);
```

Use `vector_l2_ops` with `<->`, `vector_ip_ops` with `<#>`, and `vector_cosine_ops` with `<=>`. The inner-product operator returns a negative value for ascending index ordering. The same operator classes can be used with the graph access method; choose one index design for the workload:

```sql
CREATE INDEX items_embedding_graph_idx ON items
USING vchordg (embedding vector_l2_ops);
```

### Range Queries and Tuning

The extension supplies explicit sphere predicates for range search:

```sql
SELECT id FROM items
WHERE embedding <<->> sphere('[1,2,3]'::vector, 0.5);

SET vchordrq.probes = '100';
SET vchordrq.epsilon = 1.9;
SET vchordg.ef_search = 64;
```

`<<->>`, `<<#>>`, and `<<=>>` are sphere predicates for L2, inner product, and cosine metrics. Probe counts depend on the partition layout; tune them with representative data. The epsilon setting controls the reranking tradeoff. The graph search setting controls its candidate search breadth. Both index methods are approximate: check recall, filters, and query plans before choosing settings.

### Quantization in 1.1.1

`rabitq8` and `rabitq4` store quantized vectors. `quantize_to_rabitq8` and `quantize_to_rabitq4` accept `vector` or `halfvec`. Version 1.1.1 adds `dequantize_to_vector` and `dequantize_to_halfvec` overloads for both quantized types:

```sql
SELECT dequantize_to_vector(quantize_to_rabitq8('[1,2,3]'::vector));
SELECT dequantize_to_halfvec(quantize_to_rabitq4('[1,2,3]'::halfvec));
```

Quantization loses precision; dequantization returns an approximation. The release also replaces the quantization implementation. Install matching library and SQL files, restart for the preloaded library, then update each database:

```sql
ALTER EXTENSION vchord UPDATE TO '1.1.1';
```

The 1.1.0-to-1.1.1 script adds these four conversion overloads and declares no index-format migration. Earlier-version upgrade requirements depend on the starting version. Index construction and prewarming consume resources; schedule them for the dataset size. `vchordg_prewarm` is the corresponding graph-index helper. The control is relocatable, so qualify extension objects or include their installation schema in the search path when installed outside the usual schema.
