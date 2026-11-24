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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/ulak-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">ulak-0.3.0.tar.gz</div>
    <div class="ext-card__desc">ulak-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ulak`**](/ext/e/ulak) | `0.3.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2680  | [**`ulak`**](/ext/e/ulak) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `ulak` |
{.ext-table .wide .expand}

| **Related** | [`pgmq`](/ext/e/pgmq) [`pgmb`](/ext/e/pgmb) [`pg_durable`](/ext/e/pg_durable) [`redis`](/ext/e/redis) [`pgq`](/ext/e/pgq) [`pgmqtt`](/ext/e/pgmqtt) [`pg_task`](/ext/e/pg_task) [`tcn`](/ext/e/tcn) [`pg_background`](/ext/e/pg_background) [`fsm_core`](/ext/e/fsm_core) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> preload required; rm README from RPM/DEB


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "19,18,17,16,15" >}} | `ulak` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "19,18,17,16,15" >}} | `ulak_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-ulak` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el9.x86_64 19 ulak_19 ulak_19-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 357.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_19-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 ulak_19 ulak_19-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 353.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_19-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 ulak_19 ulak_19-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 360.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_19-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 ulak_19 ulak_19-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 355.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_19-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 306.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 299.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 337.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 329.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 321.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 316.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 344.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 340.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 342.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-ulak postgresql-19-ulak_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 337.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-19-ulak_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 ulak_18 ulak_18-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 330.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_18-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 ulak_18 ulak_18-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 322.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_18-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 ulak_18 ulak_18-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 358.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_18-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 ulak_18 ulak_18-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 354.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_18-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 ulak_18 ulak_18-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 361.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_18-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 ulak_18 ulak_18-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 356.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_18-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 307.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 300.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 337.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 329.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 322.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 317.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 345.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 340.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 343.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-ulak postgresql-18-ulak_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 338.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-18-ulak_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 ulak_17 ulak_17-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 330.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_17-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 ulak_17 ulak_17-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 322.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_17-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 ulak_17 ulak_17-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 358.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_17-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 ulak_17 ulak_17-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 353.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_17-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 ulak_17 ulak_17-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 361.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_17-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 ulak_17 ulak_17-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 356.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_17-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 307.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 299.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 337.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 329.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 348.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 344.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 345.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 340.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 343.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-ulak postgresql-17-ulak_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 338.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-17-ulak_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 ulak_16 ulak_16-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 330.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_16-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 ulak_16 ulak_16-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 322.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_16-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 ulak_16 ulak_16-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 358.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_16-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 ulak_16 ulak_16-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 353.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_16-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 ulak_16 ulak_16-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 361.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_16-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 ulak_16 ulak_16-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 356.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_16-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 307.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 299.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 337.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 329.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 348.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 344.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 345.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 340.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 343.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-ulak postgresql-16-ulak_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 338.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-16-ulak_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 ulak_15 ulak_15-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 332.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ulak_15-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 ulak_15 ulak_15-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 324.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ulak_15-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 ulak_15 ulak_15-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 366.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ulak_15-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 ulak_15 ulak_15-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 361.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ulak_15-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 ulak_15 ulak_15-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 368.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/ulak_15-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 ulak_15 ulak_15-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 363.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/ulak_15-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 310.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 302.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 342.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 332.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 354.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 352.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 352.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 349.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 350.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-ulak postgresql-15-ulak_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 346.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/ulak/postgresql-15-ulak_0.3.0-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install ulak;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y ulak -v 19  # PG 19
pig ext install -y ulak -v 18  # PG 18
pig ext install -y ulak -v 17  # PG 17
pig ext install -y ulak -v 16  # PG 16
pig ext install -y ulak -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y ulak_19       # PG 19
dnf install -y ulak_18       # PG 18
dnf install -y ulak_17       # PG 17
dnf install -y ulak_16       # PG 16
dnf install -y ulak_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-ulak   # PG 19
apt install -y postgresql-18-ulak   # PG 18
apt install -y postgresql-17-ulak   # PG 17
apt install -y postgresql-16-ulak   # PG 16
apt install -y postgresql-15-ulak   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'ulak';
```


**Create Extension**:

```sql
CREATE EXTENSION ulak;
```

## Usage

Sources:

- [README](https://api.pgxn.org/src/ulak/ulak-0.3.0/README.md)
- [Control](https://api.pgxn.org/src/ulak/ulak-0.3.0/ulak.control)
- [Changelog](https://api.pgxn.org/src/ulak/ulak-0.3.0/CHANGELOG.md)
- [Install SQL](https://api.pgxn.org/src/ulak/ulak-0.3.0/sql/ulak--0.3.0.sql)
- [Upgrade SQL](https://api.pgxn.org/src/ulak/ulak-0.3.0/sql/ulak--0.2.0--0.3.0.sql)

`ulak` implements a transactional outbox: enqueue messages in the same transaction as application data, then deliver them through background workers. Delivery to remote systems is at least once; consumers must tolerate duplicates.

### Enablement

PostgreSQL 14–18 is supported. Set `shared_preload_libraries` and `ulak.database`, restart PostgreSQL, then create the extension in that database. HTTP is built in; Kafka, MQTT, Redis Streams, AMQP and NATS require their optional compiled adapters and client libraries.

```ini
shared_preload_libraries = 'ulak'
ulak.database = 'appdb'
```

```sql
CREATE EXTENSION ulak;
```

### Enqueue and publish

Create endpoints as an administrator; grant application access through `ulak_application`. `ulak_admin` manages endpoints and operations; `ulak_monitor` reads monitoring data. Use `ulak.endpoint_status` for endpoint status without exposing endpoint credentials. A rolled-back transaction leaves no message.

```sql
SELECT ulak.create_endpoint('orders-http', 'http',
  '{"url":"https://example.com/webhook","method":"POST"}'::jsonb);
BEGIN;
SELECT ulak.send('orders-http', '{"event":"order.created","id":123}'::jsonb);
COMMIT;

SELECT ulak.send_batch('orders-http', ARRAY['{"id":1}'::jsonb, '{"id":2}'::jsonb]);
SELECT ulak.create_event_type('order.created', 'Order created');
SELECT ulak.subscribe('order.created', 'orders-http');
SELECT ulak.publish('order.created', '{"id":123}'::jsonb);
```

### Delivery limits and retries

`ulak.send_with_options` adds priority, scheduling, idempotency, expiry and ordering controls. In 0.3.0 all enqueue APIs enforce `ulak.max_payload_size`; oversized payloads raise `54000`. Batch APIs count each row against `ulak.max_queue_size` and raise `53400` on overflow. Stale processing rows consume retry budget and eventually enter the dead-letter queue. Workers use `synchronous_commit = local` and `lock_timeout = 10s`.

### Protocol and upgrade changes

0.3.0 retries HTTP 408/425, Redis OOM/READONLY and unroutable mandatory AMQP messages. Redis TLS now checks hostnames. `ulak.mqtt_default_qos` defaults to 1; multiple workers suffix configured MQTT client IDs with their worker number. NATS message IDs include cluster and database identity; AMQP message IDs use the queue row ID. Review downstream deduplication assumptions. Install the matching library and SQL, restart to load the worker library, and upgrade the extension. External listeners need `ulak.wake_notify = on` to receive `ulak_new_msg`; native workers use shared-memory wakeups.

```sql
ALTER EXTENSION ulak UPDATE TO '0.3.0';
```

### Monitoring and recovery

Tune `ulak.workers`, `ulak.poll_interval`, `ulak.batch_size`, retry and circuit-breaker settings for the workload. Inspect failures before redriving; redrive and replay can deliver an already-observed message again. HTTP SSRF restrictions apply unless explicitly relaxed.

```sql
SELECT * FROM ulak.health_check();
SELECT * FROM ulak.get_worker_status();
SELECT * FROM ulak.get_endpoint_health();
SELECT * FROM ulak.dlq_summary();
SELECT ulak.redrive_endpoint('orders-http');
```
