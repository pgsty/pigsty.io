---
title: "aggs_for_arrays"
linkTitle: "aggs_for_arrays"
description: "Various functions for computing statistics on arrays of numbers"
weight: 4760
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
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4760  | [**`aggs_for_arrays`**](/ext/e/aggs_for_arrays) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`intarray`](/ext/e/intarray) [`arraymath`](/ext/e/arraymath) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`floatvec`](/ext/e/floatvec) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.3` | {{< pgvers "19,18,17,16,15" >}} | `aggs_for_arrays` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.3` | {{< pgvers "19,18,17,16,15" >}} | `aggs_for_arrays_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.3` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-aggs-for-arrays` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 | AVAIL PIGSTY 1.3.3 1 |
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
@ el9.x86_64 19 aggs_for_arrays_19 aggs_for_arrays_19-1.3.3-1PGSTY.el9.x86_64.rpm pigsty 1.3.3 52.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_19-1.3.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 aggs_for_arrays_19 aggs_for_arrays_19-1.3.3-1PGSTY.el9.aarch64.rpm pigsty 1.3.3 56.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_19-1.3.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 aggs_for_arrays_19 aggs_for_arrays_19-1.3.3-1PGSTY.el10.x86_64.rpm pigsty 1.3.3 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_19-1.3.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 aggs_for_arrays_19 aggs_for_arrays_19-1.3.3-1PGSTY.el10.aarch64.rpm pigsty 1.3.3 59.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_19-1.3.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb pigsty 1.3.3 42.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb pigsty 1.3.3 46.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb pigsty 1.3.3 43.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb pigsty 1.3.3 47.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb pigsty 1.3.3 44.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb pigsty 1.3.3 48.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb pigsty 1.3.3 43.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb pigsty 1.3.3 44.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-aggs-for-arrays postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb pigsty 1.3.3 49.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-19-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PGSTY.el8.x86_64.rpm pigsty 1.3.3 52.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_18-1.3.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PGSTY.el8.aarch64.rpm pigsty 1.3.3 55.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_18-1.3.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PGSTY.el9.x86_64.rpm pigsty 1.3.3 52.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_18-1.3.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PGSTY.el9.aarch64.rpm pigsty 1.3.3 56.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_18-1.3.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PGSTY.el10.x86_64.rpm pigsty 1.3.3 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_18-1.3.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 aggs_for_arrays_18 aggs_for_arrays_18-1.3.3-1PGSTY.el10.aarch64.rpm pigsty 1.3.3 59.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_18-1.3.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb pigsty 1.3.3 42.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb pigsty 1.3.3 46.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb pigsty 1.3.3 43.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb pigsty 1.3.3 47.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb pigsty 1.3.3 44.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb pigsty 1.3.3 48.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb pigsty 1.3.3 43.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb pigsty 1.3.3 44.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-aggs-for-arrays postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb pigsty 1.3.3 49.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-18-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PGSTY.el8.x86_64.rpm pigsty 1.3.3 52.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_17-1.3.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PGSTY.el8.aarch64.rpm pigsty 1.3.3 55.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_17-1.3.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PGSTY.el9.x86_64.rpm pigsty 1.3.3 52.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_17-1.3.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PGSTY.el9.aarch64.rpm pigsty 1.3.3 56.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_17-1.3.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PGSTY.el10.x86_64.rpm pigsty 1.3.3 53.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_17-1.3.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 aggs_for_arrays_17 aggs_for_arrays_17-1.3.3-1PGSTY.el10.aarch64.rpm pigsty 1.3.3 59.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_17-1.3.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb pigsty 1.3.3 42.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb pigsty 1.3.3 47.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb pigsty 1.3.3 43.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb pigsty 1.3.3 48.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb pigsty 1.3.3 45.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb pigsty 1.3.3 49.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb pigsty 1.3.3 43.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb pigsty 1.3.3 44.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-aggs-for-arrays postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb pigsty 1.3.3 50.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-17-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PGSTY.el8.x86_64.rpm pigsty 1.3.3 52.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_16-1.3.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PGSTY.el8.aarch64.rpm pigsty 1.3.3 55.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_16-1.3.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PGSTY.el9.x86_64.rpm pigsty 1.3.3 52.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_16-1.3.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PGSTY.el9.aarch64.rpm pigsty 1.3.3 56.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_16-1.3.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PGSTY.el10.x86_64.rpm pigsty 1.3.3 53.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_16-1.3.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 aggs_for_arrays_16 aggs_for_arrays_16-1.3.3-1PGSTY.el10.aarch64.rpm pigsty 1.3.3 59.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_16-1.3.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb pigsty 1.3.3 42.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb pigsty 1.3.3 47.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb pigsty 1.3.3 43.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb pigsty 1.3.3 47.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb pigsty 1.3.3 45.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb pigsty 1.3.3 49.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb pigsty 1.3.3 43.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb pigsty 1.3.3 49.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb pigsty 1.3.3 44.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-aggs-for-arrays postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb pigsty 1.3.3 50.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-16-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PGSTY.el8.x86_64.rpm pigsty 1.3.3 52.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aggs_for_arrays_15-1.3.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PGSTY.el8.aarch64.rpm pigsty 1.3.3 55.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aggs_for_arrays_15-1.3.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PGSTY.el9.x86_64.rpm pigsty 1.3.3 52.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aggs_for_arrays_15-1.3.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PGSTY.el9.aarch64.rpm pigsty 1.3.3 57.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aggs_for_arrays_15-1.3.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PGSTY.el10.x86_64.rpm pigsty 1.3.3 54.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aggs_for_arrays_15-1.3.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 aggs_for_arrays_15 aggs_for_arrays_15-1.3.3-1PGSTY.el10.aarch64.rpm pigsty 1.3.3 59.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aggs_for_arrays_15-1.3.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb pigsty 1.3.3 42.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb pigsty 1.3.3 47.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb pigsty 1.3.3 43.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb pigsty 1.3.3 48.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb pigsty 1.3.3 45.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb pigsty 1.3.3 50.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb pigsty 1.3.3 43.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb pigsty 1.3.3 50.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb pigsty 1.3.3 44.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-aggs-for-arrays postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb pigsty 1.3.3 50.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/aggs-for-arrays/postgresql-15-aggs-for-arrays_1.3.3-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install aggs_for_arrays;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y aggs_for_arrays -v 19  # PG 19
pig ext install -y aggs_for_arrays -v 18  # PG 18
pig ext install -y aggs_for_arrays -v 17  # PG 17
pig ext install -y aggs_for_arrays -v 16  # PG 16
pig ext install -y aggs_for_arrays -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y aggs_for_arrays_19       # PG 19
dnf install -y aggs_for_arrays_18       # PG 18
dnf install -y aggs_for_arrays_17       # PG 17
dnf install -y aggs_for_arrays_16       # PG 16
dnf install -y aggs_for_arrays_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-aggs-for-arrays   # PG 19
apt install -y postgresql-18-aggs-for-arrays   # PG 18
apt install -y postgresql-17-aggs-for-arrays   # PG 17
apt install -y postgresql-16-aggs-for-arrays   # PG 16
apt install -y postgresql-15-aggs-for-arrays   # PG 15
```


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
{.wide .expand}

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
