---
title: "hdr_histogram"
linkTitle: "hdr_histogram"
description: "HDR histogram type, percentile queries and mergeable aggregation."
weight: 4715
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/vovcke/pg_hdr_histogram">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">vovcke/pg_hdr_histogram</div>
    <div class="ext-card__desc">https://github.com/vovcke/pg_hdr_histogram</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/hdr_histogram-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">hdr_histogram-1.0.0.tar.gz</div>
    <div class="ext-card__desc">hdr_histogram-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hdr_histogram`**](/ext/e/hdr_histogram) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4715  | [**`hdr_histogram`**](/ext/e/hdr_histogram) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> Official v1.0.0 release asset installs control/SQL 1.0; the Git tag declares 1.0.0. Extension license is MIT; packages also include the CC0-1.0 HdrHistogram_c library. PG14-18; requires zlib. Default lossless merge depends on accumulator range/order; left mode can discard samples.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "14,15,16,17,18" >}} | `hdr_histogram` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `hdr_histogram_$v` | `zlib` |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-hdr-histogram` | `zlib1g` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 hdr_histogram_18 hdr_histogram_18-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 79.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hdr_histogram_18-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 hdr_histogram_18 hdr_histogram_18-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 76.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hdr_histogram_18-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 hdr_histogram_18 hdr_histogram_18-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 76.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hdr_histogram_18-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 hdr_histogram_18 hdr_histogram_18-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 72.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hdr_histogram_18-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 hdr_histogram_18 hdr_histogram_18-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 76.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hdr_histogram_18-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 hdr_histogram_18 hdr_histogram_18-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 72.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hdr_histogram_18-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 70.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 67.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 69.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 65.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 68.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 68.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-hdr-histogram postgresql-18-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 65.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-18-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 hdr_histogram_17 hdr_histogram_17-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 79.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hdr_histogram_17-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 hdr_histogram_17 hdr_histogram_17-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 76.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hdr_histogram_17-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 hdr_histogram_17 hdr_histogram_17-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 76.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hdr_histogram_17-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 hdr_histogram_17 hdr_histogram_17-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 72.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hdr_histogram_17-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 hdr_histogram_17 hdr_histogram_17-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 76.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hdr_histogram_17-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 hdr_histogram_17 hdr_histogram_17-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 72.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hdr_histogram_17-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 70.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 67.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 72.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 68.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 68.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 68.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-hdr-histogram postgresql-17-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 65.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-17-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 hdr_histogram_16 hdr_histogram_16-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 79.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hdr_histogram_16-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 hdr_histogram_16 hdr_histogram_16-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 76.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hdr_histogram_16-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 hdr_histogram_16 hdr_histogram_16-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 76.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hdr_histogram_16-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 hdr_histogram_16 hdr_histogram_16-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 72.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hdr_histogram_16-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 hdr_histogram_16 hdr_histogram_16-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 76.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hdr_histogram_16-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 hdr_histogram_16 hdr_histogram_16-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 72.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hdr_histogram_16-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 70.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 67.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 72.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 68.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 68.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 65.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 68.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-hdr-histogram postgresql-16-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 65.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-16-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 hdr_histogram_15 hdr_histogram_15-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 79.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hdr_histogram_15-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 hdr_histogram_15 hdr_histogram_15-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 76.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hdr_histogram_15-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 hdr_histogram_15 hdr_histogram_15-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 82.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hdr_histogram_15-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 hdr_histogram_15 hdr_histogram_15-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 79.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hdr_histogram_15-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 hdr_histogram_15 hdr_histogram_15-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 83.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hdr_histogram_15-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 hdr_histogram_15 hdr_histogram_15-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 79.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hdr_histogram_15-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 71.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 71.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 72.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 68.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 78.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 75.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 74.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 71.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 75.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-hdr-histogram postgresql-15-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 71.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-15-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 hdr_histogram_14 hdr_histogram_14-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 79.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hdr_histogram_14-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 hdr_histogram_14 hdr_histogram_14-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 76.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hdr_histogram_14-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 hdr_histogram_14 hdr_histogram_14-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 82.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hdr_histogram_14-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 hdr_histogram_14 hdr_histogram_14-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 79.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hdr_histogram_14-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 hdr_histogram_14 hdr_histogram_14-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 83.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hdr_histogram_14-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 hdr_histogram_14 hdr_histogram_14-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 79.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hdr_histogram_14-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 71.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 67.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 72.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 68.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 78.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 75.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 74.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 71.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 75.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-hdr-histogram postgresql-14-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 71.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hdr-histogram/postgresql-14-hdr-histogram_1.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `hdr_histogram` using `pig build`:

```bash
pig build pkg hdr_histogram         # build RPM / DEB packages
```


## Install

You can install `hdr_histogram` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install hdr_histogram;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y hdr_histogram -v 18  # PG 18
pig ext install -y hdr_histogram -v 17  # PG 17
pig ext install -y hdr_histogram -v 16  # PG 16
pig ext install -y hdr_histogram -v 15  # PG 15
pig ext install -y hdr_histogram -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y hdr_histogram_18       # PG 18
dnf install -y hdr_histogram_17       # PG 17
dnf install -y hdr_histogram_16       # PG 16
dnf install -y hdr_histogram_15       # PG 15
dnf install -y hdr_histogram_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-hdr-histogram   # PG 18
apt install -y postgresql-17-hdr-histogram   # PG 17
apt install -y postgresql-16-hdr-histogram   # PG 16
apt install -y postgresql-15-hdr-histogram   # PG 15
apt install -y postgresql-14-hdr-histogram   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION hdr_histogram;
```

## Usage

Sources:

- [README.md](https://github.com/vovcke/pg_hdr_histogram/blob/87686cfe3a06d48addd052e50f8e41a5bdc4347b/README.md)
- [hdr_histogram--1.0.0.sql](https://github.com/vovcke/pg_hdr_histogram/blob/87686cfe3a06d48addd052e50f8e41a5bdc4347b/hdr_histogram--1.0.0.sql)
- [hdr_histogram.c](https://github.com/vovcke/pg_hdr_histogram/blob/87686cfe3a06d48addd052e50f8e41a5bdc4347b/hdr_histogram.c)
- [META.json](https://github.com/vovcke/pg_hdr_histogram/blob/87686cfe3a06d48addd052e50f8e41a5bdc4347b/META.json)
- [.github/workflows/ci.yml](https://github.com/vovcke/pg_hdr_histogram/blob/87686cfe3a06d48addd052e50f8e41a5bdc4347b/.github/workflows/ci.yml)
- [hdr_histogram.control](https://github.com/vovcke/pg_hdr_histogram/blob/87686cfe3a06d48addd052e50f8e41a5bdc4347b/hdr_histogram.control)
- [Official 1.0.0 release archive](https://github.com/vovcke/pg_hdr_histogram/releases/download/v1.0.0/hdr_histogram-1.0.0.tar.gz)

`hdr_histogram` stores compressed HDR histograms and computes percentiles with configurable precision. `hdr_add` aggregates numeric samples; `hdr_merge` combines stored histograms. PostgreSQL 14–18 appear in upstream CI. The trusted, relocatable extension requires zlib and can be installed by a role with CREATE privilege on the database.

The official 1.0.0 release archive used for Pigsty packages installs control/SQL version 1.0; the Git tag's control file declares 1.0.0. Check the installed extension version rather than inferring it from the package version.

### Core Workflow

```sql
CREATE EXTENSION hdr_histogram;
SELECT hdr_percentile(hdr_add(1.0), 50);
SET hdr_histogram.merge_mode = 'lossless';
SELECT hdr_percentile(hdr_add(latency::double precision), 99)
FROM (VALUES (100), (200), (300), (500)) AS samples(latency);
CREATE TABLE latency_histograms (recorded_at timestamptz, hist hdr_histogram);
SELECT hdr_percentile(hdr_merge(hist), 99) FROM latency_histograms;
```

### Operational Boundaries

Samples are converted to int64, so choose one unit consistently. The default highest value is 1e9 with three significant figures; hdr_histogram.lowest, hdr_histogram.highest and hdr_histogram.sig_figs configure new histograms. Nonfinite and out-of-range values error. `hdr_percentile` accepts a percentile from 0 to 100; `hdr_min`, `hdr_max`, `hdr_mean`, `hdr_stddev`, `hdr_total_count`, `hdr_sig_figs`, `hdr_lowest` and `hdr_highest` inspect a histogram. The default merge_mode lossless rejects incompatible merges; strict requires identical parameters, left can discard values outside the accumulator range, and union expands range/precision. The first histogram function call loads the library; the example calls it before applying session GUCs. No shared preload is required for core use. Percentiles are bounded-error estimates, not exact order statistics.
