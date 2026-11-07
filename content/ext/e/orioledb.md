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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/orioledb-1.10.2.tar.gz postgres-patches16_50.tar.gz postgres-patches17_23.tar.gz postgres-patches18_4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">orioledb-1.10.2.tar.gz postgres-patches16_50.tar.gz postgres-patches17_23.tar.gz postgres-patches18_4.tar.gz</div>
    <div class="ext-card__desc">orioledb-1.10.2.tar.gz postgres-patches16_50.tar.gz postgres-patches17_23.tar.gz postgres-patches18_4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`orioledb`**](/ext/e/orioledb) | `1.10` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20 or postgresql" href="/ext/license#apache20orpostgresql">Apache-2.0 OR PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2910  | [**`orioledb`**](/ext/e/orioledb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`storage_engine`](/ext/e/storage_engine) [`columnar`](/ext/e/columnar) [`pg_sorted_heap`](/ext/e/pg_sorted_heap) [`citus_columnar`](/ext/e/citus_columnar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires patched PG16-18 kernels; experimental.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10` | {{< pgvers "18,17,16" >}} | `orioledb` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10.2` | {{< pgvers "18,17,16" >}} | `orioledb-$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.10.1` | {{< pgvers "18,17,16" >}} | `orioledb-$v` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | AVAIL PIGSTY 1.10.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | AVAIL PIGSTY 1.10.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 orioledb-18 orioledb-18-1.10.2-1PGSTY.el8.x86_64.rpm pigsty 1.10.2 24.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-18-1.10.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 orioledb-18 orioledb-18-1.10.2-1PGSTY.el8.aarch64.rpm pigsty 1.10.2 23.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-18-1.10.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 orioledb-18 orioledb-18-1.10.2-1PGSTY.el9.x86_64.rpm pigsty 1.10.2 23.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-18-1.10.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 orioledb-18 orioledb-18-1.10.2-1PGSTY.el9.aarch64.rpm pigsty 1.10.2 23.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-18-1.10.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 orioledb-18 orioledb-18-1.10.2-1PGSTY.el10.x86_64.rpm pigsty 1.10.2 23.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-18-1.10.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 orioledb-18 orioledb-18-1.10.2-1PGSTY.el10.aarch64.rpm pigsty 1.10.2 23.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-18-1.10.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~bookworm_amd64.deb pigsty 1.10.1 23.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~bookworm_arm64.deb pigsty 1.10.1 22.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~trixie_amd64.deb pigsty 1.10.1 21.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~trixie_arm64.deb pigsty 1.10.1 20.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~jammy_amd64.deb pigsty 1.10.1 25.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~jammy_arm64.deb pigsty 1.10.1 25.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~noble_amd64.deb pigsty 1.10.1 23.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~noble_arm64.deb pigsty 1.10.1 23.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~resolute_amd64.deb pigsty 1.10.1 22.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 orioledb-18 orioledb-18_1.10.1-1PGSTY~resolute_arm64.deb pigsty 1.10.1 22.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-18/orioledb-18_1.10.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 orioledb-17 orioledb-17-1.10.2-1PGSTY.el8.x86_64.rpm pigsty 1.10.2 23.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-17-1.10.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 orioledb-17 orioledb-17-1.10.2-1PGSTY.el8.aarch64.rpm pigsty 1.10.2 22.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-17-1.10.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 orioledb-17 orioledb-17-1.10.2-1PGSTY.el9.x86_64.rpm pigsty 1.10.2 22.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-17-1.10.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 orioledb-17 orioledb-17-1.10.2-1PGSTY.el9.aarch64.rpm pigsty 1.10.2 22.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-17-1.10.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 orioledb-17 orioledb-17-1.10.2-1PGSTY.el10.x86_64.rpm pigsty 1.10.2 22.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-17-1.10.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 orioledb-17 orioledb-17-1.10.2-1PGSTY.el10.aarch64.rpm pigsty 1.10.2 22.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-17-1.10.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~bookworm_amd64.deb pigsty 1.10.1 22.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~bookworm_arm64.deb pigsty 1.10.1 22.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~trixie_amd64.deb pigsty 1.10.1 20.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~trixie_arm64.deb pigsty 1.10.1 19.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~jammy_amd64.deb pigsty 1.10.1 24.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~jammy_arm64.deb pigsty 1.10.1 24.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~noble_amd64.deb pigsty 1.10.1 22.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~noble_arm64.deb pigsty 1.10.1 22.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~resolute_amd64.deb pigsty 1.10.1 22.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 orioledb-17 orioledb-17_1.10.1-1PGSTY~resolute_arm64.deb pigsty 1.10.1 21.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-17/orioledb-17_1.10.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 orioledb-16 orioledb-16-1.10.2-1PGSTY.el8.x86_64.rpm pigsty 1.10.2 22.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-16-1.10.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 orioledb-16 orioledb-16-1.10.2-1PGSTY.el8.aarch64.rpm pigsty 1.10.2 22.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-16-1.10.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 orioledb-16 orioledb-16-1.10.2-1PGSTY.el9.x86_64.rpm pigsty 1.10.2 21.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-16-1.10.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 orioledb-16 orioledb-16-1.10.2-1PGSTY.el9.aarch64.rpm pigsty 1.10.2 21.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-16-1.10.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 orioledb-16 orioledb-16-1.10.2-1PGSTY.el10.x86_64.rpm pigsty 1.10.2 21.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-16-1.10.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 orioledb-16 orioledb-16-1.10.2-1PGSTY.el10.aarch64.rpm pigsty 1.10.2 21.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-16-1.10.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~bookworm_amd64.deb pigsty 1.10.1 21.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~bookworm_arm64.deb pigsty 1.10.1 21.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~trixie_amd64.deb pigsty 1.10.1 19.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~trixie_arm64.deb pigsty 1.10.1 19.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~jammy_amd64.deb pigsty 1.10.1 23.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~jammy_arm64.deb pigsty 1.10.1 23.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~noble_amd64.deb pigsty 1.10.1 21.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~noble_arm64.deb pigsty 1.10.1 21.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~resolute_amd64.deb pigsty 1.10.1 21.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 orioledb-16 orioledb-16_1.10.1-1PGSTY~resolute_arm64.deb pigsty 1.10.1 21.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-16/orioledb-16_1.10.1-1PGSTY~resolute_arm64.deb
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

- [1.10.2 README](https://github.com/orioledb/orioledb/blob/v1.10.2/README.md)
- [1.10.2 release](https://github.com/orioledb/orioledb/releases/tag/v1.10.2)
- [Control file](https://github.com/orioledb/orioledb/blob/v1.10.2/orioledb.control)
- [Patched PostgreSQL](https://github.com/orioledb/postgres)
- [Patched server versions](https://github.com/orioledb/orioledb/blob/v1.10.2/.pgtags)

`orioledb` provides an alternative table storage engine using undo-based MVCC, copy-on-write checkpoints and row-level WAL. It requires a specifically patched PostgreSQL server and remains a public beta.

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

### Compatibility and 1.10.2 Maintenance

The release's `.pgtags` pins PostgreSQL 16, 17 and 18 to `patches16_50`, `patches17_23` and `patches18_4`, respectively. An ordinary PostgreSQL installation is not sufficient. Only ICU, C and POSIX collations are supported. The undo and page-merging design reduces native-table vacuum requirements; other PostgreSQL tables still need normal maintenance.

Release 1.10.2 keeps SQL version `1.10` and introduces no storage or WAL format change. It fixes the runtime version reported by `ORIOLEDB_VERSION`, row-version handling under concurrency, capture of updates during concurrent index builds, background-writer crashes with range/array/composite keys, NULL handling in diagnostic functions, expression-index memory leaks and standby tablespace moves.

Use matching server patches and library files on every node and follow the version-specific upgrade procedure with a backup. Do not request SQL version 1.10.2: it does not exist. The public-beta limitation remains; the upstream project does not recommend general production use.
