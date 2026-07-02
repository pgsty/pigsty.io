---
title: "aggs_for_arrays"
linkTitle: "aggs_for_arrays"
description: "Various functions for computing statistics on arrays of numbers"
weight: 4750
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pjungwir/aggs_for_arrays">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pjungwir/aggs_for_arrays</div>
    <div class="ext-card__desc">https://github.com/pjungwir/aggs_for_arrays</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/aggs_for_arrays-1.3.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">aggs_for_arrays-1.3.3.tar.gz</div>
    <div class="ext-card__desc">aggs_for_arrays-1.3.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`aggs_for_arrays`**](/ext/e/aggs_for_arrays) | `1.3.3` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4750  | [**`aggs_for_arrays`**](/ext/e/aggs_for_arrays) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`first_last_agg`](/ext/e/first_last_agg) [`arraymath`](/ext/e/arraymath) [`intarray`](/ext/e/intarray) [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.3` | {{< pgvers "18,17,16,15,14" >}} | `aggs_for_arrays` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.3` | {{< pgvers "18,17,16,15,14" >}} | `aggs_for_arrays_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-aggs-for-arrays` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
@ el8.x86_64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3.3 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_18-1.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3.3 30.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_18-1.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3.3 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_18-1.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3.3 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_18-1.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3.3 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_18-1.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3.3 33.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_18-1.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3.3 42.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3.3 46.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb pigsty 1.3.3 42.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb pigsty 1.3.3 47.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb pigsty 1.3.3 44.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb pigsty 1.3.3 48.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb pigsty 1.3.3 43.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb pigsty 1.3.3 49.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb pigsty 1.3.3 44.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3.3 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_17-1.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3.3 30.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_17-1.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3.3 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_17-1.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3.3 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_17-1.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3.3 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_17-1.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3.3 33.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_17-1.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3.3 42.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3.3 46.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb pigsty 1.3.3 42.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb pigsty 1.3.3 47.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb pigsty 1.3.3 45.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb pigsty 1.3.3 43.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb pigsty 1.3.3 49.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb pigsty 1.3.3 44.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb pigsty 1.3.3 49.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3.3 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_16-1.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3.3 30.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_16-1.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3.3 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_16-1.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3.3 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_16-1.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3.3 27.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_16-1.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3.3 33.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_16-1.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3.3 42.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3.3 46.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb pigsty 1.3.3 42.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb pigsty 1.3.3 47.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb pigsty 1.3.3 45.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb pigsty 1.3.3 43.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb pigsty 1.3.3 49.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb pigsty 1.3.3 44.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb pigsty 1.3.3 49.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3.3 27.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_15-1.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3.3 31.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_15-1.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3.3 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_15-1.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3.3 31.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_15-1.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3.3 27.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_15-1.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3.3 33.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_15-1.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3.3 42.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3.3 47.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb pigsty 1.3.3 43.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb pigsty 1.3.3 48.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb pigsty 1.3.3 45.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb pigsty 1.3.3 50.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb pigsty 1.3.3 43.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb pigsty 1.3.3 50.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb pigsty 1.3.3 44.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb pigsty 1.3.3 50.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 aggs_for_arrays_14 aggs_for_arrays_14-1.3.3-1PIGSTY.el8.x86_64.rpm pigsty 1.3.3 27.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_14-1.3.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 aggs_for_arrays_14 aggs_for_arrays_14-1.3.3-1PIGSTY.el8.aarch64.rpm pigsty 1.3.3 31.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_14-1.3.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 aggs_for_arrays_14 aggs_for_arrays_14-1.3.3-1PIGSTY.el9.x86_64.rpm pigsty 1.3.3 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_14-1.3.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 aggs_for_arrays_14 aggs_for_arrays_14-1.3.3-1PIGSTY.el9.aarch64.rpm pigsty 1.3.3 31.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_14-1.3.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 aggs_for_arrays_14 aggs_for_arrays_14-1.3.3-1PIGSTY.el10.x86_64.rpm pigsty 1.3.3 27.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_14-1.3.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 aggs_for_arrays_14 aggs_for_arrays_14-1.3.3-1PIGSTY.el10.aarch64.rpm pigsty 1.3.3 33.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_14-1.3.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3.3 42.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3.3 47.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb pigsty 1.3.3 43.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb pigsty 1.3.3 48.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb pigsty 1.3.3 45.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb pigsty 1.3.3 50.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb pigsty 1.3.3 43.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb pigsty 1.3.3 50.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb pigsty 1.3.3 44.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-aggs-for-arrays postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb pigsty 1.3.3 50.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-14-aggs-for-arrays_1.3.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `aggs_for_arrays` using `pig build`:

```bash
pig build pkg aggs_for_arrays         # build RPM / DEB packages
```


## Install

You can install `aggs_for_arrays` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install aggs_for_arrays;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y aggs_for_arrays -v 18  # PG 18
pig ext install -y aggs_for_arrays -v 17  # PG 17
pig ext install -y aggs_for_arrays -v 16  # PG 16
pig ext install -y aggs_for_arrays -v 15  # PG 15
pig ext install -y aggs_for_arrays -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y aggs_for_arrays_18       # PG 18
dnf install -y aggs_for_arrays_17       # PG 17
dnf install -y aggs_for_arrays_16       # PG 16
dnf install -y aggs_for_arrays_15       # PG 15
dnf install -y aggs_for_arrays_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-aggs-for-arrays   # PG 18
apt install -y postgresql-17-aggs-for-arrays   # PG 17
apt install -y postgresql-16-aggs-for-arrays   # PG 16
apt install -y postgresql-15-aggs-for-arrays   # PG 15
apt install -y postgresql-14-aggs-for-arrays   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION aggs_for_arrays;
```




## Usage

> [aggs_for_arrays: aggregate-like functions for single arrays (column-based)](https://github.com/pjungwir/aggs_for_arrays)

Provides functions that compute statistics on a single array input. Supports `SMALLINT`, `INTEGER`, `BIGINT`, `REAL`, and `DOUBLE PRECISION`.

```sql
CREATE EXTENSION aggs_for_arrays;
```

### Functions

| Function | Description |
|---|---|
| `array_to_hist(values T[], start T, width T, count INT)` | Compute histogram bucket counts |
| `array_to_hist_2d(x[], y[], ...)` | 2-D histogram |
| `array_to_mean(values T[])` | Mean of array elements |
| `array_to_median(values T[])` | Median (unsorted input OK) |
| `sorted_array_to_median(values T[])` | Median (pre-sorted input) |
| `array_to_mode(values T[])` | Mode of array elements |
| `sorted_array_to_mode(values T[])` | Mode (pre-sorted input) |
| `array_to_percentile(values T[], pct FLOAT)` | Percentile (0 to 1) |
| `sorted_array_to_percentile(values T[], pct FLOAT)` | Percentile (pre-sorted input) |
| `array_to_percentiles(values T[], pcts FLOAT[])` | Multiple percentiles |
| `sorted_array_to_percentiles(values T[], pcts FLOAT[])` | Multiple percentiles (pre-sorted) |
| `array_to_max(values T[])` | Maximum element |
| `array_to_min(values T[])` | Minimum element |
| `array_to_min_max(values T[])` | `{min, max}` tuple |
| `array_to_skewness(values T[])` | Skewness |
| `array_to_kurtosis(values T[])` | Kurtosis |

### Examples

```sql
-- Histogram with 10 buckets starting at 0, width 10
SELECT array_to_hist(ARRAY[5,15,25,35,45], 0, 10, 5);
-- {1,1,1,1,1}

-- Mean and median
SELECT array_to_mean(ARRAY[1,2,3,4,5]);   -- 3.0
SELECT array_to_median(ARRAY[1,2,3,4,5]); -- 3.0

-- Percentiles
SELECT array_to_percentile(ARRAY[1,2,3,4,5,6,7,8,9,10], 0.95);

-- Multiple percentiles at once
SELECT array_to_percentiles(ARRAY[1,2,3,4,5], ARRAY[0.25, 0.5, 0.75]);
```
