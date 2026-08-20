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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plx-1.3.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plx-1.3.1.tar.gz</div>
    <div class="ext-card__desc">plx-1.3.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plx`**](/ext/e/plx) | `1.3.1` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3140  | [**`plx`**](/ext/e/plx) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plisql`](/ext/e/plisql) [`plpgsql_wrap`](/ext/e/plpgsql_wrap) [`orafce`](/ext/e/orafce) [`db2fce`](/ext/e/db2fce) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Uses PostgreSQL's built-in PL/pgSQL call handler; no control-file dependency is declared.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `plx` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `plx_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plx` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 | AVAIL PIGSTY 1.3.1 1 |
@ el8.x86_64 18 plx_18 plx_18-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 103.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_18-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 plx_18 plx_18-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 98.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_18-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 plx_18 plx_18-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 110.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_18-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 plx_18 plx_18-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 106.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_18-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 plx_18 plx_18-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 116.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_18-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 plx_18 plx_18-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 109.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_18-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 307.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 296.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 309.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 296.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 324.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 320.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 321.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 315.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~resolute_amd64.deb pigsty 1.3.1 318.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-plx postgresql-18-plx_1.3.1-1PIGSTY~resolute_arm64.deb pigsty 1.3.1 312.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-18-plx_1.3.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 plx_17 plx_17-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 103.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_17-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 plx_17 plx_17-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 98.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_17-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 plx_17 plx_17-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 110.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_17-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 plx_17 plx_17-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 106.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_17-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 plx_17 plx_17-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 116.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_17-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 plx_17 plx_17-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 109.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_17-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 307.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 296.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 309.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 296.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 340.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 337.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 321.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 315.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~resolute_amd64.deb pigsty 1.3.1 317.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-plx postgresql-17-plx_1.3.1-1PIGSTY~resolute_arm64.deb pigsty 1.3.1 312.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-17-plx_1.3.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 plx_16 plx_16-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 103.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_16-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 plx_16 plx_16-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 98.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_16-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 plx_16 plx_16-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 110.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_16-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 plx_16 plx_16-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 106.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_16-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 plx_16 plx_16-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 116.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_16-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 plx_16 plx_16-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 109.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_16-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 307.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 296.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 309.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 296.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 339.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 336.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 321.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 315.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~resolute_amd64.deb pigsty 1.3.1 317.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-plx postgresql-16-plx_1.3.1-1PIGSTY~resolute_arm64.deb pigsty 1.3.1 312.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-16-plx_1.3.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 plx_15 plx_15-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 104.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_15-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 plx_15 plx_15-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 98.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_15-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 plx_15 plx_15-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 110.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_15-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 plx_15 plx_15-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 106.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_15-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 plx_15 plx_15-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 116.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_15-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 plx_15 plx_15-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 109.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_15-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 308.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 296.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 309.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 297.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 339.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 336.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 321.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 315.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~resolute_amd64.deb pigsty 1.3.1 318.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-plx postgresql-15-plx_1.3.1-1PIGSTY~resolute_arm64.deb pigsty 1.3.1 313.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-15-plx_1.3.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 plx_14 plx_14-1.3.1-1PIGSTY.el8.x86_64.rpm pigsty 1.3.1 104.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plx_14-1.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 plx_14 plx_14-1.3.1-1PIGSTY.el8.aarch64.rpm pigsty 1.3.1 98.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plx_14-1.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 plx_14 plx_14-1.3.1-1PIGSTY.el9.x86_64.rpm pigsty 1.3.1 110.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plx_14-1.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 plx_14 plx_14-1.3.1-1PIGSTY.el9.aarch64.rpm pigsty 1.3.1 106.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plx_14-1.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 plx_14 plx_14-1.3.1-1PIGSTY.el10.x86_64.rpm pigsty 1.3.1 116.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plx_14-1.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 plx_14 plx_14-1.3.1-1PIGSTY.el10.aarch64.rpm pigsty 1.3.1 109.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plx_14-1.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~bookworm_amd64.deb pigsty 1.3.1 308.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~bookworm_arm64.deb pigsty 1.3.1 296.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~trixie_amd64.deb pigsty 1.3.1 310.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~trixie_arm64.deb pigsty 1.3.1 297.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~jammy_amd64.deb pigsty 1.3.1 339.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~jammy_arm64.deb pigsty 1.3.1 336.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~noble_amd64.deb pigsty 1.3.1 321.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~noble_arm64.deb pigsty 1.3.1 315.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~resolute_amd64.deb pigsty 1.3.1 318.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-plx postgresql-14-plx_1.3.1-1PIGSTY~resolute_arm64.deb pigsty 1.3.1 313.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plx/postgresql-14-plx_1.3.1-1PIGSTY~resolute_arm64.deb
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

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
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

- [plx 1.3.1 README](https://github.com/commandprompt/plx/blob/v1.3.1/README.md)
- [plx documentation](https://commandprompt.github.io/plx/)
- [plx user guide](https://github.com/commandprompt/plx/blob/v1.3.1/doc/USERGUIDE.md)
- [plx limitations](https://github.com/commandprompt/plx/blob/v1.3.1/doc/LIMITATIONS.md)
- [plx 1.3.1 release](https://github.com/commandprompt/plx/releases/tag/v1.3.1)

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
- Version 1.3.1 is a code-only safety release: it adds lexer/string-builder capacity guards, stack-depth checks, bounded indentation handling, and fixes for raw-string, PHP interpolation, and non-decimal integer literal parsing. After installing the binary, run `ALTER EXTENSION plx UPDATE TO '1.3.1'`.
