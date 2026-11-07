---
title: "plx"
linkTitle: "plx"
description: "Transpile multiple procedural dialects to PL/pgSQL"
weight: 3140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/commandprompt/plx">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">commandprompt/plx</div>
    <div class="ext-card__desc">https://github.com/commandprompt/plx</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plx-2.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plx-2.0.1.tar.gz</div>
    <div class="ext-card__desc">plx-2.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plx`**](/ext/e/plx) | `2.0.1` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3140  | [**`plx`**](/ext/e/plx) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plisql`](/ext/e/plisql) [`plpgsql_wrap`](/ext/e/plpgsql_wrap) [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> 2.x NULL interpolation: redeploy function DDL.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `plx` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `plx_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plx` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 | AVAIL PIGSTY 2.0.1 1 |
@ el8.x86_64 18 plx_18 plx_18-2.0.1-1PGSTY.el8.x86_64.rpm pigsty 2.0.1 316.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_18-2.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 plx_18 plx_18-2.0.1-1PGSTY.el8.aarch64.rpm pigsty 2.0.1 311.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_18-2.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 plx_18 plx_18-2.0.1-1PGSTY.el9.x86_64.rpm pigsty 2.0.1 333.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_18-2.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 plx_18 plx_18-2.0.1-1PGSTY.el9.aarch64.rpm pigsty 2.0.1 329.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_18-2.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 plx_18 plx_18-2.0.1-1PGSTY.el10.x86_64.rpm pigsty 2.0.1 338.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_18-2.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 plx_18 plx_18-2.0.1-1PGSTY.el10.aarch64.rpm pigsty 2.0.1 331.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_18-2.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~bookworm_amd64.deb pigsty 2.0.1 309.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~bookworm_arm64.deb pigsty 2.0.1 300.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~trixie_amd64.deb pigsty 2.0.1 310.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~trixie_arm64.deb pigsty 2.0.1 300.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~jammy_amd64.deb pigsty 2.0.1 335.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~jammy_arm64.deb pigsty 2.0.1 330.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~noble_amd64.deb pigsty 2.0.1 330.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~noble_arm64.deb pigsty 2.0.1 324.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~resolute_amd64.deb pigsty 2.0.1 325.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-plx postgresql-18-plx_2.0.1-1PGSTY~resolute_arm64.deb pigsty 2.0.1 319.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-18-plx_2.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 plx_17 plx_17-2.0.1-1PGSTY.el8.x86_64.rpm pigsty 2.0.1 316.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_17-2.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 plx_17 plx_17-2.0.1-1PGSTY.el8.aarch64.rpm pigsty 2.0.1 311.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_17-2.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 plx_17 plx_17-2.0.1-1PGSTY.el9.x86_64.rpm pigsty 2.0.1 332.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_17-2.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 plx_17 plx_17-2.0.1-1PGSTY.el9.aarch64.rpm pigsty 2.0.1 329.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_17-2.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 plx_17 plx_17-2.0.1-1PGSTY.el10.x86_64.rpm pigsty 2.0.1 338.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_17-2.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 plx_17 plx_17-2.0.1-1PGSTY.el10.aarch64.rpm pigsty 2.0.1 331.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_17-2.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~bookworm_amd64.deb pigsty 2.0.1 309.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~bookworm_arm64.deb pigsty 2.0.1 299.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~trixie_amd64.deb pigsty 2.0.1 310.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~trixie_arm64.deb pigsty 2.0.1 300.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~jammy_amd64.deb pigsty 2.0.1 352.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~jammy_arm64.deb pigsty 2.0.1 346.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~noble_amd64.deb pigsty 2.0.1 329.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~noble_arm64.deb pigsty 2.0.1 323.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~resolute_amd64.deb pigsty 2.0.1 325.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-plx postgresql-17-plx_2.0.1-1PGSTY~resolute_arm64.deb pigsty 2.0.1 319.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-17-plx_2.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 plx_16 plx_16-2.0.1-1PGSTY.el8.x86_64.rpm pigsty 2.0.1 316.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_16-2.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 plx_16 plx_16-2.0.1-1PGSTY.el8.aarch64.rpm pigsty 2.0.1 311.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_16-2.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 plx_16 plx_16-2.0.1-1PGSTY.el9.x86_64.rpm pigsty 2.0.1 332.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_16-2.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 plx_16 plx_16-2.0.1-1PGSTY.el9.aarch64.rpm pigsty 2.0.1 329.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_16-2.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 plx_16 plx_16-2.0.1-1PGSTY.el10.x86_64.rpm pigsty 2.0.1 338.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_16-2.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 plx_16 plx_16-2.0.1-1PGSTY.el10.aarch64.rpm pigsty 2.0.1 331.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_16-2.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~bookworm_amd64.deb pigsty 2.0.1 309.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~bookworm_arm64.deb pigsty 2.0.1 300.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~trixie_amd64.deb pigsty 2.0.1 310.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~trixie_arm64.deb pigsty 2.0.1 300.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~jammy_amd64.deb pigsty 2.0.1 350.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~jammy_arm64.deb pigsty 2.0.1 344.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~noble_amd64.deb pigsty 2.0.1 329.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~noble_arm64.deb pigsty 2.0.1 322.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~resolute_amd64.deb pigsty 2.0.1 325.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-plx postgresql-16-plx_2.0.1-1PGSTY~resolute_arm64.deb pigsty 2.0.1 319.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-16-plx_2.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 plx_15 plx_15-2.0.1-1PGSTY.el8.x86_64.rpm pigsty 2.0.1 315.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_15-2.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 plx_15 plx_15-2.0.1-1PGSTY.el8.aarch64.rpm pigsty 2.0.1 311.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_15-2.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 plx_15 plx_15-2.0.1-1PGSTY.el9.x86_64.rpm pigsty 2.0.1 326.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_15-2.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 plx_15 plx_15-2.0.1-1PGSTY.el9.aarch64.rpm pigsty 2.0.1 324.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_15-2.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 plx_15 plx_15-2.0.1-1PGSTY.el10.x86_64.rpm pigsty 2.0.1 330.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_15-2.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 plx_15 plx_15-2.0.1-1PGSTY.el10.aarch64.rpm pigsty 2.0.1 326.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_15-2.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~bookworm_amd64.deb pigsty 2.0.1 308.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~bookworm_arm64.deb pigsty 2.0.1 318.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~trixie_amd64.deb pigsty 2.0.1 309.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~trixie_arm64.deb pigsty 2.0.1 299.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~jammy_amd64.deb pigsty 2.0.1 343.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~jammy_arm64.deb pigsty 2.0.1 340.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~noble_amd64.deb pigsty 2.0.1 321.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~noble_arm64.deb pigsty 2.0.1 319.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~resolute_amd64.deb pigsty 2.0.1 318.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-plx postgresql-15-plx_2.0.1-1PGSTY~resolute_arm64.deb pigsty 2.0.1 315.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-15-plx_2.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 plx_14 plx_14-2.0.1-1PGSTY.el8.x86_64.rpm pigsty 2.0.1 315.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_14-2.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 plx_14 plx_14-2.0.1-1PGSTY.el8.aarch64.rpm pigsty 2.0.1 311.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_14-2.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 plx_14 plx_14-2.0.1-1PGSTY.el9.x86_64.rpm pigsty 2.0.1 326.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_14-2.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 plx_14 plx_14-2.0.1-1PGSTY.el9.aarch64.rpm pigsty 2.0.1 323.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_14-2.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 plx_14 plx_14-2.0.1-1PGSTY.el10.x86_64.rpm pigsty 2.0.1 330.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_14-2.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 plx_14 plx_14-2.0.1-1PGSTY.el10.aarch64.rpm pigsty 2.0.1 326.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_14-2.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~bookworm_amd64.deb pigsty 2.0.1 308.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~bookworm_arm64.deb pigsty 2.0.1 298.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~trixie_amd64.deb pigsty 2.0.1 309.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~trixie_arm64.deb pigsty 2.0.1 299.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~jammy_amd64.deb pigsty 2.0.1 343.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~jammy_arm64.deb pigsty 2.0.1 340.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~noble_amd64.deb pigsty 2.0.1 321.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~noble_arm64.deb pigsty 2.0.1 319.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~resolute_amd64.deb pigsty 2.0.1 318.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-plx postgresql-14-plx_2.0.1-1PGSTY~resolute_arm64.deb pigsty 2.0.1 315.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-14-plx_2.0.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `plx` using `pig build`:

```bash
pig build pkg plx         # build RPM / DEB packages
```


## Install

You can install `plx` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install plx;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y plx -v 18  # PG 18
pig ext install -y plx -v 17  # PG 17
pig ext install -y plx -v 16  # PG 16
pig ext install -y plx -v 15  # PG 15
pig ext install -y plx -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y plx_18       # PG 18
dnf install -y plx_17       # PG 17
dnf install -y plx_16       # PG 16
dnf install -y plx_15       # PG 15
dnf install -y plx_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-plx   # PG 18
apt install -y postgresql-17-plx   # PG 17
apt install -y postgresql-16-plx   # PG 16
apt install -y postgresql-15-plx   # PG 15
apt install -y postgresql-14-plx   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION plx;
```

## Usage

Sources:

- [PGXN plx 2.0.1 README](https://pgxn.org/dist/plx/2.0.1/README.html)
- [plx 2.0.1 user guide](https://api.pgxn.org/src/plx/plx-2.0.1/doc/USERGUIDE.md)
- [plx 2.0.1 compatibility notes](https://api.pgxn.org/src/plx/plx-2.0.1/doc/COMPATIBILITY.md)
- [plx 2.0.1 changelog](https://api.pgxn.org/src/plx/plx-2.0.1/CHANGELOG.md)
- [plx control file](https://api.pgxn.org/src/plx/plx-2.0.1/plx.control)

`plx` provides familiar procedural-language dialects that transpile to ordinary PL/pgSQL when `CREATE FUNCTION` runs. PostgreSQL stores and executes the generated PL/pgSQL with its built-in trusted handler; no Ruby, PHP, JavaScript, Python, Go, COBOL, Oracle, or SQL Server runtime is loaded into the backend.

```sql
CREATE EXTENSION plx;
```

### Available Dialects

| Language | Surface syntax |
|---|---|
| `plxruby` | Ruby |
| `plxphp` | PHP |
| `plxjs` | JavaScript |
| `plxts` | TypeScript annotations over the JavaScript dialect |
| `plxpython3` | Python 3 |
| `plxgo` | Go |
| `plxcobol` | ISO COBOL |
| `plxplsql` | Oracle PL/SQL |
| `plxtsql` | Transact-SQL |

All dialects target the same PL/pgSQL statement surface, including assignments, conditionals, loops, query iteration, dynamic SQL, cursors, exceptions, triggers, and set-returning functions.

### Create a Function

Choose a dialect in the `LANGUAGE` clause while keeping the function signature in PostgreSQL types:

```sql
CREATE FUNCTION grade(score integer)
RETURNS text
LANGUAGE plxruby
AS $$
  grade #:: text
  if score >= 90
    grade = "A"
  elsif score >= 80
    grade = "B"
  else
    grade = "F"
  end
  return grade
$$;

SELECT grade(85);
```

Translation happens once, when the function is created. The executable body stored in `pg_proc.prosrc` is regular PL/pgSQL, so it can be dumped, reviewed, and run without a separate interpreter.

### Inspect and Debug Generated Code

```sql
SELECT pg_get_functiondef('grade(integer)'::regprocedure);
SELECT prosrc
FROM pg_proc
WHERE oid = 'grade(integer)'::regprocedure;

SELECT plx_source('grade(integer)'::regprocedure);
```

Runtime error line numbers refer to generated PL/pgSQL. `plx_source()` recovers the original embedded dialect body; use it together with `pg_get_functiondef()` when correlating an error with the source.

### SQL and String Building

Expressions retain PostgreSQL SQL semantics rather than emulating a complete source-language runtime. Use each dialect's query/execute form for SQL and explicit PostgreSQL types for non-literal expressions. The `plx_strbuild` expanded-object helper accelerates repeated string appends on PostgreSQL 18:

```sql
CREATE FUNCTION labels(n integer)
RETURNS text
LANGUAGE plxjs
AS $$
  let out: text = "";
  for (let i = 1; i <= n; i++) {
    out += `item-${i},`;
  }
  return out;
$$;
```

The builder remains correct on PostgreSQL 13-17, but its in-place optimization requires PostgreSQL 18.

### Boundaries and Caveats

- plx implements syntax surfaces, not the source languages' runtimes: there are no gems, Python modules, JavaScript imports, Go goroutines, PHP classes, Oracle packages, or SQL Server transaction commands.
- Functions run in PL/pgSQL's trusted sandbox, with no direct filesystem, network, arbitrary native-code, or transaction-control access.
- Parameters and return types must be PostgreSQL types. Type inference for locals is limited; explicitly declare types for calls and compound expressions.
- SQL uses three-valued logic and PostgreSQL numeric/string semantics. Source-language truthiness and string concatenation with `+` are not reproduced.
- Locals are hoisted into one PL/pgSQL `DECLARE` block, so block-local scope and redeclaration with a different type are unavailable.
- Distribution 2.0.1 installs extension version 2.0.0; 2.0.1 changes PGXN packaging only and has no SQL upgrade of its own. Version 2.0.0 changes interpolation in `plxruby`, `plxphp`, `plxjs`, `plxts`, `plxpython3`, and `plxgo`: a NULL operand now makes the whole interpolated string NULL instead of silently becoming an empty string. Run `ALTER EXTENSION plx UPDATE TO '2.0.0'`, then redeploy affected functions because existing generated PL/pgSQL in `pg_proc.prosrc` is not rewritten by the extension update.
