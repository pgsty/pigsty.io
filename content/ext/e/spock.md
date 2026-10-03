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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/spock-5.0.12.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">spock-5.0.12.tar.gz</div>
    <div class="ext-card__desc">spock-5.0.12.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`spock`**](/ext/e/spock) | `5.0.12` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9570  | [**`spock`**](/ext/e/spock) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `spock` |
{.ext-table}

| **Related** | [`pglogical`](/ext/e/pglogical) [`pgactive`](/ext/e/pgactive) [`mimeo`](/ext/e/mimeo) [`pgoutput`](/ext/e/pgoutput) [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`logical_ddl`](/ext/e/logical_ddl) [`postgres_fdw`](/ext/e/postgres_fdw) [`lolor`](/ext/e/lolor) [`citus`](/ext/e/citus) [`plproxy`](/ext/e/plproxy) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Bundled with pgEdge 15.19/16.15/17.11/18.6.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.12` | {{< pgvers "18,17,16,15" >}} | `spock` | - |
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

You can build the RPM / DEB packages for `spock` using `pig build`:

```bash
pig build pkg spock         # build RPM / DEB packages
```


## Install

You can install `spock` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install spock;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y spock -v 18  # PG 18
pig ext install -y spock -v 17  # PG 17
pig ext install -y spock -v 16  # PG 16
pig ext install -y spock -v 15  # PG 15
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

- [Spock v5.0.12 README](https://github.com/pgEdge/spock/blob/v5.0.12/README.md)
- [Getting started](https://github.com/pgEdge/spock/blob/v5.0.12/docs/getting_started.md)
- [Configuration reference](https://github.com/pgEdge/spock/blob/v5.0.12/docs/configuring.md)
- [Limitations](https://github.com/pgEdge/spock/blob/v5.0.12/docs/limitations.md)
- [Release notes](https://github.com/pgEdge/spock/blob/v5.0.12/docs/spock_release_notes.md)

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

### Version 5.0.12 and Upgrades

Spock requires the version-specific PostgreSQL core patches described in the upstream README; matching the major version alone is insufficient. Use a compatible core, such as the matching pgEdge build, on every node. Shared preload changes require a restart. Upstream adds preliminary PostgreSQL 19 support in 5.0.12 but explicitly excludes production support for that beta; current Pigsty pgEdge builds cover 15–18.

PostgreSQL servers carrying the output-plugin security fix require `spock_output` in `output_plugin_libraries`, including on physical standbys that may become publishers. Check that the parameter exists first:

```sql
SELECT current_setting('output_plugin_libraries', true);
```

Only when the query returns a non-null value, add the plugin while retaining other required entries:

```conf
output_plugin_libraries = 'pgoutput, test_decoding, spock_output'
```

An unknown parameter prevents older servers from starting. The allowlist check also applies when decoding resumes on an existing slot, so plan this setting before a PostgreSQL minor-version upgrade.

The 5.0.12 patch has no schema changes. It retries transient apply failures without advancing the replication origin, repairs replay/exception handling and generated-column replication, and validates received tuple metadata. Permanent schema drift still needs repair; a restarting worker is not evidence that replication is healthy. Review replication lag, exception state and subscriptions after upgrading each node.

Version 5.0.11 introduced `spock.use_native_failover_slots`; changing it requires a restart. Its native-slot behavior depends on PostgreSQL 17 or later, and failover setup needs the dedicated upstream runbook. Do not enable it merely because a cluster has a standby.
