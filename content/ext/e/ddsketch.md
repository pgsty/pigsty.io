---
title: "ddsketch"
linkTitle: "ddsketch"
description: "Provides ddsketch aggregate function"
weight: 4650
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/ddsketch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/ddsketch</div>
    <div class="ext-card__desc">https://github.com/tvondra/ddsketch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/ddsketch-1.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">ddsketch-1.0.1.tar.gz</div>
    <div class="ext-card__desc">ddsketch-1.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ddsketch`**](/ext/e/ddsketch) | `1.0.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4650  | [**`ddsketch`**](/ext/e/ddsketch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`tdigest`](/ext/e/tdigest) [`count_distinct`](/ext/e/count_distinct) [`topn`](/ext/e/topn) [`omnisketch`](/ext/e/omnisketch) [`datasketches`](/ext/e/datasketches) [`hll`](/ext/e/hll) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`weighted_statistics`](/ext/e/weighted_statistics) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `ddsketch` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `ddsketch_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ddsketch` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
@ el8.x86_64 18 ddsketch_18 ddsketch_18-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddsketch_18-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 ddsketch_18 ddsketch_18-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddsketch_18-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 ddsketch_18 ddsketch_18-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 34.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddsketch_18-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 ddsketch_18 ddsketch_18-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 32.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddsketch_18-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 ddsketch_18 ddsketch_18-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddsketch_18-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 ddsketch_18 ddsketch_18-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddsketch_18-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 60.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 60.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 60.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 60.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 64.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 65.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 62.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-ddsketch postgresql-18-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 63.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-18-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 ddsketch_17 ddsketch_17-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddsketch_17-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 ddsketch_17 ddsketch_17-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddsketch_17-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 ddsketch_17 ddsketch_17-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 34.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddsketch_17-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 ddsketch_17 ddsketch_17-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 32.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddsketch_17-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 ddsketch_17 ddsketch_17-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddsketch_17-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 ddsketch_17 ddsketch_17-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddsketch_17-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 60.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 60.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 60.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 60.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 69.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 69.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 63.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 63.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-ddsketch postgresql-17-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-17-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 ddsketch_16 ddsketch_16-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddsketch_16-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 ddsketch_16 ddsketch_16-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddsketch_16-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 ddsketch_16 ddsketch_16-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 34.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddsketch_16-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 ddsketch_16 ddsketch_16-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 32.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddsketch_16-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 ddsketch_16 ddsketch_16-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddsketch_16-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 ddsketch_16 ddsketch_16-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddsketch_16-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 60.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 60.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 60.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 60.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 69.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 69.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 63.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 63.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-ddsketch postgresql-16-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-16-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 ddsketch_15 ddsketch_15-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddsketch_15-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 ddsketch_15 ddsketch_15-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddsketch_15-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 ddsketch_15 ddsketch_15-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 34.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddsketch_15-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 ddsketch_15 ddsketch_15-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 32.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddsketch_15-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 ddsketch_15 ddsketch_15-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddsketch_15-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 ddsketch_15 ddsketch_15-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddsketch_15-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 60.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 60.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 60.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 60.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 69.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 69.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 64.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 63.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-ddsketch postgresql-15-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-15-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 ddsketch_14 ddsketch_14-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 34.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddsketch_14-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 ddsketch_14 ddsketch_14-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 33.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddsketch_14-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 ddsketch_14 ddsketch_14-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 34.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddsketch_14-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 ddsketch_14 ddsketch_14-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 32.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddsketch_14-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 ddsketch_14 ddsketch_14-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 34.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ddsketch_14-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 ddsketch_14 ddsketch_14-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ddsketch_14-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 60.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 60.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 60.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 60.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 69.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 69.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 63.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 63.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-ddsketch postgresql-14-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 63.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddsketch/postgresql-14-ddsketch_1.0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `ddsketch` using `pig build`:

```bash
pig build pkg ddsketch         # build RPM / DEB packages
```


## Install

You can install `ddsketch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install ddsketch;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y ddsketch -v 18  # PG 18
pig ext install -y ddsketch -v 17  # PG 17
pig ext install -y ddsketch -v 16  # PG 16
pig ext install -y ddsketch -v 15  # PG 15
pig ext install -y ddsketch -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ddsketch_18       # PG 18
dnf install -y ddsketch_17       # PG 17
dnf install -y ddsketch_16       # PG 16
dnf install -y ddsketch_15       # PG 15
dnf install -y ddsketch_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ddsketch   # PG 18
apt install -y postgresql-17-ddsketch   # PG 17
apt install -y postgresql-16-ddsketch   # PG 16
apt install -y postgresql-15-ddsketch   # PG 15
apt install -y postgresql-14-ddsketch   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION ddsketch;
```




## Usage

> [ddsketch: DDSketch quantile estimation for PostgreSQL](https://github.com/tvondra/ddsketch)

Implements DDSketch, a fully-mergeable quantile sketch with relative-error guarantees. Much faster than `percentile_cont` and supports parallelism.

```sql
CREATE EXTENSION ddsketch;
```

### Direct Aggregation Functions

| Function | Description |
|---|---|
| `ddsketch_percentile(value, alpha, nbuckets, quantile)` | Estimate a single percentile |
| `ddsketch_percentile(value, alpha, nbuckets, quantiles[])` | Estimate multiple percentiles |
| `ddsketch_percentile_of(value, alpha, nbuckets, value)` | Estimate percentile rank of a value |
| `ddsketch_percentile_of(value, alpha, nbuckets, values[])` | Estimate percentile ranks of multiple values |

### Pre-aggregation Functions

| Function | Description |
|---|---|
| `ddsketch(value, alpha, nbuckets)` | Build a ddsketch from values |
| `ddsketch_percentile(sketch, quantile)` | Estimate percentile from a pre-built sketch |
| `ddsketch_percentile(sketch, quantiles[])` | Estimate multiple percentiles from a pre-built sketch |

### Utility Functions

| Function | Description |
|---|---|
| `ddsketch_count(sketch)` | Return the number of items in the sketch |
| `ddsketch_sum(sketch, low, high)` | Trimmed sum within a value range |
| `ddsketch_avg(sketch, low, high)` | Trimmed average within a value range |

### Parameters

- `alpha` -- controls accuracy and sketch size (lower = more accurate, larger)
- `nbuckets` -- maximum number of buckets (each 8 bytes)

### Examples

```sql
-- Instead of: SELECT percentile_cont(0.95) WITHIN GROUP (ORDER BY a) FROM t;
SELECT ddsketch_percentile(a, 0.05, 1024, 0.95) FROM t;

-- Multiple percentiles at once
SELECT ddsketch_percentile(a, 0.05, 1024, ARRAY[0.5, 0.95, 0.99]) FROM t;

-- Pre-aggregate for fast repeated queries
CREATE TABLE p AS SELECT a, b, ddsketch(c, 0.05, 1024) AS d FROM t GROUP BY a, b;

-- Query pre-aggregated data (~1.5ms vs ~7s for exact)
SELECT a, ddsketch_percentile(d, 0.95) FROM p GROUP BY a ORDER BY a;
```
