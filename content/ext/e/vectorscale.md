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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgvectorscale-0.9.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgvectorscale-0.9.1.tar.gz</div>
    <div class="ext-card__desc">pgvectorscale-0.9.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgvectorscale`**](/ext/e/vectorscale) | `0.9.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1820  | [**`vectorscale`**](/ext/e/vectorscale) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`vector`](/ext/e/vector) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`pg_rrf`](/ext/e/pg_rrf) [`pg_search`](/ext/e/pg_search) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pgml`](/ext/e/pgml) [`pg4ml`](/ext/e/pg4ml) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.1` | {{< pgvers "18,17,16,15,14" >}} | `pgvectorscale` | `vector` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.1` | {{< pgvers "18,17,16,15,14" >}} | `pgvectorscale_$v` | `pgvector_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgvectorscale` | `postgresql-$v-pgvector` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 |
@ el8.x86_64 18 pgvectorscale_18 pgvectorscale_18-0.9.1-1PGSTY.el8.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_18-0.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgvectorscale_18 pgvectorscale_18-0.9.1-1PGSTY.el8.aarch64.rpm pigsty 0.9.1 919.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_18-0.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgvectorscale_18 pgvectorscale_18-0.9.1-1PGSTY.el9.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_18-0.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgvectorscale_18 pgvectorscale_18-0.9.1-1PGSTY.el9.aarch64.rpm pigsty 0.9.1 987.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_18-0.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgvectorscale_18 pgvectorscale_18-0.9.1-1PGSTY.el10.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_18-0.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgvectorscale_18 pgvectorscale_18-0.9.1-1PGSTY.el10.aarch64.rpm pigsty 0.9.1 967.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_18-0.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb pigsty 0.9.1 903.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb pigsty 0.9.1 743.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb pigsty 0.9.1 903.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb pigsty 0.9.1 744.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb pigsty 0.9.1 1001.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb pigsty 0.9.1 879.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb pigsty 0.9.1 992.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb pigsty 0.9.1 869.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb pigsty 0.9.1 988.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgvectorscale postgresql-18-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb pigsty 0.9.1 868.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-18-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgvectorscale_17 pgvectorscale_17-0.9.1-1PGSTY.el8.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_17-0.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgvectorscale_17 pgvectorscale_17-0.9.1-1PGSTY.el8.aarch64.rpm pigsty 0.9.1 916.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_17-0.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgvectorscale_17 pgvectorscale_17-0.9.1-1PGSTY.el9.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_17-0.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgvectorscale_17 pgvectorscale_17-0.9.1-1PGSTY.el9.aarch64.rpm pigsty 0.9.1 983.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_17-0.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgvectorscale_17 pgvectorscale_17-0.9.1-1PGSTY.el10.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_17-0.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgvectorscale_17 pgvectorscale_17-0.9.1-1PGSTY.el10.aarch64.rpm pigsty 0.9.1 966.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_17-0.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb pigsty 0.9.1 902.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb pigsty 0.9.1 742.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb pigsty 0.9.1 901.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb pigsty 0.9.1 741.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb pigsty 0.9.1 1001.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb pigsty 0.9.1 877.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb pigsty 0.9.1 989.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb pigsty 0.9.1 866.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb pigsty 0.9.1 984.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgvectorscale postgresql-17-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb pigsty 0.9.1 865.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-17-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgvectorscale_16 pgvectorscale_16-0.9.1-1PGSTY.el8.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_16-0.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgvectorscale_16 pgvectorscale_16-0.9.1-1PGSTY.el8.aarch64.rpm pigsty 0.9.1 915.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_16-0.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgvectorscale_16 pgvectorscale_16-0.9.1-1PGSTY.el9.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_16-0.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgvectorscale_16 pgvectorscale_16-0.9.1-1PGSTY.el9.aarch64.rpm pigsty 0.9.1 982.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_16-0.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgvectorscale_16 pgvectorscale_16-0.9.1-1PGSTY.el10.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_16-0.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgvectorscale_16 pgvectorscale_16-0.9.1-1PGSTY.el10.aarch64.rpm pigsty 0.9.1 966.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_16-0.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb pigsty 0.9.1 900.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb pigsty 0.9.1 740.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb pigsty 0.9.1 900.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb pigsty 0.9.1 741.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb pigsty 0.9.1 1000.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb pigsty 0.9.1 876.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb pigsty 0.9.1 991.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb pigsty 0.9.1 866.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb pigsty 0.9.1 984.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgvectorscale postgresql-16-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb pigsty 0.9.1 864.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-16-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgvectorscale_15 pgvectorscale_15-0.9.1-1PGSTY.el8.x86_64.rpm pigsty 0.9.1 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_15-0.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgvectorscale_15 pgvectorscale_15-0.9.1-1PGSTY.el8.aarch64.rpm pigsty 0.9.1 906.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_15-0.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgvectorscale_15 pgvectorscale_15-0.9.1-1PGSTY.el9.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_15-0.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgvectorscale_15 pgvectorscale_15-0.9.1-1PGSTY.el9.aarch64.rpm pigsty 0.9.1 973.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_15-0.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgvectorscale_15 pgvectorscale_15-0.9.1-1PGSTY.el10.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_15-0.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgvectorscale_15 pgvectorscale_15-0.9.1-1PGSTY.el10.aarch64.rpm pigsty 0.9.1 961.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_15-0.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb pigsty 0.9.1 895.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb pigsty 0.9.1 736.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb pigsty 0.9.1 895.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb pigsty 0.9.1 736.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb pigsty 0.9.1 991.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb pigsty 0.9.1 871.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb pigsty 0.9.1 981.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb pigsty 0.9.1 861.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb pigsty 0.9.1 978.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgvectorscale postgresql-15-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb pigsty 0.9.1 858.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-15-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgvectorscale_14 pgvectorscale_14-0.9.1-1PGSTY.el8.x86_64.rpm pigsty 0.9.1 1.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvectorscale_14-0.9.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgvectorscale_14 pgvectorscale_14-0.9.1-1PGSTY.el8.aarch64.rpm pigsty 0.9.1 903.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvectorscale_14-0.9.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgvectorscale_14 pgvectorscale_14-0.9.1-1PGSTY.el9.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvectorscale_14-0.9.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgvectorscale_14 pgvectorscale_14-0.9.1-1PGSTY.el9.aarch64.rpm pigsty 0.9.1 969.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvectorscale_14-0.9.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgvectorscale_14 pgvectorscale_14-0.9.1-1PGSTY.el10.x86_64.rpm pigsty 0.9.1 1.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvectorscale_14-0.9.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgvectorscale_14 pgvectorscale_14-0.9.1-1PGSTY.el10.aarch64.rpm pigsty 0.9.1 960.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvectorscale_14-0.9.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb pigsty 0.9.1 892.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb pigsty 0.9.1 733.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb pigsty 0.9.1 892.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb pigsty 0.9.1 734.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb pigsty 0.9.1 988.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb pigsty 0.9.1 868.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb pigsty 0.9.1 978.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb pigsty 0.9.1 858.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb pigsty 0.9.1 977.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgvectorscale postgresql-14-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb pigsty 0.9.1 855.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvectorscale/postgresql-14-pgvectorscale_0.9.1-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgvectorscale;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgvectorscale -v 18  # PG 18
pig ext install -y pgvectorscale -v 17  # PG 17
pig ext install -y pgvectorscale -v 16  # PG 16
pig ext install -y pgvectorscale -v 15  # PG 15
pig ext install -y pgvectorscale -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgvectorscale_18       # PG 18
dnf install -y pgvectorscale_17       # PG 17
dnf install -y pgvectorscale_16       # PG 16
dnf install -y pgvectorscale_15       # PG 15
dnf install -y pgvectorscale_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgvectorscale   # PG 18
apt install -y postgresql-17-pgvectorscale   # PG 17
apt install -y postgresql-16-pgvectorscale   # PG 16
apt install -y postgresql-15-pgvectorscale   # PG 15
apt install -y postgresql-14-pgvectorscale   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION vectorscale CASCADE;  -- requires: vector
```

## Usage

Sources:

- [0.9.1 README](https://github.com/timescale/pgvectorscale/blob/0.9.1/README.md)
- [Control and dependency](https://github.com/timescale/pgvectorscale/blob/0.9.1/pgvectorscale/vectorscale.control)
- [0.9.1 migration SQL](https://github.com/timescale/pgvectorscale/blob/0.9.1/pgvectorscale/sql/vectorscale--0.9.0--0.9.1.sql)
- [0.9.1 security and upgrade notes](https://github.com/timescale/pgvectorscale/releases/tag/0.9.1)

`vectorscale` adds the StreamingDiskANN approximate vector index to pgvector. Its `diskann` access method supports L2, inner product, cosine distance, and label filtering. It requires `vector`; creating the extension requires superuser privileges. Version 0.9.1 validates vector types, dimensions, and stored datum layouts to address crashes, memory disclosure, and out-of-bounds writes.

### Core Workflow

Declare a concrete vector dimension and select the operator class matching the query distance:

```sql
CREATE EXTENSION vectorscale CASCADE;
CREATE TABLE documents (
    id bigserial PRIMARY KEY,
    contents text,
    embedding vector(3),
    labels smallint[]
);
INSERT INTO documents(contents, embedding, labels)
VALUES ('PostgreSQL search', '[1,2,3]', ARRAY[1,3]::smallint[]);
CREATE INDEX documents_diskann ON documents
USING diskann (embedding vector_cosine_ops, labels);

SELECT id, contents FROM documents
WHERE labels && ARRAY[1]::smallint[]
ORDER BY embedding <=> '[1,2,3]'::vector
LIMIT 10;
```

Use `vector_l2_ops` with `<->`, `vector_ip_ops` with `<#>`, or `vector_cosine_ops` with `<=>`. Labels use `smallint[]`, and `&&` means any requested label overlaps. Ordinary WHERE conditions are also supported, but selective filters can reduce the returned result count and need workload-specific testing.

### Tuning and Ordering

`diskann.query_search_list_size` controls extra graph-search candidates (default 100); `diskann.query_rescore` controls exact rescoring (default 50, 0 disables it):

```sql
SET diskann.query_search_list_size = 200;
SET diskann.query_rescore = 100;
```

Build options include `storage_layout`, `num_neighbors`, `search_list_size`, and `num_dimensions`. Compressed memory-optimized storage is the default. Increase maintenance memory only after considering concurrent builds and dataset size. Parallel builds require the supported compression layout and do not support label columns in this version.

DiskANN returns relaxed distance ordering. Sort a materialized result set when strict ordering is required; this reorders the retrieved candidates without making approximate search exhaustive. Null vectors are not indexed, null labels act as empty arrays, and null array elements are ignored. Index creation on UNLOGGED tables is unsupported.

### Upgrade to 0.9.1

Install matching extension files and update each database:

```sql
ALTER EXTENSION vectorscale UPDATE TO '0.9.1';
```

The upgrade binds operator classes to pgvector's actual installation schema and checks existing bindings. If an existing operator class references the wrong type or operators, the upgrade aborts; follow the release instructions to drop the affected operator class and recreate extension objects, accounting for dependent indexes.

**DiskANN now requires a valid `vector(N)` column type.** An unconstrained vector column cannot be indexed. Existing indexes with invalid persisted dimensions raise errors during scans, inserts, and vacuum. Correct the column type, then **drop and recreate the affected indexes**: `REINDEX` cannot repair this condition. Valid existing indexes do not need a blanket rebuild merely because 0.9.1 was installed. The SQL surface is not relocatable after extension creation.
