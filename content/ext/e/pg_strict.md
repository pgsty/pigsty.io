---
title: "pg_strict"
linkTitle: "pg_strict"
description: "Prevent dangerous UPDATE and DELETE without WHERE clause"
weight: 5830
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/spa5k/pg_strict">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">spa5k/pg_strict</div>
    <div class="ext-card__desc">https://github.com/spa5k/pg_strict</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_strict-1.0.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_strict-1.0.5.tar.gz</div>
    <div class="ext-card__desc">pg_strict-1.0.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_strict`**](/ext/e/pg_strict) | `1.0.5` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5830  | [**`pg_strict`**](/ext/e/pg_strict) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`safeupdate`](/ext/e/safeupdate) [`pg_savior`](/ext/e/pg_savior) [`pg_drop_events`](/ext/e/pg_drop_events) [`table_log`](/ext/e/table_log) [`block_copy_command`](/ext/e/block_copy_command) [`pg_kpart`](/ext/e/pg_kpart) [`plan_filter`](/ext/e/plan_filter) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_strict` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_strict_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-strict` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 | AVAIL PIGSTY 1.0.5 1 |
@ el8.x86_64 18 pg_strict_18 pg_strict_18-1.0.5-3PIGSTY.el8.x86_64.rpm pigsty 1.0.5 863.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_18-1.0.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_strict_18 pg_strict_18-1.0.5-3PIGSTY.el8.aarch64.rpm pigsty 1.0.5 776.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_18-1.0.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_strict_18 pg_strict_18-1.0.5-3PIGSTY.el9.x86_64.rpm pigsty 1.0.5 872.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_18-1.0.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_strict_18 pg_strict_18-1.0.5-3PIGSTY.el9.aarch64.rpm pigsty 1.0.5 822.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_18-1.0.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_strict_18 pg_strict_18-1.0.5-3PIGSTY.el10.x86_64.rpm pigsty 1.0.5 872.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_18-1.0.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_strict_18 pg_strict_18-1.0.5-3PIGSTY.el10.aarch64.rpm pigsty 1.0.5 801.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_18-1.0.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb pigsty 1.0.5 689.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb pigsty 1.0.5 575.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb pigsty 1.0.5 689.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb pigsty 1.0.5 576.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb pigsty 1.0.5 769.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb pigsty 1.0.5 678.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb pigsty 1.0.5 760.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb pigsty 1.0.5 671.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb pigsty 1.0.5 754.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-strict postgresql-18-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb pigsty 1.0.5 670.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-18-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_strict_17 pg_strict_17-1.0.5-3PIGSTY.el8.x86_64.rpm pigsty 1.0.5 860.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_17-1.0.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_strict_17 pg_strict_17-1.0.5-3PIGSTY.el8.aarch64.rpm pigsty 1.0.5 773.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_17-1.0.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_strict_17 pg_strict_17-1.0.5-3PIGSTY.el9.x86_64.rpm pigsty 1.0.5 869.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_17-1.0.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_strict_17 pg_strict_17-1.0.5-3PIGSTY.el9.aarch64.rpm pigsty 1.0.5 819.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_17-1.0.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_strict_17 pg_strict_17-1.0.5-3PIGSTY.el10.x86_64.rpm pigsty 1.0.5 871.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_17-1.0.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_strict_17 pg_strict_17-1.0.5-3PIGSTY.el10.aarch64.rpm pigsty 1.0.5 800.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_17-1.0.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb pigsty 1.0.5 687.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb pigsty 1.0.5 574.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb pigsty 1.0.5 687.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb pigsty 1.0.5 574.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb pigsty 1.0.5 768.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb pigsty 1.0.5 678.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb pigsty 1.0.5 758.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb pigsty 1.0.5 670.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb pigsty 1.0.5 753.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-strict postgresql-17-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb pigsty 1.0.5 668.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-17-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_strict_16 pg_strict_16-1.0.5-3PIGSTY.el8.x86_64.rpm pigsty 1.0.5 859.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_16-1.0.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_strict_16 pg_strict_16-1.0.5-3PIGSTY.el8.aarch64.rpm pigsty 1.0.5 771.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_16-1.0.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_strict_16 pg_strict_16-1.0.5-3PIGSTY.el9.x86_64.rpm pigsty 1.0.5 864.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_16-1.0.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_strict_16 pg_strict_16-1.0.5-3PIGSTY.el9.aarch64.rpm pigsty 1.0.5 817.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_16-1.0.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_strict_16 pg_strict_16-1.0.5-3PIGSTY.el10.x86_64.rpm pigsty 1.0.5 869.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_16-1.0.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_strict_16 pg_strict_16-1.0.5-3PIGSTY.el10.aarch64.rpm pigsty 1.0.5 800.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_16-1.0.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb pigsty 1.0.5 686.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb pigsty 1.0.5 573.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb pigsty 1.0.5 687.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb pigsty 1.0.5 573.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb pigsty 1.0.5 765.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb pigsty 1.0.5 676.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb pigsty 1.0.5 757.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb pigsty 1.0.5 668.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb pigsty 1.0.5 752.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-strict postgresql-16-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb pigsty 1.0.5 667.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-16-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_strict_15 pg_strict_15-1.0.5-3PIGSTY.el8.x86_64.rpm pigsty 1.0.5 850.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_15-1.0.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_strict_15 pg_strict_15-1.0.5-3PIGSTY.el8.aarch64.rpm pigsty 1.0.5 762.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_15-1.0.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_strict_15 pg_strict_15-1.0.5-3PIGSTY.el9.x86_64.rpm pigsty 1.0.5 858.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_15-1.0.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_strict_15 pg_strict_15-1.0.5-3PIGSTY.el9.aarch64.rpm pigsty 1.0.5 807.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_15-1.0.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_strict_15 pg_strict_15-1.0.5-3PIGSTY.el10.x86_64.rpm pigsty 1.0.5 858.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_15-1.0.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_strict_15 pg_strict_15-1.0.5-3PIGSTY.el10.aarch64.rpm pigsty 1.0.5 796.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_15-1.0.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb pigsty 1.0.5 680.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb pigsty 1.0.5 569.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb pigsty 1.0.5 680.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb pigsty 1.0.5 569.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb pigsty 1.0.5 757.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb pigsty 1.0.5 669.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb pigsty 1.0.5 749.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb pigsty 1.0.5 663.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb pigsty 1.0.5 745.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-strict postgresql-15-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb pigsty 1.0.5 661.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-15-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_strict_14 pg_strict_14-1.0.5-3PIGSTY.el8.x86_64.rpm pigsty 1.0.5 847.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_14-1.0.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_strict_14 pg_strict_14-1.0.5-3PIGSTY.el8.aarch64.rpm pigsty 1.0.5 759.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_14-1.0.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_strict_14 pg_strict_14-1.0.5-3PIGSTY.el9.x86_64.rpm pigsty 1.0.5 856.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_14-1.0.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_strict_14 pg_strict_14-1.0.5-3PIGSTY.el9.aarch64.rpm pigsty 1.0.5 805.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_14-1.0.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_strict_14 pg_strict_14-1.0.5-3PIGSTY.el10.x86_64.rpm pigsty 1.0.5 856.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_14-1.0.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_strict_14 pg_strict_14-1.0.5-3PIGSTY.el10.aarch64.rpm pigsty 1.0.5 794.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_14-1.0.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb pigsty 1.0.5 678.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb pigsty 1.0.5 567.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb pigsty 1.0.5 678.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb pigsty 1.0.5 567.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb pigsty 1.0.5 755.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb pigsty 1.0.5 667.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb pigsty 1.0.5 748.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb pigsty 1.0.5 661.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb pigsty 1.0.5 743.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-strict postgresql-14-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb pigsty 1.0.5 658.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-strict/postgresql-14-pg-strict_1.0.5-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_strict` using `pig build`:

```bash
pig build pkg pg_strict         # build RPM / DEB packages
```


## Install

You can install `pg_strict` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_strict;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_strict -v 18  # PG 18
pig ext install -y pg_strict -v 17  # PG 17
pig ext install -y pg_strict -v 16  # PG 16
pig ext install -y pg_strict -v 15  # PG 15
pig ext install -y pg_strict -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_strict_18       # PG 18
dnf install -y pg_strict_17       # PG 17
dnf install -y pg_strict_16       # PG 16
dnf install -y pg_strict_15       # PG 15
dnf install -y pg_strict_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-strict   # PG 18
apt install -y postgresql-17-pg-strict   # PG 17
apt install -y postgresql-16-pg-strict   # PG 16
apt install -y postgresql-15-pg-strict   # PG 15
apt install -y postgresql-14-pg-strict   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_strict';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_strict;
```




## Usage

Source: [README](https://github.com/spa5k/pg_strict/blob/master/README.md), [Release v1.0.5](https://github.com/spa5k/pg_strict/releases/tag/v1.0.5), [API source](https://github.com/spa5k/pg_strict/blob/master/src/api.rs)

`pg_strict` blocks or warns on `UPDATE` and `DELETE` statements that omit a `WHERE` clause. It installs a `post_parse_analyze_hook`, so it must be loaded from `shared_preload_libraries`.

### Required setup

```sql
-- postgresql.conf
shared_preload_libraries = 'pg_strict'

CREATE EXTENSION pg_strict;
```

### GUCs

- `pg_strict.require_where_on_update`
- `pg_strict.require_where_on_delete`

Each setting supports `off`, `warn`, and `on`.

```sql
SET pg_strict.require_where_on_update = 'on';
SET pg_strict.require_where_on_delete = 'warn';
```

### Helper functions

```sql
SELECT pg_strict_version();
SELECT * FROM pg_strict_config();

SELECT pg_strict_check_where_clause('DELETE FROM t', 'DELETE');
SELECT pg_strict_validate_update('UPDATE t SET x = 1 WHERE id = 42');
SELECT pg_strict_validate_delete('DELETE FROM t WHERE id = 42');

SELECT pg_strict_enable_update();
SELECT pg_strict_warn_delete();
SELECT pg_strict_disable_delete();
```

- `pg_strict_set_update_mode(mode)` and `pg_strict_set_delete_mode(mode)` provide generic mode setters.
- `SET LOCAL` works for one-off bulk operations inside a transaction.

### Caveats

- Enforcement is presence-based, not intent-based: any non-null `WHERE` clause satisfies the rule.
- Only `UPDATE` and `DELETE` are checked.
- Current upstream release is `1.0.5`; upstream documents PostgreSQL 13 through 18, while the Pigsty package row in `db/extension.csv` covers PostgreSQL 14 through 18.
- The Pigsty note about `pgrx` 0.17.0 is packaging/build metadata, not a documented user-facing feature change.
