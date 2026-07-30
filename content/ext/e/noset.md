---
title: "noset"
linkTitle: "noset"
description: "Module for blocking SET variables for non-super users."
weight: 7420
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://gitlab.com/ongresinc/extensions/noset">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://gitlab.com/ongresinc/extensions/noset</div>
    <div class="ext-card__desc">https://gitlab.com/ongresinc/extensions/noset</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/noset-v0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">noset-v0.3.0.tar.gz</div>
    <div class="ext-card__desc">noset-v0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_noset`**](/ext/e/noset) | `0.3.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7420  | [**`noset`**](/ext/e/noset) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_command_fw`](/ext/e/pg_command_fw) [`pg_kpart`](/ext/e/pg_kpart) [`pgextwlist`](/ext/e/pgextwlist) [`block_copy_command`](/ext/e/block_copy_command) [`supautils`](/ext/e/supautils) [`plan_filter`](/ext/e/plan_filter) [`safeupdate`](/ext/e/safeupdate) [`pg_readonly`](/ext/e/pg_readonly) [`sepgsql`](/ext/e/sepgsql) [`pg_strict`](/ext/e/pg_strict) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_noset` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `noset_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-noset` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
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
@ el8.x86_64 18 noset_18 noset_18-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/noset_18-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 noset_18 noset_18-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/noset_18-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 noset_18 noset_18-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/noset_18-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 noset_18 noset_18-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/noset_18-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 noset_18 noset_18-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/noset_18-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 noset_18 noset_18-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/noset_18-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 28.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-noset postgresql-18-noset_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-18-noset_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 noset_17 noset_17-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/noset_17-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 noset_17 noset_17-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/noset_17-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 noset_17 noset_17-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/noset_17-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 noset_17 noset_17-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/noset_17-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 noset_17 noset_17-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/noset_17-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 noset_17 noset_17-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/noset_17-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-noset postgresql-17-noset_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-17-noset_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 noset_16 noset_16-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/noset_16-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 noset_16 noset_16-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/noset_16-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 noset_16 noset_16-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/noset_16-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 noset_16 noset_16-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/noset_16-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 noset_16 noset_16-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/noset_16-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 noset_16 noset_16-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/noset_16-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 32.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 32.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-noset postgresql-16-noset_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-16-noset_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 noset_15 noset_15-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/noset_15-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 noset_15 noset_15-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/noset_15-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 noset_15 noset_15-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/noset_15-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 noset_15 noset_15-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/noset_15-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 noset_15 noset_15-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/noset_15-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 noset_15 noset_15-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/noset_15-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 32.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 32.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 28.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-noset postgresql-15-noset_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-15-noset_0.3.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 noset_14 noset_14-0.3.0-1PIGSTY.el8.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/noset_14-0.3.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 noset_14 noset_14-0.3.0-1PIGSTY.el8.aarch64.rpm pigsty 0.3.0 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/noset_14-0.3.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 noset_14 noset_14-0.3.0-1PIGSTY.el9.x86_64.rpm pigsty 0.3.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/noset_14-0.3.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 noset_14 noset_14-0.3.0-1PIGSTY.el9.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/noset_14-0.3.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 noset_14 noset_14-0.3.0-1PIGSTY.el10.x86_64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/noset_14-0.3.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 noset_14 noset_14-0.3.0-1PIGSTY.el10.aarch64.rpm pigsty 0.3.0 15.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/noset_14-0.3.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~bookworm_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~bookworm_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~trixie_amd64.deb pigsty 0.3.0 27.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~trixie_arm64.deb pigsty 0.3.0 27.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~jammy_amd64.deb pigsty 0.3.0 31.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~jammy_arm64.deb pigsty 0.3.0 30.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~noble_amd64.deb pigsty 0.3.0 28.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~noble_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~resolute_amd64.deb pigsty 0.3.0 28.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-noset postgresql-14-noset_0.3.0-1PIGSTY~resolute_arm64.deb pigsty 0.3.0 27.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/n/noset/postgresql-14-noset_0.3.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_noset` using `pig build`:

```bash
pig build pkg pg_noset         # build RPM / DEB packages
```


## Install

You can install `pg_noset` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_noset;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_noset -v 18  # PG 18
pig ext install -y pg_noset -v 17  # PG 17
pig ext install -y pg_noset -v 16  # PG 16
pig ext install -y pg_noset -v 15  # PG 15
pig ext install -y pg_noset -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y noset_18       # PG 18
dnf install -y noset_17       # PG 17
dnf install -y noset_16       # PG 16
dnf install -y noset_15       # PG 15
dnf install -y noset_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-noset   # PG 18
apt install -y postgresql-17-noset   # PG 17
apt install -y postgresql-16-noset   # PG 16
apt install -y postgresql-15-noset   # PG 15
apt install -y postgresql-14-noset   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'noset';
```


**Create Extension**:

```sql
CREATE EXTENSION noset;
```




## Usage

> [noset: Prevent users from changing session parameters via SET/RESET](https://gitlab.com/ongresinc/extensions/noset)

`noset` is a loadable module that prevents specific users from using `SET` or `RESET` commands to change session parameters.

```sql
CREATE EXTENSION noset;
```

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'noset'
```

### GUC Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `noset.enabled` | `false` | Enable SET/RESET blocking for the role |
| `noset.parameters` | `*` | Parameters to block (comma-separated, `*` = all) |

### Setting Up Per-User Restrictions

```sql
-- Block ALL SET/RESET for a user
ALTER USER appuser SET noset.enabled = true;

-- Block only specific parameters
ALTER USER appuser SET noset.enabled = true;
ALTER USER appuser SET noset.parameters = 'work_mem,jit';
```

### Example

```sql
-- As appuser:
SET work_mem = '1GB';
-- ERROR: permission denied to set/reset parameter 'set work_mem = '1GB';'

SET maintenance_work_mem = '1GB';
-- SET (allowed, not in blocked list)
```

### Finding Restricted Users

```sql
SELECT usename, useconfig FROM pg_user
WHERE useconfig IS NOT NULL
  AND array['noset.enabled=on'] <@ useconfig;
```

### Notes

- Does not apply to superusers
- The extension revokes access to the `set_config` function from PUBLIC
