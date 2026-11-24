---
title: "pgq"
linkTitle: "pgq"
description: "Generic queue for PostgreSQL"
weight: 2650
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgq/pgq">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgq/pgq</div>
    <div class="ext-card__desc">https://github.com/pgq/pgq</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgq-3.5.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgq-3.5.2.tar.gz</div>
    <div class="ext-card__desc">pgq-3.5.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgq`**](/ext/e/pgq) | `3.5.2` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2650  | [**`pgq`**](/ext/e/pgq) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table .wide .expand}

| **Related** | [`pgmq`](/ext/e/pgmq) [`pgmb`](/ext/e/pgmb) [`ulak`](/ext/e/ulak) [`pgmqtt`](/ext/e/pgmqtt) [`redis`](/ext/e/redis) [`kafka_fdw`](/ext/e/kafka_fdw) [`wal2json`](/ext/e/wal2json) [`decoderbufs`](/ext/e/decoderbufs) [`tcn`](/ext/e/tcn) [`pg_durable`](/ext/e/pg_durable) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.5.2` | {{< pgvers "19,18,17,16,15" >}} | `pgq` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.5.2` | {{< pgvers "19,18,17,16,15" >}} | `pgq_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.5.2` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pgq3` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 3.5.2 2 | AVAIL PGDG 3.5.2 2 | AVAIL PGDG 3.5.2 2 | AVAIL PGDG 3.5.2 3 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 3.5.2 2 | AVAIL PGDG 3.5.2 2 | AVAIL PGDG 3.5.2 2 | AVAIL PGDG 3.5.2 3 |
| el9.x86_64 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 |
| el9.aarch64 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 |
| el10.x86_64 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 1 |
| el10.aarch64 | AVAIL PGDG 3.5.2 1 | AVAIL PGDG 3.5.2 4 | AVAIL PGDG 3.5.2 4 | AVAIL PGDG 3.5.2 4 | AVAIL PGDG 3.5.2 4 |
| d12.x86_64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| d12.aarch64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| d13.x86_64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| d13.aarch64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| u22.x86_64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| u22.aarch64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| u24.x86_64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| u24.aarch64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| u26.x86_64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
| u26.aarch64 | AVAIL PIGSTY 3.5.2 1 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 | AVAIL PGDG 3.5.1 2 |
@ el9.x86_64 19 pgq_19 pgq_19-3.5.2-4PGDG.rhel9.9.x86_64.rpm pgdg 3.5.2 52.5KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pgq_19-3.5.2-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pgq_19 pgq_19-3.5.2-4PGDG.rhel9.9.aarch64.rpm pgdg 3.5.2 52.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pgq_19-3.5.2-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pgq_19 pgq_19-3.5.2-4PGDG.rhel10.3.x86_64.rpm pgdg 3.5.2 52.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pgq_19-3.5.2-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pgq_19 pgq_19-3.5.2-4PGDG.rhel10.3.aarch64.rpm pgdg 3.5.2 52.7KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pgq_19-3.5.2-4PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~bookworm_amd64.deb pigsty 3.5.2 82.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~bookworm_arm64.deb pigsty 3.5.2 81.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~trixie_amd64.deb pigsty 3.5.2 82.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~trixie_arm64.deb pigsty 3.5.2 81.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~jammy_amd64.deb pigsty 3.5.2 87.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~jammy_arm64.deb pigsty 3.5.2 87.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~noble_amd64.deb pigsty 3.5.2 85.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~noble_arm64.deb pigsty 3.5.2 84.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~resolute_amd64.deb pigsty 3.5.2 84.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pgq3 postgresql-19-pgq3_3.5.2-1PGSTY~resolute_arm64.deb pigsty 3.5.2 84.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgq/postgresql-19-pgq3_3.5.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel8.10.x86_64.rpm pgdg 3.5.2 55.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgq_18-3.5.2-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgq_18 pgq_18-3.5.1-4PGDG.rhel8.x86_64.rpm pgdg 3.5.1 54.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgq_18-3.5.1-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel8.10.aarch64.rpm pgdg 3.5.2 55.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgq_18-3.5.2-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgq_18 pgq_18-3.5.1-4PGDG.rhel8.aarch64.rpm pgdg 3.5.1 53.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgq_18-3.5.1-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel9.9.x86_64.rpm pgdg 3.5.2 52.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgq_18-3.5.2-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel9.9.aarch64.rpm pgdg 3.5.2 52.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgq_18-3.5.2-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel10.3.x86_64.rpm pgdg 3.5.2 53.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgq_18-3.5.2-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel10.3.aarch64.rpm pgdg 3.5.2 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgq_18-3.5.2-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pgq_18 pgq_18-3.5.2-4PGDG.rhel10.2.aarch64.rpm pgdg 3.5.2 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgq_18-3.5.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgq_18 pgq_18-3.5.1-6PGDG.rhel10.2.aarch64.rpm pgdg 3.5.1 51.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgq_18-3.5.1-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgq_18 pgq_18-3.5.1-4PGDG.rhel10.aarch64.rpm pgdg 3.5.1 52.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgq_18-3.5.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg12+2_amd64.deb pgdg 3.5.1 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg12+1_amd64.deb pgdg 3.5.1 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg12+2_arm64.deb pgdg 3.5.1 122.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg12+1_arm64.deb pgdg 3.5.1 122.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg13+2_amd64.deb pgdg 3.5.1 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg13+1_amd64.deb pgdg 3.5.1 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg13+2_arm64.deb pgdg 3.5.1 122.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg13+1_arm64.deb pgdg 3.5.1 122.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb pgdg 3.5.1 125.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb pgdg 3.5.1 125.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb pgdg 3.5.1 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb pgdg 3.5.1 124.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb pgdg 3.5.1 123.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb pgdg 3.5.1 123.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb pgdg 3.5.1 122.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb pgdg 3.5.1 122.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb pgdg 3.5.1 121.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-pgq3 postgresql-18-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb pgdg 3.5.1 122.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-18-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel8.10.x86_64.rpm pgdg 3.5.2 55.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgq_17-3.5.2-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgq_17 pgq_17-3.5.1-3PGDG.rhel8.x86_64.rpm pgdg 3.5.1 54.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgq_17-3.5.1-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel8.10.aarch64.rpm pgdg 3.5.2 54.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgq_17-3.5.2-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgq_17 pgq_17-3.5.1-3PGDG.rhel8.aarch64.rpm pgdg 3.5.1 53.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgq_17-3.5.1-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel9.9.x86_64.rpm pgdg 3.5.2 52.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgq_17-3.5.2-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel9.9.aarch64.rpm pgdg 3.5.2 52.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgq_17-3.5.2-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel10.3.x86_64.rpm pgdg 3.5.2 52.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgq_17-3.5.2-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel10.3.aarch64.rpm pgdg 3.5.2 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgq_17-3.5.2-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pgq_17 pgq_17-3.5.2-4PGDG.rhel10.2.aarch64.rpm pgdg 3.5.2 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgq_17-3.5.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgq_17 pgq_17-3.5.1-6PGDG.rhel10.2.aarch64.rpm pgdg 3.5.1 51.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgq_17-3.5.1-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgq_17 pgq_17-3.5.1-4PGDG.rhel10.aarch64.rpm pgdg 3.5.1 52.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgq_17-3.5.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg12+2_amd64.deb pgdg 3.5.1 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg12+1_amd64.deb pgdg 3.5.1 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg12+2_arm64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg12+1_arm64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg13+2_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg13+1_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg13+2_arm64.deb pgdg 3.5.1 122.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg13+1_arm64.deb pgdg 3.5.1 122.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb pgdg 3.5.1 145.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb pgdg 3.5.1 145.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb pgdg 3.5.1 143.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb pgdg 3.5.1 143.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb pgdg 3.5.1 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb pgdg 3.5.1 122.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb pgdg 3.5.1 122.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb pgdg 3.5.1 122.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb pgdg 3.5.1 121.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-pgq3 postgresql-17-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb pgdg 3.5.1 122.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-17-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel8.10.x86_64.rpm pgdg 3.5.2 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgq_16-3.5.2-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgq_16 pgq_16-3.5.1-1PGDG.rhel8.x86_64.rpm pgdg 3.5.1 54.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgq_16-3.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel8.10.aarch64.rpm pgdg 3.5.2 55.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgq_16-3.5.2-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgq_16 pgq_16-3.5.1-1PGDG.rhel8.aarch64.rpm pgdg 3.5.1 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgq_16-3.5.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel9.9.x86_64.rpm pgdg 3.5.2 52.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgq_16-3.5.2-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel9.9.aarch64.rpm pgdg 3.5.2 52.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgq_16-3.5.2-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel10.3.x86_64.rpm pgdg 3.5.2 52.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgq_16-3.5.2-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel10.3.aarch64.rpm pgdg 3.5.2 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgq_16-3.5.2-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pgq_16 pgq_16-3.5.2-4PGDG.rhel10.2.aarch64.rpm pgdg 3.5.2 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgq_16-3.5.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgq_16 pgq_16-3.5.1-6PGDG.rhel10.2.aarch64.rpm pgdg 3.5.1 51.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgq_16-3.5.1-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgq_16 pgq_16-3.5.1-4PGDG.rhel10.aarch64.rpm pgdg 3.5.1 52.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgq_16-3.5.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg12+2_amd64.deb pgdg 3.5.1 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg12+1_amd64.deb pgdg 3.5.1 123.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg12+2_arm64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg12+1_arm64.deb pgdg 3.5.1 122.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg13+2_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg13+1_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg13+2_arm64.deb pgdg 3.5.1 122.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg13+1_arm64.deb pgdg 3.5.1 122.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb pgdg 3.5.1 143.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb pgdg 3.5.1 143.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb pgdg 3.5.1 142.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb pgdg 3.5.1 142.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb pgdg 3.5.1 123.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb pgdg 3.5.1 122.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb pgdg 3.5.1 122.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb pgdg 3.5.1 122.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb pgdg 3.5.1 122.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb pgdg 3.5.1 121.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-pgq3 postgresql-16-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb pgdg 3.5.1 122.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-16-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel8.10.x86_64.rpm pgdg 3.5.2 55.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgq_15-3.5.2-4PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgq_15 pgq_15-3.5.1-1PGDG.rhel8.x86_64.rpm pgdg 3.5.1 55.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgq_15-3.5.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgq_15 pgq_15-3.5-1.rhel8.x86_64.rpm pgdg 3.5 54.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgq_15-3.5-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel8.10.aarch64.rpm pgdg 3.5.2 55.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgq_15-3.5.2-4PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgq_15 pgq_15-3.5.1-1PGDG.rhel8.aarch64.rpm pgdg 3.5.1 55.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgq_15-3.5.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgq_15 pgq_15-3.5-1.rhel8.aarch64.rpm pgdg 3.5 55.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgq_15-3.5-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel9.9.x86_64.rpm pgdg 3.5.2 53.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgq_15-3.5.2-4PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel9.9.aarch64.rpm pgdg 3.5.2 53.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgq_15-3.5.2-4PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel10.3.x86_64.rpm pgdg 3.5.2 53.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgq_15-3.5.2-4PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel10.3.aarch64.rpm pgdg 3.5.2 53.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgq_15-3.5.2-4PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pgq_15 pgq_15-3.5.2-4PGDG.rhel10.2.aarch64.rpm pgdg 3.5.2 53.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgq_15-3.5.2-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgq_15 pgq_15-3.5.1-6PGDG.rhel10.2.aarch64.rpm pgdg 3.5.1 52.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgq_15-3.5.1-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgq_15 pgq_15-3.5.1-4PGDG.rhel10.aarch64.rpm pgdg 3.5.1 53.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgq_15-3.5.1-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg12+2_amd64.deb pgdg 3.5.1 124.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg12+1_amd64.deb pgdg 3.5.1 124.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg12+2_arm64.deb pgdg 3.5.1 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg12+1_arm64.deb pgdg 3.5.1 123.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg13+2_amd64.deb pgdg 3.5.1 124.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg13+1_amd64.deb pgdg 3.5.1 124.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg13+2_arm64.deb pgdg 3.5.1 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg13+1_arm64.deb pgdg 3.5.1 123.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb pgdg 3.5.1 144.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb pgdg 3.5.1 144.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb pgdg 3.5.1 143.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb pgdg 3.5.1 142.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb pgdg 3.5.1 124.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb pgdg 3.5.1 124.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb pgdg 3.5.1 123.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb pgdg 3.5.1 123.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb pgdg 3.5.1 123.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb pgdg 3.5.1 123.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb pgdg 3.5.1 122.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-pgq3 postgresql-15-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb pgdg 3.5.1 122.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgq/postgresql-15-pgq3_3.5.1-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgq` using `pig build`:

```bash
pig build pkg pgq         # build RPM / DEB packages
```


## Install

You can install `pgq` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgq;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgq -v 19  # PG 19
pig ext install -y pgq -v 18  # PG 18
pig ext install -y pgq -v 17  # PG 17
pig ext install -y pgq -v 16  # PG 16
pig ext install -y pgq -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgq_19       # PG 19
dnf install -y pgq_18       # PG 18
dnf install -y pgq_17       # PG 17
dnf install -y pgq_16       # PG 16
dnf install -y pgq_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pgq3   # PG 19
apt install -y postgresql-18-pgq3   # PG 18
apt install -y postgresql-17-pgq3   # PG 17
apt install -y postgresql-16-pgq3   # PG 16
apt install -y postgresql-15-pgq3   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pgq;
```

## Usage

Sources:

- [PgQ 3.5.2 README](https://github.com/pgq/pgq/blob/v3.5.2/README.rst)
- [Control and installation privileges](https://github.com/pgq/pgq/blob/v3.5.2/pgq.control)
- [Batch acquisition API](https://github.com/pgq/pgq/blob/v3.5.2/functions/pgq.next_batch.sql)
- [Batch events API](https://github.com/pgq/pgq/blob/v3.5.2/functions/pgq.get_batch_events.sql)
- [Retry API](https://github.com/pgq/pgq/blob/v3.5.2/functions/pgq.event_retry.sql)
- [Version 3.5.2 release](https://github.com/pgq/pgq/releases/tag/v3.5.2)

PgQ is a PostgreSQL extension that provides a generic, high-performance lockless queue with a simple SQL function API. It uses a producer-consumer model with batch-based event processing.

```sql
CREATE EXTENSION pgq;
```

### Core Concepts

- **Queue**: A named event stream. Events are inserted by producers and consumed in batches.
- **Consumer**: A named subscriber registered to a queue. Each consumer tracks its own position.
- **Batch**: A group of events retrieved together. Consumers process events batch by batch.
- **Ticker**: A background process that creates batch boundaries (ticks) at regular intervals.

### Queue Management

```sql
-- Create a queue
SELECT pgq.create_queue('myqueue');

-- Drop a queue
SELECT pgq.drop_queue('myqueue');

-- Get queue info
SELECT * FROM pgq.get_queue_info();
SELECT * FROM pgq.get_queue_info('myqueue');
```

### Consumer Registration

```sql
-- Register a consumer on a queue
SELECT pgq.register_consumer('myqueue', 'myconsumer');

-- Unregister a consumer
SELECT pgq.unregister_consumer('myqueue', 'myconsumer');

-- Get consumer info
SELECT * FROM pgq.get_consumer_info('myqueue');
```

### Producing Events

```sql
-- Insert an event into a queue
SELECT pgq.insert_event('myqueue', 'event_type', 'event_data');

-- Insert with extra fields
SELECT pgq.insert_event('myqueue', 'event_type', 'event_data',
                         'extra1', 'extra2', 'extra3', 'extra4');
```

### Consuming Events

```sql
-- Get the next batch of events (returns batch_id or NULL if no new batches)
SELECT pgq.next_batch('myqueue', 'myconsumer');

-- Get events from the batch
SELECT * FROM pgq.get_batch_events(:batch_id);

-- Retry a failed event (will reappear after the specified interval)
SELECT pgq.event_retry(:batch_id, :event_id, :retry_seconds);

-- Mark batch as done
SELECT pgq.finish_batch(:batch_id);
```

### Typical Consumer Loop

```sql
-- 1. Get next batch
SELECT pgq.next_batch('myqueue', 'myconsumer') AS batch_id;

-- 2. If batch_id is not NULL, get events
SELECT * FROM pgq.get_batch_events(:batch_id);

-- 3. Process events, retry failures
SELECT pgq.event_retry(:batch_id, :event_id, 60);

-- 4. Finish the batch
SELECT pgq.finish_batch(:batch_id);
```

### Maintenance

PgQ requires a ticker daemon (`pgqd`) to run in the background for creating batch boundaries and performing maintenance tasks like table rotation and retry event processing.

### Key Functions

| Function | Description |
|----------|-------------|
| `pgq.create_queue(name)` | Create a new queue |
| `pgq.drop_queue(name)` | Remove a queue |
| `pgq.register_consumer(queue, consumer)` | Register a consumer |
| `pgq.unregister_consumer(queue, consumer)` | Unregister a consumer |
| `pgq.insert_event(queue, type, data, ...)` | Insert an event |
| `pgq.next_batch(queue, consumer)` | Get next batch ID |
| `pgq.get_batch_events(batch_id)` | Get events from a batch |
| `pgq.event_retry(batch_id, event_id, seconds)` | Schedule event retry |
| `pgq.finish_batch(batch_id)` | Mark batch as processed |
| `pgq.get_queue_info([name])` | Get queue statistics |
| `pgq.get_consumer_info(queue)` | Get consumer statistics |
{.wide .expand}

### Version and Access Boundaries

Upstream `3.5.2` supports PostgreSQL 10 through 19; the 3.5.2 release adds PostgreSQL 19 support without a documented SQL API change. The catalog currently tracks package version `3.5.1`, so verify installed files before selecting an extension update target. The control file requires superuser installation and is non-relocatable. The API uses the `pgq` schema; review queue-management and consumer privileges for each application role.

A consumer advances only after `pgq.finish_batch` succeeds. Make event processing and acknowledgement atomic when possible, and handle repeated delivery when external side effects cannot share the database transaction.
