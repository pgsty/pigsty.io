---
title: "pg_tiktoken_c"
linkTitle: "pg_tiktoken_c"
description: "Fast tiktoken BPE tokenizer for PostgreSQL implemented in C"
weight: 1880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/relytcloud/pg_tiktoken_c">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">relytcloud/pg_tiktoken_c</div>
    <div class="ext-card__desc">https://github.com/relytcloud/pg_tiktoken_c</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tiktoken_c-1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tiktoken_c-1.1.tar.gz</div>
    <div class="ext-card__desc">pg_tiktoken_c-1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tiktoken_c`**](/ext/e/pg_tiktoken_c) | `1.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1880  | [**`pg_tiktoken_c`**](/ext/e/pg_tiktoken_c) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_tiktoken`](/ext/e/pg_tiktoken) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_jieba`](/ext/e/pg_jieba) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pgroonga`](/ext/e/pgroonga) [`dict_xsyn`](/ext/e/dict_xsyn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Built from upstream main snapshot fa2957b; bundles five vocabularies and includes DESTDIR and correctness patches. Upstream README declares Apache-2.0, but the pinned snapshot omits the referenced LICENSE file.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_tiktoken_c` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_tiktoken_c_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-tiktoken-c` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 | AVAIL PIGSTY 1.1 1 |
@ el8.x86_64 18 pg_tiktoken_c_18 pg_tiktoken_c_18-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_c_18-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tiktoken_c_18 pg_tiktoken_c_18-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_c_18-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tiktoken_c_18 pg_tiktoken_c_18-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_c_18-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tiktoken_c_18 pg_tiktoken_c_18-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_c_18-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tiktoken_c_18 pg_tiktoken_c_18-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_c_18-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tiktoken_c_18 pg_tiktoken_c_18-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_c_18-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tiktoken-c postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-18-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tiktoken_c_17 pg_tiktoken_c_17-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_c_17-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tiktoken_c_17 pg_tiktoken_c_17-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_c_17-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tiktoken_c_17 pg_tiktoken_c_17-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_c_17-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tiktoken_c_17 pg_tiktoken_c_17-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_c_17-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tiktoken_c_17 pg_tiktoken_c_17-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_c_17-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tiktoken_c_17 pg_tiktoken_c_17-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_c_17-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tiktoken-c postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-17-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_tiktoken_c_16 pg_tiktoken_c_16-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_c_16-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_tiktoken_c_16 pg_tiktoken_c_16-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_c_16-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_tiktoken_c_16 pg_tiktoken_c_16-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_c_16-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tiktoken_c_16 pg_tiktoken_c_16-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_c_16-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tiktoken_c_16 pg_tiktoken_c_16-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_c_16-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tiktoken_c_16 pg_tiktoken_c_16-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_c_16-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-tiktoken-c postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-16-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_tiktoken_c_15 pg_tiktoken_c_15-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_c_15-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_tiktoken_c_15 pg_tiktoken_c_15-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_c_15-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_tiktoken_c_15 pg_tiktoken_c_15-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_c_15-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tiktoken_c_15 pg_tiktoken_c_15-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_c_15-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tiktoken_c_15 pg_tiktoken_c_15-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_c_15-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tiktoken_c_15 pg_tiktoken_c_15-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_c_15-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-tiktoken-c postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-15-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_tiktoken_c_14 pg_tiktoken_c_14-1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_c_14-1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_tiktoken_c_14 pg_tiktoken_c_14-1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_c_14-1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_tiktoken_c_14 pg_tiktoken_c_14-1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_c_14-1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_tiktoken_c_14 pg_tiktoken_c_14-1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_c_14-1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_tiktoken_c_14 pg_tiktoken_c_14-1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_c_14-1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_tiktoken_c_14 pg_tiktoken_c_14-1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_c_14-1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-tiktoken-c postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken-c/postgresql-14-pg-tiktoken-c_1.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tiktoken_c` using `pig build`:

```bash
pig build pkg pg_tiktoken_c         # build RPM / DEB packages
```


## Install

You can install `pg_tiktoken_c` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_tiktoken_c;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_tiktoken_c -v 18  # PG 18
pig ext install -y pg_tiktoken_c -v 17  # PG 17
pig ext install -y pg_tiktoken_c -v 16  # PG 16
pig ext install -y pg_tiktoken_c -v 15  # PG 15
pig ext install -y pg_tiktoken_c -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_tiktoken_c_18       # PG 18
dnf install -y pg_tiktoken_c_17       # PG 17
dnf install -y pg_tiktoken_c_16       # PG 16
dnf install -y pg_tiktoken_c_15       # PG 15
dnf install -y pg_tiktoken_c_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-tiktoken-c   # PG 18
apt install -y postgresql-17-pg-tiktoken-c   # PG 17
apt install -y postgresql-16-pg-tiktoken-c   # PG 16
apt install -y postgresql-15-pg-tiktoken-c   # PG 15
apt install -y postgresql-14-pg-tiktoken-c   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_tiktoken_c;
```

## Usage

Sources:

- [pg_tiktoken_c README at the packaged revision](https://github.com/relytcloud/pg_tiktoken_c/blob/fa2957b6ece483322f4c4ce0c374b3b77e22b892/README.md)
- [Version 1.1 SQL API](https://github.com/relytcloud/pg_tiktoken_c/blob/fa2957b6ece483322f4c4ce0c374b3b77e22b892/sql/pg_tiktoken_c--1.1.sql)
- [Extension control file](https://github.com/relytcloud/pg_tiktoken_c/blob/fa2957b6ece483322f4c4ce0c374b3b77e22b892/pg_tiktoken_c.control)
- [Bundled vocabulary data](https://github.com/relytcloud/pg_tiktoken_c/tree/fa2957b6ece483322f4c4ce0c374b3b77e22b892/data)

pg_tiktoken_c implements OpenAI-compatible tiktoken encoding in C inside PostgreSQL. Use it to count or materialize tokens near stored text and to split text into token-bounded chunks before embedding or model requests.

### Create the Extension

    CREATE EXTENSION pg_tiktoken_c;

The implementation depends on PCRE2 10.30 or later at build time. It does not require shared_preload_libraries; vocabulary data is loaded and cached per backend as encodings are used.

### Encode and Count

    SELECT tiktoken_encode('cl100k_base', 'PostgreSQL search');
    SELECT tiktoken_count('cl100k_base', 'PostgreSQL search');

tiktoken_encode returns a bigint array of token identifiers. tiktoken_count returns the token count without requiring the caller to retain the token array.

The bundled selectors include cl100k_base, o200k_base, r50k_base, p50k_base, and p50k_edit, together with aliases documented by the project. Choose the encoding required by the target model rather than assuming all models share a vocabulary.

### Chunk Text

Return chunks as an array:

    SELECT chunk_text(
      'long document text',
      chunk_size => 512,
      chunk_overlap => 64,
      encoding => 'cl100k_base'
    );

Or return one row per chunk:

    SELECT *
    FROM chunk_text_table(
      'long document text',
      chunk_size => 512,
      chunk_overlap => 64,
      encoding => 'cl100k_base'
    );

chunk_text_table returns chunk_index, chunk, and token_count. The chunk index is zero-based. Overlap repeats boundary tokens between neighboring chunks and must be smaller than the chunk size.

### Function Index

- tiktoken_encode(selector, text) returns bigint[] token identifiers.
- tiktoken_count(selector, text) returns bigint token count.
- chunk_text(input_text, chunk_size, chunk_overlap default 0, encoding default cl100k_base) returns text[].
- chunk_text_table(input_text, chunk_size, chunk_overlap default 0, encoding default cl100k_base) returns one row per chunk with its index and token count.

The SQL functions are declared immutable and parallel safe. They can therefore be used in generated expressions or parallel plans only when the selected vocabulary files are deployed consistently across every server.

### Operational Notes

- Tokenization is model-encoding specific. Confirm both the encoding name and the model's current context limits in the application.
- Counting or chunking large text consumes backend CPU and memory; batch large corpora and monitor query latency.
- Backend-local caches avoid repeated parsing but increase memory use in sessions that touch several vocabularies.
- The upstream README's compatibility list can lag packaging. Test the exact pg_tiktoken_c build against the target PostgreSQL major version instead of inferring support from a different binary.
