---
title: "vchord"
linkTitle: "vchord"
description: "Vector database plugin for Postgres, written in Rust"
weight: 1810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://vchord.pgsty.com/docs/vchord/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://vchord.pgsty.com/docs/vchord/</div>
    <div class="ext-card__desc">https://vchord.pgsty.com/docs/vchord/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/vchord-1.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">vchord-1.2.0.tar.gz</div>
    <div class="ext-card__desc">vchord-1.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`vchord`**](/ext/e/vchord) | `1.2.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license agpl30only" href="/ext/license#agpl30only">AGPL-3.0-only</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1810  | [**`vchord`**](/ext/e/vchord) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`vector`](/ext/e/vector) [`vector`](/ext/e/vector) [`vectorscale`](/ext/e/vectorscale) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`pg_rrf`](/ext/e/pg_rrf) [`pg_search`](/ext/e/pg_search) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pgml`](/ext/e/pgml) [`pg4ml`](/ext/e/pg4ml) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGSTY fork; requires vector and preload. Reissued 1.2.0 tag archive is byte-identical; 1.2.0-2PGSTY rebuilt and locally indexed across six RPM and ten DEB platforms, PG14-18. vchordg/halfvec scans can return distances out of order; explicitly rerank candidates when strict order is required. CDN sync pending.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `vchord` | `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `vchord_$v` | `pgvector_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-vchord` | `postgresql-$v-pgvector` |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 | AVAIL PIGSTY 1.2.0 1 |
@ el8.x86_64 18 vchord_18 vchord_18-1.2.0-2PGSTY.el8.x86_64.rpm pigsty 1.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_18-1.2.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vchord_18 vchord_18-1.2.0-2PGSTY.el8.aarch64.rpm pigsty 1.2.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_18-1.2.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vchord_18 vchord_18-1.2.0-2PGSTY.el9.x86_64.rpm pigsty 1.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_18-1.2.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vchord_18 vchord_18-1.2.0-2PGSTY.el9.aarch64.rpm pigsty 1.2.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_18-1.2.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vchord_18 vchord_18-1.2.0-2PGSTY.el10.x86_64.rpm pigsty 1.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_18-1.2.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vchord_18 vchord_18-1.2.0-2PGSTY.el10.aarch64.rpm pigsty 1.2.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_18-1.2.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~bookworm_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~bookworm_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~trixie_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~trixie_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~jammy_amd64.deb pigsty 1.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~jammy_arm64.deb pigsty 1.2.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~noble_amd64.deb pigsty 1.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~noble_arm64.deb pigsty 1.2.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~resolute_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vchord postgresql-18-vchord_1.2.0-2PGSTY~resolute_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-18-vchord_1.2.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 17 vchord_17 vchord_17-1.2.0-2PGSTY.el8.x86_64.rpm pigsty 1.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_17-1.2.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vchord_17 vchord_17-1.2.0-2PGSTY.el8.aarch64.rpm pigsty 1.2.0 2.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_17-1.2.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vchord_17 vchord_17-1.2.0-2PGSTY.el9.x86_64.rpm pigsty 1.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_17-1.2.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vchord_17 vchord_17-1.2.0-2PGSTY.el9.aarch64.rpm pigsty 1.2.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_17-1.2.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vchord_17 vchord_17-1.2.0-2PGSTY.el10.x86_64.rpm pigsty 1.2.0 3.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_17-1.2.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vchord_17 vchord_17-1.2.0-2PGSTY.el10.aarch64.rpm pigsty 1.2.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_17-1.2.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~bookworm_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~bookworm_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~trixie_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~trixie_arm64.deb pigsty 1.2.0 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~jammy_amd64.deb pigsty 1.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~jammy_arm64.deb pigsty 1.2.0 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~noble_amd64.deb pigsty 1.2.0 3.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~noble_arm64.deb pigsty 1.2.0 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~resolute_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-vchord postgresql-17-vchord_1.2.0-2PGSTY~resolute_arm64.deb pigsty 1.2.0 2.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-17-vchord_1.2.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 16 vchord_16 vchord_16-1.2.0-2PGSTY.el8.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_16-1.2.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vchord_16 vchord_16-1.2.0-2PGSTY.el8.aarch64.rpm pigsty 1.2.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_16-1.2.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vchord_16 vchord_16-1.2.0-2PGSTY.el9.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_16-1.2.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vchord_16 vchord_16-1.2.0-2PGSTY.el9.aarch64.rpm pigsty 1.2.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_16-1.2.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vchord_16 vchord_16-1.2.0-2PGSTY.el10.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_16-1.2.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vchord_16 vchord_16-1.2.0-2PGSTY.el10.aarch64.rpm pigsty 1.2.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_16-1.2.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~bookworm_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~bookworm_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~trixie_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~trixie_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~jammy_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~jammy_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~noble_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~noble_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~resolute_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-vchord postgresql-16-vchord_1.2.0-2PGSTY~resolute_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-16-vchord_1.2.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 15 vchord_15 vchord_15-1.2.0-2PGSTY.el8.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_15-1.2.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vchord_15 vchord_15-1.2.0-2PGSTY.el8.aarch64.rpm pigsty 1.2.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_15-1.2.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vchord_15 vchord_15-1.2.0-2PGSTY.el9.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_15-1.2.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vchord_15 vchord_15-1.2.0-2PGSTY.el9.aarch64.rpm pigsty 1.2.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_15-1.2.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vchord_15 vchord_15-1.2.0-2PGSTY.el10.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_15-1.2.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vchord_15 vchord_15-1.2.0-2PGSTY.el10.aarch64.rpm pigsty 1.2.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_15-1.2.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~bookworm_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~bookworm_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~trixie_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~trixie_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~jammy_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~jammy_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~noble_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~noble_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~resolute_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-vchord postgresql-15-vchord_1.2.0-2PGSTY~resolute_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-15-vchord_1.2.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 14 vchord_14 vchord_14-1.2.0-2PGSTY.el8.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vchord_14-1.2.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vchord_14 vchord_14-1.2.0-2PGSTY.el8.aarch64.rpm pigsty 1.2.0 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vchord_14-1.2.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vchord_14 vchord_14-1.2.0-2PGSTY.el9.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vchord_14-1.2.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vchord_14 vchord_14-1.2.0-2PGSTY.el9.aarch64.rpm pigsty 1.2.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vchord_14-1.2.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vchord_14 vchord_14-1.2.0-2PGSTY.el10.x86_64.rpm pigsty 1.2.0 3.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vchord_14-1.2.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vchord_14 vchord_14-1.2.0-2PGSTY.el10.aarch64.rpm pigsty 1.2.0 2.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vchord_14-1.2.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~bookworm_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~bookworm_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~trixie_amd64.deb pigsty 1.2.0 3.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~trixie_arm64.deb pigsty 1.2.0 2.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~jammy_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~jammy_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~noble_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~noble_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~resolute_amd64.deb pigsty 1.2.0 3.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-vchord postgresql-14-vchord_1.2.0-2PGSTY~resolute_arm64.deb pigsty 1.2.0 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vchord/postgresql-14-vchord_1.2.0-2PGSTY~resolute_arm64.deb
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

- [Installation and upgrades](https://vchord.pgsty.com/docs/vchord/getting-started/installation/)
- [Partitioned vector indexes](https://vchord.pgsty.com/docs/vchord/usage/indexing/)
- [Graph indexes and result ordering](https://vchord.pgsty.com/docs/vchord/usage/graph-index/)
- [Per-index search defaults](https://vchord.pgsty.com/docs/vchord/usage/fallback-parameters/)
- [Quantized vector types](https://vchord.pgsty.com/docs/vchord/usage/quantization-types/)
- [Recall evaluation](https://vchord.pgsty.com/docs/vchord/usage/measure-recall/)
- [1.2.0 release notes](https://vchord.pgsty.com/blog/release/vchord-1.2.0/)
- [1.2.0 control file](https://github.com/pgsty/vchord/blob/1.2.0/vchord.control)

`vchord` 1.2.0 provides approximate vector search on PostgreSQL 14–18. It uses pgvector's types and adds the partitioned `vchordrq` index and the disk graph `vchordg` index. It requires the `vector` extension, shared preloading, and superuser privileges to install. Graph indexing is documented as a preview feature.

### Enable and Search

Add the library to the existing preload list and restart PostgreSQL:

```ini
shared_preload_libraries = 'vchord'
```

```sql
CREATE EXTENSION vchord CASCADE;
CREATE TABLE items (id bigserial PRIMARY KEY, embedding vector(3));
INSERT INTO items (embedding) VALUES ('[1,2,3]'), ('[4,5,6]'), ('[3,1,2]');
CREATE INDEX items_embedding_idx ON items
USING vchordrq (embedding vector_l2_ops);

SELECT id, embedding <-> '[3,1,2]' AS distance
FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

Small datasets can start with an unpartitioned index. For larger datasets, choose the partition hierarchy through TOML `build.internal.lists`, then set `vchordrq.probes` to the number of partitions to search at each level. More probes trade query work for recall; the probe list must match the hierarchy. The graph alternative uses the same column and distance operator classes:

```sql
CREATE INDEX items_embedding_graph_idx ON items
USING vchordg (embedding vector_l2_ops)
WITH (options = $$
m = 32
ef_construction = 64
$$, ef_search = 128);
```

Use the graph definition as an alternative to the partitioned index above. The recall example below assumes only the partitioned index exists; inspect the query plan when comparing index methods.

### Types, Operators, and Tuning

| Object | Purpose |
| --- | --- |
| `vector_l2_ops`, `<->` | Euclidean distance, ordered ascending. |
| `vector_ip_ops`, `<#>` | Negative inner product, ordered ascending. |
| `vector_cosine_ops`, `<=>` | Cosine distance, ordered ascending. |
| `halfvec` | Half-precision vectors, with corresponding `halfvec_*_ops` classes. |
| `rabitq4`, `rabitq8` | Quantized vector storage; conversion loses precision. |
| `sphere`, `<<->>`, `<<#>>`, `<<=>>` | Distance-radius predicates for L2, inner product, and cosine search. |
| `vchordrq.epsilon` | Reranking tradeoff; default 2.5 in 1.2.0, previously 1.9. |
| `vchordg.ef_search` | Graph search breadth; default 64. |
| `vchordrq_prewarm`, `vchordg_prewarm` | Load hot index pages; require table ownership or table-level `SELECT`. |

```sql
SELECT id FROM items
WHERE embedding <<->> sphere('[1,2,3]'::vector, 0.5);

SELECT dequantize_to_vector(quantize_to_rabitq8('[1,2,3]'::vector));
SELECT dequantize_to_halfvec(quantize_to_rabitq4('[1,2,3]'::halfvec));
```

Sphere radii use the distance operator's units. PostgreSQL rechecks graph sphere predicates, but approximate search can still miss matching rows. Dequantization cannot recover the original vector exactly.

Per-index `probes`, `epsilon`, and `ef_search` options supply search defaults. Explicit GUC settings, including database or server settings, override them. Resetting a session setting restores its configured default, which can still override the index.

### Ordering and Recall

Graph scans can discover closer rows after returning earlier candidates; nearly equal half-precision distances can also appear out of order. Increasing the search breadth reduces some ordering errors but does not guarantee strict ordering. Materialize a larger candidate set and sort it explicitly when ordering matters:

```sql
WITH candidates AS MATERIALIZED (
    SELECT id, embedding <-> '[3,1,2]' AS distance
    FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 100
)
SELECT * FROM candidates ORDER BY distance LIMIT 10;
```

This sorts the retrieved candidates; recall still depends on the candidate count and search parameters. For partitioned indexes, compare approximate results with an exact baseline:

```sql
SELECT vchordrq_evaluate_query_recall(
    query => $$SELECT ctid FROM items
                ORDER BY embedding <-> '[3,1,2]' LIMIT 5$$,
    exact_search => true
);
```

The query must return `ctid`; keep sequential scans enabled for the exact pass. Multi-vector MaxSim queries using `@#` require `exact_search => true` for recall evaluation.

### Maintenance and Upgrade

Keep normal vacuuming enabled: graph searches exclude deleted vertices after `VACUUM`, and index maintenance updates tuple/page statistics. `ANALYZE` alone does not rebuild or compact the index.

Install matching 1.2.0 library and SQL files, restart PostgreSQL to load the new library, then update each database as the extension owner or an administrator:

```sql
ALTER EXTENSION vchord UPDATE TO '1.2.0';
```

The release provides upgrade paths from 0.2.0 through 1.1.1 without reindexing. Recheck representative rankings after upgrading: 1.2.0 fixes MaxSim candidate estimates, graph sphere filters, deleted-vertex visibility, and quantization edge cases, and raises the default reranking budget. The extension is relocatable; include its chosen schema in the search path or qualify its objects.
