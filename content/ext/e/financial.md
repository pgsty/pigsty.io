---
title: "financial"
linkTitle: "financial"
description: "Financial aggregate functions"
weight: 4840
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/intgr/pg_financial">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">intgr/pg_financial</div>
    <div class="ext-card__desc">https://github.com/intgr/pg_financial</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_financial-1.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_financial-1.0.1.tar.gz</div>
    <div class="ext-card__desc">pg_financial-1.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_financial`**](/ext/e/financial) | `1.0.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4840  | [**`financial`**](/ext/e/financial) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`count_distinct`](/ext/e/count_distinct) [`omnisketch`](/ext/e/omnisketch) [`ddsketch`](/ext/e/ddsketch) [`tdigest`](/ext/e/tdigest) [`first_last_agg`](/ext/e/first_last_agg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_financial` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_financial_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-financial` | - |
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
@ el8.x86_64 18 pg_financial_18 pg_financial_18-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_financial_18-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_financial_18 pg_financial_18-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 14.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_financial_18-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_financial_18 pg_financial_18-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_financial_18-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_financial_18 pg_financial_18-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_financial_18-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_financial_18 pg_financial_18-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_financial_18-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_financial_18 pg_financial_18-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_financial_18-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 13.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-financial postgresql-18-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-18-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_financial_17 pg_financial_17-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_financial_17-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_financial_17 pg_financial_17-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 14.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_financial_17-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_financial_17 pg_financial_17-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_financial_17-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_financial_17 pg_financial_17-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_financial_17-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_financial_17 pg_financial_17-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_financial_17-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_financial_17 pg_financial_17-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_financial_17-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 13.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-financial postgresql-17-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-17-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_financial_16 pg_financial_16-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_financial_16-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_financial_16 pg_financial_16-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 14.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_financial_16-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_financial_16 pg_financial_16-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_financial_16-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_financial_16 pg_financial_16-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_financial_16-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_financial_16 pg_financial_16-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_financial_16-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_financial_16 pg_financial_16-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_financial_16-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 13.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-financial postgresql-16-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-16-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_financial_15 pg_financial_15-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_financial_15-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_financial_15 pg_financial_15-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 14.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_financial_15-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_financial_15 pg_financial_15-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_financial_15-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_financial_15 pg_financial_15-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_financial_15-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_financial_15 pg_financial_15-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_financial_15-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_financial_15 pg_financial_15-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_financial_15-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 13.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-financial postgresql-15-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-15-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_financial_14 pg_financial_14-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_financial_14-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_financial_14 pg_financial_14-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 14.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_financial_14-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_financial_14 pg_financial_14-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_financial_14-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_financial_14 pg_financial_14-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_financial_14-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_financial_14 pg_financial_14-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_financial_14-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_financial_14 pg_financial_14-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 14.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_financial_14-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb pigsty 1.0.1 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb pigsty 1.0.1 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb pigsty 1.0.1 13.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb pigsty 1.0.1 13.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-financial postgresql-14-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb pigsty 1.0.1 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-financial/postgresql-14-pg-financial_1.0.1-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_financial` using `pig build`:

```bash
pig build pkg pg_financial         # build RPM / DEB packages
```


## Install

You can install `pg_financial` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_financial;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_financial -v 18  # PG 18
pig ext install -y pg_financial -v 17  # PG 17
pig ext install -y pg_financial -v 16  # PG 16
pig ext install -y pg_financial -v 15  # PG 15
pig ext install -y pg_financial -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_financial_18       # PG 18
dnf install -y pg_financial_17       # PG 17
dnf install -y pg_financial_16       # PG 16
dnf install -y pg_financial_15       # PG 15
dnf install -y pg_financial_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-financial   # PG 18
apt install -y postgresql-17-pg-financial   # PG 17
apt install -y postgresql-16-pg-financial   # PG 16
apt install -y postgresql-15-pg-financial   # PG 15
apt install -y postgresql-14-pg-financial   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION financial;
```



## Usage

> [financial: financial calculation functions for PostgreSQL](https://github.com/intgr/pg_financial)

Provides the XIRR (Irregular Internal Rate of Return) aggregate function, similar to XIRR in spreadsheet programs.

```sql
CREATE EXTENSION financial;
```

### Functions

| Function | Description |
|---|---|
| `xirr(amount float8, date timestamptz [, guess float8] ORDER BY date)` | Compute Irregular Internal Rate of Return |

### Examples

```sql
-- Basic XIRR calculation
SELECT xirr(amount, time ORDER BY time) FROM transaction;
-- 0.0176201237088334

-- With explicit initial guess (Excel-compatible default is 0.1)
SELECT xirr(amount, time, 0.1 ORDER BY time) FROM transaction;

-- Per-portfolio XIRR
SELECT portfolio, xirr(amount, time ORDER BY time)
FROM transaction
GROUP BY portfolio;

-- As a window function
SELECT xirr(amount, time) OVER (ORDER BY time)
FROM transaction;
```

Returns NULL when Newton's method fails to converge. Providing a better guess may help in some cases.
