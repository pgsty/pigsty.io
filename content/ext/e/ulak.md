---
title: "ulak"
linkTitle: "ulak"
description: "Transactional Outbox extension for PostgreSQL with reliable asynchronous delivery"
weight: 2680
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/zeybek/ulak">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">zeybek/ulak</div>
    <div class="ext-card__desc">https://github.com/zeybek/ulak</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/ulak-0.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">ulak-0.0.2.tar.gz</div>
    <div class="ext-card__desc">ulak-0.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ulak`**](/ext/e/ulak) | `0.0.2` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2680  | [**`ulak`**](/ext/e/ulak) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `ulak` |
{.ext-table}


> preload required; rm README from RPM/DEB


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `ulak` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `ulak_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ulak` | - |
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
@ el8.x86_64 18 ulak_18 ulak_18-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 107.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_18-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 ulak_18 ulak_18-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 106.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_18-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 ulak_18 ulak_18-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 105.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_18-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 ulak_18 ulak_18-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 104.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_18-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 ulak_18 ulak_18-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 105.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_18-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 ulak_18 ulak_18-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 104.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_18-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 273.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 266.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 298.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 291.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 288.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 284.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 305.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 302.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~resolute_amd64.deb pigsty 0.0.2 304.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.0.2-2PIGSTY~resolute_arm64.deb pigsty 0.0.2 299.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-18-ulak_0.0.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 ulak_17 ulak_17-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 107.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_17-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 ulak_17 ulak_17-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 106.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_17-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 ulak_17 ulak_17-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 105.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_17-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 ulak_17 ulak_17-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 104.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_17-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 ulak_17 ulak_17-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 105.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_17-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 ulak_17 ulak_17-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 104.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_17-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 273.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 266.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 298.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 291.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 313.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 309.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 306.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 302.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~resolute_amd64.deb pigsty 0.0.2 304.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.0.2-2PIGSTY~resolute_arm64.deb pigsty 0.0.2 299.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-17-ulak_0.0.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 ulak_16 ulak_16-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 107.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_16-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 ulak_16 ulak_16-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 105.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_16-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 ulak_16 ulak_16-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 105.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_16-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 ulak_16 ulak_16-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 104.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_16-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 ulak_16 ulak_16-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 105.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_16-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 ulak_16 ulak_16-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 104.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_16-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 273.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 267.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 298.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 291.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 313.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 309.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 306.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 302.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~resolute_amd64.deb pigsty 0.0.2 304.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.0.2-2PIGSTY~resolute_arm64.deb pigsty 0.0.2 299.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-16-ulak_0.0.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 ulak_15 ulak_15-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 111.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_15-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 ulak_15 ulak_15-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 109.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_15-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 ulak_15 ulak_15-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 115.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_15-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 ulak_15 ulak_15-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 114.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_15-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 ulak_15 ulak_15-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 115.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_15-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 ulak_15 ulak_15-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 115.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_15-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 277.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 270.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 302.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 294.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 321.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 317.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 314.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 310.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~resolute_amd64.deb pigsty 0.0.2 312.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.0.2-2PIGSTY~resolute_arm64.deb pigsty 0.0.2 308.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-15-ulak_0.0.2-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 ulak_14 ulak_14-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 111.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_14-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 ulak_14 ulak_14-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 109.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_14-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 ulak_14 ulak_14-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 114.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_14-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 ulak_14 ulak_14-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 114.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_14-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 ulak_14 ulak_14-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 115.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_14-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 ulak_14 ulak_14-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 115.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_14-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb pigsty 0.0.2 277.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb pigsty 0.0.2 270.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~trixie_amd64.deb pigsty 0.0.2 301.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~trixie_arm64.deb pigsty 0.0.2 294.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~jammy_amd64.deb pigsty 0.0.2 319.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~jammy_arm64.deb pigsty 0.0.2 316.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~noble_amd64.deb pigsty 0.0.2 313.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~noble_arm64.deb pigsty 0.0.2 310.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~resolute_amd64.deb pigsty 0.0.2 312.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-ulak postgresql-14-ulak_0.0.2-2PIGSTY~resolute_arm64.deb pigsty 0.0.2 308.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-14-ulak_0.0.2-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `ulak` using `pig build`:

```bash
pig build pkg ulak         # build RPM / DEB packages
```


## Install

You can install `ulak` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install ulak;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y ulak -v 18  # PG 18
pig ext install -y ulak -v 17  # PG 17
pig ext install -y ulak -v 16  # PG 16
pig ext install -y ulak -v 15  # PG 15
pig ext install -y ulak -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ulak_18       # PG 18
dnf install -y ulak_17       # PG 17
dnf install -y ulak_16       # PG 16
dnf install -y ulak_15       # PG 15
dnf install -y ulak_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ulak   # PG 18
apt install -y postgresql-17-ulak   # PG 17
apt install -y postgresql-16-ulak   # PG 16
apt install -y postgresql-15-ulak   # PG 15
apt install -y postgresql-14-ulak   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'ulak';
```


**Create Extension**:

```sql
CREATE EXTENSION ulak;
```


## Usage

> Sources: [README](https://github.com/zeybek/ulak/blob/main/README.md), [wiki](https://github.com/zeybek/ulak/wiki), [v0.0.2 release](https://github.com/zeybek/ulak/releases/tag/v0.0.2)

`ulak` implements the transactional outbox pattern inside PostgreSQL. Messages are inserted transactionally, then background workers deliver them asynchronously with retries, circuit breaking, and dead-letter handling.

### Enable the Extension

```sql
-- postgresql.conf
shared_preload_libraries = 'ulak'

CREATE EXTENSION ulak;
```

The README also shows setting `ulak.database` when running the included Docker example.

### Define Endpoints and Send Messages

```sql
SELECT ulak.create_endpoint(
  'my-webhook',
  'http',
  '{"url":"https://httpbin.org/post","method":"POST"}'::jsonb
);

BEGIN;
  INSERT INTO orders (id, total) VALUES (1, 99.99);
  SELECT ulak.send('my-webhook', '{"order_id":1,"total":99.99}'::jsonb);
COMMIT;
```

The same API pattern is documented for `kafka`, `mqtt`, `redis`, `amqp`, and `nats` endpoints.

### Delivery Controls and Pub/Sub

```sql
SELECT ulak.send_with_options(
  'my-webhook',
  '{"event":"order.created"}'::jsonb,
  5,
  NOW() + INTERVAL '10 minutes',
  'order-123-created',
  '550e8400-e29b-41d4-a716-446655440000'::uuid,
  NOW() + INTERVAL '1 hour',
  'order-123'
);

SELECT ulak.send_batch('my-webhook', ARRAY['{"id":1}'::jsonb, '{"id":2}'::jsonb]);

SELECT ulak.create_event_type('order.created', 'New order placed');
SELECT ulak.subscribe('order.created', 'my-webhook');
SELECT ulak.publish('order.created', '{"order_id":123}'::jsonb);
```

### Monitoring and Recovery

```sql
SELECT * FROM ulak.health_check();
SELECT * FROM ulak.get_worker_status();
SELECT * FROM ulak.get_endpoint_health();
SELECT * FROM ulak.dlq_summary();

SELECT ulak.redrive_message(42);
SELECT ulak.redrive_endpoint('my-webhook');
SELECT ulak.redrive_all();
SELECT ulak.replay_message(100);
```

### Key Settings

The README highlights these `ulak.` GUCs:

- `workers`
- `poll_interval`
- `batch_size`
- `max_queue_size`
- `circuit_breaker_threshold`
- `circuit_breaker_cooldown`
- `http_timeout`
- `dlq_retention_days`

The `v0.0.2` release notes only document a Docker publish workflow fix, so the current README and wiki remain the authoritative user-facing usage sources.
