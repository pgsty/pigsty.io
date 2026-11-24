---
title: "xicor"
linkTitle: "xicor"
description: "XI Correlation Coefficient in Postgres"
weight: 4670
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Florents-Tselai/pgxicor">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Florents-Tselai/pgxicor</div>
    <div class="ext-card__desc">https://github.com/Florents-Tselai/pgxicor</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgxicor-0.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgxicor-0.1.1.tar.gz</div>
    <div class="ext-card__desc">pgxicor-0.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgxicor`**](/ext/e/xicor) | `0.1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4670  | [**`xicor`**](/ext/e/xicor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`weighted_statistics`](/ext/e/weighted_statistics) [`pg_math`](/ext/e/pg_math) [`vasco`](/ext/e/vasco) [`fbsql`](/ext/e/fbsql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "19,18,17,16,15" >}} | `pgxicor` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "19,18,17,16,15" >}} | `pgxicor_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pgxicor` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 |
@ el9.x86_64 19 pgxicor_19 pgxicor_19-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 37.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgxicor_19-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pgxicor_19 pgxicor_19-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 36.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgxicor_19-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pgxicor_19 pgxicor_19-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgxicor_19-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pgxicor_19 pgxicor_19-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 36.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgxicor_19-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 28.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 27.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pgxicor postgresql-19-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 28.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-19-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pgxicor_18 pgxicor_18-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 37.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgxicor_18-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgxicor_18 pgxicor_18-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgxicor_18-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgxicor_18 pgxicor_18-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 37.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgxicor_18-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgxicor_18 pgxicor_18-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 36.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgxicor_18-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgxicor_18 pgxicor_18-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgxicor_18-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgxicor_18 pgxicor_18-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 36.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgxicor_18-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 28.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 27.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgxicor postgresql-18-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-18-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgxicor_17 pgxicor_17-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 37.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgxicor_17-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgxicor_17 pgxicor_17-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 37.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgxicor_17-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgxicor_17 pgxicor_17-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgxicor_17-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgxicor_17 pgxicor_17-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 36.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgxicor_17-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgxicor_17 pgxicor_17-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgxicor_17-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgxicor_17 pgxicor_17-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 36.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgxicor_17-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 30.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 29.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 27.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgxicor postgresql-17-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-17-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgxicor_16 pgxicor_16-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 37.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgxicor_16-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgxicor_16 pgxicor_16-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 37.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgxicor_16-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgxicor_16 pgxicor_16-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgxicor_16-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgxicor_16 pgxicor_16-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 36.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgxicor_16-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgxicor_16 pgxicor_16-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgxicor_16-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgxicor_16 pgxicor_16-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 36.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgxicor_16-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 30.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 29.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 27.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgxicor postgresql-16-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-16-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgxicor_15 pgxicor_15-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 37.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgxicor_15-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgxicor_15 pgxicor_15-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgxicor_15-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgxicor_15 pgxicor_15-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 37.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgxicor_15-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgxicor_15 pgxicor_15-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 37.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgxicor_15-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgxicor_15 pgxicor_15-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 37.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgxicor_15-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgxicor_15 pgxicor_15-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 37.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgxicor_15-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 30.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 29.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 28.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgxicor postgresql-15-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 28.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgxicor/postgresql-15-pgxicor_0.1.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgxicor` using `pig build`:

```bash
pig build pkg pgxicor         # build RPM / DEB packages
```


## Install

You can install `pgxicor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgxicor;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgxicor -v 19  # PG 19
pig ext install -y pgxicor -v 18  # PG 18
pig ext install -y pgxicor -v 17  # PG 17
pig ext install -y pgxicor -v 16  # PG 16
pig ext install -y pgxicor -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgxicor_19       # PG 19
dnf install -y pgxicor_18       # PG 18
dnf install -y pgxicor_17       # PG 17
dnf install -y pgxicor_16       # PG 16
dnf install -y pgxicor_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pgxicor   # PG 19
apt install -y postgresql-18-pgxicor   # PG 18
apt install -y postgresql-17-pgxicor   # PG 17
apt install -y postgresql-16-pgxicor   # PG 16
apt install -y postgresql-15-pgxicor   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION xicor;
```




## Usage

Sources: [README](https://github.com/Florents-Tselai/pgxicor/blob/main/README.md), [release 0.1.1](https://github.com/Florents-Tselai/pgxicor/releases/tag/v0.1.1)

`xicor` exposes the XI (Chatterjee's xi) correlation coefficient as a PostgreSQL aggregate. It is meant for detecting functional dependence, including non-linear relationships that Pearson's `corr()` can miss.

```sql
CREATE EXTENSION xicor;
```

### Main Aggregate

```sql
SELECT xicor(x, y) FROM xicor_test;
```

The upstream example contrasts it with `corr()` on a parabola-shaped dataset, where `corr()` is near zero while `xicor()` remains high.

### Example

```sql
CREATE TABLE xicor_test (x float8, y float8);
INSERT INTO xicor_test (x, y) VALUES
  (1.0, 2.0),
  (2.5, 3.5),
  (3.0, 4.0),
  (4.5, 5.5),
  (5.0, 6.0);

SELECT xicor(x, y) FROM xicor_test;
```

### Reproducibility Controls

For tied data, upstream recommends enabling deterministic tie handling:

```sql
SET xicor.ties = true;
SET xicor.seed = 42;
```

### Caveats

- `xicor()` is an aggregate over two numeric inputs, not a general-purpose statistical framework.
- Tie handling can change results unless you enable the documented GUCs for reproducible behavior.
