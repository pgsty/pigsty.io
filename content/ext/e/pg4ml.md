---
title: "pg4ml"
linkTitle: "pg4ml"
description: "Machine learning framework for PostgreSQL"
weight: 1880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://gitee.com/guotiecheng/plpgsql_pg4ml">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://gitee.com/guotiecheng/plpgsql_pg4ml</div>
    <div class="ext-card__desc">https://gitee.com/guotiecheng/plpgsql_pg4ml</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg4ml-2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg4ml-2.0.tar.gz</div>
    <div class="ext-card__desc">pg4ml-2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg4ml`**](/ext/e/pg4ml) | `2.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1880  | [**`pg4ml`**](/ext/e/pg4ml) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`tablefunc`](/ext/e/tablefunc) [`cube`](/ext/e/cube) [`plpython3u`](/ext/e/plpython3u) [`pgml`](/ext/e/pgml) [`vectorize`](/ext/e/vectorize) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`vector`](/ext/e/vector) [`vchord`](/ext/e/vchord) [`vectorscale`](/ext/e/vectorscale) [`pg_strom`](/ext/e/pg_strom) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> require python3


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg4ml` | `plpgsql`, `tablefunc`, `cube`, `plpython3u` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `pg4ml_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg4ml` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 | AVAIL PIGSTY 2.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg4ml_18 pg4ml_18-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg4ml_18-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg4ml_18 pg4ml_18-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg4ml_18-2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg4ml_18 pg4ml_18-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 294.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg4ml_18-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg4ml_18 pg4ml_18-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 294.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg4ml_18-2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg4ml_18 pg4ml_18-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg4ml_18-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg4ml_18 pg4ml_18-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg4ml_18-2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~trixie_amd64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~trixie_arm64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~jammy_amd64.deb pigsty 2.0 317.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~jammy_arm64.deb pigsty 2.0 317.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~noble_amd64.deb pigsty 2.0 316.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg4ml postgresql-18-pg4ml_2.0-2PIGSTY~noble_arm64.deb pigsty 2.0 316.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-18-pg4ml_2.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg4ml_17 pg4ml_17-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg4ml_17-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg4ml_17 pg4ml_17-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 341.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg4ml_17-2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg4ml_17 pg4ml_17-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 294.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg4ml_17-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg4ml_17 pg4ml_17-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 294.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg4ml_17-2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg4ml_17 pg4ml_17-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg4ml_17-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg4ml_17 pg4ml_17-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg4ml_17-2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~trixie_amd64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~trixie_arm64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~jammy_amd64.deb pigsty 2.0 317.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~jammy_arm64.deb pigsty 2.0 317.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~noble_amd64.deb pigsty 2.0 316.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg4ml postgresql-17-pg4ml_2.0-2PIGSTY~noble_arm64.deb pigsty 2.0 316.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-17-pg4ml_2.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg4ml_16 pg4ml_16-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg4ml_16-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg4ml_16 pg4ml_16-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg4ml_16-2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg4ml_16 pg4ml_16-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 294.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg4ml_16-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg4ml_16 pg4ml_16-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 294.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg4ml_16-2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg4ml_16 pg4ml_16-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg4ml_16-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg4ml_16 pg4ml_16-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg4ml_16-2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~trixie_amd64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~trixie_arm64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~jammy_amd64.deb pigsty 2.0 317.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~jammy_arm64.deb pigsty 2.0 317.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~noble_amd64.deb pigsty 2.0 316.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg4ml postgresql-16-pg4ml_2.0-2PIGSTY~noble_arm64.deb pigsty 2.0 316.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-16-pg4ml_2.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg4ml_15 pg4ml_15-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg4ml_15-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg4ml_15 pg4ml_15-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 341.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg4ml_15-2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg4ml_15 pg4ml_15-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 294.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg4ml_15-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg4ml_15 pg4ml_15-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 294.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg4ml_15-2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg4ml_15 pg4ml_15-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg4ml_15-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg4ml_15 pg4ml_15-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg4ml_15-2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~trixie_amd64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~trixie_arm64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~jammy_amd64.deb pigsty 2.0 317.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~jammy_arm64.deb pigsty 2.0 317.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~noble_amd64.deb pigsty 2.0 316.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg4ml postgresql-15-pg4ml_2.0-2PIGSTY~noble_arm64.deb pigsty 2.0 316.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-15-pg4ml_2.0-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg4ml_14 pg4ml_14-2.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0 341.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg4ml_14-2.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg4ml_14 pg4ml_14-2.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0 341.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg4ml_14-2.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg4ml_14 pg4ml_14-2.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0 294.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg4ml_14-2.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg4ml_14 pg4ml_14-2.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0 294.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg4ml_14-2.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg4ml_14 pg4ml_14-2.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg4ml_14-2.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg4ml_14 pg4ml_14-2.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0 294.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg4ml_14-2.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb pigsty 2.0 316.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~trixie_amd64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~trixie_arm64.deb pigsty 2.0 317.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~jammy_amd64.deb pigsty 2.0 317.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~jammy_arm64.deb pigsty 2.0 317.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~noble_amd64.deb pigsty 2.0 316.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg4ml postgresql-14-pg4ml_2.0-2PIGSTY~noble_arm64.deb pigsty 2.0 316.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg4ml/postgresql-14-pg4ml_2.0-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg4ml` using `pig build`:

```bash
pig build pkg pg4ml         # build RPM / DEB packages
```


## Install

You can install `pg4ml` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg4ml;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg4ml -v 18  # PG 18
pig ext install -y pg4ml -v 17  # PG 17
pig ext install -y pg4ml -v 16  # PG 16
pig ext install -y pg4ml -v 15  # PG 15
pig ext install -y pg4ml -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg4ml_18       # PG 18
dnf install -y pg4ml_17       # PG 17
dnf install -y pg4ml_16       # PG 16
dnf install -y pg4ml_15       # PG 15
dnf install -y pg4ml_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg4ml   # PG 18
apt install -y postgresql-17-pg4ml   # PG 17
apt install -y postgresql-16-pg4ml   # PG 16
apt install -y postgresql-15-pg4ml   # PG 15
apt install -y postgresql-14-pg4ml   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg4ml CASCADE;  -- requires: plpgsql, tablefunc, cube, plpython3u
```



## Usage

> [pg4ml](https://gitee.com/guotiecheng/plpgsql_pg4ml): Machine learning framework for PostgreSQL.
> Source: [README.md](https://gitee.com/guotiecheng/plpgsql_pg4ml)

`pg4ml` is a PostgreSQL extension that implements a machine learning framework entirely within the database using PL/pgSQL and PL/Python. It provides matrix operations, neural network construction and training, clustering algorithms, and scientific computing -- all through SQL.


--------

### Prerequisites

- PostgreSQL >= 14 with Python3 support
- Required extensions: `plpgsql`, `tablefunc`, `cube`, `plpython3u`

### Getting Started

```sql
CREATE EXTENSION pg4ml CASCADE;
-- This will also create the required dependencies: plpgsql, tablefunc, cube, plpython3u
```


--------

### Features

#### Matrix Operations

The framework provides a comprehensive matrix operation library under the `sm_sc` schema:

- **Element-wise operations**: arithmetic, comparison, rounding, concatenation, boolean, bitwise, complex number, and broadcast operations
- **Matrix operations**: multiplication, transpose, flip, rotate, concatenation
- **Construction**: sampling, replacement, padding, character matching, random generation
- **Trigonometric functions**: broadcast operations on matrices
- **Aggregation**: slice-level aggregation, matrix-level aggregation, sorting by slice values, locating extremum positions

#### Slice Aggregation Examples

Average over vertical slices (groups of 2):

```sql
SELECT sm_sc.fv_aggr_slice_avg(
    array[[1.5, 11.5],
          [2.1, 12.1],
          [3.3, 13.3],
          [4.3, 14.3],
          [5.5, 15.5],
          [6.1, 16.1]],
    array[2, 1]
);
-- Returns: array[[1.8, 11.8],[3.8, 13.8],[5.8, 15.8]]
```

Max pooling over 2x3 blocks:

```sql
SELECT sm_sc.fv_aggr_slice_max(
    array[[2.3, 5.1, 8.2, 2.56, 3.33, -1.9],
          [3.25, 6.4, 6.6, 6.9, -2.65, -4.6],
          [-2.3, 5.1, -8.2, 2.56, -3.33, -1.9],
          [3.25, -6.4, -6.6, 6.9, -2.65, -4.6]],
    array[2, 3]
);
-- Returns: array[[8.2, 6.9],[5.1, 6.9]]
```

#### Neural Networks

The framework supports deep neural network construction and training:

- **Node and Path tables**: `sm_sc.tb_nn_node` / `sm_sc.tb_nn_path` for defining network structure
- **Training input buffer**: `sm_sc.tb_nn_train_input_buff` for receiving training data
- **Task management**: `sm_sc.tb_classify_task` for deploying and managing training tasks
- **Activation functions**, **convolution**, **pooling**, **lambda operations**
- **Loss functions**, **derivative computation**, **backpropagation**
- **Inference**: `sm_sc.ft_nn_in_out` for running test/validation data through a trained model

#### Clustering

- **K-means++**: via `sm_sc.prc_kmeans_pp` procedure
- **DBSCAN**: via `sm_sc.prc_dbscan_pp` procedure

Both use `sm_sc.tb_cluster_task` for task deployment and management.

#### Scientific Computing

- Waveform processing
- Computational graph JSON serialization/deserialization
- Complex number operations
- Linear algebra


--------

### Performance Tips

- Enable debug mode with: `SET session pg4ml._v_is_debug_check = '1';`
- Matrix multiplication uses `plpython3u` to call numpy for optimization
- Adjust PostgreSQL parallel parameters for multi-threaded training:
  - `max_parallel_workers_per_gather`
  - `force_parallel_mode`
  - `parallel_setup_cost`, `parallel_tuple_cost`
- Consider using `pg_strom` extension for GPU acceleration
