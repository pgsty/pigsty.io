---
title: "random"
linkTitle: "random"
description: "random data generator"
weight: 4790
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/random">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/random</div>
    <div class="ext-card__desc">https://github.com/tvondra/random</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/random-2.0.0-dev.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">random-2.0.0-dev.tar.gz</div>
    <div class="ext-card__desc">random-2.0.0-dev.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_random`**](/ext/e/random) | `2.0.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4790  | [**`random`**](/ext/e/random) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`permuteseq`](/ext/e/permuteseq) [`tsm_system_rows`](/ext/e/tsm_system_rows) [`tsm_system_time`](/ext/e/tsm_system_time) [`pg_idkit`](/ext/e/pg_idkit) [`sequential_uuids`](/ext/e/sequential_uuids) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_random` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_random_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-random` | - |
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
@ el8.x86_64 18 pg_random_18 pg_random_18-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_random_18-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_random_18 pg_random_18-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_random_18-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_random_18 pg_random_18-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_random_18-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_random_18 pg_random_18-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_random_18-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_random_18 pg_random_18-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_random_18-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_random_18 pg_random_18-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_random_18-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 20.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 21.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 21.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-random postgresql-18-random_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-18-random_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_random_17 pg_random_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_random_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_random_17 pg_random_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_random_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_random_17 pg_random_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_random_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_random_17 pg_random_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_random_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_random_17 pg_random_17-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_random_17-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_random_17 pg_random_17-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_random_17-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 21.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 21.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-random postgresql-17-random_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-17-random_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_random_16 pg_random_16-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_random_16-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_random_16 pg_random_16-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_random_16-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_random_16 pg_random_16-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_random_16-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_random_16 pg_random_16-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 16.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_random_16-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_random_16 pg_random_16-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_random_16-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_random_16 pg_random_16-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_random_16-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 20.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 20.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 21.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 21.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-random postgresql-16-random_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-16-random_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_random_15 pg_random_15-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_random_15-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_random_15 pg_random_15-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_random_15-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_random_15 pg_random_15-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_random_15-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_random_15 pg_random_15-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_random_15-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_random_15 pg_random_15-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_random_15-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_random_15 pg_random_15-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_random_15-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 21.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 21.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-random postgresql-15-random_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 21.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-15-random_2.0.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_random_14 pg_random_14-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_random_14-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_random_14 pg_random_14-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_random_14-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_random_14 pg_random_14-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_random_14-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_random_14 pg_random_14-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_random_14-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_random_14 pg_random_14-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_random_14-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_random_14 pg_random_14-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 16.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_random_14-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 20.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 21.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 21.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-random postgresql-14-random_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 21.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/random/postgresql-14-random_2.0.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_random` using `pig build`:

```bash
pig build pkg pg_random         # build RPM / DEB packages
```


## Install

You can install `pg_random` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_random;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_random -v 18  # PG 18
pig ext install -y pg_random -v 17  # PG 17
pig ext install -y pg_random -v 16  # PG 16
pig ext install -y pg_random -v 15  # PG 15
pig ext install -y pg_random -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_random_18       # PG 18
dnf install -y pg_random_17       # PG 17
dnf install -y pg_random_16       # PG 16
dnf install -y pg_random_15       # PG 15
dnf install -y pg_random_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-random   # PG 18
apt install -y postgresql-17-random   # PG 17
apt install -y postgresql-16-random   # PG 16
apt install -y postgresql-15-random   # PG 15
apt install -y postgresql-14-random   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION random;
```



## Usage

> [random: reproducible random data generators for PostgreSQL](https://github.com/tvondra/random)

Provides functions to generate random values for various data types with reproducible output controlled by a seed.

```sql
CREATE EXTENSION random;
```

### Functions

All functions accept `seed` (for reproducibility) and `nvalues` (number of distinct values).

| Function | Description |
|---|---|
| `random_string(seed, nvalues, min_length, max_length)` | Random ASCII string |
| `random_bytea(seed, nvalues, min_length, max_length)` | Random bytea |
| `random_int(seed, nvalues, min_value, max_value)` | Random 32-bit integer |
| `random_bigint(seed, nvalues, min_value, max_value)` | Random 64-bit integer |
| `random_real(seed, nvalues, min_value, max_value)` | Random 32-bit float |
| `random_double_precision(seed, nvalues, min_value, max_value)` | Random 64-bit float |
| `random_inet(seed, nvalues)` | Random INET address (/32 mask) |
| `random_cnet(seed, nvalues)` | Random CIDR with masks 8/16/24/32 |
| `random_cnet2(seed, nvalues)` | Random CIDR with equal fraction per mask length |
| `random_macaddr(seed, nvalues)` | Random 6-byte MAC address |
| `random_macaddr8(seed, nvalues)` | Random 8-byte MAC address |

### Examples

```sql
-- Generate reproducible random integers
SELECT random_int(42, 100, 1, 1000) FROM generate_series(1, 10);

-- Random strings of length 5-10
SELECT random_string(42, 1000, 5, 10) FROM generate_series(1, 5);

-- Random IP addresses
SELECT random_inet(42, 256) FROM generate_series(1, 5);
```
