---
title: "pglite_fusion"
linkTitle: "pglite_fusion"
description: "Embed an SQLite database in your PostgreSQL table"
weight: 3590
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/frectonz/pglite-fusion">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">frectonz/pglite-fusion</div>
    <div class="ext-card__desc">https://github.com/frectonz/pglite-fusion</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pglite-fusion-0.0.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglite-fusion-0.0.6.tar.gz</div>
    <div class="ext-card__desc">pglite-fusion-0.0.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglite_fusion`**](/ext/e/pglite_fusion) | `0.0.6` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3590  | [**`pglite_fusion`**](/ext/e/pglite_fusion) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`duckdb_fdw`](/ext/e/duckdb_fdw) [`sqlite_fdw`](/ext/e/sqlite_fdw) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.6` | {{< pgvers "18,17,16,15,14" >}} | `pglite_fusion` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.6` | {{< pgvers "18,17,16,15,14" >}} | `pglite_fusion_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglite-fusion` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 | AVAIL PIGSTY 0.0.6 1 |
@ el8.x86_64 18 pglite_fusion_18 pglite_fusion_18-0.0.6-4PIGSTY.el8.x86_64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglite_fusion_18-0.0.6-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pglite_fusion_18 pglite_fusion_18-0.0.6-4PIGSTY.el8.aarch64.rpm pigsty 0.0.6 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglite_fusion_18-0.0.6-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pglite_fusion_18 pglite_fusion_18-0.0.6-4PIGSTY.el9.x86_64.rpm pigsty 0.0.6 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglite_fusion_18-0.0.6-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pglite_fusion_18 pglite_fusion_18-0.0.6-4PIGSTY.el9.aarch64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglite_fusion_18-0.0.6-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pglite_fusion_18 pglite_fusion_18-0.0.6-4PIGSTY.el10.x86_64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglite_fusion_18-0.0.6-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pglite_fusion_18 pglite_fusion_18-0.0.6-4PIGSTY.el10.aarch64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglite_fusion_18-0.0.6-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb pigsty 0.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb pigsty 0.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pglite-fusion postgresql-18-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-18-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pglite_fusion_17 pglite_fusion_17-0.0.6-4PIGSTY.el8.x86_64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglite_fusion_17-0.0.6-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pglite_fusion_17 pglite_fusion_17-0.0.6-4PIGSTY.el8.aarch64.rpm pigsty 0.0.6 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglite_fusion_17-0.0.6-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pglite_fusion_17 pglite_fusion_17-0.0.6-4PIGSTY.el9.x86_64.rpm pigsty 0.0.6 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglite_fusion_17-0.0.6-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pglite_fusion_17 pglite_fusion_17-0.0.6-4PIGSTY.el9.aarch64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglite_fusion_17-0.0.6-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pglite_fusion_17 pglite_fusion_17-0.0.6-4PIGSTY.el10.x86_64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglite_fusion_17-0.0.6-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pglite_fusion_17 pglite_fusion_17-0.0.6-4PIGSTY.el10.aarch64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglite_fusion_17-0.0.6-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb pigsty 0.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pglite-fusion postgresql-17-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-17-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pglite_fusion_16 pglite_fusion_16-0.0.6-4PIGSTY.el8.x86_64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglite_fusion_16-0.0.6-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pglite_fusion_16 pglite_fusion_16-0.0.6-4PIGSTY.el8.aarch64.rpm pigsty 0.0.6 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglite_fusion_16-0.0.6-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pglite_fusion_16 pglite_fusion_16-0.0.6-4PIGSTY.el9.x86_64.rpm pigsty 0.0.6 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglite_fusion_16-0.0.6-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pglite_fusion_16 pglite_fusion_16-0.0.6-4PIGSTY.el9.aarch64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglite_fusion_16-0.0.6-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pglite_fusion_16 pglite_fusion_16-0.0.6-4PIGSTY.el10.x86_64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglite_fusion_16-0.0.6-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pglite_fusion_16 pglite_fusion_16-0.0.6-4PIGSTY.el10.aarch64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglite_fusion_16-0.0.6-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb pigsty 0.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pglite-fusion postgresql-16-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-16-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pglite_fusion_15 pglite_fusion_15-0.0.6-4PIGSTY.el8.x86_64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglite_fusion_15-0.0.6-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pglite_fusion_15 pglite_fusion_15-0.0.6-4PIGSTY.el8.aarch64.rpm pigsty 0.0.6 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglite_fusion_15-0.0.6-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pglite_fusion_15 pglite_fusion_15-0.0.6-4PIGSTY.el9.x86_64.rpm pigsty 0.0.6 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglite_fusion_15-0.0.6-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pglite_fusion_15 pglite_fusion_15-0.0.6-4PIGSTY.el9.aarch64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglite_fusion_15-0.0.6-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pglite_fusion_15 pglite_fusion_15-0.0.6-4PIGSTY.el10.x86_64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglite_fusion_15-0.0.6-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pglite_fusion_15 pglite_fusion_15-0.0.6-4PIGSTY.el10.aarch64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglite_fusion_15-0.0.6-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb pigsty 0.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pglite-fusion postgresql-15-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-15-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pglite_fusion_14 pglite_fusion_14-0.0.6-4PIGSTY.el8.x86_64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pglite_fusion_14-0.0.6-4PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pglite_fusion_14 pglite_fusion_14-0.0.6-4PIGSTY.el8.aarch64.rpm pigsty 0.0.6 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pglite_fusion_14-0.0.6-4PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pglite_fusion_14 pglite_fusion_14-0.0.6-4PIGSTY.el9.x86_64.rpm pigsty 0.0.6 1.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pglite_fusion_14-0.0.6-4PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pglite_fusion_14 pglite_fusion_14-0.0.6-4PIGSTY.el9.aarch64.rpm pigsty 0.0.6 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pglite_fusion_14-0.0.6-4PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pglite_fusion_14 pglite_fusion_14-0.0.6-4PIGSTY.el10.x86_64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pglite_fusion_14-0.0.6-4PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pglite_fusion_14 pglite_fusion_14-0.0.6-4PIGSTY.el10.aarch64.rpm pigsty 0.0.6 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pglite_fusion_14-0.0.6-4PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb pigsty 0.0.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb pigsty 0.0.6 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb pigsty 0.0.6 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pglite-fusion postgresql-14-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb pigsty 0.0.6 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pglite-fusion/postgresql-14-pglite-fusion_0.0.6-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pglite_fusion` using `pig build`:

```bash
pig build pkg pglite_fusion         # build RPM / DEB packages
```


## Install

You can install `pglite_fusion` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pglite_fusion;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pglite_fusion -v 18  # PG 18
pig ext install -y pglite_fusion -v 17  # PG 17
pig ext install -y pglite_fusion -v 16  # PG 16
pig ext install -y pglite_fusion -v 15  # PG 15
pig ext install -y pglite_fusion -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pglite_fusion_18       # PG 18
dnf install -y pglite_fusion_17       # PG 17
dnf install -y pglite_fusion_16       # PG 16
dnf install -y pglite_fusion_15       # PG 15
dnf install -y pglite_fusion_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pglite-fusion   # PG 18
apt install -y postgresql-17-pglite-fusion   # PG 17
apt install -y postgresql-16-pglite-fusion   # PG 16
apt install -y postgresql-15-pglite-fusion   # PG 15
apt install -y postgresql-14-pglite-fusion   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pglite_fusion';
```


**Create Extension**:

```sql
CREATE EXTENSION pglite_fusion;
```




## Usage

> https://github.com/frectonz/pglite-fusion/blob/main/README.md


Here's some demo usage.

```sql
-- Load PG extension
CREATE EXTENSION pglite_fusion;

-- Create a table with an SQLite column
CREATE TABLE people (
                        name     TEXT NOT NULL,
                        database SQLITE DEFAULT init_sqlite('CREATE TABLE todos (task TEXT)')
);

-- Insert a row into the people table
INSERT INTO people VALUES ('frectonz');

-- Create a todo for "frectonz"
UPDATE people
SET database = execute_sqlite(
        database,
        'INSERT INTO todos VALUES (''solve multitenancy'')'
               )
WHERE name = 'frectonz';

-- Create a todo for "frectonz"
UPDATE people
SET database = execute_sqlite(
        database,
        'INSERT INTO todos VALUES (''buy milk'')'
               )
WHERE name = 'frectonz';

-- Fetch frectonz's info
SELECT
    name,
    (
        SELECT json_agg(get_sqlite_text(sqlite_row, 0))
        FROM query_sqlite(
                database,
                'SELECT * FROM todos'
             )
    ) AS todos
FROM
    people
WHERE
    name = 'frectonz';
```


--------

## API Doc


### `empty_sqlite`

Creates an empty SQLite database and returns it as a binary object. This can be used to initialize an empty SQLite database in a PostgreSQL column.

#### Example Usage:

```sql
SELECT empty_sqlite();
```

-----

### `query_sqlite`

Executes a SQL query on a SQLite database stored as a binary object and returns the result as a table of JSON-encoded rows. This function is useful for querying SQLite databases stored in PostgreSQL columns.

#### Parameters:

- `sqlite`: The SQLite database to query, stored as a binary object.
- `query`: The SQL query string to execute on the SQLite database.

#### Example Usage:

```sql
SELECT * FROM query_sqlite(
        database,
        'SELECT * FROM todos'
              );
```

-----

### `execute_sqlite`

Executes a SQL statement (such as `INSERT`, `UPDATE`, or `DELETE`) on a SQLite database stored as a binary object. The updated SQLite database is returned as a binary object, allowing further operations on it.

#### Parameters:

- `sqlite`: The SQLite database to execute the SQL query on, stored as a binary object.
- `query`: The SQL statement to execute on the SQLite database.

##### Example Usage:

```sql
UPDATE people
SET database = execute_sqlite(
        database,
        'INSERT INTO todos VALUES (''solve multitenancy'')'
               )
WHERE name = 'frectonz';
```

-----

### `init_sqlite`

Creates an SQLite database with an initialization query already applied on it. This can be used to initialize a SQLite database with the expected tables already created.

#### Parameters:

- `query`: The SQL statement to execute on the SQLite database.

##### Example Usage:

```sql

CREATE TABLE people (
                        name     TEXT NOT NULL,
                        database SQLITE DEFAULT init_sqlite('CREATE TABLE todos (task TEXT)')
);
```

-----

### `get_sqlite_text`
Extracts a text value from a specific column in a row returned by `query_sqlite`. Use this function to retrieve text values from query results.

#### Parameters:

- `sqlite_row`: A row from the results of `query_sqlite`.
- `index`: The index of the column to extract from the row.

#### Example Usage:

```sql
SELECT get_sqlite_text(sqlite_row, 0)
FROM query_sqlite(database, 'SELECT * FROM todos');
```

----

### `get_sqlite_integer`

Extracts an integer value from a specific column in a row returned by `query_sqlite`. Use this function to retrieve integer values from query results.

#### Parameters:

- `sqlite_row`: A row from the results of `query_sqlite`.
- `index`: The index of the column to extract from the row.

#### Example Usage:

```sql
SELECT get_sqlite_integer(sqlite_row, 1)
FROM query_sqlite(database, 'SELECT * FROM todos');
```

----

### `get_sqlite_real`

Extracts a real (floating-point) value from a specific column in a row returned by `query_sqlite`. Use this function to retrieve real number values from query results.

#### Parameters:

- `sqlite_row`: A row from the results of `query_sqlite`.
- `index`: The index of the column to extract from the row.

#### Example Usage:

```sql
SELECT get_sqlite_real(sqlite_row, 2)
FROM query_sqlite(database, 'SELECT * FROM todos');
```