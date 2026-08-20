---
title: "block_copy_command"
linkTitle: "block_copy_command"
description: "Block COPY commands via a configurable ProcessUtility hook"
weight: 7430
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rustwizard/block_copy_command">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rustwizard/block_copy_command</div>
    <div class="ext-card__desc">https://github.com/rustwizard/block_copy_command</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/block_copy_command-0.1.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">block_copy_command-0.1.5.tar.gz</div>
    <div class="ext-card__desc">block_copy_command-0.1.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`block_copy_command`**](/ext/e/block_copy_command) | `0.1.5` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7430  | [**`block_copy_command`**](/ext/e/block_copy_command) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_command_fw`](/ext/e/pg_command_fw) [`noset`](/ext/e/noset) [`safeupdate`](/ext/e/safeupdate) [`pg_kpart`](/ext/e/pg_kpart) [`pgextwlist`](/ext/e/pgextwlist) [`supautils`](/ext/e/supautils) [`pg_strict`](/ext/e/pg_strict) [`plan_filter`](/ext/e/plan_filter) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires shared_preload_libraries = block_copy_command.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14" >}} | `block_copy_command` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14" >}} | `block_copy_command_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-block-copy-command` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
@ el8.x86_64 18 block_copy_command_18 block_copy_command_18-0.1.5-3PIGSTY.el8.x86_64.rpm pigsty 0.1.5 857.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_18-0.1.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 block_copy_command_18 block_copy_command_18-0.1.5-3PIGSTY.el8.aarch64.rpm pigsty 0.1.5 771.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_18-0.1.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 block_copy_command_18 block_copy_command_18-0.1.5-3PIGSTY.el9.x86_64.rpm pigsty 0.1.5 865.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_18-0.1.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 block_copy_command_18 block_copy_command_18-0.1.5-3PIGSTY.el9.aarch64.rpm pigsty 0.1.5 817.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_18-0.1.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 block_copy_command_18 block_copy_command_18-0.1.5-3PIGSTY.el10.x86_64.rpm pigsty 0.1.5 865.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_18-0.1.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 block_copy_command_18 block_copy_command_18-0.1.5-3PIGSTY.el10.aarch64.rpm pigsty 0.1.5 796.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_18-0.1.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb pigsty 0.1.5 679.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb pigsty 0.1.5 569.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb pigsty 0.1.5 679.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb pigsty 0.1.5 569.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb pigsty 0.1.5 759.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb pigsty 0.1.5 671.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb pigsty 0.1.5 749.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb pigsty 0.1.5 662.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb pigsty 0.1.5 747.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb pigsty 0.1.5 661.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 block_copy_command_17 block_copy_command_17-0.1.5-3PIGSTY.el8.x86_64.rpm pigsty 0.1.5 854.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_17-0.1.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 block_copy_command_17 block_copy_command_17-0.1.5-3PIGSTY.el8.aarch64.rpm pigsty 0.1.5 767.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_17-0.1.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 block_copy_command_17 block_copy_command_17-0.1.5-3PIGSTY.el9.x86_64.rpm pigsty 0.1.5 862.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_17-0.1.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 block_copy_command_17 block_copy_command_17-0.1.5-3PIGSTY.el9.aarch64.rpm pigsty 0.1.5 814.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_17-0.1.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 block_copy_command_17 block_copy_command_17-0.1.5-3PIGSTY.el10.x86_64.rpm pigsty 0.1.5 860.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_17-0.1.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 block_copy_command_17 block_copy_command_17-0.1.5-3PIGSTY.el10.aarch64.rpm pigsty 0.1.5 795.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_17-0.1.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb pigsty 0.1.5 678.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb pigsty 0.1.5 568.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb pigsty 0.1.5 678.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb pigsty 0.1.5 567.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb pigsty 0.1.5 757.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb pigsty 0.1.5 670.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb pigsty 0.1.5 747.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb pigsty 0.1.5 663.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb pigsty 0.1.5 744.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb pigsty 0.1.5 660.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 block_copy_command_16 block_copy_command_16-0.1.5-3PIGSTY.el8.x86_64.rpm pigsty 0.1.5 854.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_16-0.1.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 block_copy_command_16 block_copy_command_16-0.1.5-3PIGSTY.el8.aarch64.rpm pigsty 0.1.5 766.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_16-0.1.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 block_copy_command_16 block_copy_command_16-0.1.5-3PIGSTY.el9.x86_64.rpm pigsty 0.1.5 861.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_16-0.1.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 block_copy_command_16 block_copy_command_16-0.1.5-3PIGSTY.el9.aarch64.rpm pigsty 0.1.5 813.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_16-0.1.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 block_copy_command_16 block_copy_command_16-0.1.5-3PIGSTY.el10.x86_64.rpm pigsty 0.1.5 862.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_16-0.1.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 block_copy_command_16 block_copy_command_16-0.1.5-3PIGSTY.el10.aarch64.rpm pigsty 0.1.5 795.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_16-0.1.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb pigsty 0.1.5 678.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb pigsty 0.1.5 566.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb pigsty 0.1.5 678.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb pigsty 0.1.5 567.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb pigsty 0.1.5 755.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb pigsty 0.1.5 669.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb pigsty 0.1.5 747.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb pigsty 0.1.5 661.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb pigsty 0.1.5 743.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb pigsty 0.1.5 659.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 block_copy_command_15 block_copy_command_15-0.1.5-3PIGSTY.el8.x86_64.rpm pigsty 0.1.5 843.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_15-0.1.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 block_copy_command_15 block_copy_command_15-0.1.5-3PIGSTY.el8.aarch64.rpm pigsty 0.1.5 757.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_15-0.1.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 block_copy_command_15 block_copy_command_15-0.1.5-3PIGSTY.el9.x86_64.rpm pigsty 0.1.5 851.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_15-0.1.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 block_copy_command_15 block_copy_command_15-0.1.5-3PIGSTY.el9.aarch64.rpm pigsty 0.1.5 803.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_15-0.1.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 block_copy_command_15 block_copy_command_15-0.1.5-3PIGSTY.el10.x86_64.rpm pigsty 0.1.5 851.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_15-0.1.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 block_copy_command_15 block_copy_command_15-0.1.5-3PIGSTY.el10.aarch64.rpm pigsty 0.1.5 789.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_15-0.1.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb pigsty 0.1.5 672.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb pigsty 0.1.5 562.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb pigsty 0.1.5 672.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb pigsty 0.1.5 562.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb pigsty 0.1.5 748.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb pigsty 0.1.5 664.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb pigsty 0.1.5 740.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb pigsty 0.1.5 656.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb pigsty 0.1.5 736.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb pigsty 0.1.5 653.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 block_copy_command_14 block_copy_command_14-0.1.5-3PIGSTY.el8.x86_64.rpm pigsty 0.1.5 840.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_14-0.1.5-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 block_copy_command_14 block_copy_command_14-0.1.5-3PIGSTY.el8.aarch64.rpm pigsty 0.1.5 754.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_14-0.1.5-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 block_copy_command_14 block_copy_command_14-0.1.5-3PIGSTY.el9.x86_64.rpm pigsty 0.1.5 847.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_14-0.1.5-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 block_copy_command_14 block_copy_command_14-0.1.5-3PIGSTY.el9.aarch64.rpm pigsty 0.1.5 800.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_14-0.1.5-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 block_copy_command_14 block_copy_command_14-0.1.5-3PIGSTY.el10.x86_64.rpm pigsty 0.1.5 848.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_14-0.1.5-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 block_copy_command_14 block_copy_command_14-0.1.5-3PIGSTY.el10.aarch64.rpm pigsty 0.1.5 788.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_14-0.1.5-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb pigsty 0.1.5 668.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb pigsty 0.1.5 560.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb pigsty 0.1.5 668.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb pigsty 0.1.5 561.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb pigsty 0.1.5 744.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb pigsty 0.1.5 663.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb pigsty 0.1.5 735.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb pigsty 0.1.5 653.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb pigsty 0.1.5 732.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb pigsty 0.1.5 651.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `block_copy_command` using `pig build`:

```bash
pig build pkg block_copy_command         # build RPM / DEB packages
```


## Install

You can install `block_copy_command` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install block_copy_command;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y block_copy_command -v 18  # PG 18
pig ext install -y block_copy_command -v 17  # PG 17
pig ext install -y block_copy_command -v 16  # PG 16
pig ext install -y block_copy_command -v 15  # PG 15
pig ext install -y block_copy_command -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y block_copy_command_18       # PG 18
dnf install -y block_copy_command_17       # PG 17
dnf install -y block_copy_command_16       # PG 16
dnf install -y block_copy_command_15       # PG 15
dnf install -y block_copy_command_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-block-copy-command   # PG 18
apt install -y postgresql-17-block-copy-command   # PG 17
apt install -y postgresql-16-block-copy-command   # PG 16
apt install -y postgresql-15-block-copy-command   # PG 15
apt install -y postgresql-14-block-copy-command   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'block_copy_command';
```


**Create Extension**:

```sql
CREATE EXTENSION block_copy_command;
```




## Usage

- Source: [README](https://github.com/rustwizard/block_copy_command/blob/master/README.md)

`block_copy_command` installs a `ProcessUtility` hook that intercepts `COPY` statements. The hook is cluster-wide once the library is loaded, while `CREATE EXTENSION` only registers metadata in a database.

### Enable It

```conf
shared_preload_libraries = 'block_copy_command'
```

```sql
CREATE EXTENSION block_copy_command;
```

### Blocking Rules

By default, non-superusers cannot run `COPY TO` or `COPY FROM`:

```sql
COPY my_table TO STDOUT;
COPY my_table FROM STDIN;
COPY (SELECT * FROM my_table) TO '/tmp/out.csv';
```

Priority is documented as:

- `block_copy_command.blocked_roles`: always blocked, even superusers.
- `block_copy_command.block_program = on`: blocks `COPY ... PROGRAM` for everyone.
- `block_copy_command.enabled = off`: allows `COPY` for roles not in `blocked_roles`.
- Superusers otherwise bypass direction blocking.
- `block_copy_command.block_to` and `block_copy_command.block_from` control export/import blocking for non-superusers.

### Main Settings

- `block_copy_command.enabled`: master switch for non-superuser blocking.
- `block_copy_command.block_to`: block `COPY TO`.
- `block_copy_command.block_from`: block `COPY FROM`.
- `block_copy_command.block_program`: block `COPY TO/FROM PROGRAM` for all users.
- `block_copy_command.hint`: append a custom `HINT` to blocked-command errors.
- `block_copy_command.blocked_roles`: comma-separated always-blocked roles.
- `block_copy_command.audit_log_enabled`: write intercepted events to the audit table.

### Audit And Caveats

Allowed and blocked attempts are intercepted, and the extension defines `block_copy_command.audit_log` plus server-log entries for blocked events. The README notes one important caveat: blocked audit rows are inserted before the error is raised, so they are rolled back with the transaction. In practice, PostgreSQL server logs are the authoritative record for blocked `COPY` attempts.
