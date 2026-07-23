---
title: "pg_rrf"
linkTitle: "pg_rrf"
description: "Reciprocal rank fusion functions for hybrid search"
weight: 1845
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/yuiseki/pg_rrf">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">yuiseki/pg_rrf</div>
    <div class="ext-card__desc">https://github.com/yuiseki/pg_rrf</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_rrf-0.0.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_rrf-0.0.3.tar.gz</div>
    <div class="ext-card__desc">pg_rrf-0.0.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_rrf`**](/ext/e/pg_rrf) | `0.0.3` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1845  | [**`pg_rrf`**](/ext/e/pg_rrf) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_rrf` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_rrf_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-rrf` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 | AVAIL PIGSTY 0.0.3 1 |
@ el8.x86_64 18 pg_rrf_18 pg_rrf_18-0.0.3-3PIGSTY.el8.x86_64.rpm pigsty 0.0.3 856.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrf_18-0.0.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_rrf_18 pg_rrf_18-0.0.3-3PIGSTY.el8.aarch64.rpm pigsty 0.0.3 769.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrf_18-0.0.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_rrf_18 pg_rrf_18-0.0.3-3PIGSTY.el9.x86_64.rpm pigsty 0.0.3 867.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrf_18-0.0.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_rrf_18 pg_rrf_18-0.0.3-3PIGSTY.el9.aarch64.rpm pigsty 0.0.3 815.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrf_18-0.0.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_rrf_18 pg_rrf_18-0.0.3-3PIGSTY.el10.x86_64.rpm pigsty 0.0.3 867.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrf_18-0.0.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_rrf_18 pg_rrf_18-0.0.3-3PIGSTY.el10.aarch64.rpm pigsty 0.0.3 794.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrf_18-0.0.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb pigsty 0.0.3 682.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb pigsty 0.0.3 569.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb pigsty 0.0.3 682.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb pigsty 0.0.3 569.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb pigsty 0.0.3 760.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb pigsty 0.0.3 670.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb pigsty 0.0.3 752.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb pigsty 0.0.3 662.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb pigsty 0.0.3 747.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-rrf postgresql-18-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb pigsty 0.0.3 661.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-18-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_rrf_17 pg_rrf_17-0.0.3-3PIGSTY.el8.x86_64.rpm pigsty 0.0.3 854.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrf_17-0.0.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_rrf_17 pg_rrf_17-0.0.3-3PIGSTY.el8.aarch64.rpm pigsty 0.0.3 765.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrf_17-0.0.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_rrf_17 pg_rrf_17-0.0.3-3PIGSTY.el9.x86_64.rpm pigsty 0.0.3 863.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrf_17-0.0.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_rrf_17 pg_rrf_17-0.0.3-3PIGSTY.el9.aarch64.rpm pigsty 0.0.3 811.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrf_17-0.0.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_rrf_17 pg_rrf_17-0.0.3-3PIGSTY.el10.x86_64.rpm pigsty 0.0.3 863.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrf_17-0.0.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_rrf_17 pg_rrf_17-0.0.3-3PIGSTY.el10.aarch64.rpm pigsty 0.0.3 793.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrf_17-0.0.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb pigsty 0.0.3 681.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb pigsty 0.0.3 567.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb pigsty 0.0.3 680.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb pigsty 0.0.3 568.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb pigsty 0.0.3 757.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb pigsty 0.0.3 668.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb pigsty 0.0.3 749.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb pigsty 0.0.3 660.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb pigsty 0.0.3 745.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-rrf postgresql-17-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb pigsty 0.0.3 659.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-17-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_rrf_16 pg_rrf_16-0.0.3-3PIGSTY.el8.x86_64.rpm pigsty 0.0.3 853.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrf_16-0.0.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_rrf_16 pg_rrf_16-0.0.3-3PIGSTY.el8.aarch64.rpm pigsty 0.0.3 764.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrf_16-0.0.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_rrf_16 pg_rrf_16-0.0.3-3PIGSTY.el9.x86_64.rpm pigsty 0.0.3 862.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrf_16-0.0.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_rrf_16 pg_rrf_16-0.0.3-3PIGSTY.el9.aarch64.rpm pigsty 0.0.3 810.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrf_16-0.0.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_rrf_16 pg_rrf_16-0.0.3-3PIGSTY.el10.x86_64.rpm pigsty 0.0.3 863.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrf_16-0.0.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_rrf_16 pg_rrf_16-0.0.3-3PIGSTY.el10.aarch64.rpm pigsty 0.0.3 792.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrf_16-0.0.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb pigsty 0.0.3 680.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb pigsty 0.0.3 566.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb pigsty 0.0.3 681.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb pigsty 0.0.3 567.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb pigsty 0.0.3 758.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb pigsty 0.0.3 667.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb pigsty 0.0.3 749.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb pigsty 0.0.3 659.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb pigsty 0.0.3 745.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-rrf postgresql-16-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb pigsty 0.0.3 658.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-16-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_rrf_15 pg_rrf_15-0.0.3-3PIGSTY.el8.x86_64.rpm pigsty 0.0.3 842.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrf_15-0.0.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_rrf_15 pg_rrf_15-0.0.3-3PIGSTY.el8.aarch64.rpm pigsty 0.0.3 755.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrf_15-0.0.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_rrf_15 pg_rrf_15-0.0.3-3PIGSTY.el9.x86_64.rpm pigsty 0.0.3 852.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrf_15-0.0.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_rrf_15 pg_rrf_15-0.0.3-3PIGSTY.el9.aarch64.rpm pigsty 0.0.3 800.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrf_15-0.0.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_rrf_15 pg_rrf_15-0.0.3-3PIGSTY.el10.x86_64.rpm pigsty 0.0.3 852.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrf_15-0.0.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_rrf_15 pg_rrf_15-0.0.3-3PIGSTY.el10.aarch64.rpm pigsty 0.0.3 787.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrf_15-0.0.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb pigsty 0.0.3 673.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb pigsty 0.0.3 561.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb pigsty 0.0.3 673.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb pigsty 0.0.3 562.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb pigsty 0.0.3 748.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb pigsty 0.0.3 663.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb pigsty 0.0.3 741.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb pigsty 0.0.3 654.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb pigsty 0.0.3 737.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-rrf postgresql-15-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb pigsty 0.0.3 652.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-15-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_rrf_14 pg_rrf_14-0.0.3-3PIGSTY.el8.x86_64.rpm pigsty 0.0.3 840.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rrf_14-0.0.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_rrf_14 pg_rrf_14-0.0.3-3PIGSTY.el8.aarch64.rpm pigsty 0.0.3 753.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rrf_14-0.0.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_rrf_14 pg_rrf_14-0.0.3-3PIGSTY.el9.x86_64.rpm pigsty 0.0.3 849.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rrf_14-0.0.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_rrf_14 pg_rrf_14-0.0.3-3PIGSTY.el9.aarch64.rpm pigsty 0.0.3 798.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rrf_14-0.0.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_rrf_14 pg_rrf_14-0.0.3-3PIGSTY.el10.x86_64.rpm pigsty 0.0.3 849.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rrf_14-0.0.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_rrf_14 pg_rrf_14-0.0.3-3PIGSTY.el10.aarch64.rpm pigsty 0.0.3 785.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rrf_14-0.0.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb pigsty 0.0.3 672.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb pigsty 0.0.3 560.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb pigsty 0.0.3 671.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb pigsty 0.0.3 560.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb pigsty 0.0.3 745.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb pigsty 0.0.3 661.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb pigsty 0.0.3 739.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb pigsty 0.0.3 652.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb pigsty 0.0.3 735.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-rrf postgresql-14-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb pigsty 0.0.3 650.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-rrf/postgresql-14-pg-rrf_0.0.3-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_rrf` using `pig build`:

```bash
pig build pkg pg_rrf         # build RPM / DEB packages
```


## Install

You can install `pg_rrf` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_rrf;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_rrf -v 18  # PG 18
pig ext install -y pg_rrf -v 17  # PG 17
pig ext install -y pg_rrf -v 16  # PG 16
pig ext install -y pg_rrf -v 15  # PG 15
pig ext install -y pg_rrf -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_rrf_18       # PG 18
dnf install -y pg_rrf_17       # PG 17
dnf install -y pg_rrf_16       # PG 16
dnf install -y pg_rrf_15       # PG 15
dnf install -y pg_rrf_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-rrf   # PG 18
apt install -y postgresql-17-pg-rrf   # PG 17
apt install -y postgresql-16-pg-rrf   # PG 16
apt install -y postgresql-15-pg-rrf   # PG 15
apt install -y postgresql-14-pg-rrf   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_rrf;
```




## Usage
> Sources: [README](https://github.com/yuiseki/pg_rrf/blob/main/README.md), [v0.0.3 release](https://github.com/yuiseki/pg_rrf/releases/tag/v0.0.3)

`pg_rrf` provides Reciprocal Rank Fusion functions for hybrid search score fusion.
It is focused on combining ranked candidate lists without hand-written `FULL OUTER JOIN` / `COALESCE` plumbing.

### Core Functions

- `rrf(rank_a, rank_b, k)`
- `rrf3(rank_a, rank_b, rank_c, k)`
- `rrf_fuse(ids_a bigint[], ids_b bigint[], k int default 60)`
- `rrfn(ranks bigint[], k int)`

The `v0.0.3` release explicitly adds `rrfn` while keeping `rrf` and `rrf3` as compatibility wrappers. The README documents the same score behavior:

- missing ranks are ignored
- ranks `<= 0` are ignored
- `k <= 0` raises an error

### Example

```sql
CREATE EXTENSION pg_rrf;

SELECT rrf(1, 2, 60) AS rrf_12;
SELECT rrf3(1, 2, 3, 60) AS rrf_123;
SELECT rrfn(ARRAY[1, 2, 3], 60) AS rrfn_123;
SELECT *
FROM rrf_fuse(ARRAY[10, 20, 30], ARRAY[20, 40], 60)
ORDER BY score DESC;
```

### Hybrid Search Pattern

The upstream README shows `rrf_fuse` as a replacement for a manual fusion query:

```sql
WITH fused AS (
  SELECT *
  FROM rrf_fuse(
    ARRAY(SELECT id FROM docs ORDER BY bm25_score DESC LIMIT 100),
    ARRAY(SELECT id FROM docs ORDER BY embedding <=> :qvec LIMIT 100),
    60
  )
)
SELECT d.*, fused.score
FROM fused
JOIN docs d USING (id)
ORDER BY fused.score DESC
LIMIT 20;
```

### Notes

The README targets PostgreSQL 14-17 and documents Docker-based build and test flows. The extension surface remains intentionally small: score helpers plus `rrf_fuse` for the common two-list hybrid-search pattern.
