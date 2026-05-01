---
title: "pg_cheat_funcs"
linkTitle: "pg_cheat_funcs"
description: "Provides cheat (but useful) functions"
weight: 5220
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/MasaoFujii/pg_cheat_funcs">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">MasaoFujii/pg_cheat_funcs</div>
    <div class="ext-card__desc">https://github.com/MasaoFujii/pg_cheat_funcs</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_cheat_funcs-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_cheat_funcs-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_cheat_funcs-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_cheat_funcs`**](/ext/e/pg_cheat_funcs) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5220  | [**`pg_cheat_funcs`**](/ext/e/pg_cheat_funcs) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_crash`](/ext/e/pg_crash) [`pg_snakeoil`](/ext/e/pg_snakeoil) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pg_savior`](/ext/e/pg_savior) [`pg_surgery`](/ext/e/pg_surgery) [`adminpack`](/ext/e/adminpack) [`pageinspect`](/ext/e/pageinspect) [`pg_repack`](/ext/e/pg_repack) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_cheat_funcs` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_cheat_funcs_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-cheat-funcs` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 pg_cheat_funcs_18 pg_cheat_funcs_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 48.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cheat_funcs_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_cheat_funcs_18 pg_cheat_funcs_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 48.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cheat_funcs_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_cheat_funcs_18 pg_cheat_funcs_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cheat_funcs_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_cheat_funcs_18 pg_cheat_funcs_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 53.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cheat_funcs_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_cheat_funcs_18 pg_cheat_funcs_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cheat_funcs_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_cheat_funcs_18 pg_cheat_funcs_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cheat_funcs_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 93.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 92.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 93.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 92.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 118.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 118.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 111.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 110.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 110.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-cheat-funcs postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 110.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-18-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_cheat_funcs_17 pg_cheat_funcs_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 48.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cheat_funcs_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_cheat_funcs_17 pg_cheat_funcs_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 48.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cheat_funcs_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_cheat_funcs_17 pg_cheat_funcs_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cheat_funcs_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_cheat_funcs_17 pg_cheat_funcs_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cheat_funcs_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_cheat_funcs_17 pg_cheat_funcs_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cheat_funcs_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_cheat_funcs_17 pg_cheat_funcs_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cheat_funcs_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 93.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 93.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 93.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 93.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 124.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 123.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 111.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 110.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 111.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-cheat-funcs postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 110.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-17-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_cheat_funcs_16 pg_cheat_funcs_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 48.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cheat_funcs_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_cheat_funcs_16 pg_cheat_funcs_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 48.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cheat_funcs_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_cheat_funcs_16 pg_cheat_funcs_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 53.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cheat_funcs_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_cheat_funcs_16 pg_cheat_funcs_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cheat_funcs_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_cheat_funcs_16 pg_cheat_funcs_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cheat_funcs_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_cheat_funcs_16 pg_cheat_funcs_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 53.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cheat_funcs_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 93.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 93.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 93.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 93.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 123.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 123.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 111.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 110.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 111.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-cheat-funcs postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 110.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-16-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_cheat_funcs_15 pg_cheat_funcs_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 49.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cheat_funcs_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_cheat_funcs_15 pg_cheat_funcs_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 48.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cheat_funcs_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_cheat_funcs_15 pg_cheat_funcs_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cheat_funcs_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_cheat_funcs_15 pg_cheat_funcs_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 53.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cheat_funcs_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_cheat_funcs_15 pg_cheat_funcs_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 53.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cheat_funcs_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_cheat_funcs_15 pg_cheat_funcs_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cheat_funcs_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 94.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 93.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 94.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 93.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 124.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 124.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 112.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 111.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 111.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-cheat-funcs postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 111.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-15-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_cheat_funcs_14 pg_cheat_funcs_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 48.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_cheat_funcs_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_cheat_funcs_14 pg_cheat_funcs_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 48.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_cheat_funcs_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_cheat_funcs_14 pg_cheat_funcs_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_cheat_funcs_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_cheat_funcs_14 pg_cheat_funcs_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 53.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_cheat_funcs_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_cheat_funcs_14 pg_cheat_funcs_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 53.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_cheat_funcs_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_cheat_funcs_14 pg_cheat_funcs_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_cheat_funcs_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 93.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 92.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 93.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 92.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 124.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 123.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 111.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 110.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 111.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-cheat-funcs postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 111.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-cheat-funcs/postgresql-14-pg-cheat-funcs_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_cheat_funcs` using `pig build`:

```bash
pig build pkg pg_cheat_funcs         # build RPM / DEB packages
```


## Install

You can install `pg_cheat_funcs` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_cheat_funcs;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_cheat_funcs -v 18  # PG 18
pig ext install -y pg_cheat_funcs -v 17  # PG 17
pig ext install -y pg_cheat_funcs -v 16  # PG 16
pig ext install -y pg_cheat_funcs -v 15  # PG 15
pig ext install -y pg_cheat_funcs -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_cheat_funcs_18       # PG 18
dnf install -y pg_cheat_funcs_17       # PG 17
dnf install -y pg_cheat_funcs_16       # PG 16
dnf install -y pg_cheat_funcs_15       # PG 15
dnf install -y pg_cheat_funcs_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-cheat-funcs   # PG 18
apt install -y postgresql-17-pg-cheat-funcs   # PG 17
apt install -y postgresql-16-pg-cheat-funcs   # PG 16
apt install -y postgresql-15-pg-cheat-funcs   # PG 15
apt install -y postgresql-14-pg-cheat-funcs   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_cheat_funcs;
```




## Usage

> [pg_cheat_funcs: Provides cheat (but useful) functions](https://github.com/MasaoFujii/pg_cheat_funcs)

The `pg_cheat_funcs` extension provides a collection of utility functions for debugging, diagnostics, and low-level PostgreSQL operations. Many are superuser-restricted.

### Process Control

```sql
SELECT pg_signal_process(12345, 'TERM');       -- send signal to a PG process
SELECT pg_get_priority(pg_backend_pid());      -- get scheduling priority
SELECT pg_set_priority(pg_backend_pid(), 10);  -- set scheduling priority (-20..19)
SELECT pg_postmaster_pid();                    -- get postmaster PID
SELECT pg_backend_start_time();                -- server process start time
```

### Memory Context Inspection

```sql
-- Show memory context statistics (PG 9.6-13)
SELECT * FROM pg_stat_get_memory_context();
-- Columns: name, parent, level, total_bytes, total_nblocks, free_bytes, free_chunks, used_bytes
```

### Prepared Statement Inspection

```sql
-- Show cached plan info for a prepared statement
SELECT * FROM pg_cached_plan_source('my_stmt');
-- Columns: generic_cost, total_custom_cost, num_custom_plans, force_generic, force_custom
```

### Transaction & WAL Functions

```sql
SELECT pg_xlogfile_name('0/1234568'::pg_lsn, false);  -- LSN to WAL filename
SELECT pg_wait_syncrep('0/1234568'::pg_lsn);           -- wait for sync rep
SELECT * FROM pg_stat_get_syncrep_waiters();            -- list sync rep waiters
SELECT pg_set_next_xid('100'::xid);                    -- set next transaction ID (dangerous)
SELECT * FROM pg_xid_assignment();                      -- XID state info
```

### Checkpoint & Recovery

```sql
SELECT pg_checkpoint(true, true, true);  -- fast, wait, force
SELECT pg_promote(true);                 -- promote standby (PG <= 11)
SELECT * FROM pg_recovery_settings();    -- show recovery.conf parameters
SELECT pg_show_primary_conninfo();       -- show primary_conninfo
```

### File Operations

```sql
SELECT * FROM pg_list_relation_filepath('my_table'::regclass);  -- list segment files
SELECT pg_file_write_binary('/tmp/test', '\x48656c6c6f'::bytea); -- write binary file
SELECT pg_file_fsync('/tmp/test');                                -- fsync file
```

### Text & Encoding Conversion

```sql
SELECT to_octal(255);                   -- '377'
SELECT pg_text_to_hex('PostgreSQL');     -- '506f737467726553514c'
SELECT pg_hex_to_text('506f737467726553514c'); -- 'PostgreSQL'
SELECT pg_chr(9731);                     -- snowman character
```

### Compression

```sql
SELECT pglz_compress('some text data');        -- PGLZ compress text to bytea
SELECT pglz_decompress(compressed_data);       -- decompress back to text
SELECT pglz_compress_bytea(data);              -- compress bytea
SELECT pglz_decompress_bytea(compressed_data); -- decompress to bytea
```

### Advisory Lock Management

```sql
SELECT pg_advisory_xact_unlock(12345);              -- release exclusive advisory lock
SELECT pg_advisory_xact_unlock_shared(12345);       -- release shared advisory lock
```

### GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_cheat_funcs.log_memory_context` | `off` | Log memory context stats after query execution |
| `pg_cheat_funcs.hide_appname` | `false` | Hide client application_name |
| `pg_cheat_funcs.log_session_start_options` | `off` | Log connection startup options |
| `pg_cheat_funcs.scheduling_priority` | `0` | Process scheduling priority (-20..19) |
| `pg_cheat_funcs.exit_on_segv` | `off` | If on, segfault terminates session only |
