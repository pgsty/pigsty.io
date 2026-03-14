---
title: "aggs_for_vecs"
linkTitle: "aggs_for_vecs"
description: "Aggregate functions for array inputs"
weight: 4740
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pjungwir/aggs_for_vecs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pjungwir/aggs_for_vecs</div>
    <div class="ext-card__desc">https://github.com/pjungwir/aggs_for_vecs</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/aggs_for_vecs-1.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">aggs_for_vecs-1.4.1.tar.gz</div>
    <div class="ext-card__desc">aggs_for_vecs-1.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`aggs_for_vecs`**](/ext/e/aggs_for_vecs) | `1.4.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4740  | [**`aggs_for_vecs`**](/ext/e/aggs_for_vecs) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`first_last_agg`](/ext/e/first_last_agg) [`arraymath`](/ext/e/arraymath) [`floatvec`](/ext/e/floatvec) [`vector`](/ext/e/vector) [`topn`](/ext/e/topn) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `aggs_for_vecs` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `aggs_for_vecs_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-aggs-for-vecs` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
@ el8.x86_64 18 aggs_for_vecs_18 aggs_for_vecs_18-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_vecs_18-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 aggs_for_vecs_18 aggs_for_vecs_18-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_vecs_18-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 aggs_for_vecs_18 aggs_for_vecs_18-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 42.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_vecs_18-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 aggs_for_vecs_18 aggs_for_vecs_18-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 43.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_vecs_18-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 aggs_for_vecs_18 aggs_for_vecs_18-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 42.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_vecs_18-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 aggs_for_vecs_18 aggs_for_vecs_18-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 43.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_vecs_18-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 82.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 81.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 82.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 88.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 89.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 84.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-aggs-for-vecs postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 86.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-18-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 aggs_for_vecs_17 aggs_for_vecs_17-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_vecs_17-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 aggs_for_vecs_17 aggs_for_vecs_17-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_vecs_17-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 aggs_for_vecs_17 aggs_for_vecs_17-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_vecs_17-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 aggs_for_vecs_17 aggs_for_vecs_17-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_vecs_17-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 aggs_for_vecs_17 aggs_for_vecs_17-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 42.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_vecs_17-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 aggs_for_vecs_17 aggs_for_vecs_17-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_vecs_17-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 82.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 81.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 82.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 93.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 93.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 84.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-aggs-for-vecs postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 86.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-17-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 aggs_for_vecs_16 aggs_for_vecs_16-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 43.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_vecs_16-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 aggs_for_vecs_16 aggs_for_vecs_16-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 43.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_vecs_16-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 aggs_for_vecs_16 aggs_for_vecs_16-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_vecs_16-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 aggs_for_vecs_16 aggs_for_vecs_16-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_vecs_16-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 aggs_for_vecs_16 aggs_for_vecs_16-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 42.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_vecs_16-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 aggs_for_vecs_16 aggs_for_vecs_16-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_vecs_16-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 82.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 81.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 82.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 93.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 93.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 85.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-aggs-for-vecs postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 86.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-16-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 aggs_for_vecs_15 aggs_for_vecs_15-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 44.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_vecs_15-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 aggs_for_vecs_15 aggs_for_vecs_15-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_vecs_15-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 aggs_for_vecs_15 aggs_for_vecs_15-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 42.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_vecs_15-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 aggs_for_vecs_15 aggs_for_vecs_15-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_vecs_15-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 aggs_for_vecs_15 aggs_for_vecs_15-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_vecs_15-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 aggs_for_vecs_15 aggs_for_vecs_15-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_vecs_15-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 82.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 82.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 82.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 93.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 93.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 85.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-aggs-for-vecs postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 86.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-15-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 aggs_for_vecs_14 aggs_for_vecs_14-1.4.1-1PIGSTY.el8.x86_64.rpm pigsty 1.4.1 44.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_vecs_14-1.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 aggs_for_vecs_14 aggs_for_vecs_14-1.4.1-1PIGSTY.el8.aarch64.rpm pigsty 1.4.1 43.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_vecs_14-1.4.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 aggs_for_vecs_14 aggs_for_vecs_14-1.4.1-1PIGSTY.el9.x86_64.rpm pigsty 1.4.1 42.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_vecs_14-1.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 aggs_for_vecs_14 aggs_for_vecs_14-1.4.1-1PIGSTY.el9.aarch64.rpm pigsty 1.4.1 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_vecs_14-1.4.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 aggs_for_vecs_14 aggs_for_vecs_14-1.4.1-1PIGSTY.el10.x86_64.rpm pigsty 1.4.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_vecs_14-1.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 aggs_for_vecs_14 aggs_for_vecs_14-1.4.1-1PIGSTY.el10.aarch64.rpm pigsty 1.4.1 43.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_vecs_14-1.4.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 82.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 82.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 81.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 82.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 93.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 93.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 85.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-aggs-for-vecs postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 86.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-vecs/postgresql-14-aggs-for-vecs_1.4.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `aggs_for_vecs` using `pig build`:

```bash
pig build pkg aggs_for_vecs         # build RPM / DEB packages
```


## Install

You can install `aggs_for_vecs` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install aggs_for_vecs;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y aggs_for_vecs -v 18  # PG 18
pig ext install -y aggs_for_vecs -v 17  # PG 17
pig ext install -y aggs_for_vecs -v 16  # PG 16
pig ext install -y aggs_for_vecs -v 15  # PG 15
pig ext install -y aggs_for_vecs -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y aggs_for_vecs_18       # PG 18
dnf install -y aggs_for_vecs_17       # PG 17
dnf install -y aggs_for_vecs_16       # PG 16
dnf install -y aggs_for_vecs_15       # PG 15
dnf install -y aggs_for_vecs_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-aggs-for-vecs   # PG 18
apt install -y postgresql-17-aggs-for-vecs   # PG 17
apt install -y postgresql-16-aggs-for-vecs   # PG 16
apt install -y postgresql-15-aggs-for-vecs   # PG 15
apt install -y postgresql-14-aggs-for-vecs   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION aggs_for_vecs;
```



## Usage

> [aggs_for_vecs: aggregate functions for arrays (vector/row-based)](https://github.com/pjungwir/aggs_for_vecs)

Provides aggregate functions that operate on arrays as vectors, computing position-wise statistics across multiple rows. Supports `SMALLINT`, `INTEGER`, `BIGINT`, `REAL`, and `DOUBLE PRECISION`.

```sql
CREATE EXTENSION aggs_for_vecs;
```

### Aggregate Functions

| Function | Description |
|---|---|
| `vec_to_count(anyarray)` | Count of non-nulls in each position |
| `vec_to_sum(anyarray)` | Sum in each position |
| `vec_to_min(anyarray)` | Minimum in each position |
| `vec_to_max(anyarray)` | Maximum in each position |
| `vec_to_mean(anyarray)` | Average in each position (returns `FLOAT[]`) |
| `vec_to_weighted_mean(values, weights)` | Weighted average in each position |
| `vec_to_var_samp(anyarray)` | Sample variance in each position |
| `vec_to_first(anyarray)` | First non-null in each position (use with ORDER BY) |
| `vec_to_last(anyarray)` | Last non-null in each position (use with ORDER BY) |
| `hist_2d(x, y, ...)` | 2-D histogram |
| `hist_md(vals, indexes, ...)` | N-dimensional histogram |

### Non-Aggregate Functions

| Function | Description |
|---|---|
| `vec_add(l, r)` | Element-wise addition |
| `vec_sub(l, r)` | Element-wise subtraction |
| `vec_mul(l, r)` | Element-wise multiplication |
| `vec_div(l, r)` | Element-wise division |
| `vec_elements(array, indexes)` | Select elements at given indexes |
| `pad_vec(array, length)` | Extend array to given length with NULLs |
| `vec_coalesce(array, default)` | Replace NULLs with default |
| `vec_trim_scale(numeric[])` | Trim trailing zeros from NUMERIC elements |
| `vec_without_outliers(vals, mins, maxs)` | Replace outliers with NULL |

### Examples

```sql
-- Position-wise minimum across rows
SELECT vec_to_min(vals) FROM (VALUES
  (ARRAY[1,2,3,4]),
  (ARRAY[5,0,-5,0]),
  (ARRAY[3,6,0,9])
) AS t(vals);
-- {1,0,-5,0}

-- Position-wise average
SELECT vec_to_mean(vals) FROM my_table;
```
