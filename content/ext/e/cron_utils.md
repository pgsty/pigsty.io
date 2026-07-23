---
title: "cron_utils"
linkTitle: "cron_utils"
description: "Parse cron expressions and compute previous or next trigger times"
weight: 1140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Myshkouski/pg-cron-utils">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Myshkouski/pg-cron-utils</div>
    <div class="ext-card__desc">https://github.com/Myshkouski/pg-cron-utils</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/cron_utils-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">cron_utils-0.1.0.tar.gz</div>
    <div class="ext-card__desc">cron_utils-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`cron_utils`**](/ext/e/cron_utils) | `0.1.0` | <a class="ext-badge ext-badge--cate time" href="/ext/cate/time">TIME</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1140  | [**`cron_utils`**](/ext/e/cron_utils) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_when`](/ext/e/pg_when) [`pgcalendar`](/ext/e/pgcalendar) [`periods`](/ext/e/periods) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> The PGXN 0.1.0 distribution is marked unstable; the control file marks the extension relocatable.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `cron_utils` | - |
| [**RPM**](/ext/rpm#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `cron_utils_$v` | - |
| [**DEB**](/ext/deb#time) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-cron-utils` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 cron_utils_18 cron_utils_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cron_utils_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 cron_utils_18 cron_utils_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cron_utils_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 cron_utils_18 cron_utils_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cron_utils_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 cron_utils_18 cron_utils_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cron_utils_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 cron_utils_18 cron_utils_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cron_utils_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 cron_utils_18 cron_utils_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cron_utils_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-cron-utils postgresql-18-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-18-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 cron_utils_17 cron_utils_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cron_utils_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 cron_utils_17 cron_utils_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cron_utils_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 cron_utils_17 cron_utils_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cron_utils_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 cron_utils_17 cron_utils_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cron_utils_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 cron_utils_17 cron_utils_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cron_utils_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 cron_utils_17 cron_utils_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cron_utils_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-cron-utils postgresql-17-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-17-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 cron_utils_16 cron_utils_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cron_utils_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 cron_utils_16 cron_utils_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cron_utils_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 cron_utils_16 cron_utils_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cron_utils_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 cron_utils_16 cron_utils_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cron_utils_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 cron_utils_16 cron_utils_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cron_utils_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 cron_utils_16 cron_utils_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cron_utils_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-cron-utils postgresql-16-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-16-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 cron_utils_15 cron_utils_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cron_utils_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 cron_utils_15 cron_utils_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cron_utils_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 cron_utils_15 cron_utils_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cron_utils_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 cron_utils_15 cron_utils_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cron_utils_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 cron_utils_15 cron_utils_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cron_utils_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 cron_utils_15 cron_utils_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cron_utils_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-cron-utils postgresql-15-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-15-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 cron_utils_14 cron_utils_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/cron_utils_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 cron_utils_14 cron_utils_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/cron_utils_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 cron_utils_14 cron_utils_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/cron_utils_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 cron_utils_14 cron_utils_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/cron_utils_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 cron_utils_14 cron_utils_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/cron_utils_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 cron_utils_14 cron_utils_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/cron_utils_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~trixie_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~jammy_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~noble_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-cron-utils postgresql-14-cron-utils_0.1.0-1PIGSTY~resolute_all.deb pigsty 0.1.0 5.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/cron-utils/postgresql-14-cron-utils_0.1.0-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `cron_utils` using `pig build`:

```bash
pig build pkg cron_utils         # build RPM / DEB packages
```


## Install

You can install `cron_utils` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install cron_utils;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y cron_utils -v 18  # PG 18
pig ext install -y cron_utils -v 17  # PG 17
pig ext install -y cron_utils -v 16  # PG 16
pig ext install -y cron_utils -v 15  # PG 15
pig ext install -y cron_utils -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y cron_utils_18       # PG 18
dnf install -y cron_utils_17       # PG 17
dnf install -y cron_utils_16       # PG 16
dnf install -y cron_utils_15       # PG 15
dnf install -y cron_utils_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-cron-utils   # PG 18
apt install -y postgresql-17-cron-utils   # PG 17
apt install -y postgresql-16-cron-utils   # PG 16
apt install -y postgresql-15-cron-utils   # PG 15
apt install -y postgresql-14-cron-utils   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION cron_utils;
```

## Usage

Sources:

- [pg_cron_utils 0.1.0 README](https://github.com/Myshkouski/pg-cron-utils/blob/v0.1.0/README.md)
- [Extension control file](https://github.com/Myshkouski/pg-cron-utils/blob/v0.1.0/cron_utils.control)
- [SQL definitions](https://github.com/Myshkouski/pg-cron-utils/blob/v0.1.0/cron_utils--0.1.0.sql)

`cron_utils` parses five-field cron expressions and calculates trigger timestamps inside PostgreSQL. It is a scheduling utility, not a job runner: use it to preview, validate, or query a schedule, and use a scheduler such as `pg_cron` separately to execute work.

### Core Workflow

```sql
CREATE EXTENSION cron_utils;

-- First trigger at or after the supplied time.
SELECT cron_first_trigger('0 9 * * 1-5', now());

-- Last trigger before the supplied time (strict is true by default).
SELECT cron_last_trigger('0 9 * * 1-5', now());

-- Next five hourly triggers.
SELECT *
FROM cron_iterate_n('0 * * * *', now(), false, 'next', 5);
```

To inspect a bounded window:

```sql
SELECT *
FROM cron_first_last_triggers(
  '0 0 * * *',
  date_trunc('month', now()),
  date_trunc('month', now()) + interval '1 month'
);
```

Either returned boundary can be `NULL` when the expression has no trigger in the window.

### Important Objects

- `cron_parts` is the parsed representation of the minute, hour, day, month, and day-of-week fields.
- `parse_cron(text)` parses `*`, lists, ranges, and step syntax.
- `cron_first_trigger(expr, base_time, strict)` searches forward. With `strict = true`, a trigger exactly at `base_time` is skipped.
- `cron_last_trigger(expr, base_time, strict)` searches backward and defaults to strict matching.
- `cron_first_last_triggers(expr, start_time, end_time)` returns the first and last matches in a window.
- `cron_iterate_n(expr, base_time, strict, direction, max_matches)` returns consecutive matches in the `next` or `prev` direction.

### Semantics and Caveats

Expressions use the standard five fields `minute hour day month dow`; seconds are not accepted. Day-of-week uses `1 = Monday` through `7 = Sunday`. Results are `timestamptz`, so session time zone affects the displayed local time and daylight-saving transitions should be tested for local-time schedules.

The extension is pure SQL/PL/pgSQL, relocatable, and has no `pg_cron` dependency. Its functions are declared immutable and parallel-safe. Version 0.1.0 is marked `unstable` in the control metadata, so pin behavior and retest edge cases before embedding it in a critical scheduler.
