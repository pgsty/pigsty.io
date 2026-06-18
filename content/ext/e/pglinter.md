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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pglinter-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglinter-2.0.0.tar.gz</div>
    <div class="ext-card__desc">pglinter-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglinter`**](/ext/e/pglinter) | `2.0.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5090  | [**`pglinter`**](/ext/e/pglinter) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`amcheck`](/ext/e/amcheck) [`supautils`](/ext/e/supautils) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pglinter` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pglinter_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglinter` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
@ el8.x86_64 18 pglinter_18 pglinter_18-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 467.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_18-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pglinter_18 pglinter_18-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 408.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_18-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pglinter_18 pglinter_18-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 470.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_18-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pglinter_18 pglinter_18-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 438.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_18-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pglinter_18 pglinter_18-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 470.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_18-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pglinter_18 pglinter_18-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 439.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_18-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 403.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 341.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 403.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 341.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 454.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 397.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 433.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 393.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 432.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pglinter postgresql-18-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 392.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-18-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pglinter_17 pglinter_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 467.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pglinter_17 pglinter_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 408.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pglinter_17 pglinter_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 470.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pglinter_17 pglinter_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 438.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pglinter_17 pglinter_17-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 470.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_17-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pglinter_17 pglinter_17-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 438.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_17-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 402.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 341.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 403.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 341.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 454.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 398.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 433.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 393.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 431.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pglinter postgresql-17-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 392.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-17-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pglinter_16 pglinter_16-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 466.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_16-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pglinter_16 pglinter_16-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 408.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_16-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pglinter_16 pglinter_16-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 469.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_16-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pglinter_16 pglinter_16-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 438.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_16-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pglinter_16 pglinter_16-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 469.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_16-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pglinter_16 pglinter_16-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 439.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_16-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 402.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 341.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 402.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 342.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 453.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 397.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 432.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 394.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 431.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pglinter postgresql-16-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 392.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-16-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pglinter_15 pglinter_15-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 466.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_15-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pglinter_15 pglinter_15-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 408.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_15-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pglinter_15 pglinter_15-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 470.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_15-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pglinter_15 pglinter_15-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 438.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_15-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pglinter_15 pglinter_15-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 470.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_15-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pglinter_15 pglinter_15-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 438.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_15-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 403.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 341.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 402.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 341.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 453.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 397.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 432.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 393.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 431.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pglinter postgresql-15-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 392.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-15-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pglinter_14 pglinter_14-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 466.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglinter_14-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pglinter_14 pglinter_14-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 408.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglinter_14-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pglinter_14 pglinter_14-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 469.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglinter_14-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pglinter_14 pglinter_14-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 438.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglinter_14-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pglinter_14 pglinter_14-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 469.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglinter_14-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pglinter_14 pglinter_14-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 438.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglinter_14-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 403.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 341.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 403.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 341.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 451.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 397.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 432.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 393.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 431.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pglinter postgresql-14-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 392.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglinter/postgresql-14-pglinter_2.0.0-1PIGSTY~resolute_arm64.deb
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

- Sources: [README](https://github.com/pmpetit/pglinter/blob/main/README.md), [how-to](https://github.com/pmpetit/pglinter/blob/main/docs/how-to/README.md), [examples](https://github.com/pmpetit/pglinter/blob/main/docs/examples/README.md), [rules](https://github.com/pmpetit/pglinter/blob/main/docs/rules/README.md), [1.1.2 release](https://github.com/pmpetit/pglinter/releases/tag/1.1.2)

pglinter analyzes a PostgreSQL database for potential issues, performance problems, and best practice violations. Current user docs expose findings through `pglinter.get_violations()`, which returns enabled-rule violations as rows that can be filtered or joined to `pg_identify_object()`.

### Run Checks

```sql
SELECT * FROM pglinter.get_violations();
SELECT * FROM pglinter.get_violations() WHERE rule_code = 'B001';

SELECT
  rule_code,
  (pg_identify_object(classid, objid, objsubid)).type AS object_type,
  (pg_identify_object(classid, objid, objsubid)).schema AS object_schema,
  (pg_identify_object(classid, objid, objsubid)).name AS object_name,
  (pg_identify_object(classid, objid, objsubid)).identity AS object_identity
FROM pglinter.get_violations();
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
SELECT pglinter.show_rule_queries('B001');   -- Inspect the rule query
SELECT pglinter.list_rules();                -- Return a formatted rule list
```

### Rule Import And Export

```sql
SELECT pglinter.export_rules_to_yaml();                -- Export rules to YAML
SELECT pglinter.import_rules_from_yaml('yaml...');     -- Import rules from YAML
SELECT pglinter.export_rules_to_file('/path/to/rules.yaml');
SELECT pglinter.import_rules_from_file('/path/to/rules.yaml');
SELECT pglinter.export_rulemessages_to_yaml();
SELECT pglinter.import_rule_messages_from_yaml('yaml...');
```

### Rule Families

**Base (B-series):** B001 tables without PK, B002 redundant indexes, B003 missing FK indexes, B004 unused indexes, B005 uppercase names, B006 unused tables, B007 cross-schema FKs, B008 FK type mismatches, B009 shared trigger functions, B010 reserved keywords, B011 multiple owners per schema, B012 composite primary keys with more than four columns, B013 row-by-row trigger processing without a `WHERE` clause.

**Cluster (C-series):** C002 insecure pg_hba.conf entries, C003 MD5 password encryption.

**Schema (S-series):** S001 no default role grants, S002 env prefixes/suffixes, S003 unsecured public schema, S004 system role ownership, S005 multiple owners per schema.

### Caveats

Pigsty package metadata is version `1.1.2` for PostgreSQL 14-18 and notes a local PGRX upgrade from `0.16.1` to `0.17.0`. Upstream README compatibility text still says PostgreSQL 13-18 and PGRX `0.16.1`.

The upstream `1.1.2` release adds `B013`. The main README remains partially stale compared with the docs and exported functions, so this stub uses `get_violations()` and omits older unconfirmed `check()`/`check_rule()` examples.
