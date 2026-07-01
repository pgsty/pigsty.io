---
title: "vector"
linkTitle: "vector"
description: "vector data type and ivfflat and hnsw access methods"
weight: 1800
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgvector/pgvector">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgvector/pgvector</div>
    <div class="ext-card__desc">https://github.com/pgvector/pgvector</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgvector-0.8.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgvector-0.8.3.tar.gz</div>
    <div class="ext-card__desc">pgvector-0.8.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgvector`**](/ext/e/vector) | `0.8.3` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1800  | [**`vector`**](/ext/e/vector) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg4ml`](/ext/e/pg4ml) [`pgml`](/ext/e/pgml) [`pg_similarity`](/ext/e/pg_similarity) [`smlar`](/ext/e/smlar) [`pg_search`](/ext/e/pg_search) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) [`pgmnemo`](/ext/e/pgmnemo) [`vchord`](/ext/e/vchord) [`vectorize`](/ext/e/vectorize) [`vectorscale`](/ext/e/vectorscale) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `pgvector` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `pgvector_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.8.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgvector` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.8.3 4 | AVAIL PIGSTY 0.8.3 6 | AVAIL PIGSTY 0.8.3 16 | AVAIL PIGSTY 0.8.3 18 | AVAIL PIGSTY 0.8.3 18 |
| el8.aarch64 | AVAIL PIGSTY 0.8.3 4 | AVAIL PIGSTY 0.8.3 6 | AVAIL PIGSTY 0.8.3 16 | AVAIL PIGSTY 0.8.3 18 | AVAIL PIGSTY 0.8.3 18 |
| el9.x86_64 | AVAIL PIGSTY 0.8.3 6 | AVAIL PIGSTY 0.8.3 8 | AVAIL PIGSTY 0.8.3 18 | AVAIL PIGSTY 0.8.3 20 | AVAIL PIGSTY 0.8.3 20 |
| el9.aarch64 | AVAIL PIGSTY 0.8.3 6 | AVAIL PIGSTY 0.8.3 8 | AVAIL PIGSTY 0.8.3 18 | AVAIL PIGSTY 0.8.3 20 | AVAIL PIGSTY 0.8.3 20 |
| el10.x86_64 | AVAIL PIGSTY 0.8.3 6 | AVAIL PIGSTY 0.8.3 7 | AVAIL PIGSTY 0.8.3 7 | AVAIL PIGSTY 0.8.3 7 | AVAIL PIGSTY 0.8.3 7 |
| el10.aarch64 | AVAIL PIGSTY 0.8.3 6 | AVAIL PIGSTY 0.8.3 7 | AVAIL PIGSTY 0.8.3 7 | AVAIL PIGSTY 0.8.3 7 | AVAIL PIGSTY 0.8.3 7 |
| d12.x86_64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| d12.aarch64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| d13.x86_64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| d13.aarch64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| u22.x86_64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| u22.aarch64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| u24.x86_64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| u24.aarch64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| u26.x86_64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
| u26.aarch64 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 | AVAIL PGDG 0.8.3 4 |
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 113.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvector_18-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 108.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 107.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 106.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 105.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvector_18-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 97.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 96.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 107.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvector_18-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.3 108.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgvector_18-0.8.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.2 108.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgvector_18-0.8.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 0.8.2 108.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgvector_18-0.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 0.8.2 108.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgvector_18-0.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel9.x86_64.rpm pgdg 0.8.1 108.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgvector_18-0.8.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 97.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvector_18-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.3 94.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgvector_18-0.8.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.2 94.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgvector_18-0.8.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 0.8.2 94.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgvector_18-0.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 0.8.2 94.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgvector_18-0.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel9.aarch64.rpm pgdg 0.8.1 94.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgvector_18-0.8.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 108.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvector_18-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.3 105.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgvector_18-0.8.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.2 105.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgvector_18-0.8.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 0.8.2 105.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgvector_18-0.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 0.8.2 105.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgvector_18-0.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel10.x86_64.rpm pgdg 0.8.1 104.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgvector_18-0.8.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 99.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvector_18-0.8.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 96.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg12+1_amd64.deb pgdg 0.8.3 258.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 252.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg12+1_amd64.deb pgdg 0.8.2 256.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg12+1_amd64.deb pgdg 0.8.1 256.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg12+1_arm64.deb pgdg 0.8.3 228.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 226.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg12+1_arm64.deb pgdg 0.8.2 226.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg12+1_arm64.deb pgdg 0.8.1 226.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg13+1_amd64.deb pgdg 0.8.3 259.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 252.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg13+1_amd64.deb pgdg 0.8.2 257.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg13+1_amd64.deb pgdg 0.8.1 256.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg13+1_arm64.deb pgdg 0.8.3 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 228.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg13+1_arm64.deb pgdg 0.8.2 228.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg13+1_arm64.deb pgdg 0.8.1 228.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb pgdg 0.8.3 262.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 270.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb pgdg 0.8.2 259.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb pgdg 0.8.1 259.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb pgdg 0.8.3 230.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 244.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb pgdg 0.8.2 227.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb pgdg 0.8.1 227.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb pgdg 0.8.3 255.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 259.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb pgdg 0.8.2 252.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb pgdg 0.8.1 252.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb pgdg 0.8.3 225.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 237.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb pgdg 0.8.2 223.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb pgdg 0.8.1 223.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb pgdg 0.8.3 253.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 258.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb pgdg 0.8.2 251.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb pgdg 0.8.1 251.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb pgdg 0.8.3 224.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 236.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-18-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb pgdg 0.8.2 222.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb pgdg 0.8.1 222.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 113.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvector_17-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 108.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 107.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 106.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.0-1PGDG.rhel8.x86_64.rpm pgdg 0.8.0 105.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.7.4-1PGDG.rhel8.x86_64.rpm pgdg 0.7.4 101.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 105.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvector_17-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 97.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 96.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.0-1PGDG.rhel8.aarch64.rpm pgdg 0.8.0 95.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.7.4-1PGDG.rhel8.aarch64.rpm pgdg 0.7.4 91.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.7.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 107.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvector_17-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.3 108.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.2 108.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 0.8.2 108.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 0.8.2 108.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel9.x86_64.rpm pgdg 0.8.1 108.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.0-1PGDG.rhel9.x86_64.rpm pgdg 0.8.0 107.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.7.4-1PGDG.rhel9.x86_64.rpm pgdg 0.7.4 103.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 97.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvector_17-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.3 94.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.2 94.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 0.8.2 94.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 0.8.2 94.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel9.aarch64.rpm pgdg 0.8.1 94.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.0-1PGDG.rhel9.aarch64.rpm pgdg 0.8.0 93.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.7.4-1PGDG.rhel9.aarch64.rpm pgdg 0.7.4 89.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.7.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 108.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvector_17-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.3 105.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.2 105.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 0.8.2 104.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 0.8.2 105.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel10.x86_64.rpm pgdg 0.8.1 105.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.0-2PGDG.rhel10.x86_64.rpm pgdg 0.8.0 104.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 99.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvector_17-0.8.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 96.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 96.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg12+1_amd64.deb pgdg 0.8.3 258.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 251.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg12+1_amd64.deb pgdg 0.8.2 255.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg12+1_amd64.deb pgdg 0.8.1 255.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg12+1_arm64.deb pgdg 0.8.3 228.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 226.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg12+1_arm64.deb pgdg 0.8.2 226.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg12+1_arm64.deb pgdg 0.8.1 226.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg13+1_amd64.deb pgdg 0.8.3 258.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 252.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg13+1_amd64.deb pgdg 0.8.2 256.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg13+1_amd64.deb pgdg 0.8.1 256.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg13+1_arm64.deb pgdg 0.8.3 229.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 227.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg13+1_arm64.deb pgdg 0.8.2 227.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg13+1_arm64.deb pgdg 0.8.1 227.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb pgdg 0.8.3 301.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 309.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb pgdg 0.8.2 299.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb pgdg 0.8.1 298.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb pgdg 0.8.3 268.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 283.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb pgdg 0.8.2 265.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb pgdg 0.8.1 265.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb pgdg 0.8.3 254.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 259.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb pgdg 0.8.2 252.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb pgdg 0.8.1 252.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb pgdg 0.8.3 224.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 237.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb pgdg 0.8.2 223.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb pgdg 0.8.1 222.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb pgdg 0.8.3 253.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 258.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb pgdg 0.8.2 251.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb pgdg 0.8.1 251.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb pgdg 0.8.3 224.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 236.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-17-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb pgdg 0.8.2 222.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb pgdg 0.8.1 222.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 113.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvector_16-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 108.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 107.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 106.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.0-1PGDG.rhel8.x86_64.rpm pgdg 0.8.0 105.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.7.4-1PGDG.rhel8.x86_64.rpm pgdg 0.7.4 101.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.7.3-1PGDG.rhel8.x86_64.rpm pgdg 0.7.3 101.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.7.2-1PGDG.rhel8.x86_64.rpm pgdg 0.7.2 100.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.7.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.7.1-1PGDG.rhel8.x86_64.rpm pgdg 0.7.1 100.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.7.0-2PGDG.rhel8.x86_64.rpm pgdg 0.7.0 99.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.7.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.6.2-2PGDG.rhel8.x86_64.rpm pgdg 0.6.2 75.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.6.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.6.2-1PGDG.rhel8.x86_64.rpm pgdg 0.6.2 76.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.6.1-1PGDG.rhel8.x86_64.rpm pgdg 0.6.1 75.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.6.0-1PGDG.rhel8.x86_64.rpm pgdg 0.6.0 74.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 62.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.5.0-1PGDG.rhel8.x86_64.rpm pgdg 0.5.0 62.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 105.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvector_16-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 97.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 96.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.0-1PGDG.rhel8.aarch64.rpm pgdg 0.8.0 95.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.7.4-1PGDG.rhel8.aarch64.rpm pgdg 0.7.4 91.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.7.3-1PGDG.rhel8.aarch64.rpm pgdg 0.7.3 91.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.7.2-1PGDG.rhel8.aarch64.rpm pgdg 0.7.2 90.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.7.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.7.1-1PGDG.rhel8.aarch64.rpm pgdg 0.7.1 90.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.7.0-1PGDG.rhel8.aarch64.rpm pgdg 0.7.0 89.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.6.2-2PGDG.rhel8.aarch64.rpm pgdg 0.6.2 70.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.6.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.6.2-1PGDG.rhel8.aarch64.rpm pgdg 0.6.2 70.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.6.1-1PGDG.rhel8.aarch64.rpm pgdg 0.6.1 69.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.6.0-1PGDG.rhel8.aarch64.rpm pgdg 0.6.0 68.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 58.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.5.0-1PGDG.rhel8.aarch64.rpm pgdg 0.5.0 58.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.5.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 107.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvector_16-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.3 108.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.2 108.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 0.8.2 108.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 0.8.2 108.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel9.x86_64.rpm pgdg 0.8.1 108.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.0-1PGDG.rhel9.x86_64.rpm pgdg 0.8.0 107.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.7.4-1PGDG.rhel9.x86_64.rpm pgdg 0.7.4 103.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.7.3-1PGDG.rhel9.x86_64.rpm pgdg 0.7.3 103.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.7.2-1PGDG.rhel9.x86_64.rpm pgdg 0.7.2 102.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.7.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.7.1-1PGDG.rhel9.x86_64.rpm pgdg 0.7.1 102.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.7.0-1PGDG.rhel9.x86_64.rpm pgdg 0.7.0 101.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.6.2-2PGDG.rhel9.x86_64.rpm pgdg 0.6.2 72.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.6.2-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.6.2-1PGDG.rhel9.x86_64.rpm pgdg 0.6.2 73.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.6.1-1PGDG.rhel9.x86_64.rpm pgdg 0.6.1 72.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.6.0-1PGDG.rhel9.x86_64.rpm pgdg 0.6.0 72.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 64.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgvector_16 pgvector_16-0.5.0-1PGDG.rhel9.x86_64.rpm pgdg 0.5.0 64.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 97.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvector_16-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.3 94.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.2 94.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 0.8.2 94.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 0.8.2 94.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel9.aarch64.rpm pgdg 0.8.1 93.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.0-1PGDG.rhel9.aarch64.rpm pgdg 0.8.0 93.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.7.4-1PGDG.rhel9.aarch64.rpm pgdg 0.7.4 89.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.7.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.7.3-1PGDG.rhel9.aarch64.rpm pgdg 0.7.3 89.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.7.2-1PGDG.rhel9.aarch64.rpm pgdg 0.7.2 88.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.7.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.7.1-1PGDG.rhel9.aarch64.rpm pgdg 0.7.1 88.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.7.0-1PGDG.rhel9.aarch64.rpm pgdg 0.7.0 87.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.6.2-2PGDG.rhel9.aarch64.rpm pgdg 0.6.2 69.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.6.2-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.6.2-1PGDG.rhel9.aarch64.rpm pgdg 0.6.2 68.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.6.1-1PGDG.rhel9.aarch64.rpm pgdg 0.6.1 67.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.6.0-1PGDG.rhel9.aarch64.rpm pgdg 0.6.0 67.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 59.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.5.0-1PGDG.rhel9.aarch64.rpm pgdg 0.5.0 59.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.5.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 108.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvector_16-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.3 105.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.2 104.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 0.8.2 104.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 0.8.2 105.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel10.x86_64.rpm pgdg 0.8.1 104.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.0-2PGDG.rhel10.x86_64.rpm pgdg 0.8.0 104.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 99.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvector_16-0.8.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 96.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 96.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 96.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 96.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 96.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 95.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg12+1_amd64.deb pgdg 0.8.3 258.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 251.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg12+1_amd64.deb pgdg 0.8.2 256.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg12+1_amd64.deb pgdg 0.8.1 255.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg12+1_arm64.deb pgdg 0.8.3 228.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 226.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg12+1_arm64.deb pgdg 0.8.2 226.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg12+1_arm64.deb pgdg 0.8.1 226.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg13+1_amd64.deb pgdg 0.8.3 258.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 251.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg13+1_amd64.deb pgdg 0.8.2 256.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg13+1_amd64.deb pgdg 0.8.1 256.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg13+1_arm64.deb pgdg 0.8.3 229.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 228.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg13+1_arm64.deb pgdg 0.8.2 227.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg13+1_arm64.deb pgdg 0.8.1 227.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb pgdg 0.8.3 292.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 300.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb pgdg 0.8.2 289.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb pgdg 0.8.1 288.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb pgdg 0.8.3 258.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 273.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb pgdg 0.8.2 257.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb pgdg 0.8.1 256.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb pgdg 0.8.3 254.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 258.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb pgdg 0.8.2 252.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb pgdg 0.8.1 251.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb pgdg 0.8.3 224.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 236.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb pgdg 0.8.2 222.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb pgdg 0.8.1 222.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb pgdg 0.8.3 252.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 257.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb pgdg 0.8.2 250.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb pgdg 0.8.1 250.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb pgdg 0.8.3 224.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 235.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-16-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb pgdg 0.8.2 222.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb pgdg 0.8.1 221.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 114.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvector_15-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 109.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 108.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 107.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.0-1PGDG.rhel8.x86_64.rpm pgdg 0.8.0 106.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.7.4-1PGDG.rhel8.x86_64.rpm pgdg 0.7.4 102.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.7.3-1PGDG.rhel8.x86_64.rpm pgdg 0.7.3 102.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.7.2-1PGDG.rhel8.x86_64.rpm pgdg 0.7.2 101.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.7.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.7.1-1PGDG.rhel8.x86_64.rpm pgdg 0.7.1 101.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.7.0-2PGDG.rhel8.x86_64.rpm pgdg 0.7.0 100.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.7.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.6.2-2PGDG.rhel8.x86_64.rpm pgdg 0.6.2 75.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.6.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.6.2-1PGDG.rhel8.x86_64.rpm pgdg 0.6.2 76.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.6.1-1PGDG.rhel8.x86_64.rpm pgdg 0.6.1 75.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.6.0-1PGDG.rhel8.x86_64.rpm pgdg 0.6.0 75.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 64.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.5.0-1PGDG.rhel8.x86_64.rpm pgdg 0.5.0 63.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.4.4-1.rhel8.x86_64.rpm pgdg 0.4.4 44.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.4.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.4.1-1.rhel8.x86_64.rpm pgdg 0.4.1 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.4.1-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 106.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvector_15-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 98.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 97.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.0-1PGDG.rhel8.aarch64.rpm pgdg 0.8.0 96.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.7.4-1PGDG.rhel8.aarch64.rpm pgdg 0.7.4 92.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.7.3-1PGDG.rhel8.aarch64.rpm pgdg 0.7.3 91.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.7.2-1PGDG.rhel8.aarch64.rpm pgdg 0.7.2 91.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.7.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.7.1-1PGDG.rhel8.aarch64.rpm pgdg 0.7.1 91.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.7.0-1PGDG.rhel8.aarch64.rpm pgdg 0.7.0 90.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.6.2-2PGDG.rhel8.aarch64.rpm pgdg 0.6.2 71.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.6.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.6.2-1PGDG.rhel8.aarch64.rpm pgdg 0.6.2 71.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.6.1-1PGDG.rhel8.aarch64.rpm pgdg 0.6.1 69.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.6.0-1PGDG.rhel8.aarch64.rpm pgdg 0.6.0 69.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 59.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.5.0-1PGDG.rhel8.aarch64.rpm pgdg 0.5.0 59.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.4.4-1.rhel8.aarch64.rpm pgdg 0.4.4 42.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.4.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.4.1-1.rhel8.aarch64.rpm pgdg 0.4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.4.1-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 111.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvector_15-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.3 113.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.2 113.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 0.8.2 113.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 0.8.2 113.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel9.x86_64.rpm pgdg 0.8.1 112.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.0-1PGDG.rhel9.x86_64.rpm pgdg 0.8.0 112.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.7.4-1PGDG.rhel9.x86_64.rpm pgdg 0.7.4 107.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.7.3-1PGDG.rhel9.x86_64.rpm pgdg 0.7.3 107.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.7.2-1PGDG.rhel9.x86_64.rpm pgdg 0.7.2 106.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.7.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.7.1-1PGDG.rhel9.x86_64.rpm pgdg 0.7.1 106.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.7.0-1PGDG.rhel9.x86_64.rpm pgdg 0.7.0 106.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.6.2-2PGDG.rhel9.x86_64.rpm pgdg 0.6.2 76.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.6.2-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.6.2-1PGDG.rhel9.x86_64.rpm pgdg 0.6.2 78.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.6.1-1PGDG.rhel9.x86_64.rpm pgdg 0.6.1 77.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.6.0-1PGDG.rhel9.x86_64.rpm pgdg 0.6.0 76.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 66.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.5.0-1PGDG.rhel9.x86_64.rpm pgdg 0.5.0 65.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.4.4-1.rhel9.x86_64.rpm pgdg 0.4.4 45.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.4.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgvector_15 pgvector_15-0.4.1-1.rhel9.x86_64.rpm pgdg 0.4.1 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.4.1-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 101.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvector_15-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.3 99.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.2 99.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 0.8.2 99.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 0.8.2 99.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel9.aarch64.rpm pgdg 0.8.1 98.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.0-1PGDG.rhel9.aarch64.rpm pgdg 0.8.0 98.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.7.4-1PGDG.rhel9.aarch64.rpm pgdg 0.7.4 94.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.7.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.7.3-1PGDG.rhel9.aarch64.rpm pgdg 0.7.3 93.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.7.2-1PGDG.rhel9.aarch64.rpm pgdg 0.7.2 93.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.7.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.7.1-1PGDG.rhel9.aarch64.rpm pgdg 0.7.1 93.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.7.0-1PGDG.rhel9.aarch64.rpm pgdg 0.7.0 92.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.6.2-2PGDG.rhel9.aarch64.rpm pgdg 0.6.2 73.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.6.2-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.6.2-1PGDG.rhel9.aarch64.rpm pgdg 0.6.2 73.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.6.1-1PGDG.rhel9.aarch64.rpm pgdg 0.6.1 72.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.6.0-1PGDG.rhel9.aarch64.rpm pgdg 0.6.0 71.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 61.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.5.0-1PGDG.rhel9.aarch64.rpm pgdg 0.5.0 60.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.4.4-1.rhel9.aarch64.rpm pgdg 0.4.4 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.4.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.4.1-1.rhel9.aarch64.rpm pgdg 0.4.1 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.4.1-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 112.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvector_15-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.3 109.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.2 108.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 0.8.2 108.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 0.8.2 109.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel10.x86_64.rpm pgdg 0.8.1 108.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.0-2PGDG.rhel10.x86_64.rpm pgdg 0.8.0 108.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 103.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvector_15-0.8.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 101.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 100.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg12+1_amd64.deb pgdg 0.8.3 259.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 252.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg12+1_amd64.deb pgdg 0.8.2 256.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg12+1_amd64.deb pgdg 0.8.1 256.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg12+1_arm64.deb pgdg 0.8.3 230.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 227.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg12+1_arm64.deb pgdg 0.8.2 227.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg12+1_arm64.deb pgdg 0.8.1 227.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg13+1_amd64.deb pgdg 0.8.3 260.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 252.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg13+1_amd64.deb pgdg 0.8.2 258.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg13+1_amd64.deb pgdg 0.8.1 257.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg13+1_arm64.deb pgdg 0.8.3 231.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 229.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg13+1_arm64.deb pgdg 0.8.2 228.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg13+1_arm64.deb pgdg 0.8.1 228.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb pgdg 0.8.3 294.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 303.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb pgdg 0.8.2 292.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb pgdg 0.8.1 291.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb pgdg 0.8.3 262.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 278.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb pgdg 0.8.2 260.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb pgdg 0.8.1 259.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb pgdg 0.8.3 256.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 261.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb pgdg 0.8.2 254.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb pgdg 0.8.1 254.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb pgdg 0.8.3 228.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 240.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb pgdg 0.8.2 226.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb pgdg 0.8.1 226.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb pgdg 0.8.3 255.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 261.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb pgdg 0.8.2 253.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb pgdg 0.8.1 253.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb pgdg 0.8.3 227.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 240.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-15-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb pgdg 0.8.2 225.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb pgdg 0.8.1 225.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgvector_14 pgvector_14-0.8.3-1PIGSTY.el8.x86_64.rpm pigsty 0.8.3 114.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgvector_14-0.8.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 109.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 108.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 107.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.8.0-1PGDG.rhel8.x86_64.rpm pgdg 0.8.0 106.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.7.4-1PGDG.rhel8.x86_64.rpm pgdg 0.7.4 102.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.7.3-1PGDG.rhel8.x86_64.rpm pgdg 0.7.3 101.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.7.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.7.2-1PGDG.rhel8.x86_64.rpm pgdg 0.7.2 101.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.7.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.7.1-1PGDG.rhel8.x86_64.rpm pgdg 0.7.1 101.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.7.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.7.0-2PGDG.rhel8.x86_64.rpm pgdg 0.7.0 100.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.7.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.6.2-2PGDG.rhel8.x86_64.rpm pgdg 0.6.2 75.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.6.2-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.6.2-1PGDG.rhel8.x86_64.rpm pgdg 0.6.2 76.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.6.1-1PGDG.rhel8.x86_64.rpm pgdg 0.6.1 75.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.6.0-1PGDG.rhel8.x86_64.rpm pgdg 0.6.0 75.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.5.1-1PGDG.rhel8.x86_64.rpm pgdg 0.5.1 64.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.5.0-1PGDG.rhel8.x86_64.rpm pgdg 0.5.0 63.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.4.4-1.rhel8.x86_64.rpm pgdg 0.4.4 44.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.4.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgvector_14 pgvector_14-0.4.1-1.rhel8.x86_64.rpm pgdg 0.4.1 41.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgvector_14-0.4.1-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.8.3-1PIGSTY.el8.aarch64.rpm pigsty 0.8.3 106.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgvector_14-0.8.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 98.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 97.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.8.0-1PGDG.rhel8.aarch64.rpm pgdg 0.8.0 96.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.7.4-1PGDG.rhel8.aarch64.rpm pgdg 0.7.4 92.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.7.3-1PGDG.rhel8.aarch64.rpm pgdg 0.7.3 91.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.7.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.7.2-1PGDG.rhel8.aarch64.rpm pgdg 0.7.2 91.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.7.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.7.1-1PGDG.rhel8.aarch64.rpm pgdg 0.7.1 90.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.7.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.7.0-1PGDG.rhel8.aarch64.rpm pgdg 0.7.0 90.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.6.2-2PGDG.rhel8.aarch64.rpm pgdg 0.6.2 71.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.6.2-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.6.2-1PGDG.rhel8.aarch64.rpm pgdg 0.6.2 70.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.6.1-1PGDG.rhel8.aarch64.rpm pgdg 0.6.1 69.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.6.0-1PGDG.rhel8.aarch64.rpm pgdg 0.6.0 69.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.5.1-1PGDG.rhel8.aarch64.rpm pgdg 0.5.1 59.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.5.0-1PGDG.rhel8.aarch64.rpm pgdg 0.5.0 59.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.5.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.4.4-1.rhel8.aarch64.rpm pgdg 0.4.4 42.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.4.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgvector_14 pgvector_14-0.4.1-1.rhel8.aarch64.rpm pgdg 0.4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgvector_14-0.4.1-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.3-1PIGSTY.el9.x86_64.rpm pigsty 0.8.3 111.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgvector_14-0.8.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.3-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.3 112.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.8.3-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel9.8.x86_64.rpm pgdg 0.8.2 112.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.8.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 0.8.2 112.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 0.8.2 113.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.1-1PGDG.rhel9.x86_64.rpm pgdg 0.8.1 112.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.8.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.8.0-1PGDG.rhel9.x86_64.rpm pgdg 0.8.0 111.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.7.4-1PGDG.rhel9.x86_64.rpm pgdg 0.7.4 107.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.7.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.7.3-1PGDG.rhel9.x86_64.rpm pgdg 0.7.3 107.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.7.2-1PGDG.rhel9.x86_64.rpm pgdg 0.7.2 107.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.7.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.7.1-1PGDG.rhel9.x86_64.rpm pgdg 0.7.1 106.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.7.0-1PGDG.rhel9.x86_64.rpm pgdg 0.7.0 106.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.6.2-2PGDG.rhel9.x86_64.rpm pgdg 0.6.2 76.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.6.2-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.6.2-1PGDG.rhel9.x86_64.rpm pgdg 0.6.2 78.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.6.1-1PGDG.rhel9.x86_64.rpm pgdg 0.6.1 77.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.6.0-1PGDG.rhel9.x86_64.rpm pgdg 0.6.0 76.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.5.1-1PGDG.rhel9.x86_64.rpm pgdg 0.5.1 65.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.5.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.5.0-1PGDG.rhel9.x86_64.rpm pgdg 0.5.0 65.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.4.4-1.rhel9.x86_64.rpm pgdg 0.4.4 45.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.4.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgvector_14 pgvector_14-0.4.1-1.rhel9.x86_64.rpm pgdg 0.4.1 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgvector_14-0.4.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.3-1PIGSTY.el9.aarch64.rpm pigsty 0.8.3 101.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgvector_14-0.8.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.3-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.3 99.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.8.3-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel9.8.aarch64.rpm pgdg 0.8.2 99.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.8.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 0.8.2 99.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 0.8.2 99.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.1-1PGDG.rhel9.aarch64.rpm pgdg 0.8.1 98.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.8.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.8.0-1PGDG.rhel9.aarch64.rpm pgdg 0.8.0 98.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.7.4-1PGDG.rhel9.aarch64.rpm pgdg 0.7.4 94.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.7.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.7.3-1PGDG.rhel9.aarch64.rpm pgdg 0.7.3 93.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.7.2-1PGDG.rhel9.aarch64.rpm pgdg 0.7.2 93.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.7.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.7.1-1PGDG.rhel9.aarch64.rpm pgdg 0.7.1 93.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.7.0-1PGDG.rhel9.aarch64.rpm pgdg 0.7.0 92.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.6.2-2PGDG.rhel9.aarch64.rpm pgdg 0.6.2 73.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.6.2-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.6.2-1PGDG.rhel9.aarch64.rpm pgdg 0.6.2 73.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.6.1-1PGDG.rhel9.aarch64.rpm pgdg 0.6.1 72.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.6.0-1PGDG.rhel9.aarch64.rpm pgdg 0.6.0 71.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.5.1-1PGDG.rhel9.aarch64.rpm pgdg 0.5.1 61.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.5.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.5.0-1PGDG.rhel9.aarch64.rpm pgdg 0.5.0 60.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.5.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.4.4-1.rhel9.aarch64.rpm pgdg 0.4.4 43.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.4.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgvector_14 pgvector_14-0.4.1-1.rhel9.aarch64.rpm pgdg 0.4.1 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgvector_14-0.4.1-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.3-1PIGSTY.el10.x86_64.rpm pigsty 0.8.3 112.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgvector_14-0.8.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.3 109.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgvector_14-0.8.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.8.2 108.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgvector_14-0.8.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 0.8.2 109.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgvector_14-0.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 0.8.2 109.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgvector_14-0.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.1-1PGDG.rhel10.x86_64.rpm pgdg 0.8.1 108.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgvector_14-0.8.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgvector_14 pgvector_14-0.8.0-2PGDG.rhel10.x86_64.rpm pgdg 0.8.0 108.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgvector_14-0.8.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.3-1PIGSTY.el10.aarch64.rpm pigsty 0.8.3 103.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgvector_14-0.8.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 101.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgvector_14-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 101.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgvector_14-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 101.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgvector_14-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 101.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgvector_14-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 101.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgvector_14-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgvector_14 pgvector_14-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 100.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgvector_14-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg12+1_amd64.deb pgdg 0.8.3 259.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb pigsty 0.8.3 252.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg12+1_amd64.deb pgdg 0.8.2 257.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg12+1_amd64.deb pgdg 0.8.1 256.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg12+1_arm64.deb pgdg 0.8.3 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb pigsty 0.8.3 228.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg12+1_arm64.deb pgdg 0.8.2 228.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg12+1_arm64.deb pgdg 0.8.1 227.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg13+1_amd64.deb pgdg 0.8.3 260.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb pigsty 0.8.3 252.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg13+1_amd64.deb pgdg 0.8.2 258.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg13+1_amd64.deb pgdg 0.8.1 257.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg13+1_arm64.deb pgdg 0.8.3 230.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb pigsty 0.8.3 229.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg13+1_arm64.deb pgdg 0.8.2 229.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg13+1_arm64.deb pgdg 0.8.1 228.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb pgdg 0.8.3 293.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb pigsty 0.8.3 302.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb pgdg 0.8.2 290.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb pgdg 0.8.1 289.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb pgdg 0.8.3 260.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb pigsty 0.8.3 276.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb pgdg 0.8.2 258.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb pgdg 0.8.1 258.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb pgdg 0.8.3 256.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~noble_amd64.deb pigsty 0.8.3 261.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb pgdg 0.8.2 254.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb pgdg 0.8.1 254.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb pgdg 0.8.3 228.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~noble_arm64.deb pigsty 0.8.3 240.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb pgdg 0.8.2 226.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb pgdg 0.8.1 225.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb pgdg 0.8.3 255.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb pigsty 0.8.3 261.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb pgdg 0.8.2 253.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb pgdg 0.8.1 253.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb pgdg 0.8.3 227.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb pigsty 0.8.3 239.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgvector/postgresql-14-pgvector_0.8.3-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb pgdg 0.8.2 225.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgvector postgresql-14-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb pgdg 0.8.1 224.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-14-pgvector_0.8.1-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pgvector` using `pig build`:

```bash
pig build pkg pgvector         # build RPM packages
```


## Install

You can install `pgvector` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgvector;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgvector -v 18  # PG 18
pig ext install -y pgvector -v 17  # PG 17
pig ext install -y pgvector -v 16  # PG 16
pig ext install -y pgvector -v 15  # PG 15
pig ext install -y pgvector -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgvector_18       # PG 18
dnf install -y pgvector_17       # PG 17
dnf install -y pgvector_16       # PG 16
dnf install -y pgvector_15       # PG 15
dnf install -y pgvector_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgvector   # PG 18
apt install -y postgresql-17-pgvector   # PG 17
apt install -y postgresql-16-pgvector   # PG 16
apt install -y postgresql-15-pgvector   # PG 15
apt install -y postgresql-14-pgvector   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION vector;
```



## Usage

Sources: [README](https://github.com/pgvector/pgvector/blob/v0.8.3/README.md), [CHANGELOG](https://github.com/pgvector/pgvector/blob/v0.8.3/CHANGELOG.md)

Open-source vector similarity search for Postgres. Store your vectors with the rest of your data. Supports:

- exact and approximate nearest neighbor search
- single-precision, half-precision, binary, and sparse vectors
- L2 distance, inner product, cosine distance, L1 distance, Hamming distance, and Jaccard distance
- any [language](https://github.com/pgvector/pgvector#languages) with a Postgres client

Plus [ACID](https://en.wikipedia.org/wiki/ACID) compliance, point-in-time recovery, JOINs, and all of the other [great features](https://www.postgresql.org/about/) of Postgres

### Version Notes

`pgvector` 0.8.3 fixes possible HNSW index corruption during vacuuming and fixes a PostgreSQL 18 performance regression for Hamming and Jaccard distance. Existing 0.8.x SQL features such as iterative index scans, `halfvec`, `sparsevec`, binary vectors, HNSW, and IVFFlat remain the main user-facing surface.

### Getting Started

Enable the extension (do this once in each database where you want to use it)

```tsql
CREATE EXTENSION vector;
```

Create a vector column with 3 dimensions

```sql
CREATE TABLE items (id bigserial PRIMARY KEY, embedding vector(3));
```

Insert vectors

```sql
INSERT INTO items (embedding) VALUES ('[1,2,3]'), ('[4,5,6]');
```

Get the nearest neighbors by L2 distance

```sql
SELECT * FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

Also supports inner product (`<#>`), cosine distance (`<=>`), and L1 distance (`<+>`)

Note: `<#>` returns the negative inner product since Postgres only supports `ASC` order index scans on operators


--------

### Storing

Create a new table with a vector column

```sql
CREATE TABLE items (id bigserial PRIMARY KEY, embedding vector(3));
```

Or add a vector column to an existing table

```sql
ALTER TABLE items ADD COLUMN embedding vector(3);
```

Also supports [half-precision](https://github.com/pgvector/pgvector#half-precision-vectors), [binary](https://github.com/pgvector/pgvector#binary-vectors), and [sparse](https://github.com/pgvector/pgvector#sparse-vectors) vectors

**Insert vectors**

```sql
INSERT INTO items (embedding) VALUES ('[1,2,3]'), ('[4,5,6]');
```

Or load vectors in bulk using `COPY` ([example](https://github.com/pgvector/pgvector-python/blob/master/examples/loading/example.py))

```sql
COPY items (embedding) FROM STDIN WITH (FORMAT BINARY);
```

**Upsert vectors**

```sql
INSERT INTO items (id, embedding) VALUES (1, '[1,2,3]'), (2, '[4,5,6]')
    ON CONFLICT (id) DO UPDATE SET embedding = EXCLUDED.embedding;
```

**Update vectors**

```sql
UPDATE items SET embedding = '[1,2,3]' WHERE id = 1;
```

**Delete vectors**

```sql
DELETE FROM items WHERE id = 1;
```


--------

### Querying

Get the nearest neighbors to a vector

```sql
SELECT * FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

Supported distance functions are:

- `<->` - L2 distance
- `<#>` - (negative) inner product
- `<=>` - cosine distance
- `<+>` - L1 distance
- `<~>` - Hamming distance (binary vectors)
- `<%>` - Jaccard distance (binary vectors)

Get the nearest neighbors to a row

```sql
SELECT * FROM items WHERE id != 1 ORDER BY embedding <-> (SELECT embedding FROM items WHERE id = 1) LIMIT 5;
```

Get rows within a certain distance

```sql
SELECT * FROM items WHERE embedding <-> '[3,1,2]' < 5;
```

Note: Combine with `ORDER BY` and `LIMIT` to use an index

#### Distances

Get the distance

```sql
SELECT embedding <-> '[3,1,2]' AS distance FROM items;
```

For inner product, multiply by -1 (since `<#>` returns the negative inner product)

```tsql
SELECT (embedding <#> '[3,1,2]') * -1 AS inner_product FROM items;
```

For cosine similarity, use 1 - cosine distance

```sql
SELECT 1 - (embedding <=> '[3,1,2]') AS cosine_similarity FROM items;
```

#### Aggregates

Average vectors

```sql
SELECT AVG(embedding) FROM items;
```

Average groups of vectors

```sql
SELECT category_id, AVG(embedding) FROM items GROUP BY category_id;
```


--------

### Indexing

By default, pgvector performs exact nearest neighbor search, which provides perfect recall.

You can add an index to use approximate nearest neighbor search, which trades some recall for speed. Unlike typical indexes, you will see different results for queries after adding an approximate index.

Supported index types are:

- [HNSW](https://github.com/pgvector/pgvector#hnsw)
- [IVFFlat](https://github.com/pgvector/pgvector#ivfflat)

### HNSW

An HNSW index creates a multilayer graph. It has better query performance than IVFFlat (in terms of speed-recall tradeoff), but has slower build times and uses more memory. Also, an index can be created without any data in the table since there isn't a training step like IVFFlat.

Add an index for each distance function you want to use.

L2 distance

```sql
CREATE INDEX ON items USING hnsw (embedding vector_l2_ops);
```

Note: Use `halfvec_l2_ops` for `halfvec` and `sparsevec_l2_ops` for `sparsevec` (and similar with the other distance functions)

**Inner product**

```sql
CREATE INDEX ON items USING hnsw (embedding vector_ip_ops);
```

**Cosine distance**

```sql
CREATE INDEX ON items USING hnsw (embedding vector_cosine_ops);
```

**L1 distance**

```sql
CREATE INDEX ON items USING hnsw (embedding vector_l1_ops);
```

**Hamming distance**

```sql
CREATE INDEX ON items USING hnsw (embedding bit_hamming_ops);
```

**Jaccard distance**

```sql
CREATE INDEX ON items USING hnsw (embedding bit_jaccard_ops);
```

Supported types are:

- `vector` - up to 2,000 dimensions
- `halfvec` - up to 4,000 dimensions
- `bit` - up to 64,000 dimensions
- `sparsevec` - up to 1,000 non-zero elements

#### Index Options

Specify HNSW parameters

- `m` - the max number of connections per layer (16 by default)
- `ef_construction` - the size of the dynamic candidate list for constructing the graph (64 by default)

```sql
CREATE INDEX ON items USING hnsw (embedding vector_l2_ops) WITH (m = 16, ef_construction = 64);
```

A higher value of `ef_construction` provides better recall at the cost of index build time / insert speed.

#### Query Options

Specify the size of the dynamic candidate list for search (40 by default)

```sql
SET hnsw.ef_search = 100;
```

A higher value provides better recall at the cost of speed.

Use `SET LOCAL` inside a transaction to set it for a single query

```sql
BEGIN;
SET LOCAL hnsw.ef_search = 100;
SELECT ...
COMMIT;
```

#### Index Build Time

Indexes build significantly faster when the graph fits into `maintenance_work_mem`

```sql
SET maintenance_work_mem = '8GB';
```

A notice is shown when the graph no longer fits

```
NOTICE:  hnsw graph no longer fits into maintenance_work_mem after 100000 tuples
DETAIL:  Building will take significantly more time.
HINT:  Increase maintenance_work_mem to speed up builds.
```

Note: Do not set `maintenance_work_mem` so high that it exhausts the memory on the server

Like other index types, it's faster to create an index after loading your initial data

You can also speed up index creation by increasing the number of parallel workers (2 by default)

```sql
SET max_parallel_maintenance_workers = 7; -- plus leader
```

For a large number of workers, you may need to increase `max_parallel_workers` (8 by default)

The [index options](https://github.com/pgvector/pgvector#index-options) also have a significant impact on build time (use the defaults unless seeing low recall)

#### Indexing Progress

Check [indexing progress](https://www.postgresql.org/docs/current/progress-reporting.html#CREATE-INDEX-PROGRESS-REPORTING)

```sql
SELECT phase, round(100.0 * blocks_done / nullif(blocks_total, 0), 1) AS "%" FROM pg_stat_progress_create_index;
```

The phases for HNSW are:

1. `initializing`
2. `loading tuples`

### IVFFlat

An IVFFlat index divides vectors into lists, and then searches a subset of those lists that are closest to the query vector. It has faster build times and uses less memory than HNSW, but has lower query performance (in terms of speed-recall tradeoff).

Three keys to achieving good recall are:

1. Create the index *after* the table has some data
2. Choose an appropriate number of lists - a good place to start is `rows / 1000` for up to 1M rows and `sqrt(rows)` for over 1M rows
3. When querying, specify an appropriate number of [probes](https://github.com/pgvector/pgvector#query-options-1) (higher is better for recall, lower is better for speed) - a good place to start is `sqrt(lists)`

Add an index for each distance function you want to use.

L2 distance

```sql
CREATE INDEX ON items USING ivfflat (embedding vector_l2_ops) WITH (lists = 100);
```

Note: Use `halfvec_l2_ops` for `halfvec` (and similar with the other distance functions)

**Inner product**

```sql
CREATE INDEX ON items USING ivfflat (embedding vector_ip_ops) WITH (lists = 100);
```

**Cosine distance**

```sql
CREATE INDEX ON items USING ivfflat (embedding vector_cosine_ops) WITH (lists = 100);
```

**Hamming distance**

```sql
CREATE INDEX ON items USING ivfflat (embedding bit_hamming_ops) WITH (lists = 100);
```

Supported types are:

- `vector` - up to 2,000 dimensions
- `halfvec` - up to 4,000 dimensions
- `bit` - up to 64,000 dimensions

#### Query Options

Specify the number of probes (1 by default)

```sql
SET ivfflat.probes = 10;
```

A higher value provides better recall at the cost of speed, and it can be set to the number of lists for exact nearest neighbor search (at which point the planner won't use the index)

Use `SET LOCAL` inside a transaction to set it for a single query

```sql
BEGIN;
SET LOCAL ivfflat.probes = 10;
SELECT ...
COMMIT;
```

#### Index Build Time

Speed up index creation on large tables by increasing the number of parallel workers (2 by default)

```sql
SET max_parallel_maintenance_workers = 7; -- plus leader
```

For a large number of workers, you may also need to increase `max_parallel_workers` (8 by default)

#### Indexing Progress

Check [indexing progress](https://www.postgresql.org/docs/current/progress-reporting.html#CREATE-INDEX-PROGRESS-REPORTING)

```sql
SELECT phase, round(100.0 * tuples_done / nullif(tuples_total, 0), 1) AS "%" FROM pg_stat_progress_create_index;
```

The phases for IVFFlat are:

1. `initializing`
2. `performing k-means`
3. `assigning tuples`
4. `loading tuples`

Note: `%` is only populated during the `loading tuples` phase

### Filtering

There are a few ways to index nearest neighbor queries with a `WHERE` clause.

```sql
SELECT * FROM items WHERE category_id = 123 ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

A good place to start is creating an index on the filter column. This can provide fast, exact nearest neighbor search in many cases. Postgres has a number of [index types](https://www.postgresql.org/docs/current/indexes-types.html) for this: B-tree (default), hash, GiST, SP-GiST, GIN, and BRIN.

```sql
CREATE INDEX ON items (category_id);
```

For multiple columns, consider a [multicolumn index](https://www.postgresql.org/docs/current/indexes-multicolumn.html).

```sql
CREATE INDEX ON items (location_id, category_id);
```

Exact indexes work well for conditions that match a low percentage of rows. Otherwise, [approximate indexes](https://github.com/pgvector/pgvector#indexing) can work better.

```sql
CREATE INDEX ON items USING hnsw (embedding vector_l2_ops);
```

With approximate indexes, filtering is applied *after* the index is scanned. If a condition matches 10% of rows, with HNSW and the default `hnsw.ef_search` of 40, only 4 rows will match on average. For more rows, increase `hnsw.ef_search`.

```sql
SET hnsw.ef_search = 200;
```

Starting with 0.8.0, you can enable [iterative index scans](https://github.com/pgvector/pgvector#iterative-index-scans), which will automatically scan more of the index when needed.

```sql
SET hnsw.iterative_scan = strict_order;
```

If filtering by only a few distinct values, consider [partial indexing](https://www.postgresql.org/docs/current/indexes-partial.html).

```sql
CREATE INDEX ON items USING hnsw (embedding vector_l2_ops) WHERE (category_id = 123);
```

If filtering by many different values, consider [partitioning](https://www.postgresql.org/docs/current/ddl-partitioning.html).

```sql
CREATE TABLE items (embedding vector(3), category_id int) PARTITION BY LIST(category_id);
```

### Iterative Index Scans

With approximate indexes, queries with filtering can return less results since filtering is applied *after* the index is scanned. Starting with 0.8.0, you can enable iterative index scans, which will automatically scan more of the index until enough results are found (or it reaches `hnsw.max_scan_tuples` or `ivfflat.max_probes`).

Iterative scans can use strict or relaxed ordering.

Strict ensures results are in the exact order by distance

```sql
SET hnsw.iterative_scan = strict_order;
```

Relaxed allows results to be slightly out of order by distance, but provides better recall

```sql
SET hnsw.iterative_scan = relaxed_order;
# or
SET ivfflat.iterative_scan = relaxed_order;
```

With relaxed ordering, you can use a [materialized CTE](https://www.postgresql.org/docs/current/queries-with.html#QUERIES-WITH-CTE-MATERIALIZATION) to get strict ordering

```sql
WITH relaxed_results AS MATERIALIZED (
    SELECT id, embedding <-> '[1,2,3]' AS distance FROM items WHERE category_id = 123 ORDER BY distance LIMIT 5
) SELECT * FROM relaxed_results ORDER BY distance + 0;
```

Note: `+ 0` is needed for Postgres 17+

For queries that filter by distance, use a materialized CTE and place the distance filter outside of it for best performance (due to the [current behavior](https://www.postgresql.org/message-id/flat/CAOdR5yGUoMQ6j7M5hNUXrySzaqZVGf_Ne%2B8fwZMRKTFxU1nbJg%40mail.gmail.com) of the Postgres executor)

```sql
WITH nearest_results AS MATERIALIZED (
    SELECT id, embedding <-> '[1,2,3]' AS distance FROM items ORDER BY distance LIMIT 5
) SELECT * FROM nearest_results WHERE distance < 5 ORDER BY distance;
```

Note: Place any other filters inside the CTE

#### Iterative Scan Options

Since scanning a large portion of an approximate index is expensive, there are options to control when a scan ends.

##### HNSW

Specify the max number of tuples to visit (20,000 by default)

```sql
SET hnsw.max_scan_tuples = 20000;
```

Note: This is approximate and does not affect the initial scan

Specify the max amount of memory to use, as a multiple of `work_mem` (1 by default)

```sql
SET hnsw.scan_mem_multiplier = 2;
```

Note: Try increasing this if increasing `hnsw.max_scan_tuples` does not improve recall

##### IVFFlat

Specify the max number of probes

```sql
SET ivfflat.max_probes = 100;
```

Note: If this is lower than `ivfflat.probes`, `ivfflat.probes` will be used


--------

### Vector Types

### Half-Precision Vectors

Use the `halfvec` type to store half-precision vectors

```sql
CREATE TABLE items (id bigserial PRIMARY KEY, embedding halfvec(3));
```

### Half-Precision Indexing

Index vectors at half precision for smaller indexes

```sql
CREATE INDEX ON items USING hnsw ((embedding::halfvec(3)) halfvec_l2_ops);
```

Get the nearest neighbors

```sql
SELECT * FROM items ORDER BY embedding::halfvec(3) <-> '[1,2,3]' LIMIT 5;
```

### Binary Vectors

Use the `bit` type to store binary vectors ([example](https://github.com/pgvector/pgvector-python/blob/master/examples/imagehash/example.py))

```sql
CREATE TABLE items (id bigserial PRIMARY KEY, embedding bit(3));
INSERT INTO items (embedding) VALUES ('000'), ('111');
```

Get the nearest neighbors by Hamming distance

```sql
SELECT * FROM items ORDER BY embedding <~> '101' LIMIT 5;
```

Also supports Jaccard distance (`<%>`)

### Binary Quantization

Use expression indexing for binary quantization

```sql
CREATE INDEX ON items USING hnsw ((binary_quantize(embedding)::bit(3)) bit_hamming_ops);
```

Get the nearest neighbors by Hamming distance

```sql
SELECT * FROM items ORDER BY binary_quantize(embedding)::bit(3) <~> binary_quantize('[1,-2,3]') LIMIT 5;
```

Re-rank by the original vectors for better recall

```sql
SELECT * FROM (
    SELECT * FROM items ORDER BY binary_quantize(embedding)::bit(3) <~> binary_quantize('[1,-2,3]') LIMIT 20
) ORDER BY embedding <=> '[1,-2,3]' LIMIT 5;
```

### Sparse Vectors

Use the `sparsevec` type to store sparse vectors

```sql
CREATE TABLE items (id bigserial PRIMARY KEY, embedding sparsevec(5));
```

Insert vectors

```sql
INSERT INTO items (embedding) VALUES ('{1:1,3:2,5:3}/5'), ('{1:4,3:5,5:6}/5');
```

The format is `{index1:value1,index2:value2}/dimensions` and indices start at 1 like SQL arrays

Get the nearest neighbors by L2 distance

```sql
SELECT * FROM items ORDER BY embedding <-> '{1:3,3:1,5:2}/5' LIMIT 5;
```

### Hybrid Search

Use together with Postgres [full-text search](https://www.postgresql.org/docs/current/textsearch-intro.html) for hybrid search.

```sql
SELECT id, content FROM items, plainto_tsquery('hello search') query
    WHERE textsearch @@ query ORDER BY ts_rank_cd(textsearch, query) DESC LIMIT 5;
```

You can use [Reciprocal Rank Fusion](https://github.com/pgvector/pgvector-python/blob/master/examples/hybrid_search/rrf.py) or a [cross-encoder](https://github.com/pgvector/pgvector-python/blob/master/examples/hybrid_search/cross_encoder.py) to combine results.

### Indexing Subvectors

Use expression indexing to index subvectors

```sql
CREATE INDEX ON items USING hnsw ((subvector(embedding, 1, 3)::vector(3)) vector_cosine_ops);
```

Get the nearest neighbors by cosine distance

```sql
SELECT * FROM items ORDER BY subvector(embedding, 1, 3)::vector(3) <=> subvector('[1,2,3,4,5]'::vector, 1, 3) LIMIT 5;
```

Re-rank by the full vectors for better recall

```sql
SELECT * FROM (
    SELECT * FROM items ORDER BY subvector(embedding, 1, 3)::vector(3) <=> subvector('[1,2,3,4,5]'::vector, 1, 3) LIMIT 20
) ORDER BY embedding <=> '[1,2,3,4,5]' LIMIT 5;
```


--------

### Performance

### Tuning

Use a tool like [PgTune](https://pgtune.leopard.in.ua/) to set initial values for Postgres server parameters. For instance, `shared_buffers` should typically be 25% of the server's memory. You can find the config file with:

```sql
SHOW config_file;
```

And check individual settings with:

```sql
SHOW shared_buffers;
```

Be sure to restart Postgres for changes to take effect.

### Loading

Use `COPY` for bulk loading data ([example](https://github.com/pgvector/pgvector-python/blob/master/examples/loading/example.py)).

```sql
COPY items (embedding) FROM STDIN WITH (FORMAT BINARY);
```

Add any indexes *after* loading the initial data for best performance.

### Indexing

See index build time for [HNSW](https://github.com/pgvector/pgvector#index-build-time) and [IVFFlat](https://github.com/pgvector/pgvector#index-build-time-1).

In production environments, create indexes concurrently to avoid blocking writes.

```sql
CREATE INDEX CONCURRENTLY ...
```

### Querying

Use `EXPLAIN (ANALYZE, BUFFERS)` to debug performance.

```sql
EXPLAIN (ANALYZE, BUFFERS) SELECT * FROM items ORDER BY embedding <-> '[3,1,2]' LIMIT 5;
```

#### Exact Search

To speed up queries without an index, increase `max_parallel_workers_per_gather`.

```sql
SET max_parallel_workers_per_gather = 4;
```

If vectors are normalized to length 1 (like [OpenAI embeddings](https://platform.openai.com/docs/guides/embeddings/which-distance-function-should-i-use)), use inner product for best performance.

```tsql
SELECT * FROM items ORDER BY embedding <#> '[3,1,2]' LIMIT 5;
```

#### Approximate Search

To speed up queries with an IVFFlat index, increase the number of inverted lists (at the expense of recall).

```sql
CREATE INDEX ON items USING ivfflat (embedding vector_l2_ops) WITH (lists = 1000);
```

### Vacuuming

Vacuuming can take a while for HNSW indexes. Speed it up by reindexing first.

```sql
REINDEX INDEX CONCURRENTLY index_name;
VACUUM table_name;
```

### Monitoring

Monitor performance with [pg_stat_statements](https://www.postgresql.org/docs/current/pgstatstatements.html) (be sure to add it to `shared_preload_libraries`).

```sql
CREATE EXTENSION pg_stat_statements;
```

Get the most time-consuming queries with:

```sql
SELECT query, calls, ROUND((total_plan_time + total_exec_time) / calls) AS avg_time_ms,
    ROUND((total_plan_time + total_exec_time) / 60000) AS total_time_min
    FROM pg_stat_statements ORDER BY total_plan_time + total_exec_time DESC LIMIT 20;
```

Monitor recall by comparing results from approximate search with exact search.

```sql
BEGIN;
SET LOCAL enable_indexscan = off; -- use exact search
SELECT ...
COMMIT;
```

### Scaling

Scale pgvector the same way you scale Postgres.

Scale vertically by increasing memory, CPU, and storage on a single instance. Use existing tools to [tune parameters](https://github.com/pgvector/pgvector#tuning) and [monitor performance](https://github.com/pgvector/pgvector#monitoring).

Scale horizontally with [replicas](https://www.postgresql.org/docs/current/hot-standby.html), or use [Citus](https://github.com/citusdata/citus) or another approach for sharding ([example](https://github.com/pgvector/pgvector-python/blob/master/examples/citus/example.py)).


--------

### Languages

Use pgvector from any language with a Postgres client. You can even generate and store vectors in one language and query them in another.

Language | Libraries / Examples
--- | ---
Ada | [pgvector-ada](https://github.com/pgvector/pgvector-ada)
Algol | [pgvector-algol](https://github.com/pgvector/pgvector-algol)
C | [pgvector-c](https://github.com/pgvector/pgvector-c)
C++ | [pgvector-cpp](https://github.com/pgvector/pgvector-cpp)
C#, F#, Visual Basic | [pgvector-dotnet](https://github.com/pgvector/pgvector-dotnet)
COBOL | [pgvector-cobol](https://github.com/pgvector/pgvector-cobol)
Crystal | [pgvector-crystal](https://github.com/pgvector/pgvector-crystal)
D | [pgvector-d](https://github.com/pgvector/pgvector-d)
Dart | [pgvector-dart](https://github.com/pgvector/pgvector-dart)
Elixir | [pgvector-elixir](https://github.com/pgvector/pgvector-elixir)
Erlang | [pgvector-erlang](https://github.com/pgvector/pgvector-erlang)
Fortran | [pgvector-fortran](https://github.com/pgvector/pgvector-fortran)
Gleam | [pgvector-gleam](https://github.com/pgvector/pgvector-gleam)
Go | [pgvector-go](https://github.com/pgvector/pgvector-go)
Haskell | [pgvector-haskell](https://github.com/pgvector/pgvector-haskell)
Java, Kotlin, Groovy, Scala | [pgvector-java](https://github.com/pgvector/pgvector-java)
JavaScript, TypeScript | [pgvector-node](https://github.com/pgvector/pgvector-node)
Julia | [Pgvector.jl](https://github.com/pgvector/Pgvector.jl)
Lisp | [pgvector-lisp](https://github.com/pgvector/pgvector-lisp)
Lua | [pgvector-lua](https://github.com/pgvector/pgvector-lua)
Nim | [pgvector-nim](https://github.com/pgvector/pgvector-nim)
OCaml | [pgvector-ocaml](https://github.com/pgvector/pgvector-ocaml)
Pascal | [pgvector-pascal](https://github.com/pgvector/pgvector-pascal)
Perl | [pgvector-perl](https://github.com/pgvector/pgvector-perl)
PHP | [pgvector-php](https://github.com/pgvector/pgvector-php)
Prolog | [pgvector-prolog](https://github.com/pgvector/pgvector-prolog)
Python | [pgvector-python](https://github.com/pgvector/pgvector-python)
R | [pgvector-r](https://github.com/pgvector/pgvector-r)
Racket | [pgvector-racket](https://github.com/pgvector/pgvector-racket)
Raku | [pgvector-raku](https://github.com/pgvector/pgvector-raku)
Ruby | [pgvector-ruby](https://github.com/pgvector/pgvector-ruby), [Neighbor](https://github.com/ankane/neighbor)
Rust | [pgvector-rust](https://github.com/pgvector/pgvector-rust)
Swift | [pgvector-swift](https://github.com/pgvector/pgvector-swift)
Tcl | [pgvector-tcl](https://github.com/pgvector/pgvector-tcl)
Zig | [pgvector-zig](https://github.com/pgvector/pgvector-zig)


--------

### FAQ

### How many vectors can be stored in a single table?

A non-partitioned table has a limit of 32 TB by default in Postgres. A partitioned table can have thousands of partitions of that size.

### Is replication supported?

Yes, pgvector uses the write-ahead log (WAL), which allows for replication and point-in-time recovery.

### What if I want to index vectors with more than 2,000 dimensions?

You can use [half-precision vectors](https://github.com/pgvector/pgvector#half-precision-vectors) or [half-precision indexing](https://github.com/pgvector/pgvector#half-precision-indexing) to index up to 4,000 dimensions or [binary quantization](https://github.com/pgvector/pgvector#binary-quantization) to index up to 64,000 dimensions. Other options are [indexing subvectors](https://github.com/pgvector/pgvector#indexing-subvectors) (for models that support it) or [dimensionality reduction](https://en.wikipedia.org/wiki/Dimensionality_reduction).

### Can I store vectors with different dimensions in the same column?

You can use `vector` as the type (instead of `vector(n)`).

```sql
CREATE TABLE embeddings (model_id bigint, item_id bigint, embedding vector, PRIMARY KEY (model_id, item_id));
```

However, you can only create indexes on rows with the same number of dimensions (using [expression](https://www.postgresql.org/docs/current/indexes-expressional.html) and [partial](https://www.postgresql.org/docs/current/indexes-partial.html) indexing):

```sql
CREATE INDEX ON embeddings USING hnsw ((embedding::vector(3)) vector_l2_ops) WHERE (model_id = 123);
```

and query with:

```sql
SELECT * FROM embeddings WHERE model_id = 123 ORDER BY embedding::vector(3) <-> '[3,1,2]' LIMIT 5;
```

### Can I store vectors with more precision?

You can use the `double precision[]` or `numeric[]` type to store vectors with more precision.

```sql
CREATE TABLE items (id bigserial PRIMARY KEY, embedding double precision[]);

-- use {} instead of [] for Postgres arrays
INSERT INTO items (embedding) VALUES ('{1,2,3}'), ('{4,5,6}');
```

Optionally, add a [check constraint](https://www.postgresql.org/docs/current/ddl-constraints.html) to ensure data can be converted to the `vector` type and has the expected dimensions.

```sql
ALTER TABLE items ADD CHECK (vector_dims(embedding::vector) = 3);
```

Use [expression indexing](https://www.postgresql.org/docs/current/indexes-expressional.html) to index (at a lower precision):

```sql
CREATE INDEX ON items USING hnsw ((embedding::vector(3)) vector_l2_ops);
```

and query with:

```sql
SELECT * FROM items ORDER BY embedding::vector(3) <-> '[3,1,2]' LIMIT 5;
```

### Do indexes need to fit into memory?

No, but like other index types, you'll likely see better performance if they do. You can get the size of an index with:

```sql
SELECT pg_size_pretty(pg_relation_size('index_name'));
```


--------

### Troubleshooting

### Why isn't a query using an index?

The query needs to have an `ORDER BY` and `LIMIT`, and the `ORDER BY` must be the result of a distance operator (not an expression) in ascending order.

```sql
-- index
ORDER BY embedding <=> '[3,1,2]' LIMIT 5;

-- no index
ORDER BY 1 - (embedding <=> '[3,1,2]') DESC LIMIT 5;
```

You can encourage the planner to use an index for a query with:

```sql
BEGIN;
SET LOCAL enable_seqscan = off;
SELECT ...
COMMIT;
```

Also, if the table is small, a table scan may be faster.

### Why isn't a query using a parallel table scan?

The planner doesn't consider [out-of-line storage](https://www.postgresql.org/docs/current/storage-toast.html) in cost estimates, which can make a serial scan look cheaper. You can reduce the cost of a parallel scan for a query with:

```sql
BEGIN;
SET LOCAL min_parallel_table_scan_size = 1;
SET LOCAL parallel_setup_cost = 1;
SELECT ...
COMMIT;
```

or choose to store vectors inline:

```sql
ALTER TABLE items ALTER COLUMN embedding SET STORAGE PLAIN;
```

### Why are there less results for a query after adding an HNSW index?

Results are limited by the size of the dynamic candidate list (`hnsw.ef_search`), which is 40 by default. There may be even less results due to dead tuples or filtering conditions in the query. Enabling [iterative index scans](https://github.com/pgvector/pgvector#iterative-index-scans) can help address this.

Also, note that `NULL` vectors are not indexed (as well as zero vectors for cosine distance).

### Why are there less results for a query after adding an IVFFlat index?

The index was likely created with too little data for the number of lists. Drop the index until the table has more data.

```sql
DROP INDEX index_name;
```

Results can also be limited by the number of probes (`ivfflat.probes`). Enabling [iterative index scans](https://github.com/pgvector/pgvector#iterative-index-scans) can address this.

Also, note that `NULL` vectors are not indexed (as well as zero vectors for cosine distance).


--------

### Reference

### Vector Type

Each vector takes `4 * dimensions + 8` bytes of storage. Each element is a single-precision floating-point number (like the `real` type in Postgres), and all elements must be finite (no `NaN`, `Infinity` or `-Infinity`). Vectors can have up to 16,000 dimensions.

### Vector Operators

Operator | Description | Added
--- | --- | ---
\+ | element-wise addition |
\- | element-wise subtraction |
\* | element-wise multiplication | 0.5.0
\|\| | concatenate | 0.7.0
<-> | Euclidean distance |
<#> | negative inner product |
<=> | cosine distance |
<+> | taxicab distance | 0.7.0

### Vector Functions

Function | Description | Added
--- | --- | ---
binary_quantize(vector) → bit | binary quantize | 0.7.0
cosine_distance(vector, vector) → double precision | cosine distance |
inner_product(vector, vector) → double precision | inner product |
l1_distance(vector, vector) → double precision | taxicab distance | 0.5.0
l2_distance(vector, vector) → double precision | Euclidean distance |
l2_normalize(vector) → vector | Normalize with Euclidean norm | 0.7.0
subvector(vector, integer, integer) → vector | subvector | 0.7.0
vector_dims(vector) → integer | number of dimensions |
vector_norm(vector) → double precision | Euclidean norm |

### Vector Aggregate Functions

Function | Description | Added
--- | --- | ---
avg(vector) → vector | average |
sum(vector) → vector | sum | 0.5.0

### Halfvec Type

Each half vector takes `2 * dimensions + 8` bytes of storage. Each element is a half-precision floating-point number, and all elements must be finite (no `NaN`, `Infinity` or `-Infinity`). Half vectors can have up to 16,000 dimensions.

### Halfvec Operators

Operator | Description | Added
--- | --- | ---
\+ | element-wise addition | 0.7.0
\- | element-wise subtraction | 0.7.0
\* | element-wise multiplication | 0.7.0
\|\| | concatenate | 0.7.0
<-> | Euclidean distance | 0.7.0
<#> | negative inner product | 0.7.0
<=> | cosine distance | 0.7.0
<+> | taxicab distance | 0.7.0

### Halfvec Functions

Function | Description | Added
--- | --- | ---
binary_quantize(halfvec) → bit | binary quantize | 0.7.0
cosine_distance(halfvec, halfvec) → double precision | cosine distance | 0.7.0
inner_product(halfvec, halfvec) → double precision | inner product | 0.7.0
l1_distance(halfvec, halfvec) → double precision | taxicab distance | 0.7.0
l2_distance(halfvec, halfvec) → double precision | Euclidean distance | 0.7.0
l2_norm(halfvec) → double precision | Euclidean norm | 0.7.0
l2_normalize(halfvec) → halfvec | Normalize with Euclidean norm | 0.7.0
subvector(halfvec, integer, integer) → halfvec | subvector | 0.7.0
vector_dims(halfvec) → integer | number of dimensions | 0.7.0

### Halfvec Aggregate Functions

Function | Description | Added
--- | --- | ---
avg(halfvec) → halfvec | average | 0.7.0
sum(halfvec) → halfvec | sum | 0.7.0

### Bit Type

Each bit vector takes `dimensions / 8 + 8` bytes of storage. See the [Postgres docs](https://www.postgresql.org/docs/current/datatype-bit.html) for more info.

### Bit Operators

Operator | Description | Added
--- | --- | ---
<~> | Hamming distance | 0.7.0
<%> | Jaccard distance | 0.7.0

### Bit Functions

Function | Description | Added
--- | --- | ---
hamming_distance(bit, bit) → double precision | Hamming distance | 0.7.0
jaccard_distance(bit, bit) → double precision | Jaccard distance | 0.7.0

### Sparsevec Type

Each sparse vector takes `8 * non-zero elements + 16` bytes of storage. Each element is a single-precision floating-point number, and all elements must be finite (no `NaN`, `Infinity` or `-Infinity`). Sparse vectors can have up to 16,000 non-zero elements.

### Sparsevec Operators

Operator | Description | Added
--- | --- | ---
<-> | Euclidean distance | 0.7.0
<#> | negative inner product | 0.7.0
<=> | cosine distance | 0.7.0
<+> | taxicab distance | 0.7.0

### Sparsevec Functions

Function | Description | Added
--- | --- | ---
cosine_distance(sparsevec, sparsevec) → double precision | cosine distance | 0.7.0
inner_product(sparsevec, sparsevec) → double precision | inner product | 0.7.0
l1_distance(sparsevec, sparsevec) → double precision | taxicab distance | 0.7.0
l2_distance(sparsevec, sparsevec) → double precision | Euclidean distance | 0.7.0
l2_norm(sparsevec) → double precision | Euclidean norm | 0.7.0
l2_normalize(sparsevec) → sparsevec | Normalize with Euclidean norm | 0.7.0


--------

### Installation

### Linux and Mac

Compile and install the extension (supports Postgres 13+)

```sh
cd /tmp
git clone --branch v0.8.2 https://github.com/pgvector/pgvector.git
cd pgvector
make
make install # may need sudo
```

See the [installation notes](https://github.com/pgvector/pgvector#installation-notes---linux-and-mac) if you run into issues

You can also install it with [Docker](https://github.com/pgvector/pgvector#docker), [Homebrew](https://github.com/pgvector/pgvector#homebrew), [PGXN](https://github.com/pgvector/pgvector#pgxn), [APT](https://github.com/pgvector/pgvector#apt), [Yum](https://github.com/pgvector/pgvector#yum), [pkg](https://github.com/pgvector/pgvector#pkg), [APK](https://github.com/pgvector/pgvector#apk), or [conda-forge](https://github.com/pgvector/pgvector#conda-forge), and it comes preinstalled with [Postgres.app](https://github.com/pgvector/pgvector#postgresapp) and many [hosted providers](https://github.com/pgvector/pgvector#hosted-postgres). There are also instructions for [GitHub Actions](https://github.com/pgvector/setup-pgvector).

### Windows

Ensure [C++ support in Visual Studio](https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-170#download-and-install-the-tools) is installed and run `x64 Native Tools Command Prompt for VS [version]` as administrator. Then use `nmake` to build:

```cmd
set "PGROOT=C:\Program Files\PostgreSQL\18"
cd %TEMP%
git clone --branch v0.8.2 https://github.com/pgvector/pgvector.git
cd pgvector
nmake /F Makefile.win
nmake /F Makefile.win install
```

See the [installation notes](https://github.com/pgvector/pgvector#installation-notes---windows) if you run into issues

You can also install it with [Docker](https://github.com/pgvector/pgvector#docker) or [conda-forge](https://github.com/pgvector/pgvector#conda-forge).

### Installation Notes - Linux and Mac

#### Postgres Location

If your machine has multiple Postgres installations, specify the path to [pg_config](https://www.postgresql.org/docs/current/app-pgconfig.html) with:

```sh
export PG_CONFIG=/Library/PostgreSQL/18/bin/pg_config
```

Then re-run the installation instructions (run `make clean` before `make` if needed). If `sudo` is needed for `make install`, use:

```sh
sudo --preserve-env=PG_CONFIG make install
```

A few common paths on Mac are:

- EDB installer - `/Library/PostgreSQL/18/bin/pg_config`
- Homebrew (arm64) - `/opt/homebrew/opt/postgresql@18/bin/pg_config`
- Homebrew (x86-64) - `/usr/local/opt/postgresql@18/bin/pg_config`

Note: Replace `18` with your Postgres server version

#### Missing Header

If compilation fails with `fatal error: postgres.h: No such file or directory`, make sure Postgres development files are installed on the server.

For Ubuntu and Debian, use:

```sh
sudo apt install postgresql-server-dev-18
```

Note: Replace `18` with your Postgres server version

#### Missing SDK

If compilation fails and the output includes `warning: no such sysroot directory` on Mac, your Postgres installation points to a path that no longer exists.

```sh
pg_config --cppflags
```

Reinstall Postgres to fix this.

#### Portability

By default, pgvector compiles with `-march=native` on some platforms for best performance. However, this can lead to `Illegal instruction` errors if trying to run the compiled extension on a different machine.

To compile for portability, use:

```sh
make OPTFLAGS=""
```

### Installation Notes - Windows

#### Missing Header

If compilation fails with `Cannot open include file: 'postgres.h': No such file or directory`, make sure `PGROOT` is correct.

#### Mismatched Architecture

If compilation fails with `error C2196: case value '4' already used`, make sure you're using the `x64 Native Tools Command Prompt`. Then run `nmake /F Makefile.win clean` and re-run the installation instructions.

#### Missing Symbol

If linking fails with `unresolved external symbol float_to_shortest_decimal_bufn` with Postgres 17.0-17.2, upgrade to Postgres 17.3+.

#### Permissions

If installation fails with `Access is denied`, re-run the installation instructions as an administrator.

### Additional Installation Methods

#### Docker

Get the [Docker image](https://hub.docker.com/r/pgvector/pgvector) with:

```sh
docker pull pgvector/pgvector:pg18-trixie
```

This adds pgvector to the [Postgres image](https://hub.docker.com/_/postgres) (replace `18` with your Postgres server version, and run it the same way).

You can also build the image manually:

```sh
git clone --branch v0.8.2 https://github.com/pgvector/pgvector.git
cd pgvector
docker build --pull --build-arg PG_MAJOR=18 -t myuser/pgvector .
```

If you increase `maintenance_work_mem`, make sure `--shm-size` is at least that size to avoid an error with parallel HNSW index builds.

```sh
docker run --shm-size=1g ...
```

#### Homebrew

With Homebrew Postgres, you can use:

```sh
brew install pgvector
```

Note: This only adds it to the `postgresql@18` and `postgresql@17` formulas

#### PGXN

Install from the [PostgreSQL Extension Network](https://pgxn.org/dist/vector) with:

```sh
pgxn install vector
```

#### APT

Debian and Ubuntu packages are available from the [PostgreSQL APT Repository](https://wiki.postgresql.org/wiki/Apt). Follow the [setup instructions](https://wiki.postgresql.org/wiki/Apt#Quickstart) and run:

```sh
sudo apt install postgresql-18-pgvector
```

Note: Replace `18` with your Postgres server version

#### Yum

RPM packages are available from the [PostgreSQL Yum Repository](https://yum.postgresql.org/). Follow the [setup instructions](https://www.postgresql.org/download/linux/redhat/) for your distribution and run:

```sh
sudo yum install pgvector_18
# or
sudo dnf install pgvector_18
```

Note: Replace `18` with your Postgres server version

#### pkg

Install the FreeBSD package with:

```sh
pkg install postgresql17-pgvector
```

or the port with:

```sh
cd /usr/ports/databases/pgvector
make install
```

#### APK

Install the Alpine package with:

```sh
apk add postgresql-pgvector
```

#### conda-forge

With Conda Postgres, install from [conda-forge](https://anaconda.org/conda-forge/pgvector) with:

```sh
conda install -c conda-forge pgvector
```

This method is [community-maintained](https://github.com/conda-forge/pgvector-feedstock) by [@mmcauliffe](https://github.com/mmcauliffe)

#### Postgres.app

Download the [latest release](https://postgresapp.com/downloads.html) with Postgres 15+.

### Hosted Postgres

pgvector is available on [these providers](https://github.com/pgvector/pgvector/issues/54).

### Upgrading

[Install](https://github.com/pgvector/pgvector#installation) the latest version (use the same method as the original installation). Then in each database you want to upgrade, run:

```sql
ALTER EXTENSION vector UPDATE;
```

You can check the version in the current database with:

```sql
SELECT extversion FROM pg_extension WHERE extname = 'vector';
```
