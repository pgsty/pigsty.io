---
title: "block_copy_command"
linkTitle: "block_copy_command"
description: "Block COPY commands via a configurable ProcessUtility hook"
weight: 7405
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
| [**`block_copy_command`**](/ext/e/block_copy_command) | `0.1.5` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7405  | [**`block_copy_command`**](/ext/e/block_copy_command) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> Requires shared_preload_libraries = block_copy_command.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14,13" >}} | `block_copy_command` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14,13" >}} | `block_copy_command_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "18,17,16,15,14,13" >}} | `postgresql-$v-block-copy-command` | - |
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
@ el8.x86_64 18 block_copy_command_18 block_copy_command_18-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 306.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_18-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 block_copy_command_18 block_copy_command_18-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 199.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_18-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 block_copy_command_18 block_copy_command_18-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 321.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_18-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 block_copy_command_18 block_copy_command_18-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 212.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_18-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 block_copy_command_18 block_copy_command_18-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 321.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_18-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 block_copy_command_18 block_copy_command_18-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 212.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_18-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 248.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 248.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 281.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 173.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 278.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-block-copy-command postgresql-18-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 172.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-18-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 block_copy_command_17 block_copy_command_17-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 306.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_17-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 block_copy_command_17 block_copy_command_17-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 199.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_17-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 block_copy_command_17 block_copy_command_17-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 321.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_17-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 block_copy_command_17 block_copy_command_17-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 212.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_17-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 block_copy_command_17 block_copy_command_17-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 321.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_17-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 block_copy_command_17 block_copy_command_17-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 212.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_17-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 247.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 247.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 150.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 280.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 173.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 278.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-block-copy-command postgresql-17-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 172.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-17-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 block_copy_command_16 block_copy_command_16-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 305.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_16-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 block_copy_command_16 block_copy_command_16-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 199.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_16-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 block_copy_command_16 block_copy_command_16-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 321.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_16-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 block_copy_command_16 block_copy_command_16-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 212.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_16-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 block_copy_command_16 block_copy_command_16-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 321.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_16-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 block_copy_command_16 block_copy_command_16-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 212.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_16-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 248.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 248.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 149.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 281.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 174.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 278.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-block-copy-command postgresql-16-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 172.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-16-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 block_copy_command_15 block_copy_command_15-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 305.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_15-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 block_copy_command_15 block_copy_command_15-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 199.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_15-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 block_copy_command_15 block_copy_command_15-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 321.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_15-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 block_copy_command_15 block_copy_command_15-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 212.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_15-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 block_copy_command_15 block_copy_command_15-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 322.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_15-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 block_copy_command_15 block_copy_command_15-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 212.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_15-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 247.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 247.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 280.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 173.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 278.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-block-copy-command postgresql-15-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 173.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-15-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 block_copy_command_14 block_copy_command_14-0.1.5-1PIGSTY.el8.x86_64.rpm pigsty 0.1.5 305.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/block_copy_command_14-0.1.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 block_copy_command_14 block_copy_command_14-0.1.5-1PIGSTY.el8.aarch64.rpm pigsty 0.1.5 199.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/block_copy_command_14-0.1.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 block_copy_command_14 block_copy_command_14-0.1.5-1PIGSTY.el9.x86_64.rpm pigsty 0.1.5 321.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/block_copy_command_14-0.1.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 block_copy_command_14 block_copy_command_14-0.1.5-1PIGSTY.el9.aarch64.rpm pigsty 0.1.5 212.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/block_copy_command_14-0.1.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 block_copy_command_14 block_copy_command_14-0.1.5-1PIGSTY.el10.x86_64.rpm pigsty 0.1.5 322.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/block_copy_command_14-0.1.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 block_copy_command_14 block_copy_command_14-0.1.5-1PIGSTY.el10.aarch64.rpm pigsty 0.1.5 212.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/block_copy_command_14-0.1.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb pigsty 0.1.5 248.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb pigsty 0.1.5 247.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb pigsty 0.1.5 149.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb pigsty 0.1.5 280.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb pigsty 0.1.5 174.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb pigsty 0.1.5 278.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-block-copy-command postgresql-14-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb pigsty 0.1.5 172.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/b/block-copy-command/postgresql-14-block-copy-command_0.1.5-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install block_copy_command;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y block_copy_command -v 18  # PG 18
pig ext install -y block_copy_command -v 17  # PG 17
pig ext install -y block_copy_command -v 16  # PG 16
pig ext install -y block_copy_command -v 15  # PG 15
pig ext install -y block_copy_command -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y block_copy_command_18       # PG 18
dnf install -y block_copy_command_17       # PG 17
dnf install -y block_copy_command_16       # PG 16
dnf install -y block_copy_command_15       # PG 15
dnf install -y block_copy_command_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-block-copy-command   # PG 18
apt install -y postgresql-17-block-copy-command   # PG 17
apt install -y postgresql-16-block-copy-command   # PG 16
apt install -y postgresql-15-block-copy-command   # PG 15
apt install -y postgresql-14-block-copy-command   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'block_copy_command';
```


**Create Extension**:

```sql
CREATE EXTENSION block_copy_command;
```

## Usage
- GitHub Repo: [`rustwizard/block_copy_command`](https://github.com/rustwizard/block_copy_command)
- README: [rustwizard/block_copy_command/blob/master/README.md](https://github.com/rustwizard/block_copy_command/blob/master/README.md)

`block_copy_command` blocks `COPY` commands cluster-wide by installing a `ProcessUtility` hook. It is loaded with `shared_preload_libraries`, and `CREATE EXTENSION` only registers the extension metadata in each database.

This extension is intended for deployments that want to stop `COPY TO` and `COPY FROM` by default for non-superusers, while still allowing finer-grained policy through GUCs and an audit table.

### Setup

```conf
shared_preload_libraries = 'block_copy_command'
```

```sql
CREATE EXTENSION block_copy_command;
```

The README says the hook becomes active for the whole cluster as soon as the library is loaded.

### Blocking Rules

By default, non-superusers are blocked from running `COPY`.

```sql
COPY my_table TO STDOUT;
COPY my_table FROM STDIN;
COPY (SELECT * FROM my_table) TO '/tmp/out.csv';
```

Superusers bypass the block unless they are listed in `block_copy_command.blocked_roles` or `block_copy_command.block_program` is enabled. `COPY ... PROGRAM` is blocked for everyone by default.

### Settings

- `block_copy_command.enabled` toggles blocking for non-superusers.
- `block_copy_command.block_to` controls whether `COPY TO` is blocked.
- `block_copy_command.block_from` controls whether `COPY FROM` is blocked.
- `block_copy_command.block_program` blocks `COPY TO/FROM PROGRAM` for all users.
- `block_copy_command.hint` appends a custom `HINT:` to blocked commands.
- `block_copy_command.blocked_roles` permanently blocks named roles, including superusers.
- `block_copy_command.audit_log_enabled` controls whether intercepted `COPY` events are written to `block_copy_command.audit_log`.

### Audit Log

The extension records intercepted `COPY` activity in `block_copy_command.audit_log` and also writes blocked events to the PostgreSQL server log at `LOG` level.

Typical monitoring queries from the README include listing recent events, filtering blocked events, and grouping by user.

### Scope

The upstream README covers requirements, enablement, blocking behavior, the main GUCs, the audit table, and test coverage. No separate project homepage or docs site was needed for this stub.
