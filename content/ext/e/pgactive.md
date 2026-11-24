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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgactive-2.1.10.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgactive-2.1.10.tar.gz</div>
    <div class="ext-card__desc">pgactive-2.1.10.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgactive`**](/ext/e/pgactive) | `2.1.10` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
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
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.10` | {{< pgvers "19,18,17,16,15" >}} | `pgactive` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.10` | {{< pgvers "19,18,17,16,15" >}} | `pgactive_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.10` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pgactive` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| el9.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| el9.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| el10.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| el10.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| d12.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| d12.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| d13.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| d13.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| u22.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| u22.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| u24.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| u24.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| u26.x86_64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
| u26.aarch64 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 | AVAIL PIGSTY 2.1.10 1 |
@ el9.x86_64 19 pgactive_19 pgactive_19-2.1.10-1PGSTY.el9.x86_64.rpm pigsty 2.1.10 639.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_19-2.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pgactive_19 pgactive_19-2.1.10-1PGSTY.el9.aarch64.rpm pigsty 2.1.10 627.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_19-2.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pgactive_19 pgactive_19-2.1.10-1PGSTY.el10.x86_64.rpm pigsty 2.1.10 646.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_19-2.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pgactive_19 pgactive_19-2.1.10-1PGSTY.el10.aarch64.rpm pigsty 2.1.10 636.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_19-2.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb pigsty 2.1.10 597.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb pigsty 2.1.10 572.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~trixie_amd64.deb pigsty 2.1.10 599.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~trixie_arm64.deb pigsty 2.1.10 576.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~jammy_amd64.deb pigsty 2.1.10 651.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~jammy_arm64.deb pigsty 2.1.10 641.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~noble_amd64.deb pigsty 2.1.10 631.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~noble_arm64.deb pigsty 2.1.10 625.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~resolute_amd64.deb pigsty 2.1.10 628.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pgactive postgresql-19-pgactive_2.1.10-1PGSTY~resolute_arm64.deb pigsty 2.1.10 619.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-19-pgactive_2.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pgactive_18 pgactive_18-2.1.10-1PGSTY.el8.x86_64.rpm pigsty 2.1.10 646.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_18-2.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgactive_18 pgactive_18-2.1.10-1PGSTY.el8.aarch64.rpm pigsty 2.1.10 624.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_18-2.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgactive_18 pgactive_18-2.1.10-1PGSTY.el9.x86_64.rpm pigsty 2.1.10 636.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_18-2.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgactive_18 pgactive_18-2.1.10-1PGSTY.el9.aarch64.rpm pigsty 2.1.10 624.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_18-2.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgactive_18 pgactive_18-2.1.10-1PGSTY.el10.x86_64.rpm pigsty 2.1.10 643.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_18-2.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgactive_18 pgactive_18-2.1.10-1PGSTY.el10.aarch64.rpm pigsty 2.1.10 632.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_18-2.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb pigsty 2.1.10 595.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb pigsty 2.1.10 569.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~trixie_amd64.deb pigsty 2.1.10 596.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~trixie_arm64.deb pigsty 2.1.10 571.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~jammy_amd64.deb pigsty 2.1.10 647.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~jammy_arm64.deb pigsty 2.1.10 635.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~noble_amd64.deb pigsty 2.1.10 628.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~noble_arm64.deb pigsty 2.1.10 621.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~resolute_amd64.deb pigsty 2.1.10 624.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgactive postgresql-18-pgactive_2.1.10-1PGSTY~resolute_arm64.deb pigsty 2.1.10 616.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-18-pgactive_2.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgactive_17 pgactive_17-2.1.10-1PGSTY.el8.x86_64.rpm pigsty 2.1.10 637.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_17-2.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgactive_17 pgactive_17-2.1.10-1PGSTY.el8.aarch64.rpm pigsty 2.1.10 617.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_17-2.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgactive_17 pgactive_17-2.1.10-1PGSTY.el9.x86_64.rpm pigsty 2.1.10 628.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_17-2.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgactive_17 pgactive_17-2.1.10-1PGSTY.el9.aarch64.rpm pigsty 2.1.10 616.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_17-2.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgactive_17 pgactive_17-2.1.10-1PGSTY.el10.x86_64.rpm pigsty 2.1.10 633.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_17-2.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgactive_17 pgactive_17-2.1.10-1PGSTY.el10.aarch64.rpm pigsty 2.1.10 624.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_17-2.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb pigsty 2.1.10 587.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb pigsty 2.1.10 561.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~trixie_amd64.deb pigsty 2.1.10 589.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~trixie_arm64.deb pigsty 2.1.10 564.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~jammy_amd64.deb pigsty 2.1.10 714.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~jammy_arm64.deb pigsty 2.1.10 704.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~noble_amd64.deb pigsty 2.1.10 620.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~noble_arm64.deb pigsty 2.1.10 614.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~resolute_amd64.deb pigsty 2.1.10 616.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgactive postgresql-17-pgactive_2.1.10-1PGSTY~resolute_arm64.deb pigsty 2.1.10 608.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-17-pgactive_2.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgactive_16 pgactive_16-2.1.10-1PGSTY.el8.x86_64.rpm pigsty 2.1.10 632.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_16-2.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgactive_16 pgactive_16-2.1.10-1PGSTY.el8.aarch64.rpm pigsty 2.1.10 611.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_16-2.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgactive_16 pgactive_16-2.1.10-1PGSTY.el9.x86_64.rpm pigsty 2.1.10 623.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_16-2.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgactive_16 pgactive_16-2.1.10-1PGSTY.el9.aarch64.rpm pigsty 2.1.10 611.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_16-2.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgactive_16 pgactive_16-2.1.10-1PGSTY.el10.x86_64.rpm pigsty 2.1.10 629.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_16-2.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgactive_16 pgactive_16-2.1.10-1PGSTY.el10.aarch64.rpm pigsty 2.1.10 619.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_16-2.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb pigsty 2.1.10 583.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb pigsty 2.1.10 557.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~trixie_amd64.deb pigsty 2.1.10 585.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~trixie_arm64.deb pigsty 2.1.10 559.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~jammy_amd64.deb pigsty 2.1.10 703.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~jammy_arm64.deb pigsty 2.1.10 693.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~noble_amd64.deb pigsty 2.1.10 615.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~noble_arm64.deb pigsty 2.1.10 608.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~resolute_amd64.deb pigsty 2.1.10 612.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgactive postgresql-16-pgactive_2.1.10-1PGSTY~resolute_arm64.deb pigsty 2.1.10 603.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-16-pgactive_2.1.10-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgactive_15 pgactive_15-2.1.10-1PGSTY.el8.x86_64.rpm pigsty 2.1.10 623.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgactive_15-2.1.10-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgactive_15 pgactive_15-2.1.10-1PGSTY.el8.aarch64.rpm pigsty 2.1.10 601.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgactive_15-2.1.10-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgactive_15 pgactive_15-2.1.10-1PGSTY.el9.x86_64.rpm pigsty 2.1.10 617.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgactive_15-2.1.10-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgactive_15 pgactive_15-2.1.10-1PGSTY.el9.aarch64.rpm pigsty 2.1.10 607.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgactive_15-2.1.10-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgactive_15 pgactive_15-2.1.10-1PGSTY.el10.x86_64.rpm pigsty 2.1.10 623.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgactive_15-2.1.10-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgactive_15 pgactive_15-2.1.10-1PGSTY.el10.aarch64.rpm pigsty 2.1.10 613.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgactive_15-2.1.10-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb pigsty 2.1.10 577.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb pigsty 2.1.10 550.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~trixie_amd64.deb pigsty 2.1.10 578.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~trixie_arm64.deb pigsty 2.1.10 553.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~jammy_amd64.deb pigsty 2.1.10 697.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~jammy_arm64.deb pigsty 2.1.10 689.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~noble_amd64.deb pigsty 2.1.10 609.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~noble_arm64.deb pigsty 2.1.10 604.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~resolute_amd64.deb pigsty 2.1.10 607.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgactive postgresql-15-pgactive_2.1.10-1PGSTY~resolute_arm64.deb pigsty 2.1.10 599.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgactive/postgresql-15-pgactive_2.1.10-1PGSTY~resolute_arm64.deb
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
pig ext install -y pgactive -v 19  # PG 19
pig ext install -y pgactive -v 18  # PG 18
pig ext install -y pgactive -v 17  # PG 17
pig ext install -y pgactive -v 16  # PG 16
pig ext install -y pgactive -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgactive_19       # PG 19
dnf install -y pgactive_18       # PG 18
dnf install -y pgactive_17       # PG 17
dnf install -y pgactive_16       # PG 16
dnf install -y pgactive_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pgactive   # PG 19
apt install -y postgresql-18-pgactive   # PG 18
apt install -y postgresql-17-pgactive   # PG 17
apt install -y postgresql-16-pgactive   # PG 16
apt install -y postgresql-15-pgactive   # PG 15
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

Sources:

- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/README.md)
- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/docs/quickstart.md)
- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/docs/README.md)
- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/docs/referenceguide.md)
- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/pgactive.control.in)
- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/include/pgactive_version.h.in)
- [Official source](https://github.com/aws/pgactive/blob/v2.1.10/pgactive--2.1.10.sql)
- [Official source](https://github.com/aws/pgactive/releases/tag/v2.1.10)

`pgactive` 2.1.10 provides active-active logical replication between databases in a full mesh. Writes commit locally and replicate to peers; applications must handle lag, conflicts and node-local locking rather than assume global serializability.

### Configure a group

The release requires PostgreSQL 18.7, 17.12, 16.16, 15.20 or 14.25 and later minors in those branches; it also names upcoming PostgreSQL 19. Preload the library, configure logical WAL and sufficient replication slots/workers, then restart. Installation and management functions require superuser access.

```ini
shared_preload_libraries = 'pgactive'
wal_level = logical
```

```sql
CREATE EXTENSION pgactive;
SELECT pgactive.pgactive_create_group(
  node_name := 'node1-app',
  node_dsn := 'user_mapping=postgres pgactive_foreign_server=node1'
);
SELECT pgactive.pgactive_wait_for_node_ready();
```

The example assumes an existing node1 foreign server using pgactive_fdw, a protected user mapping and working connections to the database itself and every peer. Configure actual credentials through protected mappings or password files. On a fresh joining database, create the extension and use pgactive.pgactive_join_group with its own node_dsn and the peer's join_using_dsn, then wait for readiness. The built-in join performs coordinated initialization; an arbitrary independent dump does not substitute for it.

### Operations and upgrades

Every peer must be reachable when a node joins. Plan unique keys, sequence allocation, conflict handling and replication-slot retention. DDL replication is disabled by default; enabling it requires consistent policy on senders and receivers. Apply workers default to applying DML as the table owner, while replication connections and worker management remain privileged.

Version 2.1.10 hardens replication-name and tuple handling and fixes conflict-handler ABI and shared-memory lock offsets. A 2.1.10 node may join an older group, but a node on 2.1.9 or earlier cannot join a 2.1.10 node until upgraded. Install matching files and execute the supplied SQL upgrade in each database; coordinate restart/reconnection and join order across the group.
