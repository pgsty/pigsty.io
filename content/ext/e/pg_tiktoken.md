---
title: "pg_tiktoken"
linkTitle: "pg_tiktoken"
description: "tiktoken tokenizer for use with OpenAI models in postgres"
weight: 1870
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/kelvich/pg_tiktoken">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">kelvich/pg_tiktoken</div>
    <div class="ext-card__desc">https://github.com/kelvich/pg_tiktoken</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tiktoken-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tiktoken-0.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_tiktoken-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tiktoken`**](/ext/e/pg_tiktoken) | `0.0.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1870  | [**`pg_tiktoken`**](/ext/e/pg_tiktoken) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_tiktoken_c`](/ext/e/pg_tiktoken_c) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_jieba`](/ext/e/pg_jieba) [`pg_cjk_parser`](/ext/e/pg_cjk_parser) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pgroonga`](/ext/e/pgroonga) [`dict_xsyn`](/ext/e/dict_xsyn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_tiktoken` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_tiktoken_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-tiktoken` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_tiktoken_18 pg_tiktoken_18-0.0.1-4PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_18-0.0.1-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tiktoken_18 pg_tiktoken_18-0.0.1-4PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_18-0.0.1-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tiktoken_18 pg_tiktoken_18-0.0.1-4PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_18-0.0.1-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tiktoken_18 pg_tiktoken_18-0.0.1-4PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_18-0.0.1-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tiktoken_18 pg_tiktoken_18-0.0.1-4PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_18-0.0.1-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tiktoken_18 pg_tiktoken_18-0.0.1-4PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_18-0.0.1-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tiktoken postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-18-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tiktoken_17 pg_tiktoken_17-0.0.1-4PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_17-0.0.1-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tiktoken_17 pg_tiktoken_17-0.0.1-4PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_17-0.0.1-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tiktoken_17 pg_tiktoken_17-0.0.1-4PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_17-0.0.1-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tiktoken_17 pg_tiktoken_17-0.0.1-4PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_17-0.0.1-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tiktoken_17 pg_tiktoken_17-0.0.1-4PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_17-0.0.1-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tiktoken_17 pg_tiktoken_17-0.0.1-4PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_17-0.0.1-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tiktoken postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-17-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_tiktoken_16 pg_tiktoken_16-0.0.1-4PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_16-0.0.1-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_tiktoken_16 pg_tiktoken_16-0.0.1-4PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_16-0.0.1-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_tiktoken_16 pg_tiktoken_16-0.0.1-4PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_16-0.0.1-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_tiktoken_16 pg_tiktoken_16-0.0.1-4PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_16-0.0.1-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_tiktoken_16 pg_tiktoken_16-0.0.1-4PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_16-0.0.1-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_tiktoken_16 pg_tiktoken_16-0.0.1-4PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_16-0.0.1-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-tiktoken postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-16-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_tiktoken_15 pg_tiktoken_15-0.0.1-4PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_15-0.0.1-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_tiktoken_15 pg_tiktoken_15-0.0.1-4PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_15-0.0.1-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_tiktoken_15 pg_tiktoken_15-0.0.1-4PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_15-0.0.1-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_tiktoken_15 pg_tiktoken_15-0.0.1-4PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_15-0.0.1-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_tiktoken_15 pg_tiktoken_15-0.0.1-4PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_15-0.0.1-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_tiktoken_15 pg_tiktoken_15-0.0.1-4PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_15-0.0.1-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-tiktoken postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-15-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_tiktoken_14 pg_tiktoken_14-0.0.1-4PIGSTY.el8.x86_64.rpm pigsty 0.0.1 2.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tiktoken_14-0.0.1-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_tiktoken_14 pg_tiktoken_14-0.0.1-4PIGSTY.el8.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tiktoken_14-0.0.1-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_tiktoken_14 pg_tiktoken_14-0.0.1-4PIGSTY.el9.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tiktoken_14-0.0.1-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_tiktoken_14 pg_tiktoken_14-0.0.1-4PIGSTY.el9.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tiktoken_14-0.0.1-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_tiktoken_14 pg_tiktoken_14-0.0.1-4PIGSTY.el10.x86_64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tiktoken_14-0.0.1-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_tiktoken_14 pg_tiktoken_14-0.0.1-4PIGSTY.el10.aarch64.rpm pigsty 0.0.1 2.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tiktoken_14-0.0.1-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb pigsty 0.0.1 1.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb pigsty 0.0.1 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb pigsty 0.0.1 2.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-tiktoken postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb pigsty 0.0.1 2.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tiktoken/postgresql-14-pg-tiktoken_0.0.1-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tiktoken` using `pig build`:

```bash
pig build pkg pg_tiktoken         # build RPM / DEB packages
```


## Install

You can install `pg_tiktoken` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_tiktoken;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_tiktoken -v 18  # PG 18
pig ext install -y pg_tiktoken -v 17  # PG 17
pig ext install -y pg_tiktoken -v 16  # PG 16
pig ext install -y pg_tiktoken -v 15  # PG 15
pig ext install -y pg_tiktoken -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_tiktoken_18       # PG 18
dnf install -y pg_tiktoken_17       # PG 17
dnf install -y pg_tiktoken_16       # PG 16
dnf install -y pg_tiktoken_15       # PG 15
dnf install -y pg_tiktoken_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-tiktoken   # PG 18
apt install -y postgresql-17-pg-tiktoken   # PG 17
apt install -y postgresql-16-pg-tiktoken   # PG 16
apt install -y postgresql-15-pg-tiktoken   # PG 15
apt install -y postgresql-14-pg-tiktoken   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_tiktoken;
```




## Usage

> [pg_tiktoken](https://github.com/kelvich/pg_tiktoken): tiktoken tokenizer for use with OpenAI models in PostgreSQL.
> Source: [README.md](https://raw.githubusercontent.com/kelvich/pg_tiktoken/main/README.md)

`pg_tiktoken` is a PostgreSQL extension that provides input tokenization using OpenAI's [tiktoken](https://github.com/openai/tiktoken) library. It allows you to count and encode tokens directly in SQL, which is useful for managing input length limits when working with OpenAI models.


--------

### Functions

#### tiktoken_count

Count the number of tokens for a given encoding or model:

```sql
SELECT tiktoken_count('p50k_edit', 'A long time ago in a galaxy far, far away');
 tiktoken_count
----------------
             11
(1 row)
```

#### tiktoken_encode

Get the token IDs for a given encoding or model:

```sql
SELECT tiktoken_encode('cl100k_base', 'A long time ago in a galaxy far, far away');
                  tiktoken_encode
----------------------------------------------------
 {32,1317,892,4227,304,264,34261,3117,11,3117,3201}
(1 row)
```

Both `tiktoken_count` and `tiktoken_encode` accept either an encoding name or an OpenAI model name as the first argument.


--------

### Supported Models

| Encoding name | OpenAI models |
|---|---|
| `cl100k_base` | ChatGPT models, `text-embedding-ada-002` |
| `p50k_base` | Code models, `text-davinci-002`, `text-davinci-003` |
| `p50k_edit` | Edit models like `text-davinci-edit-001`, `code-davinci-edit-001` |
| `r50k_base` (or `gpt2`) | GPT-3 models like `davinci` |
