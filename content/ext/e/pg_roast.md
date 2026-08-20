---
title: "pg_roast"
linkTitle: "pg_roast"
description: "Opinionated PostgreSQL database auditor"
weight: 7120
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/samirketema/pg_roast">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">samirketema/pg_roast</div>
    <div class="ext-card__desc">https://github.com/samirketema/pg_roast</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_roast-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_roast-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_roast-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_roast`**](/ext/e/pg_roast) | `1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7120  | [**`pg_roast`**](/ext/e/pg_roast) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `roast` |
{.ext-table}

| **Related** | [`pgaudit`](/ext/e/pgaudit) [`pg_auditor`](/ext/e/pg_auditor) [`pg_permissions`](/ext/e/pg_permissions) [`pgmemento`](/ext/e/pgmemento) [`table_log`](/ext/e/table_log) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`set_user`](/ext/e/set_user) [`pg_snakeoil`](/ext/e/pg_snakeoil) [`pg_readonly`](/ext/e/pg_readonly) [`pg_command_fw`](/ext/e/pg_command_fw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream has no release tag; package pins main commit ccbf012. Manual audits work normally; the periodic background worker requires shared_preload_libraries=pg_roast.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_roast` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_roast_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-roast` | - |
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
@ el8.x86_64 18 pg_roast_18 pg_roast_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roast_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_roast_18 pg_roast_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roast_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_roast_18 pg_roast_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roast_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_roast_18 pg_roast_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roast_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_roast_18 pg_roast_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roast_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_roast_18 pg_roast_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roast_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 32.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-roast postgresql-18-pg-roast_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-18-pg-roast_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_roast_17 pg_roast_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roast_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_roast_17 pg_roast_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roast_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_roast_17 pg_roast_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roast_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_roast_17 pg_roast_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roast_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_roast_17 pg_roast_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roast_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_roast_17 pg_roast_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roast_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 33.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-roast postgresql-17-pg-roast_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-17-pg-roast_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_roast_16 pg_roast_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roast_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_roast_16 pg_roast_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roast_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_roast_16 pg_roast_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roast_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_roast_16 pg_roast_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roast_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_roast_16 pg_roast_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roast_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_roast_16 pg_roast_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roast_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 33.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-roast postgresql-16-pg-roast_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-16-pg-roast_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_roast_15 pg_roast_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 31.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roast_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_roast_15 pg_roast_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roast_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_roast_15 pg_roast_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roast_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_roast_15 pg_roast_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roast_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_roast_15 pg_roast_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 31.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roast_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_roast_15 pg_roast_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roast_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 33.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-roast postgresql-15-pg-roast_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-15-pg-roast_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_roast_14 pg_roast_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 31.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_roast_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_roast_14 pg_roast_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_roast_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_roast_14 pg_roast_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_roast_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_roast_14 pg_roast_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_roast_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_roast_14 pg_roast_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 31.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_roast_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_roast_14 pg_roast_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 31.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_roast_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 31.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 33.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-roast postgresql-14-pg-roast_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-roast/postgresql-14-pg-roast_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_roast` using `pig build`:

```bash
pig build pkg pg_roast         # build RPM / DEB packages
```


## Install

You can install `pg_roast` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_roast;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_roast -v 18  # PG 18
pig ext install -y pg_roast -v 17  # PG 17
pig ext install -y pg_roast -v 16  # PG 16
pig ext install -y pg_roast -v 15  # PG 15
pig ext install -y pg_roast -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_roast_18       # PG 18
dnf install -y pg_roast_17       # PG 17
dnf install -y pg_roast_16       # PG 16
dnf install -y pg_roast_15       # PG 15
dnf install -y pg_roast_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-roast   # PG 18
apt install -y postgresql-17-pg-roast   # PG 17
apt install -y postgresql-16-pg-roast   # PG 16
apt install -y postgresql-15-pg-roast   # PG 15
apt install -y postgresql-14-pg-roast   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pg_roast';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_roast;
```

## Usage

Sources:

- [Upstream README](https://github.com/samirketema/pg_roast/blob/ccbf012d01ebbb8edcb13b02add981705dab2308/README.md)
- [Version 1.0 install SQL](https://github.com/samirketema/pg_roast/blob/ccbf012d01ebbb8edcb13b02add981705dab2308/pg_roast--1.0.sql)
- [Background-worker implementation](https://github.com/samirketema/pg_roast/blob/ccbf012d01ebbb8edcb13b02add981705dab2308/pg_roast_bgw.c)

pg_roast runs opinionated PostgreSQL health checks and stores findings in its fixed roast schema. It checks configuration, schema design, indexes, vacuum and bloat indicators, security posture, replication, connections, and workload signals. Version 1.0 targets PostgreSQL 14 and later.

### Manual audits

Manual mode does not require preloading:

```sql
CREATE EXTENSION pg_roast;

SELECT * FROM roast.run();
SELECT severity, check_name, object_name, roast
FROM roast.latest
ORDER BY severity, check_name;

SELECT * FROM roast.summary;
```

Each run persists audit history and findings. Use the latest view for the newest run and the summary view for grouped results.

### Scheduled audits

The optional background worker requires preload configuration and a restart:

```ini
shared_preload_libraries = 'pg_roast'
pg_roast.database = 'mydb'
pg_roast.interval = 3600
```

The database setting is fixed at server start. Review the upstream settings before enabling automatic audits across a production workload.

### Caveats

- Findings are heuristic advice, not automatic proof of a defect. Review workload context, maintenance windows, and PostgreSQL documentation before applying any recommendation.
- Audits execute catalog and statistics queries and write history tables. Measure overhead on large catalogs and protect the roast schema from untrusted users.
- Results can expose object names, configuration, security findings, and query-related operational details. Apply least privilege and an explicit retention policy.
- Preloading is unnecessary for manual runs but mandatory for the background worker; changing startup-only settings requires a restart.
