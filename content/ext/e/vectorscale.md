---
title: "vectorscale"
linkTitle: "vectorscale"
description: "Advanced indexing for vector data with DiskANN"
weight: 1820
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/timescale/pgvectorscale">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">timescale/pgvectorscale</div>
    <div class="ext-card__desc">https://github.com/timescale/pgvectorscale</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgvectorscale-0.9.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgvectorscale-0.9.0.tar.gz</div>
    <div class="ext-card__desc">pgvectorscale-0.9.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgvectorscale`**](/ext/e/vectorscale) | `0.9.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1820  | [**`vectorscale`**](/ext/e/vectorscale) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorize`](/ext/e/vectorize) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg4ml`](/ext/e/pg4ml) [`pgml`](/ext/e/pgml) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_similarity`](/ext/e/pg_similarity) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.0` | {{< pgvers "18,17,16,15,14" >}} | `pgvectorscale` | `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.0` | {{< pgvers "18,17,16,15,14" >}} | `pgvectorscale_$v` | `pgvector_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgvectorscale` | `postgresql-$v-pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 | AVAIL PIGSTY 0.9.0 1 |
@ el8.x86_64 18 pgvectorscale_18 pgvectorscale_18-0.9.0-3PIGSTY.el8.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_18-0.9.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgvectorscale_18 pgvectorscale_18-0.9.0-3PIGSTY.el8.aarch64.rpm pigsty 0.9.0 977.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_18-0.9.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgvectorscale_18 pgvectorscale_18-0.9.0-3PIGSTY.el9.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_18-0.9.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgvectorscale_18 pgvectorscale_18-0.9.0-3PIGSTY.el9.aarch64.rpm pigsty 0.9.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_18-0.9.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgvectorscale_18 pgvectorscale_18-0.9.0-3PIGSTY.el10.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_18-0.9.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgvectorscale_18 pgvectorscale_18-0.9.0-3PIGSTY.el10.aarch64.rpm pigsty 0.9.0 1018.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_18-0.9.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb pigsty 0.9.0 888.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb pigsty 0.9.0 731.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb pigsty 0.9.0 889.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb pigsty 0.9.0 733.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb pigsty 0.9.0 987.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb pigsty 0.9.0 867.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb pigsty 0.9.0 976.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb pigsty 0.9.0 856.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb pigsty 0.9.0 973.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb pigsty 0.9.0 855.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgvectorscale_17 pgvectorscale_17-0.9.0-3PIGSTY.el8.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_17-0.9.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgvectorscale_17 pgvectorscale_17-0.9.0-3PIGSTY.el8.aarch64.rpm pigsty 0.9.0 974.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_17-0.9.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgvectorscale_17 pgvectorscale_17-0.9.0-3PIGSTY.el9.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_17-0.9.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgvectorscale_17 pgvectorscale_17-0.9.0-3PIGSTY.el9.aarch64.rpm pigsty 0.9.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_17-0.9.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgvectorscale_17 pgvectorscale_17-0.9.0-3PIGSTY.el10.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_17-0.9.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgvectorscale_17 pgvectorscale_17-0.9.0-3PIGSTY.el10.aarch64.rpm pigsty 0.9.0 1016.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_17-0.9.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb pigsty 0.9.0 887.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb pigsty 0.9.0 731.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb pigsty 0.9.0 886.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb pigsty 0.9.0 731.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb pigsty 0.9.0 984.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb pigsty 0.9.0 865.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb pigsty 0.9.0 973.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb pigsty 0.9.0 854.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb pigsty 0.9.0 969.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb pigsty 0.9.0 853.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgvectorscale_16 pgvectorscale_16-0.9.0-3PIGSTY.el8.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_16-0.9.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgvectorscale_16 pgvectorscale_16-0.9.0-3PIGSTY.el8.aarch64.rpm pigsty 0.9.0 973.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_16-0.9.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgvectorscale_16 pgvectorscale_16-0.9.0-3PIGSTY.el9.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_16-0.9.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgvectorscale_16 pgvectorscale_16-0.9.0-3PIGSTY.el9.aarch64.rpm pigsty 0.9.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_16-0.9.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgvectorscale_16 pgvectorscale_16-0.9.0-3PIGSTY.el10.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_16-0.9.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgvectorscale_16 pgvectorscale_16-0.9.0-3PIGSTY.el10.aarch64.rpm pigsty 0.9.0 1016.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_16-0.9.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb pigsty 0.9.0 886.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb pigsty 0.9.0 731.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb pigsty 0.9.0 886.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb pigsty 0.9.0 731.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb pigsty 0.9.0 985.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb pigsty 0.9.0 864.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb pigsty 0.9.0 975.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb pigsty 0.9.0 854.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb pigsty 0.9.0 968.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb pigsty 0.9.0 853.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgvectorscale_15 pgvectorscale_15-0.9.0-3PIGSTY.el8.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_15-0.9.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgvectorscale_15 pgvectorscale_15-0.9.0-3PIGSTY.el8.aarch64.rpm pigsty 0.9.0 963.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_15-0.9.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgvectorscale_15 pgvectorscale_15-0.9.0-3PIGSTY.el9.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_15-0.9.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgvectorscale_15 pgvectorscale_15-0.9.0-3PIGSTY.el9.aarch64.rpm pigsty 0.9.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_15-0.9.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgvectorscale_15 pgvectorscale_15-0.9.0-3PIGSTY.el10.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_15-0.9.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgvectorscale_15 pgvectorscale_15-0.9.0-3PIGSTY.el10.aarch64.rpm pigsty 0.9.0 1012.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_15-0.9.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb pigsty 0.9.0 879.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb pigsty 0.9.0 726.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb pigsty 0.9.0 879.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb pigsty 0.9.0 727.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb pigsty 0.9.0 975.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb pigsty 0.9.0 857.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb pigsty 0.9.0 966.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb pigsty 0.9.0 849.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb pigsty 0.9.0 962.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb pigsty 0.9.0 846.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgvectorscale_14 pgvectorscale_14-0.9.0-3PIGSTY.el8.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_14-0.9.0-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgvectorscale_14 pgvectorscale_14-0.9.0-3PIGSTY.el8.aarch64.rpm pigsty 0.9.0 960.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_14-0.9.0-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgvectorscale_14 pgvectorscale_14-0.9.0-3PIGSTY.el9.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_14-0.9.0-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgvectorscale_14 pgvectorscale_14-0.9.0-3PIGSTY.el9.aarch64.rpm pigsty 0.9.0 1020.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_14-0.9.0-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgvectorscale_14 pgvectorscale_14-0.9.0-3PIGSTY.el10.x86_64.rpm pigsty 0.9.0 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_14-0.9.0-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgvectorscale_14 pgvectorscale_14-0.9.0-3PIGSTY.el10.aarch64.rpm pigsty 0.9.0 1009.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_14-0.9.0-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb pigsty 0.9.0 876.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb pigsty 0.9.0 723.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb pigsty 0.9.0 876.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb pigsty 0.9.0 723.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb pigsty 0.9.0 970.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb pigsty 0.9.0 854.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb pigsty 0.9.0 960.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb pigsty 0.9.0 845.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb pigsty 0.9.0 958.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb pigsty 0.9.0 842.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.0-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgvectorscale` using `pig build`:

```bash
pig build pkg pgvectorscale         # build RPM / DEB packages
```


## Install

You can install `pgvectorscale` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgvectorscale;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgvectorscale -v 18  # PG 18
pig ext install -y pgvectorscale -v 17  # PG 17
pig ext install -y pgvectorscale -v 16  # PG 16
pig ext install -y pgvectorscale -v 15  # PG 15
pig ext install -y pgvectorscale -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgvectorscale_18       # PG 18
dnf install -y pgvectorscale_17       # PG 17
dnf install -y pgvectorscale_16       # PG 16
dnf install -y pgvectorscale_15       # PG 15
dnf install -y pgvectorscale_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgvectorscale   # PG 18
apt install -y postgresql-17-pgvectorscale   # PG 17
apt install -y postgresql-16-pgvectorscale   # PG 16
apt install -y postgresql-15-pgvectorscale   # PG 15
apt install -y postgresql-14-pgvectorscale   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION vectorscale CASCADE;  -- requires: vector
```




## Usage

`vectorscale` extends `pgvector` with the StreamingDiskANN index access method for approximate nearest-neighbor search. The example below creates a vector table, builds a `diskann` index, and runs a distance-ordered query.

```sql
CREATE EXTENSION vectorscale CASCADE;

CREATE TABLE IF NOT EXISTS document_embedding  (
    id BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    metadata JSONB,
    contents TEXT,
    embedding VECTOR(1536)
);
  
CREATE INDEX document_embedding_idx ON document_embedding
USING diskann (embedding);

SELECT *
FROM document_embedding
ORDER BY embedding <=> $1
LIMIT 10
```
