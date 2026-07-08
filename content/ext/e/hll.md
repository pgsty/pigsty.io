---
title: "hll"
linkTitle: "hll"
description: "type for storing hyperloglog data"
weight: 2700
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/citusdata/postgresql-hll">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">citusdata/postgresql-hll</div>
    <div class="ext-card__desc">https://github.com/citusdata/postgresql-hll</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hll`**](/ext/e/hll) | `2.21` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2700  | [**`hll`**](/ext/e/hll) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`topn`](/ext/e/topn) [`count_distinct`](/ext/e/count_distinct) [`omnisketch`](/ext/e/omnisketch) [`bloom`](/ext/e/bloom) [`roaringbitmap`](/ext/e/roaringbitmap) [`ddsketch`](/ext/e/ddsketch) [`tdigest`](/ext/e/tdigest) [`citus`](/ext/e/citus) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.21` | {{< pgvers "18,17,16,15,14" >}} | `hll` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.21` | {{< pgvers "18,17,16,15,14" >}} | `hll_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.20` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-hll` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 4 | AVAIL PGDG 2.21 4 |
| el8.aarch64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 4 | AVAIL PGDG 2.21 4 |
| el9.x86_64 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 9 | AVAIL PGDG 2.21 8 |
| el9.aarch64 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 9 | AVAIL PGDG 2.21 9 |
| el10.x86_64 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 |
| el10.aarch64 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 8 | AVAIL PGDG 2.21 5 |
| d12.x86_64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| d12.aarch64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| d13.x86_64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| d13.aarch64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| u22.x86_64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| u22.aarch64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| u24.x86_64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| u24.aarch64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| u26.x86_64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
| u26.aarch64 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 | AVAIL PGDG 2.21 3 |
@ el8.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel8.10.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/hll_18-2.21-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel8.10.x86_64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/hll_18-2.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 hll_18 hll_18-2.19-1PGDG.rhel8.x86_64.rpm pgdg 2.19 42.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/hll_18-2.19-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel8.10.aarch64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/hll_18-2.21-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel8.10.aarch64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/hll_18-2.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 hll_18 hll_18-2.19-1PGDG.rhel8.aarch64.rpm pgdg 2.19 42.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/hll_18-2.19-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel9.8.x86_64.rpm pgdg 2.21 43.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.21-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel9.7.x86_64.rpm pgdg 2.21 43.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.21-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel9.6.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.21-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel9.8.x86_64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel9.7.x86_64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.20-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel9.6.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.20-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.19-1PGDG.rhel9.8.x86_64.rpm pgdg 2.19 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 hll_18 hll_18-2.19-1PGDG.rhel9.x86_64.rpm pgdg 2.19 42.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hll_18-2.19-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel9.8.aarch64.rpm pgdg 2.21 43.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.21-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel9.7.aarch64.rpm pgdg 2.21 43.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.21-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel9.6.aarch64.rpm pgdg 2.21 43.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.21-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel9.8.aarch64.rpm pgdg 2.20 42.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel9.7.aarch64.rpm pgdg 2.20 42.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.20-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel9.6.aarch64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.20-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.19-1PGDG.rhel9.8.aarch64.rpm pgdg 2.19 41.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 hll_18 hll_18-2.19-1PGDG.rhel9.aarch64.rpm pgdg 2.19 41.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hll_18-2.19-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel10.2.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.21-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel10.1.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.21-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.21-1PGDG.rhel10.0.x86_64.rpm pgdg 2.21 43.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.21-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel10.2.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel10.1.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.20-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.20-1PGDG.rhel10.0.x86_64.rpm pgdg 2.20 43.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.20-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.19-1PGDG.rhel10.2.x86_64.rpm pgdg 2.19 42.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 hll_18 hll_18-2.19-1PGDG.rhel10.x86_64.rpm pgdg 2.19 42.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hll_18-2.19-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel10.2.aarch64.rpm pgdg 2.21 42.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.21-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel10.1.aarch64.rpm pgdg 2.21 42.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.21-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.21-1PGDG.rhel10.0.aarch64.rpm pgdg 2.21 42.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.21-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel10.2.aarch64.rpm pgdg 2.20 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel10.1.aarch64.rpm pgdg 2.20 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.20-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.20-1PGDG.rhel10.0.aarch64.rpm pgdg 2.20 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.20-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.19-1PGDG.rhel10.2.aarch64.rpm pgdg 2.19 41.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 hll_18 hll_18-2.19-1PGDG.rhel10.aarch64.rpm pgdg 2.19 41.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hll_18-2.19-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg12+1_amd64.deb pgdg 2.21 78.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg12+1_amd64.deb pgdg 2.20 77.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg12+2_amd64.deb pgdg 2.19 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg12+2_amd64.deb
@ d12.aarch64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg12+1_arm64.deb pgdg 2.21 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg12+1_arm64.deb pgdg 2.20 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg12+2_arm64.deb pgdg 2.19 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg12+2_arm64.deb
@ d13.x86_64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg13+1_amd64.deb pgdg 2.21 78.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg13+1_amd64.deb pgdg 2.20 77.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg13+2_amd64.deb pgdg 2.19 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg13+2_amd64.deb
@ d13.aarch64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg13+1_arm64.deb pgdg 2.21 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg13+1_arm64.deb pgdg 2.20 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg13+2_arm64.deb pgdg 2.19 75.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg13+2_arm64.deb
@ u22.x86_64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg22.04+1_amd64.deb pgdg 2.21 78.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg22.04+1_amd64.deb pgdg 2.20 77.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg22.04+2_amd64.deb pgdg 2.19 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg22.04+2_amd64.deb
@ u22.aarch64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg22.04+1_arm64.deb pgdg 2.21 77.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg22.04+1_arm64.deb pgdg 2.20 76.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg22.04+2_arm64.deb pgdg 2.19 75.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg22.04+2_arm64.deb
@ u24.x86_64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg24.04+1_amd64.deb pgdg 2.21 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg24.04+1_amd64.deb pgdg 2.20 76.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg24.04+2_amd64.deb pgdg 2.19 75.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg24.04+2_amd64.deb
@ u24.aarch64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg24.04+1_arm64.deb pgdg 2.21 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg24.04+1_arm64.deb pgdg 2.20 74.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg24.04+2_arm64.deb pgdg 2.19 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg24.04+2_arm64.deb
@ u26.x86_64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg26.04+1_amd64.deb pgdg 2.21 76.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg26.04+1_amd64.deb pgdg 2.20 75.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg26.04+1_amd64.deb pgdg 2.19 75.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-hll postgresql-18-hll_2.21-1.pgdg26.04+1_arm64.deb pgdg 2.21 75.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.21-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-hll postgresql-18-hll_2.20-1.pgdg26.04+1_arm64.deb pgdg 2.20 74.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-hll postgresql-18-hll_2.19-2.pgdg26.04+1_arm64.deb pgdg 2.19 74.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-18-hll_2.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel8.10.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/hll_17-2.21-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel8.10.x86_64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/hll_17-2.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 hll_17 hll_17-2.18-2PGDG.rhel8.x86_64.rpm pgdg 2.18 41.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/hll_17-2.18-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel8.10.aarch64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/hll_17-2.21-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel8.10.aarch64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/hll_17-2.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 hll_17 hll_17-2.18-2PGDG.rhel8.aarch64.rpm pgdg 2.18 41.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/hll_17-2.18-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel9.8.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.21-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel9.7.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.21-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel9.6.x86_64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.21-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel9.8.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel9.7.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.20-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel9.6.x86_64.rpm pgdg 2.20 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.20-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.19-1PGDG.rhel9.8.x86_64.rpm pgdg 2.19 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 hll_17 hll_17-2.18-2PGDG.rhel9.x86_64.rpm pgdg 2.18 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hll_17-2.18-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel9.8.aarch64.rpm pgdg 2.21 43.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.21-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel9.7.aarch64.rpm pgdg 2.21 43.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.21-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel9.6.aarch64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.21-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel9.8.aarch64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel9.7.aarch64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.20-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel9.6.aarch64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.20-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.19-1PGDG.rhel9.8.aarch64.rpm pgdg 2.19 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 hll_17 hll_17-2.18-2PGDG.rhel9.aarch64.rpm pgdg 2.18 41.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hll_17-2.18-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel10.2.x86_64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.21-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel10.1.x86_64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.21-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.21-1PGDG.rhel10.0.x86_64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.21-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel10.2.x86_64.rpm pgdg 2.20 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel10.1.x86_64.rpm pgdg 2.20 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.20-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.20-1PGDG.rhel10.0.x86_64.rpm pgdg 2.20 43.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.20-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.19-1PGDG.rhel10.2.x86_64.rpm pgdg 2.19 42.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 hll_17 hll_17-2.18-3PGDG.rhel10.x86_64.rpm pgdg 2.18 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hll_17-2.18-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel10.2.aarch64.rpm pgdg 2.21 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.21-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel10.1.aarch64.rpm pgdg 2.21 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.21-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.21-1PGDG.rhel10.0.aarch64.rpm pgdg 2.21 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.21-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel10.2.aarch64.rpm pgdg 2.20 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel10.1.aarch64.rpm pgdg 2.20 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.20-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.20-1PGDG.rhel10.0.aarch64.rpm pgdg 2.20 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.20-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.19-1PGDG.rhel10.2.aarch64.rpm pgdg 2.19 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 hll_17 hll_17-2.18-3PGDG.rhel10.aarch64.rpm pgdg 2.18 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hll_17-2.18-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg12+1_amd64.deb pgdg 2.21 78.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg12+1_amd64.deb pgdg 2.20 77.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg12+2_amd64.deb pgdg 2.19 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg12+2_amd64.deb
@ d12.aarch64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg12+1_arm64.deb pgdg 2.21 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg12+1_arm64.deb pgdg 2.20 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg12+2_arm64.deb pgdg 2.19 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg12+2_arm64.deb
@ d13.x86_64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg13+1_amd64.deb pgdg 2.21 78.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg13+1_amd64.deb pgdg 2.20 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg13+2_amd64.deb pgdg 2.19 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg13+2_amd64.deb
@ d13.aarch64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg13+1_arm64.deb pgdg 2.21 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg13+1_arm64.deb pgdg 2.20 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg13+2_arm64.deb pgdg 2.19 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg13+2_arm64.deb
@ u22.x86_64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg22.04+1_amd64.deb pgdg 2.21 84.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg22.04+1_amd64.deb pgdg 2.20 83.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg22.04+2_amd64.deb pgdg 2.19 82.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg22.04+2_amd64.deb
@ u22.aarch64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg22.04+1_arm64.deb pgdg 2.21 83.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg22.04+1_arm64.deb pgdg 2.20 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg22.04+2_arm64.deb pgdg 2.19 81.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg22.04+2_arm64.deb
@ u24.x86_64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg24.04+1_amd64.deb pgdg 2.21 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg24.04+1_amd64.deb pgdg 2.20 76.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg24.04+2_amd64.deb pgdg 2.19 75.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg24.04+2_amd64.deb
@ u24.aarch64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg24.04+1_arm64.deb pgdg 2.21 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg24.04+1_arm64.deb pgdg 2.20 74.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg24.04+2_arm64.deb pgdg 2.19 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg24.04+2_arm64.deb
@ u26.x86_64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg26.04+1_amd64.deb pgdg 2.21 76.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg26.04+1_amd64.deb pgdg 2.20 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg26.04+1_amd64.deb pgdg 2.19 75.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-hll postgresql-17-hll_2.21-1.pgdg26.04+1_arm64.deb pgdg 2.21 75.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.21-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-hll postgresql-17-hll_2.20-1.pgdg26.04+1_arm64.deb pgdg 2.20 74.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-hll postgresql-17-hll_2.19-2.pgdg26.04+1_arm64.deb pgdg 2.19 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-17-hll_2.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel8.10.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hll_16-2.21-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel8.10.x86_64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hll_16-2.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 hll_16 hll_16-2.18-1PGDG.rhel8.x86_64.rpm pgdg 2.18 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hll_16-2.18-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel8.10.aarch64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hll_16-2.21-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel8.10.aarch64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hll_16-2.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 hll_16 hll_16-2.18-1PGDG.rhel8.aarch64.rpm pgdg 2.18 41.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hll_16-2.18-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel9.8.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.21-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel9.7.x86_64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.21-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel9.6.x86_64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.21-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel9.8.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel9.7.x86_64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.20-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel9.6.x86_64.rpm pgdg 2.20 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.20-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.19-1PGDG.rhel9.8.x86_64.rpm pgdg 2.19 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 hll_16 hll_16-2.18-1PGDG.rhel9.x86_64.rpm pgdg 2.18 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hll_16-2.18-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel9.8.aarch64.rpm pgdg 2.21 43.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.21-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel9.7.aarch64.rpm pgdg 2.21 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.21-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel9.6.aarch64.rpm pgdg 2.21 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.21-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel9.8.aarch64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel9.7.aarch64.rpm pgdg 2.20 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.20-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel9.6.aarch64.rpm pgdg 2.20 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.20-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.19-1PGDG.rhel9.8.aarch64.rpm pgdg 2.19 42.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 hll_16 hll_16-2.18-1PGDG.rhel9.aarch64.rpm pgdg 2.18 41.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hll_16-2.18-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel10.2.x86_64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.21-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel10.1.x86_64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.21-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.21-1PGDG.rhel10.0.x86_64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.21-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel10.2.x86_64.rpm pgdg 2.20 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel10.1.x86_64.rpm pgdg 2.20 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.20-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.20-1PGDG.rhel10.0.x86_64.rpm pgdg 2.20 43.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.20-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.19-1PGDG.rhel10.2.x86_64.rpm pgdg 2.19 42.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 hll_16 hll_16-2.18-3PGDG.rhel10.x86_64.rpm pgdg 2.18 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hll_16-2.18-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel10.2.aarch64.rpm pgdg 2.21 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.21-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel10.1.aarch64.rpm pgdg 2.21 42.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.21-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.21-1PGDG.rhel10.0.aarch64.rpm pgdg 2.21 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.21-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel10.2.aarch64.rpm pgdg 2.20 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel10.1.aarch64.rpm pgdg 2.20 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.20-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.20-1PGDG.rhel10.0.aarch64.rpm pgdg 2.20 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.20-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.19-1PGDG.rhel10.2.aarch64.rpm pgdg 2.19 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 hll_16 hll_16-2.18-3PGDG.rhel10.aarch64.rpm pgdg 2.18 41.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hll_16-2.18-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg12+1_amd64.deb pgdg 2.21 78.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg12+1_amd64.deb pgdg 2.20 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg12+2_amd64.deb pgdg 2.19 76.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg12+2_amd64.deb
@ d12.aarch64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg12+1_arm64.deb pgdg 2.21 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg12+1_arm64.deb pgdg 2.20 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg12+2_arm64.deb pgdg 2.19 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg12+2_arm64.deb
@ d13.x86_64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg13+1_amd64.deb pgdg 2.21 78.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg13+1_amd64.deb pgdg 2.20 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg13+2_amd64.deb pgdg 2.19 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg13+2_amd64.deb
@ d13.aarch64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg13+1_arm64.deb pgdg 2.21 77.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg13+1_arm64.deb pgdg 2.20 76.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg13+2_arm64.deb pgdg 2.19 75.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg13+2_arm64.deb
@ u22.x86_64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg22.04+1_amd64.deb pgdg 2.21 84.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg22.04+1_amd64.deb pgdg 2.20 83.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg22.04+2_amd64.deb pgdg 2.19 82.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg22.04+2_amd64.deb
@ u22.aarch64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg22.04+1_arm64.deb pgdg 2.21 83.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg22.04+1_arm64.deb pgdg 2.20 81.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg22.04+2_arm64.deb pgdg 2.19 81.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg22.04+2_arm64.deb
@ u24.x86_64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg24.04+1_amd64.deb pgdg 2.21 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg24.04+1_amd64.deb pgdg 2.20 76.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg24.04+2_amd64.deb pgdg 2.19 75.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg24.04+2_amd64.deb
@ u24.aarch64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg24.04+1_arm64.deb pgdg 2.21 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg24.04+1_arm64.deb pgdg 2.20 74.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg24.04+2_arm64.deb pgdg 2.19 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg24.04+2_arm64.deb
@ u26.x86_64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg26.04+1_amd64.deb pgdg 2.21 76.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg26.04+1_amd64.deb pgdg 2.20 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg26.04+1_amd64.deb pgdg 2.19 75.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-hll postgresql-16-hll_2.21-1.pgdg26.04+1_arm64.deb pgdg 2.21 75.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.21-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-hll postgresql-16-hll_2.20-1.pgdg26.04+1_arm64.deb pgdg 2.20 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-hll postgresql-16-hll_2.19-2.pgdg26.04+1_arm64.deb pgdg 2.19 74.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-16-hll_2.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel8.10.x86_64.rpm pgdg 2.21 43.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hll_15-2.21-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel8.10.x86_64.rpm pgdg 2.20 43.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hll_15-2.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 hll_15 hll_15-2.18-1PGDG.rhel8.x86_64.rpm pgdg 2.18 42.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hll_15-2.18-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 hll_15 hll_15-2.17-1.rhel8.x86_64.rpm pgdg 2.17 89.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hll_15-2.17-1.rhel8.x86_64.rpm
@ el8.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel8.10.aarch64.rpm pgdg 2.21 43.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hll_15-2.21-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel8.10.aarch64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hll_15-2.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 hll_15 hll_15-2.18-1PGDG.rhel8.aarch64.rpm pgdg 2.18 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hll_15-2.18-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 hll_15 hll_15-2.17-1.rhel8.aarch64.rpm pgdg 2.17 89.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hll_15-2.17-1.rhel8.aarch64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel9.8.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.21-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel9.7.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.21-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel9.6.x86_64.rpm pgdg 2.21 43.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.21-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel9.8.x86_64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel9.7.x86_64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.20-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel9.6.x86_64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.20-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.19-1PGDG.rhel9.8.x86_64.rpm pgdg 2.19 42.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.18-1PGDG.rhel9.x86_64.rpm pgdg 2.18 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.18-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 hll_15 hll_15-2.17-1.rhel9.x86_64.rpm pgdg 2.17 90.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hll_15-2.17-1.rhel9.x86_64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel9.8.aarch64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.21-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel9.7.aarch64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.21-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel9.6.aarch64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.21-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel9.8.aarch64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel9.7.aarch64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.20-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel9.6.aarch64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.20-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.19-1PGDG.rhel9.8.aarch64.rpm pgdg 2.19 42.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.18-1PGDG.rhel9.aarch64.rpm pgdg 2.18 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.18-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 hll_15 hll_15-2.17-1.rhel9.aarch64.rpm pgdg 2.17 91.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hll_15-2.17-1.rhel9.aarch64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel10.2.x86_64.rpm pgdg 2.21 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.21-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel10.1.x86_64.rpm pgdg 2.21 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.21-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.21-1PGDG.rhel10.0.x86_64.rpm pgdg 2.21 44.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.21-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel10.2.x86_64.rpm pgdg 2.20 43.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel10.1.x86_64.rpm pgdg 2.20 43.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.20-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.20-1PGDG.rhel10.0.x86_64.rpm pgdg 2.20 44.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.20-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.19-1PGDG.rhel10.2.x86_64.rpm pgdg 2.19 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 hll_15 hll_15-2.18-3PGDG.rhel10.x86_64.rpm pgdg 2.18 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hll_15-2.18-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel10.2.aarch64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.21-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel10.1.aarch64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.21-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.21-1PGDG.rhel10.0.aarch64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.21-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel10.2.aarch64.rpm pgdg 2.20 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel10.1.aarch64.rpm pgdg 2.20 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.20-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.20-1PGDG.rhel10.0.aarch64.rpm pgdg 2.20 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.20-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.19-1PGDG.rhel10.2.aarch64.rpm pgdg 2.19 42.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 hll_15 hll_15-2.18-3PGDG.rhel10.aarch64.rpm pgdg 2.18 42.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hll_15-2.18-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg12+1_amd64.deb pgdg 2.21 78.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg12+1_amd64.deb pgdg 2.20 77.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg12+2_amd64.deb pgdg 2.19 77.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg12+2_amd64.deb
@ d12.aarch64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg12+1_arm64.deb pgdg 2.21 77.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg12+1_arm64.deb pgdg 2.20 76.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg12+2_arm64.deb pgdg 2.19 76.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg12+2_arm64.deb
@ d13.x86_64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg13+1_amd64.deb pgdg 2.21 78.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg13+1_amd64.deb pgdg 2.20 77.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg13+2_amd64.deb pgdg 2.19 77.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg13+2_amd64.deb
@ d13.aarch64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg13+1_arm64.deb pgdg 2.21 77.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg13+1_arm64.deb pgdg 2.20 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg13+2_arm64.deb pgdg 2.19 76.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg13+2_arm64.deb
@ u22.x86_64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg22.04+1_amd64.deb pgdg 2.21 85.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg22.04+1_amd64.deb pgdg 2.20 83.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg22.04+2_amd64.deb pgdg 2.19 83.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg22.04+2_amd64.deb
@ u22.aarch64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg22.04+1_arm64.deb pgdg 2.21 84.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg22.04+1_arm64.deb pgdg 2.20 82.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg22.04+2_arm64.deb pgdg 2.19 82.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg22.04+2_arm64.deb
@ u24.x86_64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg24.04+1_amd64.deb pgdg 2.21 77.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg24.04+1_amd64.deb pgdg 2.20 77.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg24.04+2_amd64.deb pgdg 2.19 76.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg24.04+2_amd64.deb
@ u24.aarch64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg24.04+1_arm64.deb pgdg 2.21 77.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg24.04+1_arm64.deb pgdg 2.20 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg24.04+2_arm64.deb pgdg 2.19 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg24.04+2_arm64.deb
@ u26.x86_64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg26.04+1_amd64.deb pgdg 2.21 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg26.04+1_amd64.deb pgdg 2.20 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg26.04+1_amd64.deb pgdg 2.19 76.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-hll postgresql-15-hll_2.21-1.pgdg26.04+1_arm64.deb pgdg 2.21 76.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.21-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-hll postgresql-15-hll_2.20-1.pgdg26.04+1_arm64.deb pgdg 2.20 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-hll postgresql-15-hll_2.19-2.pgdg26.04+1_arm64.deb pgdg 2.19 75.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-15-hll_2.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel8.10.x86_64.rpm pgdg 2.21 43.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hll_14-2.21-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel8.10.x86_64.rpm pgdg 2.20 43.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hll_14-2.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 hll_14 hll_14-2.18-1PGDG.rhel8.x86_64.rpm pgdg 2.18 42.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hll_14-2.18-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 hll_14 hll_14-2.16-1.rhel8.x86_64.rpm pgdg 2.16 90.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hll_14-2.16-1.rhel8.x86_64.rpm
@ el8.aarch64 14 hll_14 hll_14-2.21-1PGDG.rhel8.10.aarch64.rpm pgdg 2.21 43.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hll_14-2.21-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 hll_14 hll_14-2.20-1PGDG.rhel8.10.aarch64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hll_14-2.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 hll_14 hll_14-2.18-1PGDG.rhel8.aarch64.rpm pgdg 2.18 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hll_14-2.18-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 hll_14 hll_14-2.17-1.rhel8.aarch64.rpm pgdg 2.17 89.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hll_14-2.17-1.rhel8.aarch64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel9.8.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.21-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel9.7.x86_64.rpm pgdg 2.21 43.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.21-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel9.6.x86_64.rpm pgdg 2.21 43.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.21-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel9.8.x86_64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel9.7.x86_64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.20-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel9.6.x86_64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.20-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.19-1PGDG.rhel9.8.x86_64.rpm pgdg 2.19 42.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 hll_14 hll_14-2.18-1PGDG.rhel9.x86_64.rpm pgdg 2.18 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hll_14-2.18-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.21-1PGDG.rhel9.8.aarch64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.21-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.21-1PGDG.rhel9.7.aarch64.rpm pgdg 2.21 43.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.21-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.21-1PGDG.rhel9.6.aarch64.rpm pgdg 2.21 43.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.21-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.20-1PGDG.rhel9.8.aarch64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.20-1PGDG.rhel9.7.aarch64.rpm pgdg 2.20 42.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.20-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.20-1PGDG.rhel9.6.aarch64.rpm pgdg 2.20 43.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.20-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.19-1PGDG.rhel9.8.aarch64.rpm pgdg 2.19 42.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.18-1PGDG.rhel9.aarch64.rpm pgdg 2.18 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.18-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 hll_14 hll_14-2.17-1.rhel9.aarch64.rpm pgdg 2.17 90.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hll_14-2.17-1.rhel9.aarch64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel10.2.x86_64.rpm pgdg 2.21 44.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.21-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel10.1.x86_64.rpm pgdg 2.21 44.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.21-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.21-1PGDG.rhel10.0.x86_64.rpm pgdg 2.21 44.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.21-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel10.2.x86_64.rpm pgdg 2.20 43.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel10.1.x86_64.rpm pgdg 2.20 43.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.20-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.20-1PGDG.rhel10.0.x86_64.rpm pgdg 2.20 44.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.20-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.19-1PGDG.rhel10.2.x86_64.rpm pgdg 2.19 43.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 hll_14 hll_14-2.18-3PGDG.rhel10.x86_64.rpm pgdg 2.18 43.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hll_14-2.18-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 hll_14 hll_14-2.21-1PGDG.rhel10.1.aarch64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hll_14-2.21-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 hll_14 hll_14-2.21-1PGDG.rhel10.0.aarch64.rpm pgdg 2.21 43.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hll_14-2.21-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 hll_14 hll_14-2.20-1PGDG.rhel10.1.aarch64.rpm pgdg 2.20 43.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hll_14-2.20-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 hll_14 hll_14-2.20-1PGDG.rhel10.0.aarch64.rpm pgdg 2.20 43.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hll_14-2.20-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 hll_14 hll_14-2.18-3PGDG.rhel10.aarch64.rpm pgdg 2.18 42.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hll_14-2.18-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg12+1_amd64.deb pgdg 2.21 78.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg12+1_amd64.deb pgdg 2.20 77.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg12+2_amd64.deb pgdg 2.19 77.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg12+2_amd64.deb
@ d12.aarch64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg12+1_arm64.deb pgdg 2.21 77.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg12+1_arm64.deb pgdg 2.20 76.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg12+2_arm64.deb pgdg 2.19 75.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg12+2_arm64.deb
@ d13.x86_64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg13+1_amd64.deb pgdg 2.21 78.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg13+1_amd64.deb pgdg 2.20 77.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg13+2_amd64.deb pgdg 2.19 76.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg13+2_amd64.deb
@ d13.aarch64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg13+1_arm64.deb pgdg 2.21 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg13+1_arm64.deb pgdg 2.20 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg13+2_arm64.deb pgdg 2.19 75.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg13+2_arm64.deb
@ u22.x86_64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg22.04+1_amd64.deb pgdg 2.21 84.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg22.04+1_amd64.deb pgdg 2.20 83.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg22.04+2_amd64.deb pgdg 2.19 83.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg22.04+2_amd64.deb
@ u22.aarch64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg22.04+1_arm64.deb pgdg 2.21 84.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg22.04+1_arm64.deb pgdg 2.20 82.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg22.04+2_arm64.deb pgdg 2.19 82.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg22.04+2_arm64.deb
@ u24.x86_64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg24.04+1_amd64.deb pgdg 2.21 77.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg24.04+1_amd64.deb pgdg 2.20 77.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg24.04+2_amd64.deb pgdg 2.19 76.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg24.04+2_amd64.deb
@ u24.aarch64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg24.04+1_arm64.deb pgdg 2.21 77.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg24.04+1_arm64.deb pgdg 2.20 76.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg24.04+2_arm64.deb pgdg 2.19 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg24.04+2_arm64.deb
@ u26.x86_64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg26.04+1_amd64.deb pgdg 2.21 77.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg26.04+1_amd64.deb pgdg 2.20 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg26.04+1_amd64.deb pgdg 2.19 76.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-hll postgresql-14-hll_2.21-1.pgdg26.04+1_arm64.deb pgdg 2.21 76.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.21-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-hll postgresql-14-hll_2.20-1.pgdg26.04+1_arm64.deb pgdg 2.20 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-hll postgresql-14-hll_2.19-2.pgdg26.04+1_arm64.deb pgdg 2.19 75.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-hll/postgresql-14-hll_2.19-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `hll` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install hll;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y hll -v 18  # PG 18
pig ext install -y hll -v 17  # PG 17
pig ext install -y hll -v 16  # PG 16
pig ext install -y hll -v 15  # PG 15
pig ext install -y hll -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y hll_18       # PG 18
dnf install -y hll_17       # PG 17
dnf install -y hll_16       # PG 16
dnf install -y hll_15       # PG 15
dnf install -y hll_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-hll   # PG 18
apt install -y postgresql-17-hll   # PG 17
apt install -y postgresql-16-hll   # PG 16
apt install -y postgresql-15-hll   # PG 15
apt install -y postgresql-14-hll   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION hll;
```




## Usage

> [hll: type for storing hyperloglog data](https://github.com/citusdata/postgresql-hll)

The `hll` extension provides a HyperLogLog data type for probabilistic distinct-value counting. It enables efficient approximate `COUNT(DISTINCT)` operations with configurable accuracy, and supports set union operations that allow pre-aggregated data to be combined without loss of precision.

### Data Types

- **`hll`** -- HyperLogLog accumulator with parameters: `hll(log2m, regwidth, expthresh, sparseon)`
- **`hll_hashval`** -- Hashed value type for insertion into HLL structures

### Core Functions

| Function | Description |
|----------|-------------|
| `hll_empty()` | Create an empty HLL |
| `hll_add(hll, hll_hashval)` | Add a hashed value to an HLL |
| `hll_cardinality(hll)` | Estimate distinct count |
| `hll_union(hll, hll)` | Combine two HLLs |
| `hll_add_agg(hll_hashval)` | Aggregate hashed values into a single HLL |
| `hll_union_agg(hll)` | Merge multiple HLLs into one |
| `hll_print(hll)` | Display HLL parameters and contents |

### Hash Functions

| Function | Input Type |
|----------|-----------|
| `hll_hash_boolean(boolean [, seed])` | boolean |
| `hll_hash_smallint(smallint [, seed])` | smallint |
| `hll_hash_integer(integer [, seed])` | integer |
| `hll_hash_bigint(bigint [, seed])` | bigint |
| `hll_hash_bytea(bytea [, seed])` | bytea |
| `hll_hash_text(text [, seed])` | text |
| `hll_hash_any(any [, seed])` | any (dynamic dispatch, slower) |

### Operators

| Operator | Function | Example |
|----------|----------|---------|
| `\|\|` | `hll_add` / `hll_union` | `users \|\| hll_hash_integer(123)` |
| `#` | `hll_cardinality` | `#users` |

### Example: Daily Unique User Tracking

```sql
-- Store daily unique user counts
CREATE TABLE daily_uniques (
    date  date UNIQUE,
    users hll
);

-- Aggregate daily data
INSERT INTO daily_uniques(date, users)
    SELECT date, hll_add_agg(hll_hash_integer(user_id))
    FROM facts GROUP BY 1;

-- Weekly uniques (unions are lossless)
SELECT hll_cardinality(hll_union_agg(users))
FROM daily_uniques
WHERE date >= '2012-01-02' AND date <= '2012-01-08';

-- Monthly breakdown
SELECT EXTRACT(MONTH FROM date) AS month,
       #hll_union_agg(users) AS approx_uniques
FROM daily_uniques
WHERE date >= '2012-01-01' AND date < '2013-01-01'
GROUP BY 1;

-- 7-day sliding window
SELECT date, #hll_union_agg(users) OVER seven_days
FROM daily_uniques
WINDOW seven_days AS (ORDER BY date ASC ROWS 6 PRECEDING);
```

### Configuration Parameters

- **`log2m`** (4--31): Number of registers as log-base-2. Controls accuracy with relative error of +/-1.04/sqrt(2^log2m). Default: 11.
- **`regwidth`** (1--8): Bits per register. Tuned alongside log2m for maximum cardinality estimation. Default: 5.
- **`expthresh`** (-1 to 18): Controls EXPLICIT-to-SPARSE promotion. `-1` for auto mode, `0` to skip EXPLICIT. Default: -1.
- **`sparseon`** (0 or 1): Enables/disables SPARSE representation. Default: 1.

All inputs to a given HLL must use the same hash seed. HLLs intended for union operations must have been populated with identically-seeded hash values.
