---
title: "explain_ui"
linkTitle: "explain_ui"
description: "easily jump into a visual plan UI for any SQL query"
weight: 6540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/davidgomes/pg-explain-ui">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">davidgomes/pg-explain-ui</div>
    <div class="ext-card__desc">https://github.com/davidgomes/pg-explain-ui</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_explain_ui-0.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_explain_ui-0.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_explain_ui-0.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_explain_ui`**](/ext/e/explain_ui) | `0.0.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6540  | [**`explain_ui`**](/ext/e/explain_ui) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_show_plans`](/ext/e/pg_show_plans) [`auto_explain`](/ext/e/auto_explain) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_qualstats`](/ext/e/pg_qualstats) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_profile`](/ext/e/pg_profile) [`powa`](/ext/e/powa) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_explain_ui` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_explain_ui_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-explain-ui` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
@ el8.x86_64 18 pg_explain_ui_18 pg_explain_ui_18-0.0.2-3PIGSTY.el8.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_explain_ui_18-0.0.2-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_explain_ui_18 pg_explain_ui_18-0.0.2-3PIGSTY.el8.aarch64.rpm pigsty 0.0.2 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_explain_ui_18-0.0.2-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_explain_ui_18 pg_explain_ui_18-0.0.2-3PIGSTY.el9.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_explain_ui_18-0.0.2-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_explain_ui_18 pg_explain_ui_18-0.0.2-3PIGSTY.el9.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_explain_ui_18-0.0.2-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_explain_ui_18 pg_explain_ui_18-0.0.2-3PIGSTY.el10.x86_64.rpm pigsty 0.0.2 2.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_explain_ui_18-0.0.2-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_explain_ui_18 pg_explain_ui_18-0.0.2-3PIGSTY.el10.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_explain_ui_18-0.0.2-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-explain-ui postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-18-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_explain_ui_17 pg_explain_ui_17-0.0.2-3PIGSTY.el8.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_explain_ui_17-0.0.2-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_explain_ui_17 pg_explain_ui_17-0.0.2-3PIGSTY.el8.aarch64.rpm pigsty 0.0.2 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_explain_ui_17-0.0.2-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_explain_ui_17 pg_explain_ui_17-0.0.2-3PIGSTY.el9.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_explain_ui_17-0.0.2-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_explain_ui_17 pg_explain_ui_17-0.0.2-3PIGSTY.el9.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_explain_ui_17-0.0.2-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_explain_ui_17 pg_explain_ui_17-0.0.2-3PIGSTY.el10.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_explain_ui_17-0.0.2-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_explain_ui_17 pg_explain_ui_17-0.0.2-3PIGSTY.el10.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_explain_ui_17-0.0.2-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-explain-ui postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-17-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_explain_ui_16 pg_explain_ui_16-0.0.2-3PIGSTY.el8.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_explain_ui_16-0.0.2-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_explain_ui_16 pg_explain_ui_16-0.0.2-3PIGSTY.el8.aarch64.rpm pigsty 0.0.2 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_explain_ui_16-0.0.2-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_explain_ui_16 pg_explain_ui_16-0.0.2-3PIGSTY.el9.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_explain_ui_16-0.0.2-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_explain_ui_16 pg_explain_ui_16-0.0.2-3PIGSTY.el9.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_explain_ui_16-0.0.2-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_explain_ui_16 pg_explain_ui_16-0.0.2-3PIGSTY.el10.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_explain_ui_16-0.0.2-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_explain_ui_16 pg_explain_ui_16-0.0.2-3PIGSTY.el10.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_explain_ui_16-0.0.2-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-explain-ui postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-16-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_explain_ui_15 pg_explain_ui_15-0.0.2-3PIGSTY.el8.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_explain_ui_15-0.0.2-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_explain_ui_15 pg_explain_ui_15-0.0.2-3PIGSTY.el8.aarch64.rpm pigsty 0.0.2 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_explain_ui_15-0.0.2-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_explain_ui_15 pg_explain_ui_15-0.0.2-3PIGSTY.el9.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_explain_ui_15-0.0.2-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_explain_ui_15 pg_explain_ui_15-0.0.2-3PIGSTY.el9.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_explain_ui_15-0.0.2-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_explain_ui_15 pg_explain_ui_15-0.0.2-3PIGSTY.el10.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_explain_ui_15-0.0.2-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_explain_ui_15 pg_explain_ui_15-0.0.2-3PIGSTY.el10.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_explain_ui_15-0.0.2-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-explain-ui postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-15-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_explain_ui_14 pg_explain_ui_14-0.0.2-3PIGSTY.el8.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_explain_ui_14-0.0.2-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_explain_ui_14 pg_explain_ui_14-0.0.2-3PIGSTY.el8.aarch64.rpm pigsty 0.0.2 1.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_explain_ui_14-0.0.2-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_explain_ui_14 pg_explain_ui_14-0.0.2-3PIGSTY.el9.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_explain_ui_14-0.0.2-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_explain_ui_14 pg_explain_ui_14-0.0.2-3PIGSTY.el9.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_explain_ui_14-0.0.2-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_explain_ui_14 pg_explain_ui_14-0.0.2-3PIGSTY.el10.x86_64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_explain_ui_14-0.0.2-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_explain_ui_14 pg_explain_ui_14-0.0.2-3PIGSTY.el10.aarch64.rpm pigsty 0.0.2 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_explain_ui_14-0.0.2-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb pigsty 0.0.2 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb pigsty 0.0.2 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb pigsty 0.0.2 1.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-explain-ui postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb pigsty 0.0.2 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-explain-ui/postgresql-14-pg-explain-ui_0.0.2-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_explain_ui` using `pig build`:

```bash
pig build pkg pg_explain_ui         # build RPM / DEB packages
```


## Install

You can install `pg_explain_ui` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_explain_ui;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_explain_ui -v 18  # PG 18
pig ext install -y pg_explain_ui -v 17  # PG 17
pig ext install -y pg_explain_ui -v 16  # PG 16
pig ext install -y pg_explain_ui -v 15  # PG 15
pig ext install -y pg_explain_ui -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_explain_ui_18       # PG 18
dnf install -y pg_explain_ui_17       # PG 17
dnf install -y pg_explain_ui_16       # PG 16
dnf install -y pg_explain_ui_15       # PG 15
dnf install -y pg_explain_ui_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-explain-ui   # PG 18
apt install -y postgresql-17-pg-explain-ui   # PG 17
apt install -y postgresql-16-pg-explain-ui   # PG 16
apt install -y postgresql-15-pg-explain-ui   # PG 15
apt install -y postgresql-14-pg-explain-ui   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION explain_ui;
```




## Usage

> [explain_ui: generate visual explain plan URLs from SQL](https://github.com/davidgomes/pg-explain-ui)

explain_ui provides a function that takes a SQL query, runs `EXPLAIN` on it, and uploads the plan to Dalibo's explain visualizer, returning a shareable URL.

### Function

```sql
SELECT explain_ui($$
  SELECT b.title, a.name, p.name
  FROM books b
  INNER JOIN authors a ON b.author_id = a.author_id
  INNER JOIN publishers p ON b.publisher_id = p.publisher_id
  ORDER BY b.publication_date DESC
$$);

                    explain_ui
--------------------------------------------------
 https://explain.dalibo.com/plan/ccg2e5fedd913bb7
```

The function:
1. Runs `EXPLAIN (FORMAT JSON)` on the provided SQL query
2. Uploads the plan to [explain.dalibo.com](https://explain.dalibo.com/)
3. Returns a URL to the visual plan representation

The visualizer is built on [pev2](https://github.com/dalibo/pev2) (PostgreSQL Explain Visualizer 2), providing an interactive graphical view of query execution plans.
