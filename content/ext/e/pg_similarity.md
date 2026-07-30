---
title: "pg_similarity"
linkTitle: "pg_similarity"
description: "support similarity queries"
weight: 1840
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/eulerto/pg_similarity">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">eulerto/pg_similarity</div>
    <div class="ext-card__desc">https://github.com/eulerto/pg_similarity</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_similarity-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_similarity-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_similarity-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_similarity`**](/ext/e/pg_similarity) | `1.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1840  | [**`pg_similarity`**](/ext/e/pg_similarity) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`smlar`](/ext/e/smlar) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pgpcre`](/ext/e/pgpcre) [`re2`](/ext/e/re2) [`pg_bigm`](/ext/e/pg_bigm) [`biscuit`](/ext/e/biscuit) [`vector`](/ext/e/vector) [`imgsmlr`](/ext/e/imgsmlr) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_similarity` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_similarity_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-similarity` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0 2 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0 2 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 |
| el9.aarch64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 |
| el10.x86_64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el10.aarch64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| d12.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d12.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d13.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d13.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u22.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u22.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u24.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u24.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u26.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u26.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
@ el8.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-3PGDG.rhel8.x86_64.rpm pgdg 1.0 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_similarity_18-1.0-3PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 44.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_similarity_18-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-3PGDG.rhel8.aarch64.rpm pgdg 1.0 40.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_similarity_18-1.0-3PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_similarity_18-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_similarity_18-1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-3PGDG.rhel9.x86_64.rpm pgdg 1.0 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_similarity_18-1.0-3PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_similarity_18-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_similarity_18-1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-3PGDG.rhel9.aarch64.rpm pgdg 1.0 41.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_similarity_18-1.0-3PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 40.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_similarity_18-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0 43.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_similarity_18-1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0 43.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_similarity_18-1.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_similarity_18 pg_similarity_18-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 42.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_similarity_18-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0 42.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_similarity_18-1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0 42.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_similarity_18-1.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_similarity_18 pg_similarity_18-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_similarity_18-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg12+1_amd64.deb pgdg 1.0 98.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg12+1_arm64.deb pgdg 1.0 96.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg13+1_amd64.deb pgdg 1.0 98.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg13+1_arm64.deb pgdg 1.0 96.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg22.04+1_amd64.deb pgdg 1.0 98.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg22.04+1_arm64.deb pgdg 1.0 96.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg24.04+1_amd64.deb pgdg 1.0 97.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg24.04+1_arm64.deb pgdg 1.0 94.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg26.04+1_amd64.deb pgdg 1.0 96.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-similarity postgresql-18-similarity_1.0-9.pgdg26.04+1_arm64.deb pgdg 1.0 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-18-similarity_1.0-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_similarity_17 pg_similarity_17-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 44.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_similarity_17-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_similarity_17 pg_similarity_17-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 42.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_similarity_17-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_similarity_17 pg_similarity_17-1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_similarity_17-1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_similarity_17 pg_similarity_17-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 42.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_similarity_17-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_similarity_17 pg_similarity_17-1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_similarity_17-1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_similarity_17 pg_similarity_17-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 40.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_similarity_17-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_similarity_17 pg_similarity_17-1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0 43.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_similarity_17-1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_similarity_17 pg_similarity_17-1.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0 43.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_similarity_17-1.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_similarity_17 pg_similarity_17-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 42.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_similarity_17-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_similarity_17 pg_similarity_17-1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0 42.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_similarity_17-1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_similarity_17 pg_similarity_17-1.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0 42.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_similarity_17-1.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_similarity_17 pg_similarity_17-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_similarity_17-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg12+1_amd64.deb pgdg 1.0 98.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg12+1_arm64.deb pgdg 1.0 96.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg13+1_amd64.deb pgdg 1.0 98.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg13+1_arm64.deb pgdg 1.0 96.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg22.04+1_amd64.deb pgdg 1.0 103.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg22.04+1_arm64.deb pgdg 1.0 101.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg24.04+1_amd64.deb pgdg 1.0 97.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg24.04+1_arm64.deb pgdg 1.0 95.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg26.04+1_amd64.deb pgdg 1.0 96.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-similarity postgresql-17-similarity_1.0-9.pgdg26.04+1_arm64.deb pgdg 1.0 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-17-similarity_1.0-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_similarity_16 pg_similarity_16-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 44.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_similarity_16-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_similarity_16 pg_similarity_16-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_similarity_16-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_similarity_16 pg_similarity_16-1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_similarity_16-1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_similarity_16 pg_similarity_16-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 41.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_similarity_16-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_similarity_16 pg_similarity_16-1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_similarity_16-1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_similarity_16 pg_similarity_16-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 40.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_similarity_16-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_similarity_16 pg_similarity_16-1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0 43.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_similarity_16-1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_similarity_16 pg_similarity_16-1.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0 43.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_similarity_16-1.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_similarity_16 pg_similarity_16-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 42.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_similarity_16-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_similarity_16 pg_similarity_16-1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0 42.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_similarity_16-1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_similarity_16 pg_similarity_16-1.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0 42.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_similarity_16-1.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_similarity_16 pg_similarity_16-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_similarity_16-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg12+1_amd64.deb pgdg 1.0 98.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg12+1_arm64.deb pgdg 1.0 96.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg13+1_amd64.deb pgdg 1.0 98.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg13+1_arm64.deb pgdg 1.0 96.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg22.04+1_amd64.deb pgdg 1.0 103.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg22.04+1_arm64.deb pgdg 1.0 101.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg24.04+1_amd64.deb pgdg 1.0 97.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg24.04+1_arm64.deb pgdg 1.0 95.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg26.04+1_amd64.deb pgdg 1.0 96.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-similarity postgresql-16-similarity_1.0-9.pgdg26.04+1_arm64.deb pgdg 1.0 93.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-16-similarity_1.0-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_similarity_15 pg_similarity_15-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 45.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_similarity_15-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_similarity_15 pg_similarity_15-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_similarity_15-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_similarity_15 pg_similarity_15-1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0 45.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_similarity_15-1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_similarity_15 pg_similarity_15-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 44.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_similarity_15-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_similarity_15 pg_similarity_15-1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_similarity_15-1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_similarity_15 pg_similarity_15-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 42.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_similarity_15-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_similarity_15 pg_similarity_15-1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0 45.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_similarity_15-1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_similarity_15 pg_similarity_15-1.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0 45.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_similarity_15-1.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_similarity_15 pg_similarity_15-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 44.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_similarity_15-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_similarity_15 pg_similarity_15-1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0 44.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_similarity_15-1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_similarity_15 pg_similarity_15-1.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0 44.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_similarity_15-1.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_similarity_15 pg_similarity_15-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_similarity_15-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg12+1_amd64.deb pgdg 1.0 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg12+1_arm64.deb pgdg 1.0 96.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg13+1_amd64.deb pgdg 1.0 99.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg13+1_arm64.deb pgdg 1.0 96.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg22.04+1_amd64.deb pgdg 1.0 105.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg22.04+1_arm64.deb pgdg 1.0 103.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg24.04+1_amd64.deb pgdg 1.0 99.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg24.04+1_arm64.deb pgdg 1.0 96.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg26.04+1_amd64.deb pgdg 1.0 97.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-similarity postgresql-15-similarity_1.0-9.pgdg26.04+1_arm64.deb pgdg 1.0 95.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-15-similarity_1.0-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_similarity_14 pg_similarity_14-1.0-2PIGSTY.el8.x86_64.rpm pigsty 1.0 45.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_similarity_14-1.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_similarity_14 pg_similarity_14-1.0-2PIGSTY.el8.aarch64.rpm pigsty 1.0 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_similarity_14-1.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_similarity_14 pg_similarity_14-1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 1.0 45.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_similarity_14-1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_similarity_14 pg_similarity_14-1.0-2PIGSTY.el9.x86_64.rpm pigsty 1.0 44.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_similarity_14-1.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_similarity_14 pg_similarity_14-1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 1.0 43.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_similarity_14-1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_similarity_14 pg_similarity_14-1.0-2PIGSTY.el9.aarch64.rpm pigsty 1.0 42.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_similarity_14-1.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_similarity_14 pg_similarity_14-1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 1.0 45.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_similarity_14-1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_similarity_14 pg_similarity_14-1.0-3PGDG.rhel10.x86_64.rpm pgdg 1.0 45.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_similarity_14-1.0-3PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_similarity_14 pg_similarity_14-1.0-2PIGSTY.el10.x86_64.rpm pigsty 1.0 44.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_similarity_14-1.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_similarity_14 pg_similarity_14-1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 1.0 44.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_similarity_14-1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_similarity_14 pg_similarity_14-1.0-3PGDG.rhel10.aarch64.rpm pgdg 1.0 44.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_similarity_14-1.0-3PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_similarity_14 pg_similarity_14-1.0-2PIGSTY.el10.aarch64.rpm pigsty 1.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_similarity_14-1.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg12+1_amd64.deb pgdg 1.0 99.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg12+1_arm64.deb pgdg 1.0 96.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg13+1_amd64.deb pgdg 1.0 99.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg13+1_arm64.deb pgdg 1.0 96.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg22.04+1_amd64.deb pgdg 1.0 105.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg22.04+1_arm64.deb pgdg 1.0 102.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg24.04+1_amd64.deb pgdg 1.0 99.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg24.04+1_arm64.deb pgdg 1.0 96.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg26.04+1_amd64.deb pgdg 1.0 97.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-similarity postgresql-14-similarity_1.0-9.pgdg26.04+1_arm64.deb pgdg 1.0 95.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-similarity/postgresql-14-similarity_1.0-9.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_similarity` using `pig build`:

```bash
pig build pkg pg_similarity         # build RPM packages
```


## Install

You can install `pg_similarity` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_similarity;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_similarity -v 18  # PG 18
pig ext install -y pg_similarity -v 17  # PG 17
pig ext install -y pg_similarity -v 16  # PG 16
pig ext install -y pg_similarity -v 15  # PG 15
pig ext install -y pg_similarity -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_similarity_18       # PG 18
dnf install -y pg_similarity_17       # PG 17
dnf install -y pg_similarity_16       # PG 16
dnf install -y pg_similarity_15       # PG 15
dnf install -y pg_similarity_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-similarity   # PG 18
apt install -y postgresql-17-similarity   # PG 17
apt install -y postgresql-16-similarity   # PG 16
apt install -y postgresql-15-similarity   # PG 15
apt install -y postgresql-14-similarity   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_similarity;
```




## Usage

> [pg_similarity](https://github.com/eulerto/pg_similarity): Support similarity queries on PostgreSQL.
> Source: [README.md](https://raw.githubusercontent.com/eulerto/pg_similarity/master/README.md)

**pg_similarity** is an extension to support similarity queries on PostgreSQL. The implementation is tightly integrated in the RDBMS in the sense that it defines operators so instead of the traditional operators (`=` and `<>`) you can use `~~~` and `~!~` (any of these operators represents a similarity function).

**pg_similarity** has three main components:

- **Functions**: a set of functions that implements similarity algorithms available in the literature. These functions can be used as UDFs and will be the base for implementing the similarity operators;
- **Operators**: a set of operators defined at the top of similarity functions. They use similarity functions to obtain the similarity threshold and compare its value to a user-defined threshold to decide if it is a match or not;
- **Session Variables**: a set of variables that store similarity function parameters. These variables can be defined at run time.


--------

## Functions and Operators

This extension supports a set of similarity algorithms. The most known algorithms are covered by this extension. You must be aware that each algorithm is suited for a specific domain. The following algorithms are provided:

- L1 Distance (as known as City Block or Manhattan Distance)
- Cosine Distance
- Dice Coefficient
- Euclidean Distance
- Hamming Distance
- Jaccard Coefficient
- Jaro Distance
- Jaro-Winkler Distance
- Levenshtein Distance
- Matching Coefficient
- Monge-Elkan Coefficient
- Needleman-Wunsch Coefficient
- Overlap Coefficient
- Q-Gram Distance
- Smith-Waterman Coefficient
- Smith-Waterman-Gotoh Coefficient
- Soundex Distance

| Algorithm | Function | Operator | Use Index? | Parameters |
|---|---|---|---|---|
| L1 Distance | `block(text, text) returns float8` | `~++` | yes | `pg_similarity.block_tokenizer`, `pg_similarity.block_threshold`, `pg_similarity.block_is_normalized` |
| Cosine Distance | `cosine(text, text) returns float8` | `~##` | yes | `pg_similarity.cosine_tokenizer`, `pg_similarity.cosine_threshold`, `pg_similarity.cosine_is_normalized` |
| Dice Coefficient | `dice(text, text) returns float8` | `~-~` | yes | `pg_similarity.dice_tokenizer`, `pg_similarity.dice_threshold`, `pg_similarity.dice_is_normalized` |
| Euclidean Distance | `euclidean(text, text) returns float8` | `~!!` | yes | `pg_similarity.euclidean_tokenizer`, `pg_similarity.euclidean_threshold`, `pg_similarity.euclidean_is_normalized` |
| Hamming Distance | `hamming(bit varying, bit varying) returns float8` / `hamming_text(text, text) returns float8` | `~@~` | no | `pg_similarity.hamming_threshold`, `pg_similarity.hamming_is_normalized` |
| Jaccard Coefficient | `jaccard(text, text) returns float8` | `~??` | yes | `pg_similarity.jaccard_tokenizer`, `pg_similarity.jaccard_threshold`, `pg_similarity.jaccard_is_normalized` |
| Jaro Distance | `jaro(text, text) returns float8` | `~%%` | no | `pg_similarity.jaro_threshold`, `pg_similarity.jaro_is_normalized` |
| Jaro-Winkler Distance | `jarowinkler(text, text) returns float8` | `~@@` | no | `pg_similarity.jarowinkler_threshold`, `pg_similarity.jarowinkler_is_normalized` |
| Levenshtein Distance | `lev(text, text) returns float8` | `~==` | no | `pg_similarity.levenshtein_threshold`, `pg_similarity.levenshtein_is_normalized` |
| Matching Coefficient | `matchingcoefficient(text, text) returns float8` | `~^^` | yes | `pg_similarity.matching_tokenizer`, `pg_similarity.matching_threshold`, `pg_similarity.matching_is_normalized` |
| Monge-Elkan Coefficient | `mongeelkan(text, text) returns float8` | `~\|\|` | no | `pg_similarity.mongeelkan_tokenizer`, `pg_similarity.mongeelkan_threshold`, `pg_similarity.mongeelkan_is_normalized` |
| Needleman-Wunsch Coefficient | `needlemanwunsch(text, text) returns float8` | `~#~` | no | `pg_similarity.nw_threshold`, `pg_similarity.nw_is_normalized` |
| Overlap Coefficient | `overlapcoefficient(text, text) returns float8` | `~**` | yes | `pg_similarity.overlap_tokenizer`, `pg_similarity.overlap_threshold`, `pg_similarity.overlap_is_normalized` |
| Q-Gram Distance | `qgram(text, text) returns float8` | `~~~` | yes | `pg_similarity.qgram_threshold`, `pg_similarity.qgram_is_normalized` |
| Smith-Waterman Coefficient | `smithwaterman(text, text) returns float8` | `~=~` | no | `pg_similarity.sw_threshold`, `pg_similarity.sw_is_normalized` |
| Smith-Waterman-Gotoh Coefficient | `smithwatermangotoh(text, text) returns float8` | `~!~` | no | `pg_similarity.swg_threshold`, `pg_similarity.swg_is_normalized` |
| Soundex Distance | `soundex(text, text) returns float8` | `~*~` | no | |


--------

## Parameters

The several parameters control the behavior of the pg_similarity functions and operators. They can be classified in three classes:

- **tokenizer**: controls how the strings are tokenized. Valid values are **alnum**, **gram**, **word**, and **camelcase**. All tokens are lowercase. Default is **alnum**.
  - **alnum**: delimiters are any non-alphanumeric characters.
  - **gram**: an n-gram is a subsequence of length n, extracted using sliding-by-one technique.
  - **word**: delimiters are white space characters.
  - **camelcase**: delimiters are capitalized characters but they are also included as first token characters.
- **threshold**: controls how flexible the result set will be. Values range from **0.0** to **1.0**. Default is **0.7**.
- **normalized**: controls whether the similarity coefficient/distance is normalized (between 0.0 and 1.0) or not. Default is **true**.


--------

## Examples

Set parameters at run time:

```sql
SHOW pg_similarity.levenshtein_threshold;
-- 0.7

SET pg_similarity.levenshtein_threshold TO 0.5;

SET pg_similarity.cosine_tokenizer TO camelcase;

SET pg_similarity.euclidean_is_normalized TO false;
```

Simple tables for examples:

```sql
CREATE TABLE foo (a text);
INSERT INTO foo VALUES('Euler'),('Oiler'),('Euler Taveira de Oliveira'),('Maria Taveira dos Santos'),('Carlos Santos Silva');

CREATE TABLE bar (b text);
INSERT INTO bar VALUES('Euler T. de Oliveira'),('Euller'),('Oliveira, Euler Taveira'),('Sr. Oliveira');
```

### Using similarity functions

```sql
SELECT a, b, cosine(a,b), jaro(a, b), euclidean(a, b) FROM foo, bar;
```

### Using the levenshtein operator (~==)

```sql
SHOW pg_similarity.levenshtein_threshold;
-- 0.7

SELECT a, b, lev(a,b) FROM foo, bar WHERE a ~== b;
--              a             |          b           |   lev
-- ---------------------------+----------------------+----------
--  Euler                     | Euller               | 0.833333
--  Euler Taveira de Oliveira | Euler T. de Oliveira |     0.76

SET pg_similarity.levenshtein_threshold TO 0.5;

SELECT a, b, lev(a,b) FROM foo, bar WHERE a ~== b;
--              a             |          b           |   lev
-- ---------------------------+----------------------+----------
--  Euler                     | Euller               | 0.833333
--  Oiler                     | Euller               |      0.5
--  Euler Taveira de Oliveira | Euler T. de Oliveira |     0.76
```

### Using the qgram operator (~~~)

```sql
SET pg_similarity.qgram_threshold TO 0.7;

SELECT a, b, qgram(a, b) FROM foo, bar WHERE a ~~~ b;
--              a             |            b            |  qgram
-- ---------------------------+-------------------------+----------
--  Euler                     | Euller                  |      0.8
--  Euler Taveira de Oliveira | Euler T. de Oliveira    |  0.77551
--  Euler Taveira de Oliveira | Oliveira, Euler Taveira | 0.807692
```

### Comparing different operators

```sql
SELECT * FROM bar WHERE b ~@@ 'euler'; -- jaro-winkler operator
SELECT * FROM bar WHERE b ~~~ 'euler'; -- qgram operator
SELECT * FROM bar WHERE b ~== 'euler'; -- levenshtein operator
SELECT * FROM bar WHERE b ~## 'euler'; -- cosine operator
```
