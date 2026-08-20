---
title: "tdigest"
linkTitle: "tdigest"
description: "Provides tdigest aggregate function."
weight: 4700
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/tdigest">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/tdigest</div>
    <div class="ext-card__desc">https://github.com/tvondra/tdigest</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`tdigest`**](/ext/e/tdigest) | `1.4.4` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4700  | [**`tdigest`**](/ext/e/tdigest) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`ddsketch`](/ext/e/ddsketch) [`count_distinct`](/ext/e/count_distinct) [`topn`](/ext/e/topn) [`omnisketch`](/ext/e/omnisketch) [`datasketches`](/ext/e/datasketches) [`hll`](/ext/e/hll) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`weighted_statistics`](/ext/e/weighted_statistics) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.4` | {{< pgvers "18,17,16,15,14" >}} | `tdigest` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.4` | {{< pgvers "18,17,16,15,14" >}} | `tdigest_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-tdigest` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 |
| el8.aarch64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 |
| el9.x86_64 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 4 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 4 | AVAIL PGDG 1.4.4 4 |
| el9.aarch64 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 4 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 4 | AVAIL PGDG 1.4.4 4 |
| el10.x86_64 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 |
| el10.aarch64 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 | AVAIL PGDG 1.4.4 3 |
| d12.x86_64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| d12.aarch64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| d13.x86_64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| d13.aarch64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| u22.x86_64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| u22.aarch64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| u24.x86_64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| u24.aarch64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| u26.x86_64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
| u26.aarch64 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 | AVAIL PGDG 1.4.4 2 |
@ el8.x86_64 18 tdigest_18 tdigest_18-1.4.4-4PGDG.rhel8.10.x86_64.rpm pgdg 1.4.4 34.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/tdigest_18-1.4.4-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 tdigest_18 tdigest_18-1.4.2-2PGDG.rhel8.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/tdigest_18-1.4.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 tdigest_18 tdigest_18-1.4.4-4PGDG.rhel8.10.aarch64.rpm pgdg 1.4.4 33.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/tdigest_18-1.4.4-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 tdigest_18 tdigest_18-1.4.2-2PGDG.rhel8.aarch64.rpm pgdg 1.4.2 32.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/tdigest_18-1.4.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 tdigest_18 tdigest_18-1.4.4-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.4 34.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/tdigest_18-1.4.4-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 tdigest_18 tdigest_18-1.4.2-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/tdigest_18-1.4.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 tdigest_18 tdigest_18-1.4.2-2PGDG.rhel9.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/tdigest_18-1.4.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 tdigest_18 tdigest_18-1.4.4-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.4 33.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/tdigest_18-1.4.4-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 tdigest_18 tdigest_18-1.4.2-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/tdigest_18-1.4.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 tdigest_18 tdigest_18-1.4.2-2PGDG.rhel9.aarch64.rpm pgdg 1.4.2 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/tdigest_18-1.4.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 tdigest_18 tdigest_18-1.4.4-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.4 34.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/tdigest_18-1.4.4-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 tdigest_18 tdigest_18-1.4.2-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/tdigest_18-1.4.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 tdigest_18 tdigest_18-1.4.2-2PGDG.rhel10.x86_64.rpm pgdg 1.4.2 33.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/tdigest_18-1.4.2-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 tdigest_18 tdigest_18-1.4.4-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.4 34.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/tdigest_18-1.4.4-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 tdigest_18 tdigest_18-1.4.2-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/tdigest_18-1.4.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 tdigest_18 tdigest_18-1.4.2-2PGDG.rhel10.aarch64.rpm pgdg 1.4.2 33.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/tdigest_18-1.4.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg12+1_amd64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg12+1_amd64.deb pgdg 1.4.3 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg12+1_arm64.deb pgdg 1.4.4 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg12+1_arm64.deb pgdg 1.4.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg13+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg13+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg13+1_arm64.deb pgdg 1.4.4 59.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg13+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb pgdg 1.4.3 58.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb pgdg 1.4.4 58.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb pgdg 1.4.3 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb pgdg 1.4.3 57.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb pgdg 1.4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb pgdg 1.4.4 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb pgdg 1.4.3 57.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb pgdg 1.4.4 59.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-tdigest postgresql-18-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-18-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 tdigest_17 tdigest_17-1.4.4-4PGDG.rhel8.10.x86_64.rpm pgdg 1.4.4 34.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/tdigest_17-1.4.4-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 tdigest_17 tdigest_17-1.4.2-1PGDG.rhel8.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/tdigest_17-1.4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 tdigest_17 tdigest_17-1.4.1-3PGDG.rhel8.x86_64.rpm pgdg 1.4.1 33.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/tdigest_17-1.4.1-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 tdigest_17 tdigest_17-1.4.4-4PGDG.rhel8.10.aarch64.rpm pgdg 1.4.4 33.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/tdigest_17-1.4.4-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 tdigest_17 tdigest_17-1.4.2-1PGDG.rhel8.aarch64.rpm pgdg 1.4.2 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/tdigest_17-1.4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 tdigest_17 tdigest_17-1.4.1-3PGDG.rhel8.aarch64.rpm pgdg 1.4.1 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/tdigest_17-1.4.1-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 tdigest_17 tdigest_17-1.4.4-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.4 34.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tdigest_17-1.4.4-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 tdigest_17 tdigest_17-1.4.2-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tdigest_17-1.4.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 tdigest_17 tdigest_17-1.4.2-1PGDG.rhel9.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tdigest_17-1.4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 tdigest_17 tdigest_17-1.4.1-3PGDG.rhel9.x86_64.rpm pgdg 1.4.1 33.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/tdigest_17-1.4.1-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 tdigest_17 tdigest_17-1.4.4-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.4 33.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tdigest_17-1.4.4-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 tdigest_17 tdigest_17-1.4.2-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tdigest_17-1.4.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 tdigest_17 tdigest_17-1.4.2-1PGDG.rhel9.aarch64.rpm pgdg 1.4.2 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tdigest_17-1.4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 tdigest_17 tdigest_17-1.4.1-3PGDG.rhel9.aarch64.rpm pgdg 1.4.1 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/tdigest_17-1.4.1-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 tdigest_17 tdigest_17-1.4.4-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.4 34.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/tdigest_17-1.4.4-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 tdigest_17 tdigest_17-1.4.2-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/tdigest_17-1.4.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 tdigest_17 tdigest_17-1.4.2-2PGDG.rhel10.x86_64.rpm pgdg 1.4.2 33.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/tdigest_17-1.4.2-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 tdigest_17 tdigest_17-1.4.4-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.4 34.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/tdigest_17-1.4.4-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 tdigest_17 tdigest_17-1.4.2-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/tdigest_17-1.4.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 tdigest_17 tdigest_17-1.4.2-2PGDG.rhel10.aarch64.rpm pgdg 1.4.2 33.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/tdigest_17-1.4.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg12+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg12+1_amd64.deb pgdg 1.4.3 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg12+1_arm64.deb pgdg 1.4.4 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg12+1_arm64.deb pgdg 1.4.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg13+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg13+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg13+1_arm64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg13+1_arm64.deb pgdg 1.4.3 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb pgdg 1.4.4 62.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb pgdg 1.4.3 60.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb pgdg 1.4.4 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb pgdg 1.4.3 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb pgdg 1.4.3 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb pgdg 1.4.4 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb pgdg 1.4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb pgdg 1.4.3 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb pgdg 1.4.4 59.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-tdigest postgresql-17-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb pgdg 1.4.3 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-17-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 tdigest_16 tdigest_16-1.4.4-4PGDG.rhel8.10.x86_64.rpm pgdg 1.4.4 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/tdigest_16-1.4.4-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 tdigest_16 tdigest_16-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 33.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/tdigest_16-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 tdigest_16 tdigest_16-1.4.4-4PGDG.rhel8.10.aarch64.rpm pgdg 1.4.4 33.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/tdigest_16-1.4.4-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 tdigest_16 tdigest_16-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/tdigest_16-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 tdigest_16 tdigest_16-1.4.4-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.4 34.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tdigest_16-1.4.4-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 tdigest_16 tdigest_16-1.4.2-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tdigest_16-1.4.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 tdigest_16 tdigest_16-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/tdigest_16-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 tdigest_16 tdigest_16-1.4.4-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.4 33.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tdigest_16-1.4.4-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 tdigest_16 tdigest_16-1.4.2-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tdigest_16-1.4.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 tdigest_16 tdigest_16-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/tdigest_16-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 tdigest_16 tdigest_16-1.4.4-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.4 34.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/tdigest_16-1.4.4-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 tdigest_16 tdigest_16-1.4.2-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/tdigest_16-1.4.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 tdigest_16 tdigest_16-1.4.2-2PGDG.rhel10.x86_64.rpm pgdg 1.4.2 33.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/tdigest_16-1.4.2-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 tdigest_16 tdigest_16-1.4.4-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.4 34.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/tdigest_16-1.4.4-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 tdigest_16 tdigest_16-1.4.2-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/tdigest_16-1.4.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 tdigest_16 tdigest_16-1.4.2-2PGDG.rhel10.aarch64.rpm pgdg 1.4.2 33.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/tdigest_16-1.4.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg12+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg12+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg12+1_arm64.deb pgdg 1.4.4 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg12+1_arm64.deb pgdg 1.4.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg13+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg13+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg13+1_arm64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg13+1_arm64.deb pgdg 1.4.3 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb pgdg 1.4.4 62.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb pgdg 1.4.3 60.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb pgdg 1.4.4 61.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb pgdg 1.4.3 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb pgdg 1.4.3 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb pgdg 1.4.4 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb pgdg 1.4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb pgdg 1.4.3 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb pgdg 1.4.4 59.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-tdigest postgresql-16-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb pgdg 1.4.3 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-16-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 tdigest_15 tdigest_15-1.4.4-4PGDG.rhel8.10.x86_64.rpm pgdg 1.4.4 34.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/tdigest_15-1.4.4-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 tdigest_15 tdigest_15-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/tdigest_15-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 tdigest_15 tdigest_15-1.4.0-1.rhel8.x86_64.rpm pgdg 1.4.0 70.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/tdigest_15-1.4.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 tdigest_15 tdigest_15-1.4.4-4PGDG.rhel8.10.aarch64.rpm pgdg 1.4.4 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/tdigest_15-1.4.4-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 tdigest_15 tdigest_15-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/tdigest_15-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 tdigest_15 tdigest_15-1.4.0-1.rhel8.aarch64.rpm pgdg 1.4.0 68.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/tdigest_15-1.4.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 tdigest_15 tdigest_15-1.4.4-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.4 34.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tdigest_15-1.4.4-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 tdigest_15 tdigest_15-1.4.2-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tdigest_15-1.4.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 tdigest_15 tdigest_15-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tdigest_15-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 tdigest_15 tdigest_15-1.4.0-1.rhel9.x86_64.rpm pgdg 1.4.0 72.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/tdigest_15-1.4.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 tdigest_15 tdigest_15-1.4.4-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.4 33.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tdigest_15-1.4.4-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 tdigest_15 tdigest_15-1.4.2-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tdigest_15-1.4.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 tdigest_15 tdigest_15-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tdigest_15-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 tdigest_15 tdigest_15-1.4.0-1.rhel9.aarch64.rpm pgdg 1.4.0 70.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/tdigest_15-1.4.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 tdigest_15 tdigest_15-1.4.4-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.4 34.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/tdigest_15-1.4.4-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 tdigest_15 tdigest_15-1.4.2-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/tdigest_15-1.4.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 tdigest_15 tdigest_15-1.4.2-2PGDG.rhel10.x86_64.rpm pgdg 1.4.2 33.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/tdigest_15-1.4.2-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 tdigest_15 tdigest_15-1.4.4-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.4 34.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/tdigest_15-1.4.4-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 tdigest_15 tdigest_15-1.4.2-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/tdigest_15-1.4.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 tdigest_15 tdigest_15-1.4.2-2PGDG.rhel10.aarch64.rpm pgdg 1.4.2 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/tdigest_15-1.4.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg12+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg12+1_amd64.deb pgdg 1.4.3 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg12+1_arm64.deb pgdg 1.4.4 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg12+1_arm64.deb pgdg 1.4.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg13+1_amd64.deb pgdg 1.4.4 59.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg13+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg13+1_arm64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg13+1_arm64.deb pgdg 1.4.3 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb pgdg 1.4.4 62.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb pgdg 1.4.3 60.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb pgdg 1.4.4 61.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb pgdg 1.4.3 59.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb pgdg 1.4.3 57.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb pgdg 1.4.4 59.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb pgdg 1.4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb pgdg 1.4.3 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb pgdg 1.4.4 59.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-tdigest postgresql-15-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb pgdg 1.4.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-15-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 tdigest_14 tdigest_14-1.4.4-4PGDG.rhel8.10.x86_64.rpm pgdg 1.4.4 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tdigest_14-1.4.4-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 tdigest_14 tdigest_14-1.4.1-1PGDG.rhel8.x86_64.rpm pgdg 1.4.1 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tdigest_14-1.4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 tdigest_14 tdigest_14-1.2.0-2.rhel8.x86_64.rpm pgdg 1.2.0 60.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/tdigest_14-1.2.0-2.rhel8.x86_64.rpm
@ el8.aarch64 14 tdigest_14 tdigest_14-1.4.4-4PGDG.rhel8.10.aarch64.rpm pgdg 1.4.4 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/tdigest_14-1.4.4-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 tdigest_14 tdigest_14-1.4.1-1PGDG.rhel8.aarch64.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/tdigest_14-1.4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 tdigest_14 tdigest_14-1.4.0-1.rhel8.aarch64.rpm pgdg 1.4.0 68.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/tdigest_14-1.4.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 tdigest_14 tdigest_14-1.4.4-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.4 34.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tdigest_14-1.4.4-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 tdigest_14 tdigest_14-1.4.2-4PGDG.rhel9.8.x86_64.rpm pgdg 1.4.2 33.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tdigest_14-1.4.2-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 tdigest_14 tdigest_14-1.4.1-1PGDG.rhel9.x86_64.rpm pgdg 1.4.1 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tdigest_14-1.4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 tdigest_14 tdigest_14-1.4.0-1.rhel9.x86_64.rpm pgdg 1.4.0 72.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/tdigest_14-1.4.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 tdigest_14 tdigest_14-1.4.4-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.4 33.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tdigest_14-1.4.4-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 tdigest_14 tdigest_14-1.4.2-4PGDG.rhel9.8.aarch64.rpm pgdg 1.4.2 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tdigest_14-1.4.2-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 tdigest_14 tdigest_14-1.4.1-1PGDG.rhel9.aarch64.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tdigest_14-1.4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 tdigest_14 tdigest_14-1.4.0-1.rhel9.aarch64.rpm pgdg 1.4.0 70.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/tdigest_14-1.4.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 tdigest_14 tdigest_14-1.4.4-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.4 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/tdigest_14-1.4.4-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 tdigest_14 tdigest_14-1.4.2-4PGDG.rhel10.2.x86_64.rpm pgdg 1.4.2 33.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/tdigest_14-1.4.2-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 tdigest_14 tdigest_14-1.4.2-2PGDG.rhel10.x86_64.rpm pgdg 1.4.2 33.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/tdigest_14-1.4.2-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 tdigest_14 tdigest_14-1.4.4-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.4 34.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/tdigest_14-1.4.4-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 tdigest_14 tdigest_14-1.4.2-4PGDG.rhel10.2.aarch64.rpm pgdg 1.4.2 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/tdigest_14-1.4.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 tdigest_14 tdigest_14-1.4.2-2PGDG.rhel10.aarch64.rpm pgdg 1.4.2 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/tdigest_14-1.4.2-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg12+1_amd64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg12+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg12+1_arm64.deb pgdg 1.4.4 59.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg12+1_arm64.deb pgdg 1.4.3 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg13+1_amd64.deb pgdg 1.4.4 59.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg13+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg13+1_arm64.deb pgdg 1.4.4 59.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg13+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb pgdg 1.4.4 62.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb pgdg 1.4.3 60.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb pgdg 1.4.4 61.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb pgdg 1.4.3 59.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb pgdg 1.4.4 59.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb pgdg 1.4.3 57.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb pgdg 1.4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb pgdg 1.4.3 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb pgdg 1.4.4 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb pgdg 1.4.3 57.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb pgdg 1.4.4 58.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-tdigest postgresql-14-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb pgdg 1.4.3 56.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/tdigest/postgresql-14-tdigest_1.4.3-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `tdigest` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install tdigest;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y tdigest -v 18  # PG 18
pig ext install -y tdigest -v 17  # PG 17
pig ext install -y tdigest -v 16  # PG 16
pig ext install -y tdigest -v 15  # PG 15
pig ext install -y tdigest -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y tdigest_18       # PG 18
dnf install -y tdigest_17       # PG 17
dnf install -y tdigest_16       # PG 16
dnf install -y tdigest_15       # PG 15
dnf install -y tdigest_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-tdigest   # PG 18
apt install -y postgresql-17-tdigest   # PG 17
apt install -y postgresql-16-tdigest   # PG 16
apt install -y postgresql-15-tdigest   # PG 15
apt install -y postgresql-14-tdigest   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION tdigest;
```




## Usage

Sources:

- [tdigest v1.4.4 README](https://github.com/tvondra/tdigest/blob/v1.4.4/README.md)
- [v1.4.4 release](https://github.com/tvondra/tdigest/releases/tag/v1.4.4)
- [Extension control file](https://github.com/tvondra/tdigest/blob/v1.4.4/tdigest.control)

`tdigest` implements an approximate, mergeable t-digest for online rank statistics such as quantiles, percentile ranks, and trimmed means. It supports parallel aggregation and storing pre-aggregated digests for later rollups.

```sql
CREATE EXTENSION tdigest;
```

### Direct Aggregation Functions

| Function | Description |
|---|---|
| `tdigest_percentile(value, compression, quantile)` | Estimate a single percentile |
| `tdigest_percentile(value, compression, quantiles[])` | Estimate multiple percentiles |
| `tdigest_percentile_of(value, compression, value)` | Estimate percentile rank of a value |
| `tdigest_percentile_of(value, compression, values[])` | Estimate percentile ranks of multiple values |

### Pre-aggregation Functions

| Function | Description |
|---|---|
| `tdigest(value, compression)` | Build a t-digest from values |
| `tdigest_percentile(digest, quantile)` | Estimate percentile from a pre-built digest |
| `tdigest_percentile(digest, quantiles[])` | Estimate multiple percentiles from a pre-built digest |

### Incremental Update Functions

| Function | Description |
|---|---|
| `tdigest_add(digest, value)` | Add a single value to an existing digest |
| `tdigest_add(digest, values[])` | Add an array of values to an existing digest |
| `tdigest_union(digest, digest)` | Merge two digests |

### Utility Functions

| Function | Description |
|---|---|
| `tdigest_count(digest)` | Return the number of items in the digest |
| `tdigest_sum(digest, low, high)` | Trimmed sum within a value range |
| `tdigest_avg(digest, low, high)` | Trimmed average within a value range |

### Parameters

- `compression` -- controls accuracy (higher = more accurate, larger digest). Error is roughly `1/compression`.

### Examples

```sql
-- Instead of: SELECT percentile_cont(0.95) WITHIN GROUP (ORDER BY a) FROM t;
SELECT tdigest_percentile(a, 100, 0.95) FROM t;

-- Multiple percentiles
SELECT tdigest_percentile(a, 100, ARRAY[0.5, 0.95, 0.99]) FROM t;

-- Pre-aggregate for fast repeated queries
CREATE TABLE p AS SELECT a, b, tdigest(c, 100) AS d FROM t GROUP BY a, b;

-- Query pre-aggregated data (~1.5ms vs ~7s for exact)
SELECT a, tdigest_percentile(d, 0.95) FROM p GROUP BY a ORDER BY a;
```

### Caveats

- Results are estimates. Validate the chosen compression against exact `percentile_cont` results on representative data before setting accuracy targets.
- Higher compression usually improves tail accuracy but increases state size and CPU cost.
- Stored digests can be merged across groups and time windows. Version `1.4.4` fixes combining digests created with different parameters, so use that patch level when heterogeneous states may meet.
- Version `1.4.4` also strengthens text-input parsing and validation and adds PostgreSQL 19 build/test coverage; malformed serialized digests that older builds accepted may now be rejected.
