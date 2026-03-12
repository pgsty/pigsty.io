---
title: "pglinter"
linkTitle: "pglinter"
description: "PostgreSQL Linting and Analysis Extension"
weight: 5090
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pmpetit/pglinter">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pmpetit/pglinter</div>
    <div class="ext-card__desc">https://github.com/pmpetit/pglinter</div>
  </a>
  <a class="ext-card ext-card--source" href="pglinter-1.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglinter-1.1.1.tar.gz</div>
    <div class="ext-card__desc">pglinter-1.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglinter`**](/ext/e/pglinter) | `1.1.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5090  | [**`pglinter`**](/ext/e/pglinter) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`amcheck`](/ext/e/amcheck) [`supautils`](/ext/e/supautils) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `pglinter` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `pglinter_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglinter` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
@ el8.x86_64 18 pglinter_18 pglinter_18-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 578.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_18-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pglinter_18 pglinter_18-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 441.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_18-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pglinter_18 pglinter_18-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 593.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_18-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pglinter_18 pglinter_18-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 469.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_18-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pglinter_18 pglinter_18-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 592.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_18-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pglinter_18 pglinter_18-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 469.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_18-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 487.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 357.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 487.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 357.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 540.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 416.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 535.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 410.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-18-pglinter_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pglinter_17 pglinter_17-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 578.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_17-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pglinter_17 pglinter_17-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 442.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_17-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pglinter_17 pglinter_17-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 592.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_17-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pglinter_17 pglinter_17-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 471.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_17-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pglinter_17 pglinter_17-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 592.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_17-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pglinter_17 pglinter_17-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 471.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_17-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 487.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 358.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 487.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 358.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 540.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 417.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 535.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 412.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-17-pglinter_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pglinter_16 pglinter_16-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 578.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_16-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pglinter_16 pglinter_16-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 441.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_16-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pglinter_16 pglinter_16-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 593.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_16-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pglinter_16 pglinter_16-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 469.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_16-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pglinter_16 pglinter_16-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 593.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_16-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pglinter_16 pglinter_16-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 469.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_16-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 487.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 357.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 487.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 358.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 540.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 416.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 535.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 411.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-16-pglinter_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pglinter_15 pglinter_15-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 578.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_15-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pglinter_15 pglinter_15-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 441.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_15-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pglinter_15 pglinter_15-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 592.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_15-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pglinter_15 pglinter_15-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 469.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_15-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pglinter_15 pglinter_15-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 592.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_15-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pglinter_15 pglinter_15-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 469.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_15-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 487.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 357.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 487.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 357.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 540.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 416.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 535.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 410.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-15-pglinter_1.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pglinter_14 pglinter_14-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 578.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_14-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pglinter_14 pglinter_14-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 441.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_14-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pglinter_14 pglinter_14-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 592.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_14-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pglinter_14 pglinter_14-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 469.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_14-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pglinter_14 pglinter_14-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 592.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_14-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pglinter_14 pglinter_14-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 469.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_14-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 488.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 358.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 487.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 357.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 540.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 416.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 535.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 411.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-14-pglinter_1.1.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pglinter` using `pig build`:

```bash
pig build pkg pglinter         # build RPM / DEB packages
```


## Install

You can install `pglinter` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pglinter;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pglinter -v 18  # PG 18
pig ext install -y pglinter -v 17  # PG 17
pig ext install -y pglinter -v 16  # PG 16
pig ext install -y pglinter -v 15  # PG 15
pig ext install -y pglinter -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pglinter_18       # PG 18
dnf install -y pglinter_17       # PG 17
dnf install -y pglinter_16       # PG 16
dnf install -y pglinter_15       # PG 15
dnf install -y pglinter_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pglinter   # PG 18
apt install -y postgresql-17-pglinter   # PG 17
apt install -y postgresql-16-pglinter   # PG 16
apt install -y postgresql-15-pglinter   # PG 15
apt install -y postgresql-14-pglinter   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pglinter;
```




## Usage

> [pglinter: PostgreSQL Linting and Analysis Extension](https://github.com/pmpetit/pglinter)

pglinter analyzes your database for potential issues, performance problems, and best practice violations. It outputs results in SARIF 2.1.0 format.

### Run Checks

```sql
SELECT pglinter.check();                                -- Run all enabled rules
SELECT pglinter.check_rule('B001');                     -- Run a specific rule
SELECT pglinter.check('/path/to/results.sarif');        -- Save SARIF report to file
SELECT pglinter.check_rule('B001', '/path/to/b001.sarif');
```

### Rule Management

```sql
SELECT pglinter.show_rules();                -- Show all rules and their status
SELECT pglinter.explain_rule('B001');        -- Get rule details and suggested fixes
SELECT pglinter.enable_rule('B001');         -- Enable a specific rule
SELECT pglinter.disable_rule('B001');        -- Disable a specific rule
SELECT pglinter.is_rule_enabled('B001');     -- Check if a rule is enabled
SELECT pglinter.enable_all_rules();
SELECT pglinter.disable_all_rules();
```

### Rule Configuration

```sql
SELECT pglinter.update_rule_levels('B001', 30, 70);   -- Set warning/error thresholds
SELECT pglinter.get_rule_levels('B001');               -- Get current thresholds
SELECT pglinter.export_rules_to_yaml();                -- Export rules to YAML
SELECT pglinter.import_rules_from_yaml('yaml...');     -- Import rules from YAML
```

### Available Rules

**Base (B-series):** B001 tables without PK, B002 redundant indexes, B003 missing FK indexes, B004 unused indexes, B005 uppercase names, B006 unused tables, B007 cross-schema FKs, B008 FK type mismatches, B009 shared trigger functions, B010 reserved keywords, B011 multiple owners per schema.

**Cluster (C-series):** C002 insecure pg_hba.conf entries, C003 MD5 password encryption.

**Schema (S-series):** S001 no default role grants, S002 env prefixes/suffixes, S003 unsecured public schema, S004 system role ownership, S005 multiple owners per schema.
