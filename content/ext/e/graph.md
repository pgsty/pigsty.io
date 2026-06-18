---
title: "graph"
linkTitle: "graph"
description: "Graph database capabilities for PostgreSQL"
weight: 2630
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/evokoa/pggraph">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">evokoa/pggraph</div>
    <div class="ext-card__desc">https://github.com/evokoa/pggraph</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pggraph-0.1.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pggraph-0.1.7.tar.gz</div>
    <div class="ext-card__desc">pggraph-0.1.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pggraph`**](/ext/e/graph) | `0.1.7` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2630  | [**`graph`**](/ext/e/graph) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`agtype`](/ext/e/agtype) [`pg_graphql`](/ext/e/pg_graphql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGXN distribution and package are pggraph; installed extension name is graph.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.7` | {{< pgvers "14,15,16,17,18" >}} | `pggraph` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.7` | {{< pgvers "14,15,16,17,18" >}} | `pggraph_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.7` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pggraph` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 | AVAIL PIGSTY 0.1.7 1 |
@ el8.x86_64 18 pggraph_18 pggraph_18-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pggraph_18-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pggraph_18 pggraph_18-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pggraph_18-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pggraph_18 pggraph_18-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pggraph_18-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pggraph_18 pggraph_18-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pggraph_18-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pggraph_18 pggraph_18-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pggraph_18-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pggraph_18 pggraph_18-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pggraph_18-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~noble_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~noble_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pggraph postgresql-18-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-18-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pggraph_17 pggraph_17-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pggraph_17-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pggraph_17 pggraph_17-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pggraph_17-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pggraph_17 pggraph_17-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pggraph_17-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pggraph_17 pggraph_17-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pggraph_17-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pggraph_17 pggraph_17-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pggraph_17-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pggraph_17 pggraph_17-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pggraph_17-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~noble_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~noble_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pggraph postgresql-17-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-17-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pggraph_16 pggraph_16-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pggraph_16-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pggraph_16 pggraph_16-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pggraph_16-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pggraph_16 pggraph_16-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pggraph_16-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pggraph_16 pggraph_16-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pggraph_16-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pggraph_16 pggraph_16-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pggraph_16-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pggraph_16 pggraph_16-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pggraph_16-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~noble_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~noble_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pggraph postgresql-16-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-16-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pggraph_15 pggraph_15-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pggraph_15-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pggraph_15 pggraph_15-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pggraph_15-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pggraph_15 pggraph_15-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pggraph_15-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pggraph_15 pggraph_15-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pggraph_15-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pggraph_15 pggraph_15-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pggraph_15-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pggraph_15 pggraph_15-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pggraph_15-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~noble_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~noble_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pggraph postgresql-15-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb pigsty 0.1.7 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-15-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pggraph_14 pggraph_14-0.1.7-1PIGSTY.el8.x86_64.rpm pigsty 0.1.7 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pggraph_14-0.1.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pggraph_14 pggraph_14-0.1.7-1PIGSTY.el8.aarch64.rpm pigsty 0.1.7 2.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pggraph_14-0.1.7-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pggraph_14 pggraph_14-0.1.7-1PIGSTY.el9.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pggraph_14-0.1.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pggraph_14 pggraph_14-0.1.7-1PIGSTY.el9.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pggraph_14-0.1.7-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pggraph_14 pggraph_14-0.1.7-1PIGSTY.el10.x86_64.rpm pigsty 0.1.7 3.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pggraph_14-0.1.7-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pggraph_14 pggraph_14-0.1.7-1PIGSTY.el10.aarch64.rpm pigsty 0.1.7 2.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pggraph_14-0.1.7-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb pigsty 0.1.7 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb pigsty 0.1.7 2.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb pigsty 0.1.7 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~noble_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~noble_arm64.deb pigsty 0.1.7 2.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb pigsty 0.1.7 2.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pggraph postgresql-14-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb pigsty 0.1.7 2.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pggraph/postgresql-14-pggraph_0.1.7-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pggraph` using `pig build`:

```bash
pig build pkg pggraph         # build RPM / DEB packages
```


## Install

You can install `pggraph` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pggraph;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pggraph -v 18  # PG 18
pig ext install -y pggraph -v 17  # PG 17
pig ext install -y pggraph -v 16  # PG 16
pig ext install -y pggraph -v 15  # PG 15
pig ext install -y pggraph -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pggraph_18       # PG 18
dnf install -y pggraph_17       # PG 17
dnf install -y pggraph_16       # PG 16
dnf install -y pggraph_15       # PG 15
dnf install -y pggraph_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pggraph   # PG 18
apt install -y postgresql-17-pggraph   # PG 17
apt install -y postgresql-16-pggraph   # PG 16
apt install -y postgresql-15-pggraph   # PG 15
apt install -y postgresql-14-pggraph   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION graph;
```

Source: [pgGraph v0.1.7 README](https://github.com/Evokoa/pgGraph/blob/v0.1.7/README.md), [Quickstart](https://github.com/Evokoa/pgGraph/blob/v0.1.7/docs/quickstart.mdx), [SQL API Reference](https://github.com/Evokoa/pgGraph/blob/v0.1.7/docs/user_guide/api-reference.mdx), [Schema Registration](https://github.com/Evokoa/pgGraph/blob/v0.1.7/docs/user_guide/schema-registration.mdx), [Configuration](https://github.com/Evokoa/pgGraph/blob/v0.1.7/docs/user_guide/configuration.mdx).

## Usage

`pggraph` is the package and PGXN distribution name, but the installed PostgreSQL extension is `graph`. The extension builds a derived graph index from ordinary PostgreSQL tables, keeps those tables as the source of truth, and exposes graph search, traversal, GQL-style pattern reads, and path functions through the `graph` schema.

The upstream project labels v0.1.7 as early alpha. Use it first in a disposable or development database and rebuild the graph from source tables instead of treating the generated graph artifact as authoritative data.

### Basic Graph Build

```sql
CREATE EXTENSION IF NOT EXISTS graph;
SELECT graph.reset();

CREATE TABLE companies (
  id   text PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE people (
  id         text PRIMARY KEY,
  name       text NOT NULL,
  company_id text REFERENCES companies(id)
);

INSERT INTO companies VALUES
  ('c1', 'Acme Bank'),
  ('c2', 'Northwind Trading');

INSERT INTO people VALUES
  ('p1', 'Alice', 'c1'),
  ('p2', 'Bob', 'c1'),
  ('p3', 'Carol', 'c2');

SELECT * FROM graph.auto_discover('public');

SELECT node_count, edge_count, edge_types
FROM graph.status();
```

`graph.auto_discover('public')` scans primary keys and foreign keys in the schema, registers the discovered source tables and edges, then builds the graph. For production schemas, prefer explicit registration so labels, search columns, weights, and tenant behavior are intentional.

### Manual Registration

```sql
SELECT graph.reset();

SELECT graph.add_table(
  table_name := 'public.people'::regclass,
  id_column  := 'id',
  columns    := ARRAY['name']
);

SELECT graph.add_table(
  table_name := 'public.companies'::regclass,
  id_column  := 'id',
  columns    := ARRAY['name']
);

SELECT graph.add_edge(
  from_table    := 'public.people'::regclass,
  from_column   := 'company_id',
  to_table      := 'public.companies'::regclass,
  to_column     := 'id',
  label         := 'works_at',
  bidirectional := true
);

SELECT * FROM graph.build();
```

The node identifier must match a primary key or a unique `NOT NULL` index. `columns` controls the source-table properties available to search and GQL. Traversal filter pushdown uses separate `graph.add_filter_column()` registrations.

### Search, Traversal, and Paths

```sql
SELECT node_table_name, node_id, node
FROM graph.search(
  property_key  := 'name',
  property_value := 'Alice',
  table_filter  := 'public.people'::regclass,
  mode          := 'exact',
  hydrate       := true
);

SELECT depth, node_table_name, node_id, edge_path
FROM graph.traverse(
  'public.people'::regclass,
  'p1',
  2,
  hydrate := false
);

SELECT step, node_table_name, node_id, edge_label
FROM graph.shortest_path(
  'public.people'::regclass,
  'p1',
  'public.companies'::regclass,
  'c1',
  hydrate := false
);
```

`hydrate := false` returns compact graph coordinates. With hydration enabled, source-row visibility is still governed by PostgreSQL ACLs and RLS, and stale coordinates fail closed rather than fabricating rows.

### GQL Queries

```sql
SELECT row
FROM graph.gql(
  'MATCH (p:people)-[:works_at]->(c:companies)
   WHERE p.name = $name
   RETURN p.id AS person_id, c.name AS company
   ORDER BY company',
  params  := '{"name":"Alice"}'::jsonb,
  hydrate := true
);
```

`graph.gql()` returns one `jsonb` object per SQL row. Node labels map to registered table names and relationship types map to registered edge labels. The supported GQL/openCypher subset covers common reads, bounded paths, selected aggregates, and narrow mapped writes when mutable overlays are enabled.

### Operational Caveats

- Rebuild with `graph.build()` after changing registrations or after source-table changes that are not covered by the selected sync mode.
- Dynamic edge labels use compact IDs; v0.1.7 supports up to 254 user-facing edge labels.
- Weighted shortest paths require a numeric `weight_column`; missing or NULL weights default to `1`.
- Important GUCs include `graph.max_nodes`, `graph.max_frontier`, `graph.memory_limit_mb`, `graph.query_freshness`, `graph.default_projection_mode`, and `graph.mutable_enabled`.
- Mapped GQL writes require `graph.default_projection_mode = 'mutable_overlay'` and `graph.mutable_enabled = on`.
