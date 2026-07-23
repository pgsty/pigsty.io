---
title: "spock"
linkTitle: "spock"
description: "Multi-master logical replication extension for PostgreSQL"
weight: 9570
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgEdge/spock">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgEdge/spock</div>
    <div class="ext-card__desc">https://github.com/pgEdge/spock</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/spock-5.0.10.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">spock-5.0.10.tar.gz</div>
    <div class="ext-card__desc">spock-5.0.10.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`spock`**](/ext/e/spock) | `5.0.10` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9570  | [**`spock`**](/ext/e/spock) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `spock` |
{.ext-table}

| **Related** | [`lolor`](/ext/e/lolor) [`snowflake`](/ext/e/snowflake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on pgedge kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.10` | {{< pgvers "18,17,16,15" >}} | `spock` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `18.4` | {{< pgvers "18,17,16,15" >}} | `pgedge-$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `18.4` | {{< pgvers "18,17,16,15" >}} | `pgedge-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 18.4 1 | AVAIL PIGSTY 17.10 1 | AVAIL PIGSTY 16.14 1 | AVAIL PIGSTY 15.18 1 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pgedge-18 pgedge-18-18.4-1PIGSTY.el8.x86_64.rpm pigsty 18.4 13.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-18-18.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgedge-18 pgedge-18-18.4-1PIGSTY.el8.aarch64.rpm pigsty 18.4 12.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-18-18.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgedge-18 pgedge-18-18.4-1PIGSTY.el9.x86_64.rpm pigsty 18.4 12.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-18-18.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgedge-18 pgedge-18-18.4-1PIGSTY.el9.aarch64.rpm pigsty 18.4 11.8MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-18-18.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgedge-18 pgedge-18-18.4-1PIGSTY.el10.x86_64.rpm pigsty 18.4 12.2MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-18-18.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgedge-18 pgedge-18-18.4-1PIGSTY.el10.aarch64.rpm pigsty 18.4 12.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-18-18.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~bookworm_amd64.deb pigsty 18.4 10.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~bookworm_arm64.deb pigsty 18.4 10.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~trixie_amd64.deb pigsty 18.4 10.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~trixie_arm64.deb pigsty 18.4 10.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~jammy_amd64.deb pigsty 18.4 11.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~jammy_arm64.deb pigsty 18.4 11.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~noble_amd64.deb pigsty 18.4 11.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~noble_arm64.deb pigsty 18.4 11.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~resolute_amd64.deb pigsty 18.4 11.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 pgedge-18 pgedge-18_18.4-1PIGSTY~resolute_arm64.deb pigsty 18.4 11.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-18/pgedge-18_18.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgedge-17 pgedge-17-17.10-1PIGSTY.el8.x86_64.rpm pigsty 17.10 12.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-17-17.10-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgedge-17 pgedge-17-17.10-1PIGSTY.el8.aarch64.rpm pigsty 17.10 12.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-17-17.10-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgedge-17 pgedge-17-17.10-1PIGSTY.el9.x86_64.rpm pigsty 17.10 11.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-17-17.10-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgedge-17 pgedge-17-17.10-1PIGSTY.el9.aarch64.rpm pigsty 17.10 11.5MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-17-17.10-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgedge-17 pgedge-17-17.10-1PIGSTY.el10.x86_64.rpm pigsty 17.10 11.8MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-17-17.10-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgedge-17 pgedge-17-17.10-1PIGSTY.el10.aarch64.rpm pigsty 17.10 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-17-17.10-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~bookworm_amd64.deb pigsty 17.10 10.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~bookworm_arm64.deb pigsty 17.10 9.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~trixie_amd64.deb pigsty 17.10 10.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~trixie_arm64.deb pigsty 17.10 9.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~jammy_amd64.deb pigsty 17.10 11.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~jammy_arm64.deb pigsty 17.10 11.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~noble_amd64.deb pigsty 17.10 11.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~noble_arm64.deb pigsty 17.10 11.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~resolute_amd64.deb pigsty 17.10 11.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 pgedge-17 pgedge-17_17.10-1PIGSTY~resolute_arm64.deb pigsty 17.10 11.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-17/pgedge-17_17.10-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgedge-16 pgedge-16-16.14-1PIGSTY.el8.x86_64.rpm pigsty 16.14 12.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-16-16.14-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgedge-16 pgedge-16-16.14-1PIGSTY.el8.aarch64.rpm pigsty 16.14 11.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-16-16.14-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgedge-16 pgedge-16-16.14-1PIGSTY.el9.x86_64.rpm pigsty 16.14 11.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-16-16.14-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgedge-16 pgedge-16-16.14-1PIGSTY.el9.aarch64.rpm pigsty 16.14 11.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-16-16.14-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgedge-16 pgedge-16-16.14-1PIGSTY.el10.x86_64.rpm pigsty 16.14 11.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-16-16.14-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgedge-16 pgedge-16-16.14-1PIGSTY.el10.aarch64.rpm pigsty 16.14 11.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-16-16.14-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~bookworm_amd64.deb pigsty 16.14 9.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~bookworm_arm64.deb pigsty 16.14 9.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~trixie_amd64.deb pigsty 16.14 9.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~trixie_arm64.deb pigsty 16.14 9.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~jammy_amd64.deb pigsty 16.14 11.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~jammy_arm64.deb pigsty 16.14 10.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~noble_amd64.deb pigsty 16.14 10.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~noble_arm64.deb pigsty 16.14 10.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~resolute_amd64.deb pigsty 16.14 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 pgedge-16 pgedge-16_16.14-1PIGSTY~resolute_arm64.deb pigsty 16.14 10.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-16/pgedge-16_16.14-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgedge-15 pgedge-15-15.18-1PIGSTY.el8.x86_64.rpm pigsty 15.18 10.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgedge-15-15.18-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgedge-15 pgedge-15-15.18-1PIGSTY.el8.aarch64.rpm pigsty 15.18 10.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgedge-15-15.18-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgedge-15 pgedge-15-15.18-1PIGSTY.el9.x86_64.rpm pigsty 15.18 10.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgedge-15-15.18-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgedge-15 pgedge-15-15.18-1PIGSTY.el9.aarch64.rpm pigsty 15.18 10.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgedge-15-15.18-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgedge-15 pgedge-15-15.18-1PIGSTY.el10.x86_64.rpm pigsty 15.18 10.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgedge-15-15.18-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgedge-15 pgedge-15-15.18-1PIGSTY.el10.aarch64.rpm pigsty 15.18 10.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgedge-15-15.18-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~bookworm_amd64.deb pigsty 15.18 8.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~bookworm_arm64.deb pigsty 15.18 8.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~trixie_amd64.deb pigsty 15.18 8.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~trixie_arm64.deb pigsty 15.18 8.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~jammy_amd64.deb pigsty 15.18 10.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~jammy_arm64.deb pigsty 15.18 9.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~noble_amd64.deb pigsty 15.18 10.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~noble_arm64.deb pigsty 15.18 9.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~resolute_amd64.deb pigsty 15.18 10.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 pgedge-15 pgedge-15_15.18-1PIGSTY~resolute_arm64.deb pigsty 15.18 9.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgedge-15/pgedge-15_15.18-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `spock` using `pig build`:

```bash
pig build pkg spock         # build RPM / DEB packages
```


## Install

You can install `spock` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install spock;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y spock -v 18  # PG 18
pig ext install -y spock -v 17  # PG 17
pig ext install -y spock -v 16  # PG 16
pig ext install -y spock -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgedge-18       # PG 18
dnf install -y pgedge-17       # PG 17
dnf install -y pgedge-16       # PG 16
dnf install -y pgedge-15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pgedge-18   # PG 18
apt install -y pgedge-17   # PG 17
apt install -y pgedge-16   # PG 16
apt install -y pgedge-15   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'spock';
```


**Create Extension**:

```sql
CREATE EXTENSION spock;
```




## Usage

Sources:

- [Spock v5.0.10 README](https://github.com/pgEdge/spock/blob/v5.0.10/README.md)
- [Getting started](https://github.com/pgEdge/spock/blob/v5.0.10/docs/getting_started.md)
- [Configuration reference](https://github.com/pgEdge/spock/blob/v5.0.10/docs/configuring.md)
- [Limitations](https://github.com/pgEdge/spock/blob/v5.0.10/docs/limitations.md)
- [Release notes](https://github.com/pgEdge/spock/blob/v5.0.10/docs/spock_release_notes.md)

`spock` provides active-active logical replication for PostgreSQL 15 through 18. Each participating database is a Spock node; a multi-master topology is formed by creating directed subscriptions between nodes.

### Configuration

In `postgresql.conf`:

```ini
wal_level = 'logical'
max_worker_processes = 10
max_replication_slots = 10
max_wal_senders = 10
shared_preload_libraries = 'spock'
track_commit_timestamp = on
spock.enable_ddl_replication = on
spock.include_ddl_repset = on
```

### Enabling

```sql
CREATE EXTENSION spock;
```

### Creating Nodes

On each node, create a node identity:

```sql
-- Node 1
SELECT spock.node_create(
    node_name := 'n1',
    dsn := 'host=10.0.0.5 port=5432 dbname=mydb'
);

-- Node 2
SELECT spock.node_create(
    node_name := 'n2',
    dsn := 'host=10.0.0.7 port=5432 dbname=mydb'
);
```

### Creating Subscriptions

For multi-master, each node subscribes to every other node:

```sql
-- On n1: subscribe to n2
SELECT spock.sub_create(
    subscription_name := 'sub_n1n2',
    provider_dsn := 'host=10.0.0.7 port=5432 dbname=mydb'
);

-- On n2: subscribe to n1
SELECT spock.sub_create(
    subscription_name := 'sub_n2n1',
    provider_dsn := 'host=10.0.0.5 port=5432 dbname=mydb'
);
```

### Replication Set Management

```sql
-- Add table to replication
SELECT spock.repset_add_table('default', 'my_table');

-- Remove table from replication
SELECT spock.repset_remove_table('default', 'my_table');

-- Add all tables in a schema
SELECT spock.repset_add_all_tables('default', '{public}');
```

### Key Features

- Multi-master (active-active) replication
- Automatic DDL replication
- Conflict detection and resolution using commit timestamps
- Row and column filtering
- Supports PostgreSQL 15, 16, 17, and 18
- Tables must have primary keys and matching schemas across nodes

### Operations and Caveats

- Install `spock` and add it to `shared_preload_libraries` on every participating server before creating nodes or subscriptions.
- Keep table definitions, data types, primary keys, and relevant unique indexes identical across nodes. Coordinate DDL even when DDL replication is enabled.
- Replicated tables need a primary key or another usable replica identity. Temporary and unlogged tables are not replication targets.
- Spock operates per database. Repeat extension and topology setup for each database that participates.
- Active-active conflict handling depends on commit timestamps and policy. Test simultaneous inserts and updates, especially nullable unique keys, before production use.
- Upstream documents platform/build requirements in the README; verify that the PostgreSQL build and Spock package used on every node are compatible.

### Version 5.0.10

`5.0.10` is a patch release in the 5.0 line. Its release notes include fixes for unique indexes containing `NULL`, `NULLS NOT DISTINCT` conflict handling, refreshing cached index metadata after an index is dropped, exception-path memory handling, and numerical version checks used during rolling patch upgrades. Upgrade every node to a compatible patch level and validate subscriptions after the rolling change.
