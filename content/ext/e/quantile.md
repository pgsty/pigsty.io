---
title: "quantile"
linkTitle: "quantile"
description: "Quantile aggregation function"
weight: 4610
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/quantile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/quantile</div>
    <div class="ext-card__desc">https://github.com/tvondra/quantile</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/quantile-1.1.8.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">quantile-1.1.8.tar.gz</div>
    <div class="ext-card__desc">quantile-1.1.8.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`quantile`**](/ext/e/quantile) | `1.1.8` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4610  | [**`quantile`**](/ext/e/quantile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`lower_quantile`](/ext/e/lower_quantile) [`topn`](/ext/e/topn) [`ddsketch`](/ext/e/ddsketch) [`omnisketch`](/ext/e/omnisketch) [`count_distinct`](/ext/e/count_distinct) [`first_last_agg`](/ext/e/first_last_agg) [`aggs_for_arrays`](/ext/e/aggs_for_arrays) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.8` | {{< pgvers "18,17,16,15,14" >}} | `quantile` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.8` | {{< pgvers "18,17,16,15,14" >}} | `quantile_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.8` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-quantile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 | AVAIL PIGSTY 1.1.8 1 |
@ el8.x86_64 18 quantile_18 quantile_18-1.1.8-1PIGSTY.el8.x86_64.rpm pigsty 1.1.8 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/quantile_18-1.1.8-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 quantile_18 quantile_18-1.1.8-1PIGSTY.el8.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/quantile_18-1.1.8-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 quantile_18 quantile_18-1.1.8-1PIGSTY.el9.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/quantile_18-1.1.8-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 quantile_18 quantile_18-1.1.8-1PIGSTY.el9.aarch64.rpm pigsty 1.1.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/quantile_18-1.1.8-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 quantile_18 quantile_18-1.1.8-1PIGSTY.el10.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/quantile_18-1.1.8-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 quantile_18 quantile_18-1.1.8-1PIGSTY.el10.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/quantile_18-1.1.8-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.1.8 21.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~trixie_amd64.deb pigsty 1.1.8 21.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~trixie_arm64.deb pigsty 1.1.8 21.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~jammy_amd64.deb pigsty 1.1.8 22.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~jammy_arm64.deb pigsty 1.1.8 21.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~noble_amd64.deb pigsty 1.1.8 22.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~noble_arm64.deb pigsty 1.1.8 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~resolute_amd64.deb pigsty 1.1.8 22.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-quantile postgresql-18-quantile_1.1.8-1PIGSTY~resolute_arm64.deb pigsty 1.1.8 22.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-18-quantile_1.1.8-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 quantile_17 quantile_17-1.1.8-1PIGSTY.el8.x86_64.rpm pigsty 1.1.8 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/quantile_17-1.1.8-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 quantile_17 quantile_17-1.1.8-1PIGSTY.el8.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/quantile_17-1.1.8-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 quantile_17 quantile_17-1.1.8-1PIGSTY.el9.x86_64.rpm pigsty 1.1.8 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/quantile_17-1.1.8-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 quantile_17 quantile_17-1.1.8-1PIGSTY.el9.aarch64.rpm pigsty 1.1.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/quantile_17-1.1.8-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 quantile_17 quantile_17-1.1.8-1PIGSTY.el10.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/quantile_17-1.1.8-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 quantile_17 quantile_17-1.1.8-1PIGSTY.el10.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/quantile_17-1.1.8-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.1.8 20.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~trixie_amd64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~trixie_arm64.deb pigsty 1.1.8 21.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~jammy_amd64.deb pigsty 1.1.8 23.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~jammy_arm64.deb pigsty 1.1.8 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~noble_amd64.deb pigsty 1.1.8 22.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~noble_arm64.deb pigsty 1.1.8 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~resolute_amd64.deb pigsty 1.1.8 22.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-quantile postgresql-17-quantile_1.1.8-1PIGSTY~resolute_arm64.deb pigsty 1.1.8 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-17-quantile_1.1.8-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 quantile_16 quantile_16-1.1.8-1PIGSTY.el8.x86_64.rpm pigsty 1.1.8 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/quantile_16-1.1.8-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 quantile_16 quantile_16-1.1.8-1PIGSTY.el8.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/quantile_16-1.1.8-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 quantile_16 quantile_16-1.1.8-1PIGSTY.el9.x86_64.rpm pigsty 1.1.8 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/quantile_16-1.1.8-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 quantile_16 quantile_16-1.1.8-1PIGSTY.el9.aarch64.rpm pigsty 1.1.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/quantile_16-1.1.8-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 quantile_16 quantile_16-1.1.8-1PIGSTY.el10.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/quantile_16-1.1.8-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 quantile_16 quantile_16-1.1.8-1PIGSTY.el10.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/quantile_16-1.1.8-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.1.8 20.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~trixie_amd64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~trixie_arm64.deb pigsty 1.1.8 21.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~jammy_amd64.deb pigsty 1.1.8 23.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~jammy_arm64.deb pigsty 1.1.8 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~noble_amd64.deb pigsty 1.1.8 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~noble_arm64.deb pigsty 1.1.8 21.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~resolute_amd64.deb pigsty 1.1.8 22.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-quantile postgresql-16-quantile_1.1.8-1PIGSTY~resolute_arm64.deb pigsty 1.1.8 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-16-quantile_1.1.8-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 quantile_15 quantile_15-1.1.8-1PIGSTY.el8.x86_64.rpm pigsty 1.1.8 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/quantile_15-1.1.8-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 quantile_15 quantile_15-1.1.8-1PIGSTY.el8.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/quantile_15-1.1.8-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 quantile_15 quantile_15-1.1.8-1PIGSTY.el9.x86_64.rpm pigsty 1.1.8 18.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/quantile_15-1.1.8-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 quantile_15 quantile_15-1.1.8-1PIGSTY.el9.aarch64.rpm pigsty 1.1.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/quantile_15-1.1.8-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 quantile_15 quantile_15-1.1.8-1PIGSTY.el10.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/quantile_15-1.1.8-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 quantile_15 quantile_15-1.1.8-1PIGSTY.el10.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/quantile_15-1.1.8-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.1.8 20.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~trixie_amd64.deb pigsty 1.1.8 21.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~trixie_arm64.deb pigsty 1.1.8 21.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~jammy_amd64.deb pigsty 1.1.8 23.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~jammy_arm64.deb pigsty 1.1.8 22.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~noble_amd64.deb pigsty 1.1.8 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~noble_arm64.deb pigsty 1.1.8 21.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~resolute_amd64.deb pigsty 1.1.8 22.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-quantile postgresql-15-quantile_1.1.8-1PIGSTY~resolute_arm64.deb pigsty 1.1.8 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-15-quantile_1.1.8-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 quantile_14 quantile_14-1.1.8-1PIGSTY.el8.x86_64.rpm pigsty 1.1.8 18.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/quantile_14-1.1.8-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 quantile_14 quantile_14-1.1.8-1PIGSTY.el8.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/quantile_14-1.1.8-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 quantile_14 quantile_14-1.1.8-1PIGSTY.el9.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/quantile_14-1.1.8-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 quantile_14 quantile_14-1.1.8-1PIGSTY.el9.aarch64.rpm pigsty 1.1.8 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/quantile_14-1.1.8-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 quantile_14 quantile_14-1.1.8-1PIGSTY.el10.x86_64.rpm pigsty 1.1.8 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/quantile_14-1.1.8-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 quantile_14 quantile_14-1.1.8-1PIGSTY.el10.aarch64.rpm pigsty 1.1.8 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/quantile_14-1.1.8-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb pigsty 1.1.8 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb pigsty 1.1.8 21.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~trixie_amd64.deb pigsty 1.1.8 21.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~trixie_arm64.deb pigsty 1.1.8 21.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~jammy_amd64.deb pigsty 1.1.8 23.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~jammy_arm64.deb pigsty 1.1.8 22.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~noble_amd64.deb pigsty 1.1.8 22.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~noble_arm64.deb pigsty 1.1.8 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~resolute_amd64.deb pigsty 1.1.8 22.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-quantile postgresql-14-quantile_1.1.8-1PIGSTY~resolute_arm64.deb pigsty 1.1.8 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/q/quantile/postgresql-14-quantile_1.1.8-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `quantile` using `pig build`:

```bash
pig build pkg quantile         # build RPM / DEB packages
```


## Install

You can install `quantile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install quantile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y quantile -v 18  # PG 18
pig ext install -y quantile -v 17  # PG 17
pig ext install -y quantile -v 16  # PG 16
pig ext install -y quantile -v 15  # PG 15
pig ext install -y quantile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y quantile_18       # PG 18
dnf install -y quantile_17       # PG 17
dnf install -y quantile_16       # PG 16
dnf install -y quantile_15       # PG 15
dnf install -y quantile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-quantile   # PG 18
apt install -y postgresql-17-quantile   # PG 17
apt install -y postgresql-16-quantile   # PG 16
apt install -y postgresql-15-quantile   # PG 15
apt install -y postgresql-14-quantile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION quantile;
```




## Usage

> [quantile: quantile aggregate functions for PostgreSQL](https://github.com/tvondra/quantile)

Provides aggregate functions to compute quantiles. Overloaded for `int`, `bigint`, `double precision`, and `numeric`.

```sql
CREATE EXTENSION quantile;
```

### Functions

| Function | Description |
|---|---|
| `quantile(value, quantile float)` | Compute a single quantile (0 to 1) |
| `quantile(value, quantiles float[])` | Compute multiple quantiles at once, returns array |

### Examples

```sql
-- Compute the median (0.5 quantile)
SELECT quantile(i, 0.5) FROM generate_series(1, 1000) s(i);
-- 500

-- Compute the 95th percentile
SELECT quantile(i, 0.95) FROM generate_series(1, 1000) s(i);

-- Compute all quartiles at once (more efficient than separate calls)
SELECT quantile(i, ARRAY[0.25, 0.5, 0.75])
FROM generate_series(1, 1000) s(i);
-- {250, 500, 750}
```

Note: Since PostgreSQL 9.4, built-in `percentile_cont` and `percentile_disc` functions are available. Consider using those first and only use this extension if it provides measurably better performance for your workload.
