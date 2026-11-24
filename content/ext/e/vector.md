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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgvector-0.8.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgvector-0.8.7.tar.gz</div>
    <div class="ext-card__desc">pgvector-0.8.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgvector`**](/ext/e/vector) | `0.8.7` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1800  | [**`vector`**](/ext/e/vector) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) [`pg_rrf`](/ext/e/pg_rrf) [`pg_search`](/ext/e/pg_search) [`vchord_bm25`](/ext/e/vchord_bm25) [`pg_bestmatch`](/ext/e/pg_bestmatch) [`pgml`](/ext/e/pgml) [`pg4ml`](/ext/e/pg4ml) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`documentdb`](/ext/e/documentdb) [`pg_lion_vector`](/ext/e/pg_lion_vector) [`pg_search`](/ext/e/pg_search) [`pgmnemo`](/ext/e/pgmnemo) [`vchord`](/ext/e/vchord) [`vectorize`](/ext/e/vectorize) [`vectorscale`](/ext/e/vectorscale) |
{.ext-table .ext-table--rel}


> PGDG is the principal supplier by explicit catalog policy: RPM and DEB 0.8.7 cover PostgreSQL 14-18. Pigsty recipes are retained for confirmed gaps only.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.8.7` | {{< pgvers "19,18,17,16,15" >}} | `pgvector` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.8.7` | {{< pgvers "19,18,17,16,15" >}} | `pgvector_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.8.7` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pgvector` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 0.8.7 8 | AVAIL PGDG 0.8.7 10 | AVAIL PGDG 0.8.7 20 | AVAIL PGDG 0.8.7 22 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 0.8.7 8 | AVAIL PGDG 0.8.7 10 | AVAIL PGDG 0.8.7 20 | AVAIL PGDG 0.8.7 22 |
| el9.x86_64 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 |
| el9.aarch64 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 |
| el10.x86_64 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 1 |
| el10.aarch64 | AVAIL PGDG 0.8.7 1 | AVAIL PGDG 0.8.7 11 | AVAIL PGDG 0.8.7 12 | AVAIL PGDG 0.8.7 12 | AVAIL PGDG 0.8.7 12 |
| d12.x86_64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| d12.aarch64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| d13.x86_64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| d13.aarch64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| u22.x86_64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| u22.aarch64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| u24.x86_64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| u24.aarch64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| u26.x86_64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
| u26.aarch64 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 | AVAIL PGDG 0.8.7 3 |
@ el9.x86_64 19 pgvector_19 pgvector_19-0.8.7-2PGDG.rhel9.9.x86_64.rpm pgdg 0.8.7 114.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pgvector_19-0.8.7-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pgvector_19 pgvector_19-0.8.7-2PGDG.rhel9.9.aarch64.rpm pgdg 0.8.7 100.4KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pgvector_19-0.8.7-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pgvector_19 pgvector_19-0.8.7-2PGDG.rhel10.3.x86_64.rpm pgdg 0.8.7 110.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pgvector_19-0.8.7-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pgvector_19 pgvector_19-0.8.7-2PGDG.rhel10.3.aarch64.rpm pgdg 0.8.7 102.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pgvector_19-0.8.7-2PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg12+2_amd64.deb pgdg 0.8.7 268.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg12+2_amd64.deb
@ d12.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg12+1_amd64.deb pgdg 0.8.7 267.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg12+2_amd64.deb pgdg 0.8.6 263.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg12+2_amd64.deb
@ d12.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg12+2_arm64.deb pgdg 0.8.7 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg12+2_arm64.deb
@ d12.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg12+1_arm64.deb pgdg 0.8.7 237.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg12+2_arm64.deb pgdg 0.8.6 233.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg12+2_arm64.deb
@ d13.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg13+2_amd64.deb pgdg 0.8.7 268.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg13+2_amd64.deb
@ d13.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg13+1_amd64.deb pgdg 0.8.7 268.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg13+2_amd64.deb pgdg 0.8.6 264.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg13+2_amd64.deb
@ d13.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg13+2_arm64.deb pgdg 0.8.7 238.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg13+2_arm64.deb
@ d13.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg13+1_arm64.deb pgdg 0.8.7 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg13+2_arm64.deb pgdg 0.8.6 235.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg13+2_arm64.deb
@ u22.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb pgdg 0.8.7 270.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb pgdg 0.8.7 270.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb pgdg 0.8.6 266.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb
@ u22.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb pgdg 0.8.7 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb pgdg 0.8.7 237.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb pgdg 0.8.6 234.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb
@ u24.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb pgdg 0.8.7 264.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb pgdg 0.8.7 264.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb pgdg 0.8.6 260.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb
@ u24.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb pgdg 0.8.7 234.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb pgdg 0.8.7 233.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb pgdg 0.8.6 230.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb
@ u26.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb pgdg 0.8.7 263.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb pgdg 0.8.7 262.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb pgdg 0.8.6 258.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb
@ u26.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb pgdg 0.8.7 232.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb pgdg 0.8.7 232.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 19 postgresql-19-pgvector postgresql-19-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb pgdg 0.8.6 229.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-19-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 114.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.7-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 114.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.6 110.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.5-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.5 109.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.4 109.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 108.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 107.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 106.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgvector_18-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 103.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.7-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 103.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.6 99.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.5-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.5 99.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.4 98.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 97.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 96.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgvector_18-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel9.9.x86_64.rpm pgdg 0.8.7 114.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgvector_18-0.8.7-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel9.9.aarch64.rpm pgdg 0.8.7 100.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgvector_18-0.8.7-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel10.3.x86_64.rpm pgdg 0.8.7 111.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgvector_18-0.8.7-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel10.3.aarch64.rpm pgdg 0.8.7 102.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.7-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.7-2PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 102.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.7-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.7-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 102.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.6 99.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.5-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.5 98.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.4 97.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgvector_18 pgvector_18-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 96.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgvector_18-0.8.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg12+2_amd64.deb pgdg 0.8.7 267.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg12+1_amd64.deb pgdg 0.8.7 267.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg12+2_amd64.deb pgdg 0.8.6 263.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg12+2_amd64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg12+2_arm64.deb pgdg 0.8.7 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg12+1_arm64.deb pgdg 0.8.7 237.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg12+2_arm64.deb pgdg 0.8.6 234.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg12+2_arm64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg13+2_amd64.deb pgdg 0.8.7 268.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg13+1_amd64.deb pgdg 0.8.7 268.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg13+2_amd64.deb pgdg 0.8.6 264.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg13+2_amd64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg13+2_arm64.deb pgdg 0.8.7 238.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg13+1_arm64.deb pgdg 0.8.7 238.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg13+2_arm64.deb pgdg 0.8.6 235.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg13+2_arm64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb pgdg 0.8.7 271.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb pgdg 0.8.7 270.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb pgdg 0.8.6 266.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb pgdg 0.8.7 238.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb pgdg 0.8.7 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb pgdg 0.8.6 234.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb pgdg 0.8.7 264.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb pgdg 0.8.7 264.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb pgdg 0.8.6 259.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb pgdg 0.8.7 234.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb pgdg 0.8.7 234.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb pgdg 0.8.6 230.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb pgdg 0.8.7 262.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb pgdg 0.8.7 262.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb pgdg 0.8.6 258.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb pgdg 0.8.7 232.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb pgdg 0.8.7 232.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgvector postgresql-18-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb pgdg 0.8.6 228.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-18-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 114.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.7-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 114.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.6 110.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.5-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.5 109.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.4 109.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.3 108.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.2 107.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel8.x86_64.rpm pgdg 0.8.1 106.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.8.0-1PGDG.rhel8.x86_64.rpm pgdg 0.8.0 105.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgvector_17 pgvector_17-0.7.4-1PGDG.rhel8.x86_64.rpm pgdg 0.7.4 101.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgvector_17-0.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 103.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.7-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 103.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.6 99.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.5-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.5 98.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.4 98.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.3 97.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.2 97.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel8.aarch64.rpm pgdg 0.8.1 96.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.8.0-1PGDG.rhel8.aarch64.rpm pgdg 0.8.0 95.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgvector_17 pgvector_17-0.7.4-1PGDG.rhel8.aarch64.rpm pgdg 0.7.4 91.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgvector_17-0.7.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel9.9.x86_64.rpm pgdg 0.8.7 114.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgvector_17-0.8.7-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel9.9.aarch64.rpm pgdg 0.8.7 100.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgvector_17-0.8.7-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel10.3.x86_64.rpm pgdg 0.8.7 111.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgvector_17-0.8.7-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel10.3.aarch64.rpm pgdg 0.8.7 102.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.7-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.7-2PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 102.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.7-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.7-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 102.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.6 99.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.5-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.5 97.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.4 97.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 96.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 96.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgvector_17 pgvector_17-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 96.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgvector_17-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg12+2_amd64.deb pgdg 0.8.7 267.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg12+1_amd64.deb pgdg 0.8.7 267.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg12+2_amd64.deb pgdg 0.8.6 262.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg12+2_amd64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg12+2_arm64.deb pgdg 0.8.7 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg12+1_arm64.deb pgdg 0.8.7 236.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg12+2_arm64.deb pgdg 0.8.6 234.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg12+2_arm64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg13+2_amd64.deb pgdg 0.8.7 267.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg13+1_amd64.deb pgdg 0.8.7 267.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg13+2_amd64.deb pgdg 0.8.6 264.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg13+2_amd64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg13+2_arm64.deb pgdg 0.8.7 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg13+1_arm64.deb pgdg 0.8.7 238.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg13+2_arm64.deb pgdg 0.8.6 234.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg13+2_arm64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb pgdg 0.8.7 310.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb pgdg 0.8.7 309.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb pgdg 0.8.6 305.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb pgdg 0.8.7 277.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb pgdg 0.8.7 277.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb pgdg 0.8.6 273.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb pgdg 0.8.7 263.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb pgdg 0.8.7 263.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb pgdg 0.8.6 259.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb pgdg 0.8.7 234.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb pgdg 0.8.7 234.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb pgdg 0.8.6 229.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb pgdg 0.8.7 261.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb pgdg 0.8.7 261.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb pgdg 0.8.6 257.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb pgdg 0.8.7 232.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb pgdg 0.8.7 232.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgvector postgresql-17-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb pgdg 0.8.6 228.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-17-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 114.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.7-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 114.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.6 110.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.5-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.5 109.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgvector_16 pgvector_16-0.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.4 109.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgvector_16-0.8.4-1PGDG.rhel8.10.x86_64.rpm
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
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 103.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.7-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 103.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.6 99.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.5-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.5 98.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgvector_16 pgvector_16-0.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.4 98.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgvector_16-0.8.4-1PGDG.rhel8.10.aarch64.rpm
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
@ el9.x86_64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel9.9.x86_64.rpm pgdg 0.8.7 114.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgvector_16-0.8.7-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel9.9.aarch64.rpm pgdg 0.8.7 100.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgvector_16-0.8.7-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel10.3.x86_64.rpm pgdg 0.8.7 110.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgvector_16-0.8.7-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel10.3.aarch64.rpm pgdg 0.8.7 102.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.7-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.7-2PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 102.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.7-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.7-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 102.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.6 98.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.5-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.5 97.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.4 97.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 96.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 96.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 96.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 96.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 96.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgvector_16 pgvector_16-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 95.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgvector_16-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg12+2_amd64.deb pgdg 0.8.7 266.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg12+1_amd64.deb pgdg 0.8.7 267.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg12+2_amd64.deb pgdg 0.8.6 263.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg12+2_amd64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg12+2_arm64.deb pgdg 0.8.7 236.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg12+1_arm64.deb pgdg 0.8.7 236.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg12+2_arm64.deb pgdg 0.8.6 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg12+2_arm64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg13+2_amd64.deb pgdg 0.8.7 268.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg13+1_amd64.deb pgdg 0.8.7 267.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg13+2_amd64.deb pgdg 0.8.6 264.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg13+2_amd64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg13+2_arm64.deb pgdg 0.8.7 238.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg13+1_arm64.deb pgdg 0.8.7 238.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg13+2_arm64.deb pgdg 0.8.6 234.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg13+2_arm64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb pgdg 0.8.7 300.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb pgdg 0.8.7 300.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb pgdg 0.8.6 296.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb pgdg 0.8.7 267.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb pgdg 0.8.7 267.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb pgdg 0.8.6 263.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb pgdg 0.8.7 263.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb pgdg 0.8.7 262.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb pgdg 0.8.6 259.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb pgdg 0.8.7 233.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb pgdg 0.8.7 233.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb pgdg 0.8.6 229.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb pgdg 0.8.7 261.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb pgdg 0.8.7 261.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb pgdg 0.8.6 257.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb pgdg 0.8.7 232.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb pgdg 0.8.7 232.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgvector postgresql-16-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb pgdg 0.8.6 228.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-16-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 115.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.7-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.7 115.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.7-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.6-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.6 111.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.5-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.5 110.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgvector_15 pgvector_15-0.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 0.8.4 110.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgvector_15-0.8.4-1PGDG.rhel8.10.x86_64.rpm
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
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 104.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.7-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.7 104.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.7-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.6-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.6 100.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.5-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.5 99.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgvector_15 pgvector_15-0.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 0.8.4 99.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgvector_15-0.8.4-1PGDG.rhel8.10.aarch64.rpm
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
@ el9.x86_64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel9.9.x86_64.rpm pgdg 0.8.7 119.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgvector_15-0.8.7-2PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel9.9.aarch64.rpm pgdg 0.8.7 105.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgvector_15-0.8.7-2PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel10.3.x86_64.rpm pgdg 0.8.7 115.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgvector_15-0.8.7-2PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel10.3.aarch64.rpm pgdg 0.8.7 107.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.7-2PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.7-2PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 107.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.7-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.7-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.7 106.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.7-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.6-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.6 103.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.5-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.5 102.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.4 102.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.3-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.3 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.3-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.8.2 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 0.8.2 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 0.8.2 101.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.1-1PGDG.rhel10.aarch64.rpm pgdg 0.8.1 101.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgvector_15 pgvector_15-0.8.0-2PGDG.rhel10.aarch64.rpm pgdg 0.8.0 100.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgvector_15-0.8.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg12+2_amd64.deb pgdg 0.8.7 268.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg12+1_amd64.deb pgdg 0.8.7 268.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg12+2_amd64.deb pgdg 0.8.6 264.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg12+2_amd64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg12+2_arm64.deb pgdg 0.8.7 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg12+1_arm64.deb pgdg 0.8.7 238.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg12+2_arm64.deb pgdg 0.8.6 235.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg12+2_arm64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg13+2_amd64.deb pgdg 0.8.7 269.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg13+1_amd64.deb pgdg 0.8.7 269.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg13+2_amd64.deb pgdg 0.8.6 266.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg13+2_amd64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg13+2_arm64.deb pgdg 0.8.7 239.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg13+1_arm64.deb pgdg 0.8.7 239.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg13+2_arm64.deb pgdg 0.8.6 236.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg13+2_arm64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb pgdg 0.8.7 304.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb pgdg 0.8.7 304.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb pgdg 0.8.6 299.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg22.04+2_amd64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb pgdg 0.8.7 271.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb pgdg 0.8.7 271.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb pgdg 0.8.6 267.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg22.04+2_arm64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb pgdg 0.8.7 266.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb pgdg 0.8.7 266.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb pgdg 0.8.6 262.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg24.04+2_amd64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb pgdg 0.8.7 236.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb pgdg 0.8.7 236.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb pgdg 0.8.6 232.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg24.04+2_arm64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb pgdg 0.8.7 264.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb pgdg 0.8.7 264.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb pgdg 0.8.6 260.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg26.04+2_amd64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb pgdg 0.8.7 235.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb pgdg 0.8.7 235.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgvector postgresql-15-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb pgdg 0.8.6 232.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgvector/postgresql-15-pgvector_0.8.6-1.pgdg26.04+2_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgvector` using `pig build`:

```bash
pig build pkg pgvector         # build RPM / DEB packages
```


## Install

You can install `pgvector` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgvector;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgvector -v 19  # PG 19
pig ext install -y pgvector -v 18  # PG 18
pig ext install -y pgvector -v 17  # PG 17
pig ext install -y pgvector -v 16  # PG 16
pig ext install -y pgvector -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgvector_19       # PG 19
dnf install -y pgvector_18       # PG 18
dnf install -y pgvector_17       # PG 17
dnf install -y pgvector_16       # PG 16
dnf install -y pgvector_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pgvector   # PG 19
apt install -y postgresql-18-pgvector   # PG 18
apt install -y postgresql-17-pgvector   # PG 17
apt install -y postgresql-16-pgvector   # PG 16
apt install -y postgresql-15-pgvector   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION vector;
```

## Usage

Sources:

- [vector.control](https://github.com/pgvector/pgvector/blob/f37c13f68b57d2c3472b2214fbcff699d6d34876/vector.control)
- [pgvector v0.8.7 README](https://github.com/pgvector/pgvector/blob/f37c13f68b57d2c3472b2214fbcff699d6d34876/README.md)
- [pgvector v0.8.7 CHANGELOG](https://github.com/pgvector/pgvector/blob/f37c13f68b57d2c3472b2214fbcff699d6d34876/CHANGELOG.md)
- [Changes from v0.8.5 to v0.8.7](https://github.com/pgvector/pgvector/compare/v0.8.5...v0.8.7)

`pgvector` provides vector similarity search inside PostgreSQL. The extension name is `vector`, while Pigsty packages it as `pgvector`. It supports exact search, approximate nearest-neighbor search with HNSW and IVFFlat indexes, and multiple vector representations for dense, half-precision, binary, and sparse embeddings.

Version `0.8.7` is a focused correctness release. It retains the 0.8.x HNSW iterative-scan and maintenance improvements documented in the current README.

### Create and Query Vectors

```sql
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE items (
  id bigserial PRIMARY KEY,
  embedding vector(3)
);

INSERT INTO items (embedding)
VALUES ('[1,2,3]'), ('[4,5,6]');

SELECT *
FROM items
ORDER BY embedding <-> '[3,1,2]'
LIMIT 5;
```

Common distance operators:

- `<->` for L2 distance
- `<#>` for negative inner product
- `<=>` for cosine distance
- `<+>` for L1 distance
- `<~>` for Hamming distance on binary vectors
- `<%>` for Jaccard distance on binary vectors

Because PostgreSQL indexes scan in ascending order, `<#>` returns the negative inner product; multiply by `-1` when displaying the actual inner product.

### Vector Types

```sql
CREATE TABLE embeddings (
  id bigserial PRIMARY KEY,
  dense      vector(768),
  half_dense halfvec(768),
  binary_sig bit(1024),
  sparse     sparsevec(100000)
);
```

`vector` is the standard single-precision type. Use `halfvec` to reduce storage and memory pressure, `bit` for binary signatures, and `sparsevec` for high-dimensional sparse vectors.

Aggregates such as `avg()` and `sum()` can be used with vector columns:

```sql
SELECT avg(embedding) FROM items;
```

### HNSW Indexes

HNSW gives strong speed/recall tradeoffs and does not require a training step.

```sql
CREATE INDEX items_embedding_hnsw
ON items USING hnsw (embedding vector_l2_ops);

SET hnsw.ef_search = 100;

SELECT *
FROM items
ORDER BY embedding <-> '[3,1,2]'
LIMIT 10;
```

Choose the operator class that matches the distance:

```sql
CREATE INDEX ON items USING hnsw (embedding vector_ip_ops);
CREATE INDEX ON items USING hnsw (embedding vector_cosine_ops);
CREATE INDEX ON items USING hnsw (embedding vector_l1_ops);
CREATE INDEX ON embeddings USING hnsw (half_dense halfvec_l2_ops);
CREATE INDEX ON embeddings USING hnsw (sparse sparsevec_l2_ops);
CREATE INDEX ON embeddings USING hnsw (binary_sig bit_hamming_ops);
```

Useful tuning settings include `hnsw.ef_search`, `hnsw.iterative_scan`, `hnsw.max_scan_tuples`, and `hnsw.scan_mem_multiplier`.

### IVFFlat Indexes

IVFFlat requires representative data before index creation because it trains cluster lists at build time.

```sql
CREATE INDEX items_embedding_ivfflat
ON items USING ivfflat (embedding vector_l2_ops)
WITH (lists = 100);

SET ivfflat.probes = 10;

SELECT *
FROM items
ORDER BY embedding <-> '[3,1,2]'
LIMIT 10;
```

Increase `lists` for larger tables and increase `ivfflat.probes` for higher recall. For filtered queries, test whether an exact btree filter, a partial vector index, or partitioning gives better plans.

### Filtering and Hybrid Search

Normal PostgreSQL filters can be combined with vector ordering:

```sql
ALTER TABLE items ADD COLUMN tenant_id bigint;
CREATE INDEX ON items (tenant_id);

SELECT *
FROM items
WHERE tenant_id = 42
ORDER BY embedding <=> '[0.1,0.2,0.3]'
LIMIT 20;
```

For hybrid search, combine `pgvector` with PostgreSQL full text search, trigram search, or an external ranking expression:

```sql
CREATE TABLE docs (
  id bigint PRIMARY KEY,
  body text NOT NULL,
  text_tsv tsvector GENERATED ALWAYS AS
    (to_tsvector('english', body)) STORED,
  embedding vector(3)
);

SELECT id,
       ts_rank_cd(text_tsv, plainto_tsquery('database')) AS text_score,
       1 - (embedding <=> '[0.1,0.2,0.3]') AS vector_score
FROM docs
WHERE text_tsv @@ plainto_tsquery('database')
ORDER BY vector_score DESC
LIMIT 20;
```

### Maintenance

```sql
VACUUM items;
REINDEX INDEX CONCURRENTLY items_embedding_hnsw;
ANALYZE items;
```

HNSW indexes can be large and expensive to build. Use `maintenance_work_mem` for builds, monitor build notices, and schedule `REINDEX` when index bloat or recall drift matters.

### Caveats

- Version `0.8.6` fixes an IVFFlat build overflow on 32-bit systems, enforcement of the nonzero-element limit when casting an array to `sparsevec`, and memory growth during IVFFlat scans inside nested loops. It does not add a new SQL feature surface. Run `ALTER EXTENSION vector UPDATE` after installing new extension files when the database reports an older SQL version.
- Use the operator class that matches the query operator. A cosine index will not accelerate an L2 `ORDER BY`.
- Approximate indexes trade exact recall for speed. Validate recall with representative data and query filters.
- Build IVFFlat after loading data. If data distribution changes substantially, rebuild the index.
- Keep pgvector updated when using HNSW with heavy writes and vacuum activity; the `0.8.x` line includes important HNSW maintenance fixes.

### Version 0.8.7

Version 0.8.7 additionally fixes an IVFFlat build buffer overflow and averaging an empty set. Install the new library/SQL files and run `ALTER EXTENSION vector UPDATE`. No index-format migration or mandatory index rebuild is documented for 0.8.7.
