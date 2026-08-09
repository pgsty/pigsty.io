---
title: "pgml"
linkTitle: "pgml"
description: "Run AL/ML workloads with SQL interface"
weight: 1940
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/postgresml/postgresml">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">postgresml/postgresml</div>
    <div class="ext-card__desc">https://github.com/postgresml/postgresml</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgml-2.10.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgml-2.10.0.tar.gz</div>
    <div class="ext-card__desc">pgml-2.10.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgml`**](/ext/e/pgml) | `2.10.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1940  | [**`pgml`**](/ext/e/pgml) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `pgml` |
{.ext-table}

| **Related** | [`vectorize`](/ext/e/vectorize) [`pg4ml`](/ext/e/pg4ml) [`pgcontext`](/ext/e/pgcontext) [`pgmnemo`](/ext/e/pgmnemo) [`vector`](/ext/e/vector) [`pg_summarize`](/ext/e/pg_summarize) [`pg_ai_query`](/ext/e/pg_ai_query) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgrx=0.12.9


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.10.0` | {{< pgvers "17,16,15,14" >}} | `pgml` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.10.0` | {{< pgvers "17,16,15,14" >}} | `pgml_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.10.0` | {{< pgvers "17,16,15,14" >}} | `postgresql-$v-pgml` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| d12.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| d12.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| d13.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| d13.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| u22.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| u22.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| u24.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| u24.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| u26.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
| u26.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 | AVAIL PIGSTY 2.10.0 1 |
@ el8.x86_64 17 pgml_17 pgml_17-2.10.0-1PIGSTY.el8.x86_64.rpm pigsty 2.10.0 5.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgml_17-2.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgml_17 pgml_17-2.10.0-1PIGSTY.el8.aarch64.rpm pigsty 2.10.0 4.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgml_17-2.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgml_17 pgml_17-2.10.0-1PIGSTY.el9.x86_64.rpm pigsty 2.10.0 5.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgml_17-2.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgml_17 pgml_17-2.10.0-1PIGSTY.el9.aarch64.rpm pigsty 2.10.0 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgml_17-2.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgml_17 pgml_17-2.10.0-1PIGSTY.el10.x86_64.rpm pigsty 2.10.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgml_17-2.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgml_17 pgml_17-2.10.0-1PIGSTY.el10.aarch64.rpm pigsty 2.10.0 4.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgml_17-2.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb pigsty 2.10.0 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~trixie_amd64.deb pigsty 2.10.0 4.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~trixie_arm64.deb pigsty 2.10.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~jammy_amd64.deb pigsty 2.10.0 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~jammy_arm64.deb pigsty 2.10.0 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~noble_amd64.deb pigsty 2.10.0 5.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~noble_arm64.deb pigsty 2.10.0 4.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~resolute_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgml postgresql-17-pgml_2.10.0-1PIGSTY~resolute_arm64.deb pigsty 2.10.0 4.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-17-pgml_2.10.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgml_16 pgml_16-2.10.0-1PIGSTY.el8.x86_64.rpm pigsty 2.10.0 5.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgml_16-2.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgml_16 pgml_16-2.10.0-1PIGSTY.el8.aarch64.rpm pigsty 2.10.0 4.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgml_16-2.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgml_16 pgml_16-2.10.0-1PIGSTY.el9.x86_64.rpm pigsty 2.10.0 5.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgml_16-2.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgml_16 pgml_16-2.10.0-1PIGSTY.el9.aarch64.rpm pigsty 2.10.0 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgml_16-2.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgml_16 pgml_16-2.10.0-1PIGSTY.el10.x86_64.rpm pigsty 2.10.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgml_16-2.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgml_16 pgml_16-2.10.0-1PIGSTY.el10.aarch64.rpm pigsty 2.10.0 4.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgml_16-2.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb pigsty 2.10.0 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~trixie_amd64.deb pigsty 2.10.0 4.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~trixie_arm64.deb pigsty 2.10.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~jammy_amd64.deb pigsty 2.10.0 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~jammy_arm64.deb pigsty 2.10.0 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~noble_amd64.deb pigsty 2.10.0 5.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~noble_arm64.deb pigsty 2.10.0 4.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~resolute_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgml postgresql-16-pgml_2.10.0-1PIGSTY~resolute_arm64.deb pigsty 2.10.0 4.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-16-pgml_2.10.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgml_15 pgml_15-2.10.0-1PIGSTY.el8.x86_64.rpm pigsty 2.10.0 5.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgml_15-2.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgml_15 pgml_15-2.10.0-1PIGSTY.el8.aarch64.rpm pigsty 2.10.0 4.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgml_15-2.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgml_15 pgml_15-2.10.0-1PIGSTY.el9.x86_64.rpm pigsty 2.10.0 5.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgml_15-2.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgml_15 pgml_15-2.10.0-1PIGSTY.el9.aarch64.rpm pigsty 2.10.0 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgml_15-2.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgml_15 pgml_15-2.10.0-1PIGSTY.el10.x86_64.rpm pigsty 2.10.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgml_15-2.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgml_15 pgml_15-2.10.0-1PIGSTY.el10.aarch64.rpm pigsty 2.10.0 4.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgml_15-2.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb pigsty 2.10.0 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~trixie_amd64.deb pigsty 2.10.0 4.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~trixie_arm64.deb pigsty 2.10.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~jammy_amd64.deb pigsty 2.10.0 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~jammy_arm64.deb pigsty 2.10.0 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~noble_amd64.deb pigsty 2.10.0 5.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~noble_arm64.deb pigsty 2.10.0 4.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~resolute_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgml postgresql-15-pgml_2.10.0-1PIGSTY~resolute_arm64.deb pigsty 2.10.0 4.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-15-pgml_2.10.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgml_14 pgml_14-2.10.0-1PIGSTY.el8.x86_64.rpm pigsty 2.10.0 5.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgml_14-2.10.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgml_14 pgml_14-2.10.0-1PIGSTY.el8.aarch64.rpm pigsty 2.10.0 4.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgml_14-2.10.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgml_14 pgml_14-2.10.0-1PIGSTY.el9.x86_64.rpm pigsty 2.10.0 5.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgml_14-2.10.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgml_14 pgml_14-2.10.0-1PIGSTY.el9.aarch64.rpm pigsty 2.10.0 5.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgml_14-2.10.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgml_14 pgml_14-2.10.0-1PIGSTY.el10.x86_64.rpm pigsty 2.10.0 4.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgml_14-2.10.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgml_14 pgml_14-2.10.0-1PIGSTY.el10.aarch64.rpm pigsty 2.10.0 4.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgml_14-2.10.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb pigsty 2.10.0 4.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~trixie_amd64.deb pigsty 2.10.0 4.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~trixie_arm64.deb pigsty 2.10.0 3.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~jammy_amd64.deb pigsty 2.10.0 5.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~jammy_arm64.deb pigsty 2.10.0 4.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~noble_amd64.deb pigsty 2.10.0 5.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~noble_arm64.deb pigsty 2.10.0 4.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~resolute_amd64.deb pigsty 2.10.0 4.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgml postgresql-14-pgml_2.10.0-1PIGSTY~resolute_arm64.deb pigsty 2.10.0 4.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgml/postgresql-14-pgml_2.10.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgml` using `pig build`:

```bash
pig build pkg pgml         # build RPM / DEB packages
```


## Install

You can install `pgml` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgml;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgml -v 17  # PG 17
pig ext install -y pgml -v 16  # PG 16
pig ext install -y pgml -v 15  # PG 15
pig ext install -y pgml -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgml_17       # PG 17
dnf install -y pgml_16       # PG 16
dnf install -y pgml_15       # PG 15
dnf install -y pgml_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-17-pgml   # PG 17
apt install -y postgresql-16-pgml   # PG 16
apt install -y postgresql-15-pgml   # PG 15
apt install -y postgresql-14-pgml   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgml';
```


**Create Extension**:

```sql
CREATE EXTENSION pgml;
```




## Usage

> [!WARNING] This extension is lack of maintenance

After installing the `pgml` extension and python dependencies on all cluster nodes, you can enable `pgml` on the PostgreSQL cluster.

[Edit the cluster configuration](/docs/pgsql/admin/patroni/#edit-config) with `patronictl`, add `pgml` to `shared_preload_libraries`, and specify your `venv` directory in `pgml.venv`:

```yaml
shared_preload_libraries: pgml, timescaledb, pg_stat_statements, auto_explain
pgml.venv: '/data/pgml'
```

After that, restart database cluster, and create extension with SQL command:

```sql
CREATE EXTENSION vector;        -- nice to have pgvector installed too!
CREATE EXTENSION pgml;          -- create PostgresML in current database
SELECT pgml.version();          -- print PostgresML version string
```

If it works, you should see something like:

```bash
# create extension pgml;
INFO:  Python version: 3.11.2 (main, Oct  5 2023, 16:06:03) [GCC 8.5.0 20210514 (Red Hat 8.5.0-18)]
INFO:  Scikit-learn 1.3.0, XGBoost 2.0.0, LightGBM 4.1.0, NumPy 1.26.1
CREATE EXTENSION

# SELECT pgml.version(); -- print PostgresML version string
 version
---------
 2.7.8
```

You are all set! Check PostgresML for more details: https://postgresml.org/docs/guides/use-cases/
