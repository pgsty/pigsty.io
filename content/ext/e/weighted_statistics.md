---
title: "weighted_statistics"
linkTitle: "weighted_statistics"
description: "High-performance weighted statistics functions for sparse data"
weight: 4680
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/schmidni/pg_weighted_statistics">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">schmidni/pg_weighted_statistics</div>
    <div class="ext-card__desc">https://github.com/schmidni/pg_weighted_statistics</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_weighted_statistics-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_weighted_statistics-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_weighted_statistics-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_weighted_statistics`**](/ext/e/weighted_statistics) | `1.0.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4680  | [**`weighted_statistics`**](/ext/e/weighted_statistics) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`vasco`](/ext/e/vasco) [`xicor`](/ext/e/xicor) [`pg_math`](/ext/e/pg_math) [`quantile`](/ext/e/quantile) [`fbsql`](/ext/e/fbsql) [`lower_quantile`](/ext/e/lower_quantile) [`ddsketch`](/ext/e/ddsketch) [`tdigest`](/ext/e/tdigest) [`pg_statkit`](/ext/e/pg_statkit) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "19,18,17,16,15" >}} | `pg_weighted_statistics` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "19,18,17,16,15" >}} | `pg_weighted_statistics_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-weighted-statistics` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
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
@ el9.x86_64 19 pg_weighted_statistics_19 pg_weighted_statistics_19-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_weighted_statistics_19-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_weighted_statistics_19 pg_weighted_statistics_19-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 43.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_weighted_statistics_19-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_weighted_statistics_19 pg_weighted_statistics_19-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_weighted_statistics_19-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_weighted_statistics_19 pg_weighted_statistics_19-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 43.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_weighted_statistics_19-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 35.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 34.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 34.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 35.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 35.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 34.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 34.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-weighted-statistics postgresql-19-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 34.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-19-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_weighted_statistics_18 pg_weighted_statistics_18-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 42.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_weighted_statistics_18-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_weighted_statistics_18 pg_weighted_statistics_18-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 41.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_weighted_statistics_18-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_weighted_statistics_18 pg_weighted_statistics_18-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_weighted_statistics_18-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_weighted_statistics_18 pg_weighted_statistics_18-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 43.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_weighted_statistics_18-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_weighted_statistics_18 pg_weighted_statistics_18-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_weighted_statistics_18-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_weighted_statistics_18 pg_weighted_statistics_18-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 43.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_weighted_statistics_18-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 35.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 34.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 34.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 35.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 35.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 34.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 34.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-weighted-statistics postgresql-18-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 34.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-18-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_weighted_statistics_17 pg_weighted_statistics_17-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 42.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_weighted_statistics_17-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_weighted_statistics_17 pg_weighted_statistics_17-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 41.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_weighted_statistics_17-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_weighted_statistics_17 pg_weighted_statistics_17-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_weighted_statistics_17-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_weighted_statistics_17 pg_weighted_statistics_17-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 43.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_weighted_statistics_17-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_weighted_statistics_17 pg_weighted_statistics_17-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_weighted_statistics_17-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_weighted_statistics_17 pg_weighted_statistics_17-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 43.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_weighted_statistics_17-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 34.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 34.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 33.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 36.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 36.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 34.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 34.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-weighted-statistics postgresql-17-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 34.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-17-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_weighted_statistics_16 pg_weighted_statistics_16-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 42.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_weighted_statistics_16-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_weighted_statistics_16 pg_weighted_statistics_16-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 41.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_weighted_statistics_16-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_weighted_statistics_16 pg_weighted_statistics_16-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 43.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_weighted_statistics_16-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_weighted_statistics_16 pg_weighted_statistics_16-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 43.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_weighted_statistics_16-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_weighted_statistics_16 pg_weighted_statistics_16-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 43.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_weighted_statistics_16-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_weighted_statistics_16 pg_weighted_statistics_16-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 43.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_weighted_statistics_16-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 35.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 34.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 33.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 36.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 36.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 34.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 34.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-weighted-statistics postgresql-16-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 34.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-16-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_weighted_statistics_15 pg_weighted_statistics_15-1.0.0-1PGSTY.el8.x86_64.rpm pigsty 1.0.0 42.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_weighted_statistics_15-1.0.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_weighted_statistics_15 pg_weighted_statistics_15-1.0.0-1PGSTY.el8.aarch64.rpm pigsty 1.0.0 41.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_weighted_statistics_15-1.0.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_weighted_statistics_15 pg_weighted_statistics_15-1.0.0-1PGSTY.el9.x86_64.rpm pigsty 1.0.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_weighted_statistics_15-1.0.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_weighted_statistics_15 pg_weighted_statistics_15-1.0.0-1PGSTY.el9.aarch64.rpm pigsty 1.0.0 42.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_weighted_statistics_15-1.0.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_weighted_statistics_15 pg_weighted_statistics_15-1.0.0-1PGSTY.el10.x86_64.rpm pigsty 1.0.0 44.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_weighted_statistics_15-1.0.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_weighted_statistics_15 pg_weighted_statistics_15-1.0.0-1PGSTY.el10.aarch64.rpm pigsty 1.0.0 43.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_weighted_statistics_15-1.0.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb pigsty 1.0.0 35.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb pigsty 1.0.0 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb pigsty 1.0.0 34.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb pigsty 1.0.0 34.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb pigsty 1.0.0 35.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb pigsty 1.0.0 35.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb pigsty 1.0.0 35.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb pigsty 1.0.0 34.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb pigsty 1.0.0 34.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-weighted-statistics postgresql-15-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb pigsty 1.0.0 34.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-weighted-statistics/postgresql-15-weighted-statistics_1.0.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_weighted_statistics` using `pig build`:

```bash
pig build pkg pg_weighted_statistics         # build RPM / DEB packages
```


## Install

You can install `pg_weighted_statistics` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_weighted_statistics;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_weighted_statistics -v 19  # PG 19
pig ext install -y pg_weighted_statistics -v 18  # PG 18
pig ext install -y pg_weighted_statistics -v 17  # PG 17
pig ext install -y pg_weighted_statistics -v 16  # PG 16
pig ext install -y pg_weighted_statistics -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_weighted_statistics_19       # PG 19
dnf install -y pg_weighted_statistics_18       # PG 18
dnf install -y pg_weighted_statistics_17       # PG 17
dnf install -y pg_weighted_statistics_16       # PG 16
dnf install -y pg_weighted_statistics_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-weighted-statistics   # PG 19
apt install -y postgresql-18-weighted-statistics   # PG 18
apt install -y postgresql-17-weighted-statistics   # PG 17
apt install -y postgresql-16-weighted-statistics   # PG 16
apt install -y postgresql-15-weighted-statistics   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION weighted_statistics;
```




## Usage

> [weighted_statistics: weighted statistical functions for PostgreSQL](https://github.com/schmidni/pg_weighted_statistics)

High-performance C extension providing weighted statistical functions with automatic sparse data handling (when `sum(weights) < 1.0`).

```sql
CREATE EXTENSION weighted_statistics;
```

### Functions

| Function | Description |
|---|---|
| `weighted_mean(values[], weights[])` | Weighted mean |
| `weighted_variance(values[], weights[], ddof)` | Weighted variance (ddof: 0=population, 1=sample) |
| `weighted_std(values[], weights[], ddof)` | Weighted standard deviation |
| `weighted_quantile(values[], weights[], quantiles[])` | Empirical CDF quantiles |
| `wquantile(values[], weights[], quantiles[])` | Type 7 (Hyndman-Fan) quantiles |
| `whdquantile(values[], weights[], quantiles[])` | Harrell-Davis quantiles |
| `weighted_median(values[], weights[])` | 50th percentile shortcut (empirical CDF) |

### Examples

```sql
-- Weighted mean
SELECT weighted_mean(ARRAY[1.0, 2.0, 3.0], ARRAY[0.2, 0.3, 0.5]);
-- 2.3

-- Weighted quantiles
SELECT weighted_quantile(ARRAY[10.0, 20.0, 30.0], ARRAY[0.3, 0.4, 0.3], ARRAY[0.25, 0.5, 0.75]);
-- {15.0, 20.0, 25.0}

-- Sparse data (auto-adds implicit zeros when sum(weights) < 1.0)
SELECT weighted_mean(ARRAY[10, 20], ARRAY[0.2, 0.3]);
-- 8.0  (equivalent to weighted_mean(ARRAY[10, 20, 0, 0], ARRAY[0.2, 0.3, 0.25, 0.25]))

-- Multiple statistics
SELECT weighted_mean(vals, weights),
       weighted_std(vals, weights, 1),
       weighted_quantile(vals, weights, ARRAY[0.05, 0.95])
FROM (SELECT array_agg(val) AS vals, array_agg(weight) AS weights FROM data) t;
```
