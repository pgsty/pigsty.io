---
title: "pgactive"
linkTitle: "pgactive"
description: "Active-Active Replication Extension for PostgreSQL"
weight: 9560
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aws/pgactive">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aws/pgactive</div>
    <div class="ext-card__desc">https://github.com/aws/pgactive</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgactive-2.1.9.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgactive-2.1.9.tar.gz</div>
    <div class="ext-card__desc">pgactive-2.1.9.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgactive`**](/ext/e/pgactive) | `2.1.9` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9560  | [**`pgactive`**](/ext/e/pgactive) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table .wide .expand}

| **Related** | [`pglogical`](/ext/e/pglogical) [`spock`](/ext/e/spock) [`mimeo`](/ext/e/mimeo) [`pgoutput`](/ext/e/pgoutput) [`postgres_fdw`](/ext/e/postgres_fdw) [`repmgr`](/ext/e/repmgr) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`citus`](/ext/e/citus) [`pgautofailover`](/ext/e/pgautofailover) [`bgw_replstatus`](/ext/e/bgw_replstatus) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> SQL 2.1.8.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.9` | {{< pgvers "18,17,16,15,14" >}} | `pgactive` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.9` | {{< pgvers "18,17,16,15,14" >}} | `pgactive_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgactive` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| el8.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| el9.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| el9.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| el10.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| el10.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| d12.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| d12.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| d13.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| d13.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| u22.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| u22.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| u24.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| u24.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| u26.x86_64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
| u26.aarch64 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 | AVAIL PIGSTY 2.1.9 1 |
@ el8.x86_64 18 pgactive_18 pgactive_18-2.1.9-1PGSTY.el8.x86_64.rpm pigsty 2.1.9 642.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_18-2.1.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgactive_18 pgactive_18-2.1.9-1PGSTY.el8.aarch64.rpm pigsty 2.1.9 623.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_18-2.1.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgactive_18 pgactive_18-2.1.9-1PGSTY.el9.x86_64.rpm pigsty 2.1.9 634.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_18-2.1.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgactive_18 pgactive_18-2.1.9-1PGSTY.el9.aarch64.rpm pigsty 2.1.9 623.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_18-2.1.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgactive_18 pgactive_18-2.1.9-1PGSTY.el10.x86_64.rpm pigsty 2.1.9 638.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_18-2.1.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgactive_18 pgactive_18-2.1.9-1PGSTY.el10.aarch64.rpm pigsty 2.1.9 628.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_18-2.1.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb pigsty 2.1.9 592.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb pigsty 2.1.9 564.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~trixie_amd64.deb pigsty 2.1.9 594.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~trixie_arm64.deb pigsty 2.1.9 568.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~jammy_amd64.deb pigsty 2.1.9 644.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~jammy_arm64.deb pigsty 2.1.9 633.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~noble_amd64.deb pigsty 2.1.9 624.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~noble_arm64.deb pigsty 2.1.9 618.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~resolute_amd64.deb pigsty 2.1.9 621.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.9-1PGSTY~resolute_arm64.deb pigsty 2.1.9 612.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-18-pgactive_2.1.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgactive_17 pgactive_17-2.1.9-1PGSTY.el8.x86_64.rpm pigsty 2.1.9 634.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_17-2.1.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgactive_17 pgactive_17-2.1.9-1PGSTY.el8.aarch64.rpm pigsty 2.1.9 615.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_17-2.1.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgactive_17 pgactive_17-2.1.9-1PGSTY.el9.x86_64.rpm pigsty 2.1.9 626.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_17-2.1.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgactive_17 pgactive_17-2.1.9-1PGSTY.el9.aarch64.rpm pigsty 2.1.9 615.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_17-2.1.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgactive_17 pgactive_17-2.1.9-1PGSTY.el10.x86_64.rpm pigsty 2.1.9 630.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_17-2.1.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgactive_17 pgactive_17-2.1.9-1PGSTY.el10.aarch64.rpm pigsty 2.1.9 620.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_17-2.1.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb pigsty 2.1.9 585.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb pigsty 2.1.9 559.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~trixie_amd64.deb pigsty 2.1.9 586.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~trixie_arm64.deb pigsty 2.1.9 561.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~jammy_amd64.deb pigsty 2.1.9 710.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~jammy_arm64.deb pigsty 2.1.9 701.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~noble_amd64.deb pigsty 2.1.9 617.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~noble_arm64.deb pigsty 2.1.9 610.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~resolute_amd64.deb pigsty 2.1.9 613.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.9-1PGSTY~resolute_arm64.deb pigsty 2.1.9 605.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-17-pgactive_2.1.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgactive_16 pgactive_16-2.1.9-1PGSTY.el8.x86_64.rpm pigsty 2.1.9 628.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_16-2.1.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgactive_16 pgactive_16-2.1.9-1PGSTY.el8.aarch64.rpm pigsty 2.1.9 609.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_16-2.1.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgactive_16 pgactive_16-2.1.9-1PGSTY.el9.x86_64.rpm pigsty 2.1.9 620.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_16-2.1.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgactive_16 pgactive_16-2.1.9-1PGSTY.el9.aarch64.rpm pigsty 2.1.9 610.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_16-2.1.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgactive_16 pgactive_16-2.1.9-1PGSTY.el10.x86_64.rpm pigsty 2.1.9 625.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_16-2.1.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgactive_16 pgactive_16-2.1.9-1PGSTY.el10.aarch64.rpm pigsty 2.1.9 615.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_16-2.1.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb pigsty 2.1.9 580.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb pigsty 2.1.9 554.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~trixie_amd64.deb pigsty 2.1.9 581.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~trixie_arm64.deb pigsty 2.1.9 556.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~jammy_amd64.deb pigsty 2.1.9 699.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~jammy_arm64.deb pigsty 2.1.9 690.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~noble_amd64.deb pigsty 2.1.9 612.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~noble_arm64.deb pigsty 2.1.9 611.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~resolute_amd64.deb pigsty 2.1.9 609.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.9-1PGSTY~resolute_arm64.deb pigsty 2.1.9 600.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-16-pgactive_2.1.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgactive_15 pgactive_15-2.1.9-1PGSTY.el8.x86_64.rpm pigsty 2.1.9 621.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_15-2.1.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgactive_15 pgactive_15-2.1.9-1PGSTY.el8.aarch64.rpm pigsty 2.1.9 602.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_15-2.1.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgactive_15 pgactive_15-2.1.9-1PGSTY.el9.x86_64.rpm pigsty 2.1.9 617.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_15-2.1.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgactive_15 pgactive_15-2.1.9-1PGSTY.el9.aarch64.rpm pigsty 2.1.9 606.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_15-2.1.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgactive_15 pgactive_15-2.1.9-1PGSTY.el10.x86_64.rpm pigsty 2.1.9 622.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_15-2.1.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgactive_15 pgactive_15-2.1.9-1PGSTY.el10.aarch64.rpm pigsty 2.1.9 611.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_15-2.1.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb pigsty 2.1.9 576.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb pigsty 2.1.9 629.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~trixie_amd64.deb pigsty 2.1.9 577.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~trixie_arm64.deb pigsty 2.1.9 551.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~jammy_amd64.deb pigsty 2.1.9 697.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~jammy_arm64.deb pigsty 2.1.9 689.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~noble_amd64.deb pigsty 2.1.9 609.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~noble_arm64.deb pigsty 2.1.9 604.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~resolute_amd64.deb pigsty 2.1.9 606.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.9-1PGSTY~resolute_arm64.deb pigsty 2.1.9 598.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-15-pgactive_2.1.9-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgactive_14 pgactive_14-2.1.9-1PGSTY.el8.x86_64.rpm pigsty 2.1.9 622.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_14-2.1.9-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgactive_14 pgactive_14-2.1.9-1PGSTY.el8.aarch64.rpm pigsty 2.1.9 603.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_14-2.1.9-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgactive_14 pgactive_14-2.1.9-1PGSTY.el9.x86_64.rpm pigsty 2.1.9 621.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_14-2.1.9-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgactive_14 pgactive_14-2.1.9-1PGSTY.el9.aarch64.rpm pigsty 2.1.9 609.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_14-2.1.9-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgactive_14 pgactive_14-2.1.9-1PGSTY.el10.x86_64.rpm pigsty 2.1.9 627.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_14-2.1.9-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgactive_14 pgactive_14-2.1.9-1PGSTY.el10.aarch64.rpm pigsty 2.1.9 614.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_14-2.1.9-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb pigsty 2.1.9 579.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb pigsty 2.1.9 552.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~trixie_amd64.deb pigsty 2.1.9 581.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~trixie_arm64.deb pigsty 2.1.9 554.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~jammy_amd64.deb pigsty 2.1.9 699.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~jammy_arm64.deb pigsty 2.1.9 691.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~noble_amd64.deb pigsty 2.1.9 612.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~noble_arm64.deb pigsty 2.1.9 605.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~resolute_amd64.deb pigsty 2.1.9 607.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgactive postgresql-14-pgactive_2.1.9-1PGSTY~resolute_arm64.deb pigsty 2.1.9 599.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-14-pgactive_2.1.9-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgactive` using `pig build`:

```bash
pig build pkg pgactive         # build RPM / DEB packages
```


## Install

You can install `pgactive` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgactive;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgactive -v 18  # PG 18
pig ext install -y pgactive -v 17  # PG 17
pig ext install -y pgactive -v 16  # PG 16
pig ext install -y pgactive -v 15  # PG 15
pig ext install -y pgactive -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgactive_18       # PG 18
dnf install -y pgactive_17       # PG 17
dnf install -y pgactive_16       # PG 16
dnf install -y pgactive_15       # PG 15
dnf install -y pgactive_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgactive   # PG 18
apt install -y postgresql-17-pgactive   # PG 17
apt install -y postgresql-16-pgactive   # PG 16
apt install -y postgresql-15-pgactive   # PG 15
apt install -y postgresql-14-pgactive   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pgactive';
```


**Create Extension**:

```sql
CREATE EXTENSION pgactive;
```




## Usage

> [pgactive: Active-Active Replication Extension for PostgreSQL](https://github.com/aws/pgactive)

The `pgactive` extension provides active-active (multi-master) replication for PostgreSQL, where multiple database instances can accept writes and replicate changes to each other.

### Enabling

```sql
CREATE EXTENSION pgactive;
```

### Overview

pgactive enables active-active replication using logical replication as its foundation. Multiple databases in a cluster can accept changes and replicate them bidirectionally.

### Key Concepts

- **Active-Active**: All nodes accept reads and writes simultaneously
- **Asynchronous**: Changes are replicated asynchronously between nodes
- **Conflict Resolution**: Applications must handle conflicting changes from multiple writers
- **Logical Replication**: Uses PostgreSQL's logical decoding to interpret and apply changes

### Use Cases

- Multi-region high availability database clusters
- Reducing write latency between applications and databases
- Blue/green application updates
- Data migration between systems that must both remain writable

### Design Considerations

Applications using pgactive must be designed to handle:

- **Write conflicts**: Concurrent modifications to the same row on different nodes
- **Replication lag**: Changes may not be immediately visible on all nodes
- **Feature limitations**: Some features like auto-incrementing sequences require special handling across nodes

### Notes

- Built on PostgreSQL's native logical replication infrastructure
- Requires PostgreSQL 10+ (native logical replication support)
- Refer to the project documentation for detailed setup and conflict resolution strategies
