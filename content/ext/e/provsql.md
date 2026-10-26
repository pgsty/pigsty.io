---
title: "provsql"
linkTitle: "provsql"
description: "Semiring provenance and probability management for PostgreSQL"
weight: 2900
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/PierreSenellart/provsql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">PierreSenellart/provsql</div>
    <div class="ext-card__desc">https://github.com/PierreSenellart/provsql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/provsql-1.13.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">provsql-1.13.0.tar.gz</div>
    <div class="ext-card__desc">provsql-1.13.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`provsql`**](/ext/e/provsql) | `1.13.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2900  | [**`provsql`**](/ext/e/provsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `provsql` |
{.ext-table}

| **Related** | [`uuid-ossp`](/ext/e/uuid-ossp) [`pgmemento`](/ext/e/pgmemento) [`ddl_historization`](/ext/e/ddl_historization) [`table_log`](/ext/e/table_log) [`data_historization`](/ext/e/data_historization) [`table_version`](/ext/e/table_version) [`pgaudit`](/ext/e/pgaudit) [`pgmnemo`](/ext/e/pgmnemo) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload/restart; set_prob is write-once; EXCEPT ALL unsupported; back up circuit store files separately; PG19 RC.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13.0` | {{< pgvers "14,15,16,17,18" >}} | `provsql` | `uuid-ossp` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13.0` | {{< pgvers "18,17,16,15,14" >}} | `provsql_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-provsql` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 | AVAIL PIGSTY 1.13.0 1 |
@ el8.x86_64 18 provsql_18 provsql_18-1.13.0-1PGSTY.el8.x86_64.rpm pigsty 1.13.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_18-1.13.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 provsql_18 provsql_18-1.13.0-1PGSTY.el8.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_18-1.13.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 provsql_18 provsql_18-1.13.0-1PGSTY.el9.x86_64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_18-1.13.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 provsql_18 provsql_18-1.13.0-1PGSTY.el9.aarch64.rpm pigsty 1.13.0 6.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_18-1.13.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 provsql_18 provsql_18-1.13.0-1PGSTY.el10.x86_64.rpm pigsty 1.13.0 6.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_18-1.13.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 provsql_18 provsql_18-1.13.0-1PGSTY.el10.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_18-1.13.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~bookworm_amd64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~bookworm_arm64.deb pigsty 1.13.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~trixie_amd64.deb pigsty 1.13.0 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~trixie_arm64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~jammy_amd64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~jammy_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~noble_amd64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~noble_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~resolute_amd64.deb pigsty 1.13.0 6.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-provsql postgresql-18-provsql_1.13.0-1PGSTY~resolute_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-18-provsql_1.13.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 provsql_17 provsql_17-1.13.0-1PGSTY.el8.x86_64.rpm pigsty 1.13.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_17-1.13.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 provsql_17 provsql_17-1.13.0-1PGSTY.el8.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_17-1.13.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 provsql_17 provsql_17-1.13.0-1PGSTY.el9.x86_64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_17-1.13.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 provsql_17 provsql_17-1.13.0-1PGSTY.el9.aarch64.rpm pigsty 1.13.0 6.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_17-1.13.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 provsql_17 provsql_17-1.13.0-1PGSTY.el10.x86_64.rpm pigsty 1.13.0 6.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_17-1.13.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 provsql_17 provsql_17-1.13.0-1PGSTY.el10.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_17-1.13.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~bookworm_amd64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~bookworm_arm64.deb pigsty 1.13.0 5.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~trixie_amd64.deb pigsty 1.13.0 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~trixie_arm64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~jammy_amd64.deb pigsty 1.13.0 7.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~jammy_arm64.deb pigsty 1.13.0 7.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~noble_amd64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~noble_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~resolute_amd64.deb pigsty 1.13.0 6.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-provsql postgresql-17-provsql_1.13.0-1PGSTY~resolute_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-17-provsql_1.13.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 provsql_16 provsql_16-1.13.0-1PGSTY.el8.x86_64.rpm pigsty 1.13.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_16-1.13.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 provsql_16 provsql_16-1.13.0-1PGSTY.el8.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_16-1.13.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 provsql_16 provsql_16-1.13.0-1PGSTY.el9.x86_64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_16-1.13.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 provsql_16 provsql_16-1.13.0-1PGSTY.el9.aarch64.rpm pigsty 1.13.0 6.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_16-1.13.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 provsql_16 provsql_16-1.13.0-1PGSTY.el10.x86_64.rpm pigsty 1.13.0 6.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_16-1.13.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 provsql_16 provsql_16-1.13.0-1PGSTY.el10.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_16-1.13.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~bookworm_amd64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~bookworm_arm64.deb pigsty 1.13.0 5.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~trixie_amd64.deb pigsty 1.13.0 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~trixie_arm64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~jammy_amd64.deb pigsty 1.13.0 7.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~jammy_arm64.deb pigsty 1.13.0 7.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~noble_amd64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~noble_arm64.deb pigsty 1.13.0 6.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~resolute_amd64.deb pigsty 1.13.0 6.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-provsql postgresql-16-provsql_1.13.0-1PGSTY~resolute_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-16-provsql_1.13.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 provsql_15 provsql_15-1.13.0-1PGSTY.el8.x86_64.rpm pigsty 1.13.0 7.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_15-1.13.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 provsql_15 provsql_15-1.13.0-1PGSTY.el8.aarch64.rpm pigsty 1.13.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_15-1.13.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 provsql_15 provsql_15-1.13.0-1PGSTY.el9.x86_64.rpm pigsty 1.13.0 6.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_15-1.13.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 provsql_15 provsql_15-1.13.0-1PGSTY.el9.aarch64.rpm pigsty 1.13.0 6.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_15-1.13.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 provsql_15 provsql_15-1.13.0-1PGSTY.el10.x86_64.rpm pigsty 1.13.0 6.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_15-1.13.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 provsql_15 provsql_15-1.13.0-1PGSTY.el10.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_15-1.13.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~bookworm_amd64.deb pigsty 1.13.0 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~bookworm_arm64.deb pigsty 1.13.0 7.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~trixie_amd64.deb pigsty 1.13.0 6.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~trixie_arm64.deb pigsty 1.13.0 6.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~jammy_amd64.deb pigsty 1.13.0 7.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~jammy_arm64.deb pigsty 1.13.0 7.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~noble_amd64.deb pigsty 1.13.0 6.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~noble_arm64.deb pigsty 1.13.0 6.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~resolute_amd64.deb pigsty 1.13.0 6.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-provsql postgresql-15-provsql_1.13.0-1PGSTY~resolute_arm64.deb pigsty 1.13.0 6.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-15-provsql_1.13.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 provsql_14 provsql_14-1.13.0-1PGSTY.el8.x86_64.rpm pigsty 1.13.0 6.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/provsql_14-1.13.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 provsql_14 provsql_14-1.13.0-1PGSTY.el8.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/provsql_14-1.13.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 provsql_14 provsql_14-1.13.0-1PGSTY.el9.x86_64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/provsql_14-1.13.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 provsql_14 provsql_14-1.13.0-1PGSTY.el9.aarch64.rpm pigsty 1.13.0 6.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/provsql_14-1.13.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 provsql_14 provsql_14-1.13.0-1PGSTY.el10.x86_64.rpm pigsty 1.13.0 6.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/provsql_14-1.13.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 provsql_14 provsql_14-1.13.0-1PGSTY.el10.aarch64.rpm pigsty 1.13.0 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/provsql_14-1.13.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~bookworm_amd64.deb pigsty 1.13.0 6.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~bookworm_arm64.deb pigsty 1.13.0 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~trixie_amd64.deb pigsty 1.13.0 6.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~trixie_arm64.deb pigsty 1.13.0 6.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~jammy_amd64.deb pigsty 1.13.0 7.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~jammy_arm64.deb pigsty 1.13.0 7.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~noble_amd64.deb pigsty 1.13.0 6.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~noble_arm64.deb pigsty 1.13.0 6.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~resolute_amd64.deb pigsty 1.13.0 6.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-provsql postgresql-14-provsql_1.13.0-1PGSTY~resolute_arm64.deb pigsty 1.13.0 6.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/provsql/postgresql-14-provsql_1.13.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `provsql` using `pig build`:

```bash
pig build pkg provsql         # build RPM / DEB packages
```


## Install

You can install `provsql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install provsql;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y provsql -v 18  # PG 18
pig ext install -y provsql -v 17  # PG 17
pig ext install -y provsql -v 16  # PG 16
pig ext install -y provsql -v 15  # PG 15
pig ext install -y provsql -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y provsql_18       # PG 18
dnf install -y provsql_17       # PG 17
dnf install -y provsql_16       # PG 16
dnf install -y provsql_15       # PG 15
dnf install -y provsql_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-provsql   # PG 18
apt install -y postgresql-17-provsql   # PG 17
apt install -y postgresql-16-provsql   # PG 16
apt install -y postgresql-15-provsql   # PG 15
apt install -y postgresql-14-provsql   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'provsql';
```


**Create Extension**:

```sql
CREATE EXTENSION provsql CASCADE;  -- requires: uuid-ossp
```

## Usage

Sources:

- [ProvSQL 1.13.0 documentation](https://github.com/PierreSenellart/provsql/blob/v1.13.0/doc/provsql.md)
- [ProvSQL 1.13.0 release](https://github.com/PierreSenellart/provsql/releases/tag/v1.13.0)
- [ProvSQL 1.13.0 changelog](https://github.com/PierreSenellart/provsql/blob/v1.13.0/CHANGELOG.md)
- [ProvSQL 1.13.0 control file](https://github.com/PierreSenellart/provsql/blob/v1.13.0/provsql.common.control)
- [Persistence, backups and replication](https://github.com/PierreSenellart/provsql/blob/v1.13.0/doc/source/user/persistence.rst)

`provsql` adds semiring provenance and uncertainty management to PostgreSQL. Upstream documents provenance tracking, semiring evaluation, probabilities, Shapley and Banzhaf values, where-provenance, update provenance, and temporal features.

### Load and Track Provenance

```ini
shared_preload_libraries = 'provsql'
```

```sql
CREATE EXTENSION provsql CASCADE;
```

The `CASCADE` form installs `uuid-ossp` automatically if needed. The getting-started guide says the preload step is mandatory because ProvSQL installs a planner hook.

```sql
SELECT provsql.add_provenance('mytable');

SELECT name, provenance()
FROM mytable;

SELECT provsql.remove_provenance('mytable');
```

The user docs also describe provenance mappings:

```sql
SELECT create_provenance_mapping('my_mapping', 'mytable', 'column_name');
SELECT create_provenance_mapping_view('my_mapping_view', 'mytable', 'column_name');
```

### Probability and Influence

Assign probabilities to tuple tokens:

```sql
SELECT set_prob(provenance(), 0.8)
FROM mytable
WHERE id = 1;

SELECT name, probability_evaluate(provenance()) AS prob
FROM mytable;
```

Compute influence scores:

```sql
SELECT shapley(provenance(), m.token)
FROM mytable, my_mapping AS m;

SELECT banzhaf(provenance(), m.token)
FROM mytable, my_mapping AS m;
```

The docs also describe `shapley_all_vars` and `banzhaf_all_vars` for computing scores for all input variables at once.

### Built-in Semirings

Built-in semiring functions use a provenance token and a provenance mapping table:

```sql
SELECT name, sr_boolean(provenance(), 'my_mapping')
FROM mytable;

SELECT name, sr_formula(provenance(), 'my_mapping')
FROM mytable;

SELECT name, sr_how(provenance(), 'my_mapping')
FROM mytable;
```

Current docs include compiled wrappers for `sr_how`, `sr_which`, `sr_tropical`, `sr_viterbi`, `sr_lukasiewicz`, `sr_minmax`, and `sr_maxmin`. For PostgreSQL 14 and later they also include `sr_temporal`, `sr_interval_num`, and `sr_interval_int` over multirange values.

```sql
SELECT city,
       sr_minmax(provenance(), 'personnel_level',
                 'unclassified'::classification_level) AS clearance
FROM (SELECT DISTINCT city FROM personnel) AS t;

SELECT entity_id, sr_temporal(provenance(), 'validity_mapping')
FROM mytable;
```

Advanced users can still define custom semirings and evaluate them with `provenance_evaluate` or `aggregation_evaluate`; upstream recommends the compiled semirings when one matches the needed algebra.

### Extra Modes and Helpers

Session GUCs documented upstream include:

```sql
SET provsql.active = on;
SET provsql.where_provenance = on;
SET provsql.update_provenance = on;
SET provsql.tool_search_path = '/opt/d4:/home/postgres/bin';
SET provsql.aggtoken_text_as_uuid = on;

-- After probability_evaluate(...), inspect the route that actually ran:
SHOW provsql.last_eval_method;
```

`provsql.tool_search_path` is used for external probability and visualization tools such as `d4`, `c2d`, `dsharp`, `minic2d`, `weightmc`, and `graph-easy`. `provsql.last_eval_method` stores the last chosen probability-evaluation method. `provsql.aggtoken_text_as_uuid` makes aggregate-token cells render as their provenance UUIDs; `agg_token_value_text(token)` can recover the display text for those aggregate tokens.

The user guide separately documents where-provenance helpers, update provenance, temporal helpers such as `get_valid_time`, `timetravel`, `timeslice`, `history`, and `undo`, circuit-inspection helpers `circuit_subgraph(root, max_depth)` and `resolve_input(uuid)`, and `setup_search_path()` for preparing the helper search path.

### Current Probability and Inference Surface

The recent releases materially expand SQL coverage and probability evaluation:

- subqueries outside `FROM`, including `EXISTS`, `NOT EXISTS`, `IN`, `NOT IN`, `ANY`, `ALL`, row-valued `IN`, scalar subqueries, and `ARRAY(SELECT ...)`;
- `LEFT`, `RIGHT`, and `FULL` outer joins, plus `EXCEPT` provenance; `EXCEPT ALL` over tracked relations is refused in 1.13.0;
- SQL-faithful `NULL` handling for aggregates and exact `HAVING` aggregate probabilities for `COUNT`, `SUM`, `MIN`, `MAX`, and `AVG`;
- probability-method selection through the method catalog and cost chooser, with `karp-luby`, `stopping-rule`, `sieve`, `d-tree`, and `probability_bounds`;
- exact bounded-treewidth recursive reachability, unsafe-UCQ joint-width compilation, Möbius inversion for safe UCQs, and absorptive provenance for cyclic recursion;
- conditional events and distributions through the `target | evidence` operator and the whole-tuple `given()`/prefix form;
- continuous and discrete `random_variable` families, including normal, gamma, log-normal, beta, Weibull, Pareto, inverse-gamma, inverse-Gaussian, logistic, Poisson, binomial, geometric, hypergeometric, and negative-binomial distributions;
- hierarchical Bayesian models where distribution parameters are themselves random variables, with conjugate posterior updates when a closed form is available;
- maintained provenance mappings that remain correct as source data changes, plus SQL-conformant `NULL` behavior for `NOT IN`, `EXCEPT`, and nullable random variables.

For example, condition a continuous value on observed evidence and read the posterior expectation:

```sql
WITH model AS (
  SELECT normal(20, 5) AS reading
)
SELECT expected(reading | (reading > 25))
FROM model;
```

The `agg_token` type supports arithmetic, unary minus, and comparisons for probabilistic aggregate expressions. Use the official probability and continuous-distribution chapters to choose between exact, compiled, and sampling-based evaluation methods.

### Notes

- Version 1.11.1 corrects aggregate-comparison provenance and makes empty `sum`, `min`, `max`, and product groups return SQL `NULL`. It also changes the content-addressed token produced for `count(*)`; re-run queries that materialized those tokens when the old empty-input behavior matters.
- Version 1.12.0 extends Möbius evaluation to self-joins, lets `sr_formula` render all gate types with an optional mapping, and reports `sq-rewrite`, `bounded-jw`, and `reachability` through `provsql.last_eval_method`. It also fixes DML rewrite cases and makes repeated `remove_provenance()` calls safe.
- `ALTER EXTENSION provsql UPDATE` installs the SQL changes. Reconnect sessions that stayed open across the update because ProvSQL caches function OIDs per session.
- The 1.13.0 control file sets `default_version = '1.13.0'`, requires `uuid-ossp`, marks the extension trusted, and is not relocatable.
- Version 1.13.0 supports PostgreSQL 11–18 and was tested on PostgreSQL 19 RC1; PostgreSQL 10 is no longer supported.
- `provsql.update_provenance` and the multirange semirings require PostgreSQL 14 or later.
- Update-provenance tracking remains experimental; validate its storage and performance costs before enabling it broadly.

### 1.13.0 Semantics and Upgrade

Install matching files, restart PostgreSQL to replace the preloaded library, and run `ALTER EXTENSION provsql UPDATE TO '1.13.0'`. The upgrade migrates per-relation metadata into `provsql.table_info`. An older ProvSQL cannot read a circuit store written by this release; retain a verified backup before upgrading.

`set_prob` is now write-once: repeating the same value is allowed, but changing it requires `replace_input`, or `replace_block` for a repair-key block, to create fresh input gates. Previously materialized tokens keep their old probabilities. Unsupported tracked constructs now produce tagged SQLSTATE 0A000 errors. Locking clauses over tracked relations and `EXCEPT ALL` are among the refusals.

An ordered LIMIT now returns rows qualifying in any possible world, so it can return more than the numeric limit. `LIMIT plain(k)` keeps actual-data truncation; to restrict the candidates to actual rows, filter with `present(provenance())` in the WHERE clause before that limit. `provsql.implicit_freeze = 'error'` rejects implicit plain-value evaluation rather than only warning. Supported windows, grouping sets, materialized views and cyclic recursion have explicit conditions in the upstream query documentation.

Long evaluations honor cancellation and statement timeouts. `provsql.max_memory` bounds per-statement evaluation memory, including external tools; `provsql.max_worlds` limits possible-world enumeration. Exceeding a budget raises a program-limit error.

### Circuit Durability and Backups

The circuit is stored outside ordinary SQL tables. `pg_dump` and logical replication carry tokens but do not preserve the circuit. A consistent physical backup must include all four store files, taken with the server stopped or through a whole-data-directory filesystem snapshot. Machine crashes can lose recently committed gates unless `provsql.store_synchronous_commit` is enabled; missing gates can be read as independent inputs with probability 1. Queries can write circuit gates even inside read-only transactions, and the store is not fully transaction-isolated.

On PostgreSQL 15+, `provsql.store_wal_logging` requires synchronous store commits and a fresh base backup for existing replicas. Standbys then refuse circuit-writing provenance queries. Keep this option off on storage-layer WAL forks listed by upstream, including Aurora, Neon, AlloyDB and HorizonDB. Major-version PostgreSQL upgrades need separate store-file migration. `provsql.check_store()` checks consistency; `provsql.circuit_cleanup()` needs exclusive use of the database and retains only tokens reachable from the documented table-column types.
