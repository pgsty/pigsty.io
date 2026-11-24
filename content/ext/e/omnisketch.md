---
title: "omnisketch"
linkTitle: "omnisketch"
description: "data structure for on-line agg of data into approximate sketch"
weight: 4640
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/omnisketch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/omnisketch</div>
    <div class="ext-card__desc">https://github.com/tvondra/omnisketch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/omnisketch-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">omnisketch-1.0.2.tar.gz</div>
    <div class="ext-card__desc">omnisketch-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`omnisketch`**](/ext/e/omnisketch) | `1.0.2` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4640  | [**`omnisketch`**](/ext/e/omnisketch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`ddsketch`](/ext/e/ddsketch) [`count_distinct`](/ext/e/count_distinct) [`tdigest`](/ext/e/tdigest) [`topn`](/ext/e/topn) [`datasketches`](/ext/e/datasketches) [`hll`](/ext/e/hll) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "19,18,17,16,15" >}} | `omnisketch` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "19,18,17,16,15" >}} | `omnisketch_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-omnisketch` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
@ el9.x86_64 19 omnisketch_19 omnisketch_19-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/omnisketch_19-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 omnisketch_19 omnisketch_19-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 35.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/omnisketch_19-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 omnisketch_19 omnisketch_19-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/omnisketch_19-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 omnisketch_19 omnisketch_19-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 36.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/omnisketch_19-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 26.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 26.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 27.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 27.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 27.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 27.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 27.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-omnisketch postgresql-19-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-19-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 omnisketch_18 omnisketch_18-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 35.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/omnisketch_18-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 omnisketch_18 omnisketch_18-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/omnisketch_18-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 omnisketch_18 omnisketch_18-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/omnisketch_18-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 omnisketch_18 omnisketch_18-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 35.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/omnisketch_18-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 omnisketch_18 omnisketch_18-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/omnisketch_18-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 omnisketch_18 omnisketch_18-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/omnisketch_18-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 26.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 26.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 27.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 27.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 27.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 27.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-omnisketch postgresql-18-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-18-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 omnisketch_17 omnisketch_17-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 34.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/omnisketch_17-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 omnisketch_17 omnisketch_17-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/omnisketch_17-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 omnisketch_17 omnisketch_17-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/omnisketch_17-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 omnisketch_17 omnisketch_17-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 35.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/omnisketch_17-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 omnisketch_17 omnisketch_17-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 35.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/omnisketch_17-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 omnisketch_17 omnisketch_17-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/omnisketch_17-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 26.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 26.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 29.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 27.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 27.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-omnisketch postgresql-17-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 27.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-17-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 omnisketch_16 omnisketch_16-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 34.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/omnisketch_16-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 omnisketch_16 omnisketch_16-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/omnisketch_16-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 omnisketch_16 omnisketch_16-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/omnisketch_16-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 omnisketch_16 omnisketch_16-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 35.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/omnisketch_16-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 omnisketch_16 omnisketch_16-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 35.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/omnisketch_16-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 omnisketch_16 omnisketch_16-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/omnisketch_16-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 26.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 26.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 29.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 27.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-omnisketch postgresql-16-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 27.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-16-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 omnisketch_15 omnisketch_15-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 34.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/omnisketch_15-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 omnisketch_15 omnisketch_15-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/omnisketch_15-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 omnisketch_15 omnisketch_15-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/omnisketch_15-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 omnisketch_15 omnisketch_15-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 35.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/omnisketch_15-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 omnisketch_15 omnisketch_15-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/omnisketch_15-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 omnisketch_15 omnisketch_15-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 36.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/omnisketch_15-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 26.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 26.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 29.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 27.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 27.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-omnisketch postgresql-15-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 27.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/omnisketch/postgresql-15-omnisketch_1.0.2-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `omnisketch` using `pig build`:

```bash
pig build pkg omnisketch         # build RPM / DEB packages
```


## Install

You can install `omnisketch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install omnisketch;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y omnisketch -v 19  # PG 19
pig ext install -y omnisketch -v 18  # PG 18
pig ext install -y omnisketch -v 17  # PG 17
pig ext install -y omnisketch -v 16  # PG 16
pig ext install -y omnisketch -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y omnisketch_19       # PG 19
dnf install -y omnisketch_18       # PG 18
dnf install -y omnisketch_17       # PG 17
dnf install -y omnisketch_16       # PG 16
dnf install -y omnisketch_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-omnisketch   # PG 19
apt install -y postgresql-18-omnisketch   # PG 18
apt install -y postgresql-17-omnisketch   # PG 17
apt install -y postgresql-16-omnisketch   # PG 16
apt install -y postgresql-15-omnisketch   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION omnisketch;
```




## Usage

> [omnisketch: OmniSketch data structure for multi-dimensional stream analytics](https://github.com/tvondra/omnisketch)

Implements OmniSketch for on-line aggregation into approximate sketches and answering count queries with arbitrary predicates on multi-dimensional data.

```sql
CREATE EXTENSION omnisketch;
```

### Functions

| Function | Description |
|---|---|
| `omnisketch(epsilon, delta, record)` | Build a sketch from data with accuracy parameters |
| `omnisketch(sketch)` | Combine multiple compatible sketches |
| `omnisketch_count(sketch)` | Return total records added to the sketch |
| `omnisketch_estimate(sketch, record)` | Estimate count of records matching predicates |

### Parameters

- `epsilon` -- accuracy relative to total records, range `[0,1]` (lower = more accurate, larger sketch)
- `delta` -- accuracy, range `[0,1]`

### Examples

```sql
-- Create sample data
CREATE TABLE data (id INT, a INT, b INT);
INSERT INTO data SELECT i, mod(i,100), mod(i,100) FROM generate_series(1,1000000) s(i);

-- Pre-calculate sketches on partitions
CREATE TABLE sketches AS
SELECT mod(id,10) AS p, omnisketch(0.01, 0.01, (a, b)) AS s
FROM data GROUP BY mod(id,10);

-- Estimate count for condition (a = 10 AND b = 10)
SELECT omnisketch_estimate(omnisketch(s), (10, 10)) FROM sketches;

-- Get total record count
SELECT omnisketch_count(omnisketch(s)) FROM sketches;
```
