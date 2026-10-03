---
title: "lolor"
linkTitle: "lolor"
description: "Logical-replication-friendly replacement for PostgreSQL large objects"
weight: 9580
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgEdge/lolor">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgEdge/lolor</div>
    <div class="ext-card__desc">https://github.com/pgEdge/lolor</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/lolor-1.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">lolor-1.2.2.tar.gz</div>
    <div class="ext-card__desc">lolor-1.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`lolor`**](/ext/e/lolor) | `1.2.2` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9580  | [**`lolor`**](/ext/e/lolor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `lolor` |
{.ext-table}

| **Related** | [`lo`](/ext/e/lo) [`pglogical`](/ext/e/pglogical) [`spock`](/ext/e/spock) [`mimeo`](/ext/e/mimeo) [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`logical_ddl`](/ext/e/logical_ddl) [`pg_surgery`](/ext/e/pg_surgery) [`pg_repack`](/ext/e/pg_repack) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on pgedge kernel fork. Requires lolor.node


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "18,17,16,15" >}} | `lolor` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `18.6` | {{< pgvers "18,17,16,15" >}} | `pgedge-$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `18.6` | {{< pgvers "18,17,16,15" >}} | `pgedge-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 18.6 1 | AVAIL PIGSTY 17.11 1 | AVAIL PIGSTY 16.15 1 | AVAIL PIGSTY 15.19 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pgedge-18 pgedge-18-18.6-2PGSTY.el8.x86_64.rpm pigsty 18.6 12.6MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-18-18.6-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgedge-18 pgedge-18-18.6-2PGSTY.el8.aarch64.rpm pigsty 18.6 12.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-18-18.6-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgedge-18 pgedge-18-18.6-2PGSTY.el9.x86_64.rpm pigsty 18.6 12.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-18-18.6-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgedge-18 pgedge-18-18.6-2PGSTY.el9.aarch64.rpm pigsty 18.6 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-18-18.6-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgedge-18 pgedge-18-18.6-2PGSTY.el10.x86_64.rpm pigsty 18.6 12.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-18-18.6-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgedge-18 pgedge-18-18.6-2PGSTY.el10.aarch64.rpm pigsty 18.6 11.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-18-18.6-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 pgedge-18 pgedge-18_18.6-2PGSTY~bookworm_amd64.deb pigsty 18.6 10.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 pgedge-18 pgedge-18_18.6-2PGSTY~bookworm_arm64.deb pigsty 18.6 9.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 pgedge-18 pgedge-18_18.6-2PGSTY~trixie_amd64.deb pigsty 18.6 10.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~trixie_amd64.deb
@ d13.aarch64 18 pgedge-18 pgedge-18_18.6-2PGSTY~trixie_arm64.deb pigsty 18.6 9.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~trixie_arm64.deb
@ u22.x86_64 18 pgedge-18 pgedge-18_18.6-2PGSTY~jammy_amd64.deb pigsty 18.6 11.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~jammy_amd64.deb
@ u22.aarch64 18 pgedge-18 pgedge-18_18.6-2PGSTY~jammy_arm64.deb pigsty 18.6 11.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~jammy_arm64.deb
@ u24.x86_64 18 pgedge-18 pgedge-18_18.6-2PGSTY~noble_amd64.deb pigsty 18.6 11.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~noble_amd64.deb
@ u24.aarch64 18 pgedge-18 pgedge-18_18.6-2PGSTY~noble_arm64.deb pigsty 18.6 11.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~noble_arm64.deb
@ u26.x86_64 18 pgedge-18 pgedge-18_18.6-2PGSTY~resolute_amd64.deb pigsty 18.6 11.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~resolute_amd64.deb
@ u26.aarch64 18 pgedge-18 pgedge-18_18.6-2PGSTY~resolute_arm64.deb pigsty 18.6 11.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-18/pgedge-18_18.6-2PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgedge-17 pgedge-17-17.11-2PGSTY.el8.x86_64.rpm pigsty 17.11 12.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-17-17.11-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgedge-17 pgedge-17-17.11-2PGSTY.el8.aarch64.rpm pigsty 17.11 11.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-17-17.11-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgedge-17 pgedge-17-17.11-2PGSTY.el9.x86_64.rpm pigsty 17.11 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-17-17.11-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgedge-17 pgedge-17-17.11-2PGSTY.el9.aarch64.rpm pigsty 17.11 11.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-17-17.11-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgedge-17 pgedge-17-17.11-2PGSTY.el10.x86_64.rpm pigsty 17.11 11.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-17-17.11-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgedge-17 pgedge-17-17.11-2PGSTY.el10.aarch64.rpm pigsty 17.11 11.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-17-17.11-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 pgedge-17 pgedge-17_17.11-2PGSTY~bookworm_amd64.deb pigsty 17.11 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 pgedge-17 pgedge-17_17.11-2PGSTY~bookworm_arm64.deb pigsty 17.11 9.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 pgedge-17 pgedge-17_17.11-2PGSTY~trixie_amd64.deb pigsty 17.11 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~trixie_amd64.deb
@ d13.aarch64 17 pgedge-17 pgedge-17_17.11-2PGSTY~trixie_arm64.deb pigsty 17.11 9.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~trixie_arm64.deb
@ u22.x86_64 17 pgedge-17 pgedge-17_17.11-2PGSTY~jammy_amd64.deb pigsty 17.11 11.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~jammy_amd64.deb
@ u22.aarch64 17 pgedge-17 pgedge-17_17.11-2PGSTY~jammy_arm64.deb pigsty 17.11 11.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~jammy_arm64.deb
@ u24.x86_64 17 pgedge-17 pgedge-17_17.11-2PGSTY~noble_amd64.deb pigsty 17.11 11.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~noble_amd64.deb
@ u24.aarch64 17 pgedge-17 pgedge-17_17.11-2PGSTY~noble_arm64.deb pigsty 17.11 11.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~noble_arm64.deb
@ u26.x86_64 17 pgedge-17 pgedge-17_17.11-2PGSTY~resolute_amd64.deb pigsty 17.11 11.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~resolute_amd64.deb
@ u26.aarch64 17 pgedge-17 pgedge-17_17.11-2PGSTY~resolute_arm64.deb pigsty 17.11 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-17/pgedge-17_17.11-2PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgedge-16 pgedge-16-16.15-2PGSTY.el8.x86_64.rpm pigsty 16.15 11.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-16-16.15-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgedge-16 pgedge-16-16.15-2PGSTY.el8.aarch64.rpm pigsty 16.15 11.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-16-16.15-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgedge-16 pgedge-16-16.15-2PGSTY.el9.x86_64.rpm pigsty 16.15 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-16-16.15-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgedge-16 pgedge-16-16.15-2PGSTY.el9.aarch64.rpm pigsty 16.15 10.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-16-16.15-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgedge-16 pgedge-16-16.15-2PGSTY.el10.x86_64.rpm pigsty 16.15 11.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-16-16.15-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgedge-16 pgedge-16-16.15-2PGSTY.el10.aarch64.rpm pigsty 16.15 11.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-16-16.15-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 pgedge-16 pgedge-16_16.15-2PGSTY~bookworm_amd64.deb pigsty 16.15 9.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 pgedge-16 pgedge-16_16.15-2PGSTY~bookworm_arm64.deb pigsty 16.15 9.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 pgedge-16 pgedge-16_16.15-2PGSTY~trixie_amd64.deb pigsty 16.15 9.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~trixie_amd64.deb
@ d13.aarch64 16 pgedge-16 pgedge-16_16.15-2PGSTY~trixie_arm64.deb pigsty 16.15 9.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~trixie_arm64.deb
@ u22.x86_64 16 pgedge-16 pgedge-16_16.15-2PGSTY~jammy_amd64.deb pigsty 16.15 10.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~jammy_amd64.deb
@ u22.aarch64 16 pgedge-16 pgedge-16_16.15-2PGSTY~jammy_arm64.deb pigsty 16.15 10.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~jammy_arm64.deb
@ u24.x86_64 16 pgedge-16 pgedge-16_16.15-2PGSTY~noble_amd64.deb pigsty 16.15 10.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~noble_amd64.deb
@ u24.aarch64 16 pgedge-16 pgedge-16_16.15-2PGSTY~noble_arm64.deb pigsty 16.15 10.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~noble_arm64.deb
@ u26.x86_64 16 pgedge-16 pgedge-16_16.15-2PGSTY~resolute_amd64.deb pigsty 16.15 10.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~resolute_amd64.deb
@ u26.aarch64 16 pgedge-16 pgedge-16_16.15-2PGSTY~resolute_arm64.deb pigsty 16.15 10.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-16/pgedge-16_16.15-2PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgedge-15 pgedge-15-15.19-2PGSTY.el8.x86_64.rpm pigsty 15.19 10.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-15-15.19-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgedge-15 pgedge-15-15.19-2PGSTY.el8.aarch64.rpm pigsty 15.19 9.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-15-15.19-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgedge-15 pgedge-15-15.19-2PGSTY.el9.x86_64.rpm pigsty 15.19 10.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-15-15.19-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgedge-15 pgedge-15-15.19-2PGSTY.el9.aarch64.rpm pigsty 15.19 10.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-15-15.19-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgedge-15 pgedge-15-15.19-2PGSTY.el10.x86_64.rpm pigsty 15.19 10.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-15-15.19-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgedge-15 pgedge-15-15.19-2PGSTY.el10.aarch64.rpm pigsty 15.19 10.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-15-15.19-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 pgedge-15 pgedge-15_15.19-2PGSTY~bookworm_amd64.deb pigsty 15.19 8.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 pgedge-15 pgedge-15_15.19-2PGSTY~bookworm_arm64.deb pigsty 15.19 8.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 pgedge-15 pgedge-15_15.19-2PGSTY~trixie_amd64.deb pigsty 15.19 8.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~trixie_amd64.deb
@ d13.aarch64 15 pgedge-15 pgedge-15_15.19-2PGSTY~trixie_arm64.deb pigsty 15.19 8.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~trixie_arm64.deb
@ u22.x86_64 15 pgedge-15 pgedge-15_15.19-2PGSTY~jammy_amd64.deb pigsty 15.19 9.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~jammy_amd64.deb
@ u22.aarch64 15 pgedge-15 pgedge-15_15.19-2PGSTY~jammy_arm64.deb pigsty 15.19 9.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~jammy_arm64.deb
@ u24.x86_64 15 pgedge-15 pgedge-15_15.19-2PGSTY~noble_amd64.deb pigsty 15.19 9.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~noble_amd64.deb
@ u24.aarch64 15 pgedge-15 pgedge-15_15.19-2PGSTY~noble_arm64.deb pigsty 15.19 9.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~noble_arm64.deb
@ u26.x86_64 15 pgedge-15 pgedge-15_15.19-2PGSTY~resolute_amd64.deb pigsty 15.19 9.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~resolute_amd64.deb
@ u26.aarch64 15 pgedge-15 pgedge-15_15.19-2PGSTY~resolute_arm64.deb pigsty 15.19 9.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-15/pgedge-15_15.19-2PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `lolor` using `pig build`:

```bash
pig build pkg lolor         # build RPM / DEB packages
```


## Install

You can install `lolor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install lolor;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y lolor -v 18  # PG 18
pig ext install -y lolor -v 17  # PG 17
pig ext install -y lolor -v 16  # PG 16
pig ext install -y lolor -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgedge-18       # PG 18
dnf install -y pgedge-17       # PG 17
dnf install -y pgedge-16       # PG 16
dnf install -y pgedge-15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y pgedge-18   # PG 18
apt install -y pgedge-17   # PG 17
apt install -y pgedge-16   # PG 16
apt install -y pgedge-15   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION lolor;
```

## Usage

Sources:

- [v1.2.2 README](https://github.com/pgEdge/lolor/blob/v1.2.2/README.md)
- [Control file](https://github.com/pgEdge/lolor/blob/v1.2.2/lolor.control)
- [Version 1.2.2 migration](https://github.com/pgEdge/lolor/blob/v1.2.2/lolor--1.2.1--1.2.2.sql)
- [Usage reference](https://github.com/pgEdge/lolor/blob/v1.2.2/docs/using_lolor.md)
- [Release notes](https://github.com/pgEdge/lolor/blob/v1.2.2/docs/lolor_release_notes.md)
`lolor` 1.2.2 stores large-object chunks and metadata in ordinary tables so logical replication can include them. Enabling it replaces the database's native large-object routines; it is a database-wide behavior change, not an independent object store.

### Configure and Enable

Assign each writing node a distinct nonzero `lolor.node` before creating large objects. Upstream documents values from 1 through 2^28. Configure the server's parameter and create the extension in each participating database:

```conf
lolor.node = 1
```

```sql
CREATE EXTENSION lolor;
SET search_path = lolor, "$user", public, pg_catalog;
```

The control file fixes schema `lolor`, declares trusted installation and disallows relocation. The upstream README requires PostgreSQL 16 or newer; the current Pigsty pgEdge bundle has separately tested builds for 15–18. That packaging result does not establish support for arbitrary stock PostgreSQL 15 installations.

### Large Object Workflow

```sql
WITH created AS (
  SELECT lo_from_bytea(0, convert_to('example data', 'UTF8')) AS oid
)
SELECT oid, convert_from(lo_get(oid), 'UTF8') AS contents FROM created;
```

Standard calls such as `lo_create()`, `lo_get()`, `lo_put()` and `lo_unlink()` use the replacement routines. Descriptor-based access through `lo_open()`, `loread()`, `lowrite()` and `lo_close()` must stay within the same transaction. File import/export operates on server-side paths and remains subject to the relevant function and filesystem privileges.

The extension uses `lolor.pg_largeobject` and `lolor.pg_largeobject_metadata`. Existing catalog routines are retained with renamed originals so disabling or removing the extension can restore the native function names.

### Replication

With a configured Spock replication set, include both tables:

```sql
SELECT spock.repset_add_table('default', 'lolor.pg_largeobject');
SELECT spock.repset_add_table('default', 'lolor.pg_largeobject_metadata');
```

Install compatible versions and coordinate node identifiers and object ownership on every node. Creating the extension alone does not create a logical-replication topology.

### Upgrade and Boundaries

Version 1.2.2 repairs extension and major-version upgrade behavior and adds `lolor.disable()`, `lolor.enable()` and `lolor.is_enabled()`. Update lolor **before** running pg_upgrade; the fix does not retroactively repair a major upgrade already attempted with older extension files:

```sql
ALTER EXTENSION lolor UPDATE TO '1.2.2';
SELECT lolor.is_enabled();
```

Disabling changes which native function names are active; it does not migrate stored large objects. Native large-object migration is not provided. Native large-object functionality and lolor storage cannot be used interchangeably while lolor is enabled. Upstream excludes ALTER LARGE OBJECT, GRANT ON LARGE OBJECT, COMMENT ON LARGE OBJECT and REVOKE ON LARGE OBJECT. Plan backup, restore and replication for both ordinary tables.
