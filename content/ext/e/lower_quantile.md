---
title: "lower_quantile"
linkTitle: "lower_quantile"
description: "Lower quantile aggregate function"
weight: 4620
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/lower_quantile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/lower_quantile</div>
    <div class="ext-card__desc">https://github.com/tvondra/lower_quantile</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/lower_quantile-1.0.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">lower_quantile-1.0.3.tar.gz</div>
    <div class="ext-card__desc">lower_quantile-1.0.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`lower_quantile`**](/ext/e/lower_quantile) | `1.0.3` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4620  | [**`lower_quantile`**](/ext/e/lower_quantile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`quantile`](/ext/e/quantile) [`topn`](/ext/e/topn) [`ddsketch`](/ext/e/ddsketch) [`omnisketch`](/ext/e/omnisketch) [`count_distinct`](/ext/e/count_distinct) [`first_last_agg`](/ext/e/first_last_agg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `lower_quantile` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `lower_quantile_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-lower-quantile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 lower_quantile_18 lower_quantile_18-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lower_quantile_18-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 lower_quantile_18 lower_quantile_18-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lower_quantile_18-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 lower_quantile_18 lower_quantile_18-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lower_quantile_18-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 lower_quantile_18 lower_quantile_18-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lower_quantile_18-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 lower_quantile_18 lower_quantile_18-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lower_quantile_18-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 lower_quantile_18 lower_quantile_18-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lower_quantile_18-1.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 16.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 16.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 16.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-lower-quantile postgresql-18-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-18-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 lower_quantile_17 lower_quantile_17-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lower_quantile_17-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 lower_quantile_17 lower_quantile_17-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lower_quantile_17-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 lower_quantile_17 lower_quantile_17-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lower_quantile_17-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 lower_quantile_17 lower_quantile_17-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lower_quantile_17-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 lower_quantile_17 lower_quantile_17-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lower_quantile_17-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 lower_quantile_17 lower_quantile_17-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lower_quantile_17-1.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 16.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 16.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 16.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 16.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 17.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 17.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 17.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-lower-quantile postgresql-17-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 16.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-17-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 lower_quantile_16 lower_quantile_16-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lower_quantile_16-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 lower_quantile_16 lower_quantile_16-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lower_quantile_16-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 lower_quantile_16 lower_quantile_16-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lower_quantile_16-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 lower_quantile_16 lower_quantile_16-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lower_quantile_16-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 lower_quantile_16 lower_quantile_16-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lower_quantile_16-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 lower_quantile_16 lower_quantile_16-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lower_quantile_16-1.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 17.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 17.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 16.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-lower-quantile postgresql-16-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-16-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 lower_quantile_15 lower_quantile_15-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lower_quantile_15-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 lower_quantile_15 lower_quantile_15-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lower_quantile_15-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 lower_quantile_15 lower_quantile_15-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lower_quantile_15-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 lower_quantile_15 lower_quantile_15-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lower_quantile_15-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 lower_quantile_15 lower_quantile_15-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lower_quantile_15-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 lower_quantile_15 lower_quantile_15-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lower_quantile_15-1.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 17.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 17.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 16.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-lower-quantile postgresql-15-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-15-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 lower_quantile_14 lower_quantile_14-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lower_quantile_14-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 lower_quantile_14 lower_quantile_14-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lower_quantile_14-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 lower_quantile_14 lower_quantile_14-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lower_quantile_14-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 lower_quantile_14 lower_quantile_14-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 15.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lower_quantile_14-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 lower_quantile_14 lower_quantile_14-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lower_quantile_14-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 lower_quantile_14 lower_quantile_14-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lower_quantile_14-1.0.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 16.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 17.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 17.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 16.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-lower-quantile postgresql-14-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 16.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lower-quantile/postgresql-14-lower-quantile_1.0.3-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `lower_quantile` using `pig build`:

```bash
pig build pkg lower_quantile         # build RPM / DEB packages
```


## Install

You can install `lower_quantile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install lower_quantile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y lower_quantile -v 18  # PG 18
pig ext install -y lower_quantile -v 17  # PG 17
pig ext install -y lower_quantile -v 16  # PG 16
pig ext install -y lower_quantile -v 15  # PG 15
pig ext install -y lower_quantile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y lower_quantile_18       # PG 18
dnf install -y lower_quantile_17       # PG 17
dnf install -y lower_quantile_16       # PG 16
dnf install -y lower_quantile_15       # PG 15
dnf install -y lower_quantile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-lower-quantile   # PG 18
apt install -y postgresql-17-lower-quantile   # PG 17
apt install -y postgresql-16-lower-quantile   # PG 16
apt install -y postgresql-15-lower-quantile   # PG 15
apt install -y postgresql-14-lower-quantile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION lower_quantile;
```



## Usage

> [lower_quantile: lower quantile aggregate for PostgreSQL](https://github.com/tvondra/lower_quantile)

Implements the "lower quantile" aggregate, which differs slightly from `percentile_disc` by returning the value whose rank in the sorted multiset is `floor(1 + q*(n-1))`.

```sql
CREATE EXTENSION lower_quantile;
```

### Functions

| Function | Description |
|---|---|
| `lower_quantile(value, quantile float)` | Compute the lower quantile for the given quantile value (0 to 1) |

### Examples

```sql
-- Compute the lower-quantile median
SELECT lower_quantile(i, 0.5)
FROM generate_series(1, 1000) s(i);

-- Compute the 95th lower quantile
SELECT lower_quantile(i, 0.95)
FROM generate_series(1, 1000) s(i);
```

This definition is used by some papers (e.g., the DDSketch paper) to formulate accuracy guarantees.
