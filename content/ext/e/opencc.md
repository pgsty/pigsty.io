---
title: "opencc"
linkTitle: "opencc"
description: "OpenCC conversion between Simplified Chinese, Traditional Chinese, regional variants and Japanese Shinjitai"
weight: 4480
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgsty/pg_opencc">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgsty/pg_opencc</div>
    <div class="ext-card__desc">https://github.com/pgsty/pg_opencc</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_opencc-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_opencc-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_opencc-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_opencc`**](/ext/e/opencc) | `0.1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license apache20 and bsd2clause and mit" href="/ext/license#apache20andbsd2clauseandmit">Apache-2.0 AND BSD-2-Clause AND MIT</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4480  | [**`opencc`**](/ext/e/opencc) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `opencc` |
{.ext-table .wide .expand}


> UTF8; bundled OpenCC 1.4.2.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_opencc` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_opencc_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-opencc` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_opencc_18 pg_opencc_18-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 890.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_opencc_18-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_opencc_18 pg_opencc_18-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 850.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_opencc_18-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_opencc_18 pg_opencc_18-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 799.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_opencc_18-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_opencc_18 pg_opencc_18-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 782.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_opencc_18-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_opencc_18 pg_opencc_18-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 813.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_opencc_18-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_opencc_18 pg_opencc_18-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 790.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_opencc_18-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 784.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 749.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 802.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 764.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 774.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 764.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 764.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 753.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 770.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-opencc postgresql-18-opencc_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 761.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-18-opencc_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_opencc_17 pg_opencc_17-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 890.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_opencc_17-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_opencc_17 pg_opencc_17-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 850.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_opencc_17-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_opencc_17 pg_opencc_17-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 798.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_opencc_17-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_opencc_17 pg_opencc_17-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 782.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_opencc_17-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_opencc_17 pg_opencc_17-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 813.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_opencc_17-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_opencc_17 pg_opencc_17-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 790.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_opencc_17-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 784.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 749.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 802.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 764.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 778.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 767.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 763.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 753.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 769.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-opencc postgresql-17-opencc_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 761.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-17-opencc_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_opencc_16 pg_opencc_16-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 890.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_opencc_16-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_opencc_16 pg_opencc_16-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 850.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_opencc_16-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_opencc_16 pg_opencc_16-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 798.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_opencc_16-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_opencc_16 pg_opencc_16-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 782.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_opencc_16-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_opencc_16 pg_opencc_16-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 813.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_opencc_16-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_opencc_16 pg_opencc_16-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 790.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_opencc_16-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 784.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 749.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 802.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 764.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 778.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 767.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 763.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 753.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 769.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-opencc postgresql-16-opencc_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 761.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-16-opencc_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_opencc_15 pg_opencc_15-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 890.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_opencc_15-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_opencc_15 pg_opencc_15-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 850.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_opencc_15-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_opencc_15 pg_opencc_15-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 799.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_opencc_15-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_opencc_15 pg_opencc_15-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 782.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_opencc_15-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_opencc_15 pg_opencc_15-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 813.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_opencc_15-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_opencc_15 pg_opencc_15-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 790.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_opencc_15-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 784.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 752.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 802.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 764.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 778.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 767.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 763.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 754.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 769.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-opencc postgresql-15-opencc_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 761.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-15-opencc_0.1.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_opencc_14 pg_opencc_14-0.1.0-1PGSTY.el8.x86_64.rpm pigsty 0.1.0 890.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_opencc_14-0.1.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_opencc_14 pg_opencc_14-0.1.0-1PGSTY.el8.aarch64.rpm pigsty 0.1.0 850.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_opencc_14-0.1.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_opencc_14 pg_opencc_14-0.1.0-1PGSTY.el9.x86_64.rpm pigsty 0.1.0 798.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_opencc_14-0.1.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_opencc_14 pg_opencc_14-0.1.0-1PGSTY.el9.aarch64.rpm pigsty 0.1.0 782.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_opencc_14-0.1.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_opencc_14 pg_opencc_14-0.1.0-1PGSTY.el10.x86_64.rpm pigsty 0.1.0 813.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_opencc_14-0.1.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_opencc_14 pg_opencc_14-0.1.0-1PGSTY.el10.aarch64.rpm pigsty 0.1.0 790.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_opencc_14-0.1.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~bookworm_amd64.deb pigsty 0.1.0 784.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~bookworm_arm64.deb pigsty 0.1.0 749.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~trixie_amd64.deb pigsty 0.1.0 802.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~trixie_arm64.deb pigsty 0.1.0 764.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~jammy_amd64.deb pigsty 0.1.0 778.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~jammy_arm64.deb pigsty 0.1.0 767.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~noble_amd64.deb pigsty 0.1.0 763.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~noble_arm64.deb pigsty 0.1.0 753.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~resolute_amd64.deb pigsty 0.1.0 769.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-opencc postgresql-14-opencc_0.1.0-1PGSTY~resolute_arm64.deb pigsty 0.1.0 761.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-opencc/postgresql-14-opencc_0.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_opencc` using `pig build`:

```bash
pig build pkg pg_opencc         # build RPM / DEB packages
```


## Install

You can install `pg_opencc` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_opencc;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_opencc -v 18  # PG 18
pig ext install -y pg_opencc -v 17  # PG 17
pig ext install -y pg_opencc -v 16  # PG 16
pig ext install -y pg_opencc -v 15  # PG 15
pig ext install -y pg_opencc -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_opencc_18       # PG 18
dnf install -y pg_opencc_17       # PG 17
dnf install -y pg_opencc_16       # PG 16
dnf install -y pg_opencc_15       # PG 15
dnf install -y pg_opencc_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-opencc   # PG 18
apt install -y postgresql-17-opencc   # PG 17
apt install -y postgresql-16-opencc   # PG 16
apt install -y postgresql-15-opencc   # PG 15
apt install -y postgresql-14-opencc   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION opencc;
```

## Usage

Sources:

- [pg_opencc 0.1.0 README](https://github.com/pgsty/pg_opencc/blob/v0.1.0/README.md)
- [Extension control file](https://github.com/pgsty/pg_opencc/blob/v0.1.0/opencc.control)
- [SQL API](https://github.com/pgsty/pg_opencc/blob/v0.1.0/sql/opencc--0.1.0.sql)
- [Release notes](https://github.com/pgsty/pg_opencc/releases/tag/v0.1.0)

`opencc`, distributed as `pg_opencc`, converts Simplified Chinese, Traditional Chinese, Taiwan and Hong Kong conventions, and Japanese Shinjitai. Version 0.1.0 embeds OpenCC 1.4.2 and its dictionaries in the shared library; no system OpenCC or external dictionary files are required at runtime.

### Enable and convert

Supports PostgreSQL 14–18 and requires a `UTF8` database. This trusted extension can be installed by a user with `CREATE` privilege on the database. Objects use the fixed `opencc` schema; the extension is not relocatable. Preloading and a server restart are not required.

```sql
CREATE EXTENSION opencc;

SELECT opencc.s2twp('鼠标里面的硅二极管坏了，导致光标分辨率降低。');
SELECT opencc.convert('繁體中文', 't2s');
SELECT * FROM opencc.configs;
```

`opencc.convert(input, config)` selects a conversion explicitly. Wrappers such as `opencc.s2t()` and `opencc.t2s()` provide one function per configuration:

| Configurations | Conversion |
| --- | --- |
| `s2t`, `t2s` | Simplified and Traditional Chinese |
| `s2tw`, `tw2s`, `s2hk`, `hk2s` | Taiwan or Hong Kong character conventions |
| `s2twp`, `tw2sp` | Taiwan regional phrases |
| `s2hkp`, `hk2sp` | Hong Kong regional phrases; developing |
| `t2tw`, `tw2t`, `t2hk`, `hk2t` | Traditional Chinese variant conversion |
| `t2jp`, `jp2t` | Japanese old/new character forms; experimental |

### Regional conversion and inspection

`opencc.localize(input, target, source)` accepts `zh-Hans`, `zh-Hant`, `zh-CN`, `zh-TW`, `zh-HK`, and `ja`. Its default `source => 'auto'` detects the script, but cannot distinguish Taiwan from Hong Kong vocabulary. Supply the source region when regional phrases matter.

```sql
SELECT opencc.localize('滑鼠裡面的矽二極體壞了', 'zh-CN', source => 'zh-TW');
SELECT opencc.detect('中文'), opencc.script_stats('中文');
SELECT * FROM opencc.routes;
SELECT * FROM opencc.ambiguities('大战文丑的时候，他的头发很干燥', 's2t');
SELECT opencc.candidates('发', 's2t');
SELECT * FROM opencc.explain('数据库连接池', 's2twp');
```

| Object | Purpose |
| --- | --- |
| `opencc.detect()` | Classify the script, including mixed or neutral text |
| `opencc.script_stats()` | Count Han, simplified, traditional, and kana characters |
| `opencc.configs`, `opencc.routes` | Inspect configurations and regional conversion chains |
| `opencc.ambiguities()`, `opencc.candidates()` | Inspect ambiguous spans and dictionary candidates |
| `opencc.explain()` | Inspect each conversion stage |
| `opencc.version()` | Report extension, engine, and dictionary digest |
| `opencc.dependents()` | Find dependent database objects and suggested rebuild statements |

### Operation and upgrades

Conversion functions are `IMMUTABLE STRICT PARALLEL SAFE` within an extension version. They can be used in expression indexes and stored generated columns. PostgreSQL 18 generated columns must explicitly use `STORED` for user-defined conversion functions.

Dictionary changes in a future extension release can change conversion results. Inspect `opencc.version()` and review the statements returned by `opencc.dependents()` when upgrading. Dependency discovery does not find calls hidden inside other user-defined functions.

```sql
SELECT * FROM opencc.version();
SELECT * FROM opencc.dependents();
```

Each backend initializes converters on demand. Optional startup preloading can share their memory across backends; changing `shared_preload_libraries` requires a restart:

```ini
shared_preload_libraries = 'opencc'
opencc.preload = 's2t,t2s,s2twp,tw2sp'
```

Merge `opencc` into any existing preload list. `opencc.preload` also accepts `all`. Dropping the extension leaves its empty schema behind.
