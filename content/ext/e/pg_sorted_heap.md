---
title: "pg_sorted_heap"
linkTitle: "pg_sorted_heap"
description: "Sorted heap table AM with zone map scan pruning and built-in vector search"
weight: 2550
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/skuznetsov/pg_sorted_heap">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">skuznetsov/pg_sorted_heap</div>
    <div class="ext-card__desc">https://github.com/skuznetsov/pg_sorted_heap</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_sorted_heap-0.14.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_sorted_heap-0.14.0.tar.gz</div>
    <div class="ext-card__desc">pg_sorted_heap-0.14.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_sorted_heap`**](/ext/e/pg_sorted_heap) | `0.14.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2550  | [**`pg_sorted_heap`**](/ext/e/pg_sorted_heap) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`storage_engine`](/ext/e/storage_engine) [`pg_ivm`](/ext/e/pg_ivm) [`pgvector`](/ext/e/pgvector) [`vchord`](/ext/e/vchord) [`pg_search`](/ext/e/pg_search) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> sorted_hnsw.shared_cache requires shared_preload_libraries=pg_sorted_heap.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.14.0` | {{< pgvers "16,17,18" >}} | `pg_sorted_heap` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.14.0` | {{< pgvers "16,17,18" >}} | `pg_sorted_heap_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.14.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-sorted-heap` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | AVAIL PIGSTY 0.14.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_sorted_heap_18 pg_sorted_heap_18-0.14.0-1PIGSTY.el8.x86_64.rpm pigsty 0.14.0 216.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sorted_heap_18-0.14.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_sorted_heap_18 pg_sorted_heap_18-0.14.0-1PIGSTY.el8.aarch64.rpm pigsty 0.14.0 200.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sorted_heap_18-0.14.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_sorted_heap_18 pg_sorted_heap_18-0.14.0-1PIGSTY.el9.x86_64.rpm pigsty 0.14.0 208.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sorted_heap_18-0.14.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_sorted_heap_18 pg_sorted_heap_18-0.14.0-1PIGSTY.el9.aarch64.rpm pigsty 0.14.0 199.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sorted_heap_18-0.14.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_sorted_heap_18 pg_sorted_heap_18-0.14.0-1PIGSTY.el10.x86_64.rpm pigsty 0.14.0 213.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sorted_heap_18-0.14.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_sorted_heap_18 pg_sorted_heap_18-0.14.0-1PIGSTY.el10.aarch64.rpm pigsty 0.14.0 206.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sorted_heap_18-0.14.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_amd64.deb pigsty 0.14.0 724.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_arm64.deb pigsty 0.14.0 711.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~trixie_amd64.deb pigsty 0.14.0 726.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~trixie_arm64.deb pigsty 0.14.0 715.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~jammy_amd64.deb pigsty 0.14.0 758.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~jammy_arm64.deb pigsty 0.14.0 754.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~noble_amd64.deb pigsty 0.14.0 744.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~noble_arm64.deb pigsty 0.14.0 741.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~resolute_amd64.deb pigsty 0.14.0 746.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-sorted-heap postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~resolute_arm64.deb pigsty 0.14.0 736.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-sorted-heap/postgresql-18-pg-sorted-heap_0.14.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_sorted_heap_17 pg_sorted_heap_17-0.14.0-1PIGSTY.el8.x86_64.rpm pigsty 0.14.0 216.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sorted_heap_17-0.14.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_sorted_heap_17 pg_sorted_heap_17-0.14.0-1PIGSTY.el8.aarch64.rpm pigsty 0.14.0 200.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sorted_heap_17-0.14.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_sorted_heap_17 pg_sorted_heap_17-0.14.0-1PIGSTY.el9.x86_64.rpm pigsty 0.14.0 208.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sorted_heap_17-0.14.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_sorted_heap_17 pg_sorted_heap_17-0.14.0-1PIGSTY.el9.aarch64.rpm pigsty 0.14.0 199.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sorted_heap_17-0.14.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_sorted_heap_17 pg_sorted_heap_17-0.14.0-1PIGSTY.el10.x86_64.rpm pigsty 0.14.0 213.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sorted_heap_17-0.14.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_sorted_heap_17 pg_sorted_heap_17-0.14.0-1PIGSTY.el10.aarch64.rpm pigsty 0.14.0 206.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sorted_heap_17-0.14.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_amd64.deb pigsty 0.14.0 723.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_arm64.deb pigsty 0.14.0 710.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~trixie_amd64.deb pigsty 0.14.0 725.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~trixie_arm64.deb pigsty 0.14.0 714.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~jammy_amd64.deb pigsty 0.14.0 805.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~jammy_arm64.deb pigsty 0.14.0 802.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~noble_amd64.deb pigsty 0.14.0 743.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~noble_arm64.deb pigsty 0.14.0 741.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~resolute_amd64.deb pigsty 0.14.0 745.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-sorted-heap postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~resolute_arm64.deb pigsty 0.14.0 736.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-sorted-heap/postgresql-17-pg-sorted-heap_0.14.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_sorted_heap_16 pg_sorted_heap_16-0.14.0-1PIGSTY.el8.x86_64.rpm pigsty 0.14.0 217.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_sorted_heap_16-0.14.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_sorted_heap_16 pg_sorted_heap_16-0.14.0-1PIGSTY.el8.aarch64.rpm pigsty 0.14.0 200.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_sorted_heap_16-0.14.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_sorted_heap_16 pg_sorted_heap_16-0.14.0-1PIGSTY.el9.x86_64.rpm pigsty 0.14.0 208.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_sorted_heap_16-0.14.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_sorted_heap_16 pg_sorted_heap_16-0.14.0-1PIGSTY.el9.aarch64.rpm pigsty 0.14.0 199.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_sorted_heap_16-0.14.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_sorted_heap_16 pg_sorted_heap_16-0.14.0-1PIGSTY.el10.x86_64.rpm pigsty 0.14.0 213.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_sorted_heap_16-0.14.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_sorted_heap_16 pg_sorted_heap_16-0.14.0-1PIGSTY.el10.aarch64.rpm pigsty 0.14.0 206.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_sorted_heap_16-0.14.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_amd64.deb pigsty 0.14.0 723.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_arm64.deb pigsty 0.14.0 711.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~trixie_amd64.deb pigsty 0.14.0 725.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~trixie_arm64.deb pigsty 0.14.0 714.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~jammy_amd64.deb pigsty 0.14.0 802.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~jammy_arm64.deb pigsty 0.14.0 798.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~noble_amd64.deb pigsty 0.14.0 743.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~noble_arm64.deb pigsty 0.14.0 741.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~resolute_amd64.deb pigsty 0.14.0 745.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-sorted-heap postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~resolute_arm64.deb pigsty 0.14.0 735.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-sorted-heap/postgresql-16-pg-sorted-heap_0.14.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_sorted_heap` using `pig build`:

```bash
pig build pkg pg_sorted_heap         # build RPM / DEB packages
```


## Install

You can install `pg_sorted_heap` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_sorted_heap;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_sorted_heap -v 18  # PG 18
pig ext install -y pg_sorted_heap -v 17  # PG 17
pig ext install -y pg_sorted_heap -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_sorted_heap_18       # PG 18
dnf install -y pg_sorted_heap_17       # PG 17
dnf install -y pg_sorted_heap_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-sorted-heap   # PG 18
apt install -y postgresql-17-pg-sorted-heap   # PG 17
apt install -y postgresql-16-pg-sorted-heap   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_sorted_heap';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_sorted_heap;
```

## Usage

Sources: [pg_sorted_heap README](https://github.com/skuznetsov/pg_sorted_heap), [stable API](https://github.com/skuznetsov/pg_sorted_heap/blob/main/docs/api-stable.md), [SQL API](https://github.com/skuznetsov/pg_sorted_heap/blob/main/docs/api.md), [control file](https://github.com/skuznetsov/pg_sorted_heap/blob/main/pg_sorted_heap.control).

`pg_sorted_heap` adds the `sorted_heap` table access method, per-page zone-map pruning, maintenance helpers, built-in `svec`/`hsvec` vector types, a planner-integrated `sorted_hnsw` index AM, and stable GraphRAG wrappers. Upstream documents PostgreSQL 16, 17, and 18 support for the current release surface.

### Sorted Heap Tables

Use `USING sorted_heap` on tables with a primary key. Bulk loads are sorted by primary key on the COPY path, and compaction globally sorts existing rows while rebuilding the zone map:

```sql
CREATE EXTENSION pg_sorted_heap;

CREATE TABLE events (
  ts timestamptz,
  src text,
  data jsonb,
  PRIMARY KEY (ts, src)
) USING sorted_heap;

COPY events FROM '/path/to/events.csv';

SELECT sorted_heap_compact('events'::regclass);

EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM events
WHERE ts BETWEEN '2026-01-01' AND '2026-01-02'
  AND src = 'sensor-42';
```

The README describes planner-injected `SortedHeapScan` paths for primary-key predicates and zone-map pruning at the heap-block level.

### Maintenance And Observability

Stable maintenance functions include:

```sql
SELECT sorted_heap_compact('events'::regclass);
CALL sorted_heap_compact_online('events'::regclass);

SELECT sorted_heap_merge('events'::regclass);
CALL sorted_heap_merge_online('events'::regclass);

SELECT sorted_heap_rebuild_zonemap('events'::regclass);
SELECT sorted_heap_zonemap_stats('events'::regclass);
```

Partition helpers operate on concrete sorted-heap leaves under a parent:

```sql
SELECT * FROM sorted_heap_partition_status('events_parent'::regclass);
SELECT * FROM sorted_heap_partition_maintenance_plan('events_parent'::regclass, 'compact');
SELECT * FROM sorted_heap_compact_partitions('events_parent'::regclass);
```

### Vector Search

The stable vector API includes `svec(dim)` for float32 vectors, `hsvec(dim)` for float16 vectors, and the `sorted_hnsw` index AM:

```sql
CREATE TABLE documents (
  id bigserial PRIMARY KEY,
  embedding svec(384),
  content text
);

CREATE INDEX documents_embedding_idx
ON documents USING sorted_hnsw (embedding)
WITH (m = 16, ef_construction = 200);

SET sorted_hnsw.ef_search = 96;

SELECT id, content
FROM documents
ORDER BY embedding <=> '[0.1,0.2,0.3]'::svec
LIMIT 10;
```

For compact base-table storage, use `hsvec` and the matching operator class:

```sql
CREATE TABLE documents_compact (
  id bigserial PRIMARY KEY,
  embedding hsvec(384),
  content text
);

CREATE INDEX documents_compact_embedding_idx
ON documents_compact USING sorted_hnsw (embedding hsvec_cosine_ops)
WITH (m = 16, ef_construction = 200);
```

The shared decoded graph cache is controlled by `sorted_hnsw.shared_cache`. Upstream examples note that using it requires preloading the extension:

```conf
shared_preload_libraries = 'pg_sorted_heap'
```

```sql
SET sorted_hnsw.shared_cache = on;
```

### GraphRAG

The stable fact-shaped GraphRAG entry point expects facts clustered by `(entity_id, relation_id, target_id)` or a registered alias mapping:

```sql
CREATE TABLE facts (
  entity_id int4,
  relation_id int2,
  target_id int4,
  embedding svec(384),
  payload text,
  PRIMARY KEY (entity_id, relation_id, target_id)
) USING sorted_heap;

CREATE INDEX facts_embedding_idx
ON facts USING sorted_hnsw (embedding)
WITH (m = 24, ef_construction = 200);

SET sorted_hnsw.ef_search = 128;

SELECT *
FROM sorted_heap_graph_rag(
  'facts'::regclass,
  '[0.1,0.2,0.3]'::svec,
  relation_path := ARRAY[1, 2],
  ann_k := 64,
  top_k := 10,
  score_mode := 'path'
);
```

Register alternate fact column names once:

```sql
SELECT sorted_heap_graph_register(
  'facts_alias'::regclass,
  entity_column := 'src_id',
  relation_column := 'edge_type',
  target_column := 'dst_id',
  embedding_column := 'vec',
  payload_column := 'body'
);
```

For routed or tenant-sharded fact tables, use `sorted_heap_graph_route(...)` and inspect routing with `sorted_heap_graph_route_plan(...)`.

### Stable GUCs

- `sorted_heap.enable_scan_pruning`: enable sorted-heap custom scan pruning; default `on`.
- `sorted_heap.vacuum_rebuild_zonemap`: rebuild zone maps during `VACUUM`; default `off`.
- `sorted_heap.lazy_update`: defer eager zone-map update maintenance; default `off`.
- `sorted_hnsw.ef_search`: runtime HNSW search breadth; default `64`.
- `sorted_hnsw.shared_cache`: shared decoded graph cache when preloaded; default `on`.
- `sorted_hnsw.sq8`: SQ8 decoded cache representation; default `on`.
- `sorted_hnsw.build_sq8`: low-memory index build mode; default `off`.

### Caveats

- `sorted_heap.lazy_update = on` trades scan pruning for faster update-heavy workloads until compaction or merge restores pruning.
- `sorted_hnsw.shared_cache` should be used with `shared_preload_libraries = 'pg_sorted_heap'`.
- Planner-integrated `sorted_hnsw` ordered scans require `LIMIT`; the SQL API says they are not chosen when there is no limit or when `LIMIT > sorted_hnsw.ef_search`.
- The lower-level GraphRAG and legacy/manual ANN helpers remain documented, but the stable application-facing API is the compact surface in `docs/api-stable.md`.
