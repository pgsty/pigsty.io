---
title: "pg_bikram_sambat"
linkTitle: "pg_bikram_sambat"
description: "Bikram Sambat date type and AD/BS conversion functions"
weight: 3860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/LeohangRai/pg_bikram_sambat">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">LeohangRai/pg_bikram_sambat</div>
    <div class="ext-card__desc">https://github.com/LeohangRai/pg_bikram_sambat</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_bikram_sambat-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_bikram_sambat-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_bikram_sambat-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_bikram_sambat`**](/ext/e/pg_bikram_sambat) | `0.1.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3860  | [**`pg_bikram_sambat`**](/ext/e/pg_bikram_sambat) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_duration`](/ext/e/pg_duration) [`pg_rrule`](/ext/e/pg_rrule) [`pgcalendar`](/ext/e/pgcalendar) [`timestamp9`](/ext/e/timestamp9) [`pg_extra_time`](/ext/e/pg_extra_time) [`periods`](/ext/e/periods) [`temporal_tables`](/ext/e/temporal_tables) [`country`](/ext/e/country) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_bikram_sambat` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_bikram_sambat_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-bikram-sambat` | - |
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
@ el8.x86_64 18 pg_bikram_sambat_18 pg_bikram_sambat_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 22.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bikram_sambat_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_bikram_sambat_18 pg_bikram_sambat_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 22.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bikram_sambat_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_bikram_sambat_18 pg_bikram_sambat_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bikram_sambat_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_bikram_sambat_18 pg_bikram_sambat_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 20.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bikram_sambat_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_bikram_sambat_18 pg_bikram_sambat_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 21.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bikram_sambat_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_bikram_sambat_18 pg_bikram_sambat_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 21.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bikram_sambat_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 67.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 67.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 73.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 73.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 71.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 71.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-bikram-sambat postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-18-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_bikram_sambat_17 pg_bikram_sambat_17-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bikram_sambat_17-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_bikram_sambat_17 pg_bikram_sambat_17-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 22.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bikram_sambat_17-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_bikram_sambat_17 pg_bikram_sambat_17-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bikram_sambat_17-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_bikram_sambat_17 pg_bikram_sambat_17-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 20.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bikram_sambat_17-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_bikram_sambat_17 pg_bikram_sambat_17-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 21.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bikram_sambat_17-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_bikram_sambat_17 pg_bikram_sambat_17-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 21.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bikram_sambat_17-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 67.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 67.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 74.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 74.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 71.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 71.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-bikram-sambat postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 71.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-17-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_bikram_sambat_16 pg_bikram_sambat_16-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 22.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bikram_sambat_16-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_bikram_sambat_16 pg_bikram_sambat_16-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 22.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bikram_sambat_16-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_bikram_sambat_16 pg_bikram_sambat_16-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 21.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bikram_sambat_16-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_bikram_sambat_16 pg_bikram_sambat_16-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 20.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bikram_sambat_16-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_bikram_sambat_16 pg_bikram_sambat_16-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 21.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bikram_sambat_16-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_bikram_sambat_16 pg_bikram_sambat_16-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 21.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bikram_sambat_16-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 66.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 67.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 75.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 75.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 71.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 71.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 73.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-bikram-sambat postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 72.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-16-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_bikram_sambat_15 pg_bikram_sambat_15-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 22.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bikram_sambat_15-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_bikram_sambat_15 pg_bikram_sambat_15-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bikram_sambat_15-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_bikram_sambat_15 pg_bikram_sambat_15-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 22.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bikram_sambat_15-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_bikram_sambat_15 pg_bikram_sambat_15-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 22.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bikram_sambat_15-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_bikram_sambat_15 pg_bikram_sambat_15-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 22.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bikram_sambat_15-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_bikram_sambat_15 pg_bikram_sambat_15-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 22.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bikram_sambat_15-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 67.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 67.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 67.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 68.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 68.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 72.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 71.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 70.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-bikram-sambat postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 70.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-15-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_bikram_sambat_14 pg_bikram_sambat_14-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 22.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_bikram_sambat_14-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_bikram_sambat_14 pg_bikram_sambat_14-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_bikram_sambat_14-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_bikram_sambat_14 pg_bikram_sambat_14-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 22.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_bikram_sambat_14-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_bikram_sambat_14 pg_bikram_sambat_14-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 22.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_bikram_sambat_14-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_bikram_sambat_14 pg_bikram_sambat_14-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 22.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_bikram_sambat_14-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_bikram_sambat_14 pg_bikram_sambat_14-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 22.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_bikram_sambat_14-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 65.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 65.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 66.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 65.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 70.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 70.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 70.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 70.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 69.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-bikram-sambat postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 69.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-bikram-sambat/postgresql-14-pg-bikram-sambat_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_bikram_sambat` using `pig build`:

```bash
pig build pkg pg_bikram_sambat         # build RPM / DEB packages
```


## Install

You can install `pg_bikram_sambat` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_bikram_sambat;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_bikram_sambat -v 18  # PG 18
pig ext install -y pg_bikram_sambat -v 17  # PG 17
pig ext install -y pg_bikram_sambat -v 16  # PG 16
pig ext install -y pg_bikram_sambat -v 15  # PG 15
pig ext install -y pg_bikram_sambat -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_bikram_sambat_18       # PG 18
dnf install -y pg_bikram_sambat_17       # PG 17
dnf install -y pg_bikram_sambat_16       # PG 16
dnf install -y pg_bikram_sambat_15       # PG 15
dnf install -y pg_bikram_sambat_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-bikram-sambat   # PG 18
apt install -y postgresql-17-pg-bikram-sambat   # PG 17
apt install -y postgresql-16-pg-bikram-sambat   # PG 16
apt install -y postgresql-15-pg-bikram-sambat   # PG 15
apt install -y postgresql-14-pg-bikram-sambat   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_bikram_sambat;
```

## Usage

Sources: [PGXN metadata](https://api.pgxn.org/dist/pg_bikram_sambat.json), [PGXN source tree](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/), [type SQL](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/sql/types.sql), [function SQL](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/sql/functions.sql), [operator SQL](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/sql/operators.sql), [cast SQL](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/sql/casts.sql), [regression examples](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/tests/pg_regress/sql/003_functions.sql), [TODO](https://api.pgxn.org/src/pg_bikram_sambat/pg_bikram_sambat-0.1.0/todos.txt)

`pg_bikram_sambat` adds a `bs_date` type for Bikram Sambat dates plus conversion, formatting, comparison, and btree indexing support. Install it as a normal PostgreSQL extension:

```sql
CREATE EXTENSION pg_bikram_sambat;
```

### Date Type

`bs_date` stores a Bikram Sambat date and displays it as `YYYY-MM-DD`. Text input accepts year/month/day values separated with `/`, `-`, or `.`; the input parser also accepts day-first strings when the year appears in the last field.

```sql
SELECT '2057/10/19'::bs_date;
SELECT CAST('2057-10-19' AS bs_date);
SELECT '19.10.2057'::bs_date;
```

Use it in tables like any other PostgreSQL type:

```sql
CREATE TABLE events (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  ad_date date,
  bs bs_date NOT NULL
);

INSERT INTO events (ad_date, bs)
VALUES
  ('2001-02-01', '2057/10/19'),
  ('1972-02-17', '2028/11/05');
```

### Conversion Functions

`ad_to_bs(date)` converts a Gregorian `date` to `bs_date`:

```sql
SELECT ad_to_bs('2001-02-01'::date);  -- 2057-10-19
SELECT ad_to_bs('1972-02-17'::date);  -- 2028-11-05
```

`current_bs_date()` returns the current transaction timestamp converted to `bs_date`, so repeated calls inside the same transaction are stable:

```sql
SELECT current_bs_date();
SELECT pg_typeof(current_bs_date());  -- bs_date
```

Version `0.1.0` does not expose a SQL `bs_to_ad()` function or direct `bs_date` to `date` cast; the upstream TODO file lists those as future work.

### Formatting

The extension overloads PostgreSQL `to_char` for `bs_date`:

```sql
SELECT to_char('2057/10/19'::bs_date, 'YYYY-MM-DD');
SELECT to_char('2057/10/19'::bs_date, 'DD/MM/YYYY');
SELECT to_char('2057/10/19'::bs_date, 'Month DD, YYYY');
SELECT to_char('2057/10/19'::bs_date, 'Day, DD Month YYYY');
```

Supported date-format tokens are `YYYY`, `YY`, `Month`, `Mon`, `MM`, `Day`, `Dy`, and `DD`. Month and weekday names follow the casing of the format token, so `MONTH`, `Month`, and `month` produce upper-case, title-case, and lower-case English names.

Pass `dev` as the third argument for Devanagari digits, month names, and weekday names:

```sql
SELECT to_char('2057/10/19'::bs_date, 'YYYY-MM-DD', 'dev');
SELECT to_char('2057/10/19'::bs_date, 'Day, DD Month YYYY', 'dev');
```

### Operators And Indexes

`bs_date` supports the comparison operators `=`, `<>`, `>`, `>=`, `<`, and `<=`. The default btree operator class `bs_date_ops` enables ordinary btree indexes, range predicates, and ordering:

```sql
CREATE INDEX events_bs_idx ON events (bs);

SELECT * FROM events WHERE bs >= '2057/01/01' ORDER BY bs;
SELECT * FROM events WHERE bs BETWEEN '2056/01/01' AND '2058/12/12';
```

### Caveats

The packaged conversion dataset covers BS years `2000` through `2100`, with `1943-04-14` AD as the reference date for `2000-01-01` BS. Dates before the reference date or beyond the mapped BS range raise PostgreSQL errors. The extension defines an implicit cast from `text` to `bs_date`, but it does not define casts from arbitrary numeric types.
