---
title: "supautils"
linkTitle: "supautils"
description: "Extension that secures a cluster on a cloud environment"
weight: 7010
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/supautils">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/supautils</div>
    <div class="ext-card__desc">https://github.com/supabase/supautils</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/supautils-4.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">supautils-4.0.1.tar.gz</div>
    <div class="ext-card__desc">supautils-4.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`supautils`**](/ext/e/supautils) | `4.0.1` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7010  | [**`supautils`**](/ext/e/supautils) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_command_fw`](/ext/e/pg_command_fw) [`pgextwlist`](/ext/e/pgextwlist) [`block_copy_command`](/ext/e/block_copy_command) [`pg_kpart`](/ext/e/pg_kpart) [`noset`](/ext/e/noset) [`sepgsql`](/ext/e/sepgsql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Module-only; no CREATE EXTENSION. 4.0 removes constrained-extension functionality and adds global extension scripts and a default extension install schema. Restart preloaded processes after replacing the library.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.1` | {{< pgvers "19,18,17,16,15" >}} | `supautils` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.1` | {{< pgvers "19,18,17,16,15" >}} | `supautils_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-supautils` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 | AVAIL PIGSTY 4.0.1 1 |
@ el9.x86_64 19 supautils_19 supautils_19-4.0.1-1PGSTY.el9.x86_64.rpm pigsty 4.0.1 100.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/supautils_19-4.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 supautils_19 supautils_19-4.0.1-1PGSTY.el9.aarch64.rpm pigsty 4.0.1 98.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/supautils_19-4.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 supautils_19 supautils_19-4.0.1-1PGSTY.el10.x86_64.rpm pigsty 4.0.1 101.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/supautils_19-4.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 supautils_19 supautils_19-4.0.1-1PGSTY.el10.aarch64.rpm pigsty 4.0.1 99.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/supautils_19-4.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~bookworm_amd64.deb pigsty 4.0.1 92.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~bookworm_arm64.deb pigsty 4.0.1 90.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~trixie_amd64.deb pigsty 4.0.1 92.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~trixie_arm64.deb pigsty 4.0.1 90.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~jammy_amd64.deb pigsty 4.0.1 99.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~jammy_arm64.deb pigsty 4.0.1 98.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~noble_amd64.deb pigsty 4.0.1 97.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~noble_arm64.deb pigsty 4.0.1 95.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~resolute_amd64.deb pigsty 4.0.1 96.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-supautils postgresql-19-supautils_4.0.1-1PGSTY~resolute_arm64.deb pigsty 4.0.1 95.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-19-supautils_4.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 supautils_18 supautils_18-4.0.1-1PGSTY.el8.x86_64.rpm pigsty 4.0.1 99.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/supautils_18-4.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 supautils_18 supautils_18-4.0.1-1PGSTY.el8.aarch64.rpm pigsty 4.0.1 96.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/supautils_18-4.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 supautils_18 supautils_18-4.0.1-1PGSTY.el9.x86_64.rpm pigsty 4.0.1 100.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/supautils_18-4.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 supautils_18 supautils_18-4.0.1-1PGSTY.el9.aarch64.rpm pigsty 4.0.1 98.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/supautils_18-4.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 supautils_18 supautils_18-4.0.1-1PGSTY.el10.x86_64.rpm pigsty 4.0.1 101.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/supautils_18-4.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 supautils_18 supautils_18-4.0.1-1PGSTY.el10.aarch64.rpm pigsty 4.0.1 99.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/supautils_18-4.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~bookworm_amd64.deb pigsty 4.0.1 92.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~bookworm_arm64.deb pigsty 4.0.1 90.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~trixie_amd64.deb pigsty 4.0.1 92.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~trixie_arm64.deb pigsty 4.0.1 90.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~jammy_amd64.deb pigsty 4.0.1 99.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~jammy_arm64.deb pigsty 4.0.1 98.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~noble_amd64.deb pigsty 4.0.1 96.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~noble_arm64.deb pigsty 4.0.1 95.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~resolute_amd64.deb pigsty 4.0.1 96.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-supautils postgresql-18-supautils_4.0.1-1PGSTY~resolute_arm64.deb pigsty 4.0.1 95.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-18-supautils_4.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 supautils_17 supautils_17-4.0.1-1PGSTY.el8.x86_64.rpm pigsty 4.0.1 99.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/supautils_17-4.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 supautils_17 supautils_17-4.0.1-1PGSTY.el8.aarch64.rpm pigsty 4.0.1 96.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/supautils_17-4.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 supautils_17 supautils_17-4.0.1-1PGSTY.el9.x86_64.rpm pigsty 4.0.1 100.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/supautils_17-4.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 supautils_17 supautils_17-4.0.1-1PGSTY.el9.aarch64.rpm pigsty 4.0.1 98.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/supautils_17-4.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 supautils_17 supautils_17-4.0.1-1PGSTY.el10.x86_64.rpm pigsty 4.0.1 101.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/supautils_17-4.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 supautils_17 supautils_17-4.0.1-1PGSTY.el10.aarch64.rpm pigsty 4.0.1 99.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/supautils_17-4.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~bookworm_amd64.deb pigsty 4.0.1 92.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~bookworm_arm64.deb pigsty 4.0.1 90.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~trixie_amd64.deb pigsty 4.0.1 92.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~trixie_arm64.deb pigsty 4.0.1 90.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~jammy_amd64.deb pigsty 4.0.1 128.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~jammy_arm64.deb pigsty 4.0.1 126.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~noble_amd64.deb pigsty 4.0.1 96.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~noble_arm64.deb pigsty 4.0.1 95.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~resolute_amd64.deb pigsty 4.0.1 96.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-supautils postgresql-17-supautils_4.0.1-1PGSTY~resolute_arm64.deb pigsty 4.0.1 95.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-17-supautils_4.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 supautils_16 supautils_16-4.0.1-1PGSTY.el8.x86_64.rpm pigsty 4.0.1 99.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/supautils_16-4.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 supautils_16 supautils_16-4.0.1-1PGSTY.el8.aarch64.rpm pigsty 4.0.1 97.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/supautils_16-4.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 supautils_16 supautils_16-4.0.1-1PGSTY.el9.x86_64.rpm pigsty 4.0.1 100.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/supautils_16-4.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 supautils_16 supautils_16-4.0.1-1PGSTY.el9.aarch64.rpm pigsty 4.0.1 98.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/supautils_16-4.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 supautils_16 supautils_16-4.0.1-1PGSTY.el10.x86_64.rpm pigsty 4.0.1 102.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/supautils_16-4.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 supautils_16 supautils_16-4.0.1-1PGSTY.el10.aarch64.rpm pigsty 4.0.1 99.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/supautils_16-4.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~bookworm_amd64.deb pigsty 4.0.1 92.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~bookworm_arm64.deb pigsty 4.0.1 90.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~trixie_amd64.deb pigsty 4.0.1 93.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~trixie_arm64.deb pigsty 4.0.1 91.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~jammy_amd64.deb pigsty 4.0.1 124.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~jammy_arm64.deb pigsty 4.0.1 122.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~noble_amd64.deb pigsty 4.0.1 97.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~noble_arm64.deb pigsty 4.0.1 95.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~resolute_amd64.deb pigsty 4.0.1 97.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-supautils postgresql-16-supautils_4.0.1-1PGSTY~resolute_arm64.deb pigsty 4.0.1 95.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-16-supautils_4.0.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 supautils_15 supautils_15-4.0.1-1PGSTY.el8.x86_64.rpm pigsty 4.0.1 100.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/supautils_15-4.0.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 supautils_15 supautils_15-4.0.1-1PGSTY.el8.aarch64.rpm pigsty 4.0.1 97.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/supautils_15-4.0.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 supautils_15 supautils_15-4.0.1-1PGSTY.el9.x86_64.rpm pigsty 4.0.1 102.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/supautils_15-4.0.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 supautils_15 supautils_15-4.0.1-1PGSTY.el9.aarch64.rpm pigsty 4.0.1 99.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/supautils_15-4.0.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 supautils_15 supautils_15-4.0.1-1PGSTY.el10.x86_64.rpm pigsty 4.0.1 103.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/supautils_15-4.0.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 supautils_15 supautils_15-4.0.1-1PGSTY.el10.aarch64.rpm pigsty 4.0.1 101.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/supautils_15-4.0.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~bookworm_amd64.deb pigsty 4.0.1 94.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~bookworm_arm64.deb pigsty 4.0.1 91.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~trixie_amd64.deb pigsty 4.0.1 94.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~trixie_arm64.deb pigsty 4.0.1 92.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~jammy_amd64.deb pigsty 4.0.1 126.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~jammy_arm64.deb pigsty 4.0.1 123.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~noble_amd64.deb pigsty 4.0.1 98.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~noble_arm64.deb pigsty 4.0.1 97.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~resolute_amd64.deb pigsty 4.0.1 98.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-supautils postgresql-15-supautils_4.0.1-1PGSTY~resolute_arm64.deb pigsty 4.0.1 96.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/supautils/postgresql-15-supautils_4.0.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `supautils` using `pig build`:

```bash
pig build pkg supautils         # build RPM / DEB packages
```


## Install

You can install `supautils` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install supautils;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y supautils -v 19  # PG 19
pig ext install -y supautils -v 18  # PG 18
pig ext install -y supautils -v 17  # PG 17
pig ext install -y supautils -v 16  # PG 16
pig ext install -y supautils -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y supautils_19       # PG 19
dnf install -y supautils_18       # PG 18
dnf install -y supautils_17       # PG 17
dnf install -y supautils_16       # PG 16
dnf install -y supautils_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-supautils   # PG 19
apt install -y postgresql-18-supautils   # PG 18
apt install -y postgresql-17-supautils   # PG 17
apt install -y postgresql-16-supautils   # PG 16
apt install -y postgresql-15-supautils   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'supautils';
```


## Usage

Sources:

- [Current release](https://github.com/supabase/supautils/releases/tag/v4.0.1)
- [v4.0.0 README](https://github.com/supabase/supautils/blob/v4.0.0/README.md)
- [v4.0.0 release](https://github.com/supabase/supautils/releases/tag/v4.0.0)
- [Version restriction implementation](https://github.com/supabase/supautils/blob/v4.0.0/src/extensions.c)

`supautils` is a loadable library that unlocks selected superuser-only PostgreSQL features for non-superusers through configuration. Upstream emphasizes that it adds no tables, functions, or security labels to the database.

### Load it

Cluster-wide:

```ini
shared_preload_libraries = 'supautils'
supautils.privileged_role = 'your_privileged_role'
```

Per role:

```sql
ALTER ROLE role1 SET session_preload_libraries TO 'supautils';
```

### Privileged role capabilities

The README documents a privileged proxy role that can create publications, foreign data wrappers, event triggers, and privileged extensions without granting `SUPERUSER`.

```sql
SET ROLE privileged_role;
CREATE PUBLICATION p FOR ALL TABLES;
DROP PUBLICATION p;
```

For event triggers, the README says privileged-role triggers run for non-superusers, skip superusers, and also skip reserved roles. It also documents one limitation: those triggers do not fire while creating publications, foreign data wrappers, or extensions.

### Important configuration knobs

- `supautils.superuser`
- `supautils.privileged_role`
- `supautils.privileged_role_allowed_configs`
- `supautils.privileged_extensions`
- `supautils.extension_custom_scripts_path`
- `supautils.extensions_parameter_overrides`
- `supautils.policy_grants`
- `supautils.drop_trigger_grants`
- `supautils.reserved_roles`
- `supautils.reserved_memberships`
- `supautils.hint_roles`
- `supautils.log_skipped_evtrigs`

### Useful examples

Allow a non-superuser to create specific privileged extensions:

```ini
supautils.privileged_extensions = 'hstore'
```

Allow a role to manage RLS policies on tables it does not own:

```ini
supautils.policy_grants = '{ "my_role": ["public.not_my_table"] }'
```

Force an extension into a specific schema on `CREATE EXTENSION`:

```ini
supautils.extensions_parameter_overrides = '{ "pg_cron": { "schema": "pg_catalog" } }'
```

Protect managed-service roles from `CREATEROLE` users:

```ini
supautils.reserved_roles = 'connector, storage_admin'
supautils.reserved_memberships = 'pg_read_server_files'
```

### Version Selection and Operational Boundaries

`supautils.restrict_extension_versions` controls explicit version clauses for non-superusers: `off` allows them, `warn` ignores them and selects the control-file default with a warning, and `error` rejects them. This applies to both extension creation and upgrades; superusers and the configured proxy superuser are exempt. Omitting an explicit version remains allowed subject to normal privilege checks.

Cluster preload requires a restart; role-specific session preload applies to new connections. Do not run CREATE EXTENSION for supautils itself. Source release 4.0.0 is a library update and has no SQL extension-update step. It avoids ACCESS EXCLUSIVE locks during allowlisted-table policy checks and restores the caller's role on every exit from an elevated region.

Review allowed extensions and custom scripts as trusted code because their operations run with delegated superuser privileges. Enhanced privilege hints do not work for views on PostgreSQL 18 according to the tagged README. Test role transitions, event-trigger ownership and reserved-role protections before broadening grants.

### 4.0 Migration

Version 4.0.0 removes constrained-extension functionality; remove the old constrained_extensions configuration rather than relying on that mechanism. Global and per-extension custom scripts run in this order: global before-create, extension before-create, extension after-create, global after-create. The default_extension_install_schema setting prepends a default schema when no explicit SCHEMA or parameter override wins. The read-only supautils.version setting identifies the loaded library. These are library changes; restart or reconnect the processes that preload it, without CREATE EXTENSION for supautils itself.

### 4.0.1 fixes

Version 4.0.1 guards role lookups for statements without a role, corrects extension authorization, and runs dependent custom scripts when no dependency cycle exists. It remains a preloaded module with no CREATE EXTENSION command. Replace the matching library and restart processes using it; verify delegated administration and custom-script policy after upgrade.
