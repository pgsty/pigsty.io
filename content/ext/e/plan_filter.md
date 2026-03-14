---
title: "plan_filter"
linkTitle: "plan_filter"
description: "filter statements by their execution plans."
weight: 2810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgexperts/pg_plan_filter">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgexperts/pg_plan_filter</div>
    <div class="ext-card__desc">https://github.com/pgexperts/pg_plan_filter</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_plan_filter.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_plan_filter.tar.gz</div>
    <div class="ext-card__desc">pg_plan_filter.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_plan_filter`**](/ext/e/plan_filter) | `0.0.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2810  | [**`plan_filter`**](/ext/e/plan_filter) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_plan_filter` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_plan_filter_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-plan-filter` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_18-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_18-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_18-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_18-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_18-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_18-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_17-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_17-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_17-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_17-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_17-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_17-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_16-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_16-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_16-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_16-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_16-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_16-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_15-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_15-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_15-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_15-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_15-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_15-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_14-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_14-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_14-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_14-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_14-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_14-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_plan_filter` using `pig build`:

```bash
pig build pkg pg_plan_filter         # build RPM / DEB packages
```


## Install

You can install `pg_plan_filter` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_plan_filter;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_plan_filter -v 18  # PG 18
pig ext install -y pg_plan_filter -v 17  # PG 17
pig ext install -y pg_plan_filter -v 16  # PG 16
pig ext install -y pg_plan_filter -v 15  # PG 15
pig ext install -y pg_plan_filter -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_plan_filter_18       # PG 18
dnf install -y pg_plan_filter_17       # PG 17
dnf install -y pg_plan_filter_16       # PG 16
dnf install -y pg_plan_filter_15       # PG 15
dnf install -y pg_plan_filter_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-plan-filter   # PG 18
apt install -y postgresql-17-pg-plan-filter   # PG 17
apt install -y postgresql-16-pg-plan-filter   # PG 16
apt install -y postgresql-15-pg-plan-filter   # PG 15
apt install -y postgresql-14-pg-plan-filter   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'plan_filter';
```





## Usage

> [plan_filter: filter statements by their execution plans](https://github.com/pgexperts/pg_plan_filter)

The `pg_plan_filter` module tests statements against specific configured criteria before execution, raising an error if the criteria are violated. This allows administrators to prevent execution of certain queries on production databases.

The only criterion currently supported is the maximum allowed estimated cost of the statement plan.

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'plan_filter'
plan_filter.statement_cost_limit = 100000.0
```

The `statement_cost_limit` must be set to a non-zero value to enable filtering. The default is `0` (no filtering).

### GUC Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `plan_filter.statement_cost_limit` | float | `0` | Maximum allowed estimated plan cost. `0` disables filtering |
| `plan_filter.limit_select_only` | bool | `false` | When true, only filter `SELECT` statements |

### Examples

Prevent expensive queries globally:

```ini
plan_filter.statement_cost_limit = 100000.0
```

Limit filtering to SELECT statements only (note: SELECT != READONLY, since SELECT can also modify data):

```ini
plan_filter.limit_select_only = true
```

When the module is running with a non-zero `statement_cost_limit`, it will also prevent `EXPLAIN` on expensive queries. Temporarily bypass the filter:

```sql
BEGIN;
SET LOCAL plan_filter.statement_cost_limit = 0;
EXPLAIN SELECT ...;
COMMIT;
```

Override the limit per user:

```sql
ALTER USER can_run_expensive SET plan_filter.statement_cost_limit = 0;
ALTER USER only_cheap_queries SET plan_filter.statement_cost_limit = 10000;
```

### Caveats

The `statement_cost_limit` cancels plans based on their **estimated cost**. The PostgreSQL planner can return cost estimates unrelated to actual query execution time. Be prepared for false positive cancellations and set the limit generously.
