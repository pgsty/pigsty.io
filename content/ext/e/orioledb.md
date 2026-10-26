---
title: "orioledb"
linkTitle: "orioledb"
description: "OrioleDB, the next generation transactional engine"
weight: 2910
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/orioledb/orioledb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">orioledb/orioledb</div>
    <div class="ext-card__desc">https://github.com/orioledb/orioledb</div>
  </a>
  <div class="ext-card ext-card--source">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title"><a href="https://repo.pigsty.io/ext/src/orioledb-beta19.tar.gz">orioledb-beta19.tar.gz</a></div>
    <div class="ext-card__desc"><a href="https://repo.pigsty.io/ext/src/postgres-patches16_49.tar.gz">postgres-patches16_49.tar.gz</a><br><a href="https://repo.pigsty.io/ext/src/postgres-patches17_22.tar.gz">postgres-patches17_22.tar.gz</a><br><a href="https://repo.pigsty.io/ext/src/postgres-patches18_3.tar.gz">postgres-patches18_3.tar.gz</a>
    </div>
  </div>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`orioledb`**](/ext/e/orioledb) | `1.10` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20 or postgresql" href="/ext/license#apache20orpostgresql">Apache-2.0 OR PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2910  | [**`orioledb`**](/ext/e/orioledb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`storage_engine`](/ext/e/storage_engine) [`columnar`](/ext/e/columnar) [`pg_sorted_heap`](/ext/e/pg_sorted_heap) [`citus_columnar`](/ext/e/citus_columnar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream beta19 installs SQL 1.10 and requires patched kernels patches16_49/patches17_22/patches18_3. Retained Pigsty recipes, source archives and local RPM/DEB matrix use beta19 (package 1.10). Public beta, not recommended upstream for production; repository publication is checked separately.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10` | {{< pgvers "18,17,16" >}} | `orioledb` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10` | {{< pgvers "18,17,16" >}} | `orioledb-$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10` | {{< pgvers "18,17,16" >}} | `orioledb-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | AVAIL PIGSTY 1.10 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 orioledb-18 orioledb-18-1.10~beta19-1PGSTY.el8.x86_64.rpm pigsty 1.10 24.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-18-1.10~beta19-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 orioledb-18 orioledb-18-1.10~beta19-1PGSTY.el8.aarch64.rpm pigsty 1.10 23.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-18-1.10~beta19-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 orioledb-18 orioledb-18-1.10~beta19-1PGSTY.el9.x86_64.rpm pigsty 1.10 23.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-18-1.10~beta19-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 orioledb-18 orioledb-18-1.10~beta19-1PGSTY.el9.aarch64.rpm pigsty 1.10 23.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-18-1.10~beta19-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 orioledb-18 orioledb-18-1.10~beta19-1PGSTY.el10.x86_64.rpm pigsty 1.10 23.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-18-1.10~beta19-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 orioledb-18 orioledb-18-1.10~beta19-1PGSTY.el10.aarch64.rpm pigsty 1.10 23.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-18-1.10~beta19-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~bookworm_amd64.deb pigsty 1.10 23.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~bookworm_arm64.deb pigsty 1.10 22.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~trixie_amd64.deb pigsty 1.10 21.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~trixie_arm64.deb pigsty 1.10 20.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~jammy_amd64.deb pigsty 1.10 25.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~jammy_arm64.deb pigsty 1.10 25.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~noble_amd64.deb pigsty 1.10 23.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~noble_arm64.deb pigsty 1.10 23.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~resolute_amd64.deb pigsty 1.10 22.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 orioledb-18 orioledb-18_1.10~beta19-1PGSTY~resolute_arm64.deb pigsty 1.10 22.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-18/orioledb-18_1.10~beta19-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 orioledb-17 orioledb-17-1.10~beta19-1PGSTY.el8.x86_64.rpm pigsty 1.10 23.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-17-1.10~beta19-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 orioledb-17 orioledb-17-1.10~beta19-1PGSTY.el8.aarch64.rpm pigsty 1.10 23.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-17-1.10~beta19-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 orioledb-17 orioledb-17-1.10~beta19-1PGSTY.el9.x86_64.rpm pigsty 1.10 22.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-17-1.10~beta19-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 orioledb-17 orioledb-17-1.10~beta19-1PGSTY.el9.aarch64.rpm pigsty 1.10 22.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-17-1.10~beta19-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 orioledb-17 orioledb-17-1.10~beta19-1PGSTY.el10.x86_64.rpm pigsty 1.10 22.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-17-1.10~beta19-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 orioledb-17 orioledb-17-1.10~beta19-1PGSTY.el10.aarch64.rpm pigsty 1.10 22.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-17-1.10~beta19-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~bookworm_amd64.deb pigsty 1.10 22.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~bookworm_arm64.deb pigsty 1.10 22.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~trixie_amd64.deb pigsty 1.10 20.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~trixie_arm64.deb pigsty 1.10 19.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~jammy_amd64.deb pigsty 1.10 24.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~jammy_arm64.deb pigsty 1.10 24.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~noble_amd64.deb pigsty 1.10 22.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~noble_arm64.deb pigsty 1.10 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~resolute_amd64.deb pigsty 1.10 22.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 orioledb-17 orioledb-17_1.10~beta19-1PGSTY~resolute_arm64.deb pigsty 1.10 21.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-17/orioledb-17_1.10~beta19-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 orioledb-16 orioledb-16-1.10~beta19-1PGSTY.el8.x86_64.rpm pigsty 1.10 22.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-16-1.10~beta19-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 orioledb-16 orioledb-16-1.10~beta19-1PGSTY.el8.aarch64.rpm pigsty 1.10 22.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-16-1.10~beta19-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 orioledb-16 orioledb-16-1.10~beta19-1PGSTY.el9.x86_64.rpm pigsty 1.10 21.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-16-1.10~beta19-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 orioledb-16 orioledb-16-1.10~beta19-1PGSTY.el9.aarch64.rpm pigsty 1.10 21.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-16-1.10~beta19-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 orioledb-16 orioledb-16-1.10~beta19-1PGSTY.el10.x86_64.rpm pigsty 1.10 21.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-16-1.10~beta19-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 orioledb-16 orioledb-16-1.10~beta19-1PGSTY.el10.aarch64.rpm pigsty 1.10 21.5MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-16-1.10~beta19-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~bookworm_amd64.deb pigsty 1.10 21.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~bookworm_arm64.deb pigsty 1.10 21.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~trixie_amd64.deb pigsty 1.10 19.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~trixie_arm64.deb pigsty 1.10 19.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~jammy_amd64.deb pigsty 1.10 23.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~jammy_arm64.deb pigsty 1.10 23.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~noble_amd64.deb pigsty 1.10 21.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~noble_arm64.deb pigsty 1.10 21.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~resolute_amd64.deb pigsty 1.10 21.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 orioledb-16 orioledb-16_1.10~beta19-1PGSTY~resolute_arm64.deb pigsty 1.10 21.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-16/orioledb-16_1.10~beta19-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `orioledb` using `pig build`:

```bash
pig build pkg orioledb         # build RPM / DEB packages
```


## Install

You can install `orioledb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install orioledb;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y orioledb -v 18  # PG 18
pig ext install -y orioledb -v 17  # PG 17
pig ext install -y orioledb -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y orioledb-18       # PG 18
dnf install -y orioledb-17       # PG 17
dnf install -y orioledb-16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y orioledb-18   # PG 18
apt install -y orioledb-17   # PG 17
apt install -y orioledb-16   # PG 16
```


**Preload**:

```bash
shared_preload_libraries = 'orioledb';
```


**Create Extension**:

```sql
CREATE EXTENSION orioledb;
```

## Usage

Sources:

- [beta17 README](https://github.com/orioledb/orioledb/blob/beta17/README.md)
- [beta17 release](https://github.com/orioledb/orioledb/releases/tag/beta17)
- [Control file](https://github.com/orioledb/orioledb/blob/beta17/orioledb.control)
- [Patched PostgreSQL](https://github.com/orioledb/postgres)

OrioleDB is a new storage engine for PostgreSQL that provides modern approaches to database capacity, capabilities, and performance. It uses undo log-based MVCC, copy-on-write checkpoints, and row-level WAL to eliminate bloat and the need for VACUUM.

### Configuration

Add to `postgresql.conf` (requires restart):

```ini
shared_preload_libraries = 'orioledb.so'
```

Then enable the extension:

```sql
CREATE EXTENSION orioledb;
```

### Creating Tables

Use the `USING orioledb` clause to create tables with the OrioleDB storage engine:

```sql
CREATE TABLE my_table (
    id serial PRIMARY KEY,
    name text,
    value numeric
) USING orioledb;
```

Use ordinary DML on OrioleDB tables, subject to the documented compatibility limits:

```sql
INSERT INTO my_table (name, value) VALUES ('test', 42);
SELECT * FROM my_table WHERE id = 1;
UPDATE my_table SET value = 100 WHERE id = 1;
DELETE FROM my_table WHERE id = 1;
```

### Collation Requirements

OrioleDB tables support only **ICU**, **C**, and **POSIX** collations. To avoid specifying COLLATE on every text field, create the database with an appropriate default:

```sql
CREATE DATABASE mydb LOCALE 'C' TEMPLATE template0;
-- OR
CREATE DATABASE mydb LOCALE_PROVIDER icu ICU_LOCALE 'en' TEMPLATE template0;
```

### Key Benefits

- **No bloat**: Undo log-based MVCC means old tuple versions do not bloat main storage
- **No VACUUM needed**: Page-merging and undo log reclaim space automatically
- **No wraparound problem**: Native 64-bit transaction identifiers
- **Lock-less page reading**: In-memory pages linked directly to storage pages
- **Row-level WAL**: Compact write-ahead logging suitable for parallel apply

### Limitations

- Public beta status -- recommended for testing, not production
- Requires a patched PostgreSQL build from [orioledb/postgres](https://github.com/orioledb/postgres)
- Only ICU, C, and POSIX collations are supported

### Version Notes

OrioleDB beta17 uses extension SQL version `1.9` and patched PostgreSQL bases 16.15, 17.11, and 18.6. It adds concurrent creation/rebuilding of native btree indexes, cross-major upgrade support, page checksums, and parallel index/bitmap scans, together with recovery and DDL correctness fixes. Follow the beta17 binary and storage compatibility instructions before upgrading; a new SQL version does not make the engine usable on an unpatched PostgreSQL server.
