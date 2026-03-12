---
title: "pg_ivm"
linkTitle: "pg_ivm"
description: "incremental view maintenance on PostgreSQL"
weight: 2840
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/sraoss/pg_ivm">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">sraoss/pg_ivm</div>
    <div class="ext-card__desc">https://github.com/sraoss/pg_ivm</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_ivm-1.13.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_ivm-1.13.tar.gz</div>
    <div class="ext-card__desc">pg_ivm-1.13.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_ivm`**](/ext/e/pg_ivm) | `1.13` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2840  | [**`pg_ivm`**](/ext/e/pg_ivm) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_graphql`](/ext/e/pg_graphql) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_hint_plan`](/ext/e/pg_hint_plan) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> deb takeover by pgdg since 2026-01


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.13` | {{< pgvers "18,17,16,15,14" >}} | `pg_ivm` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13` | {{< pgvers "18,17,16,15,14" >}} | `pg_ivm_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-ivm` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 4 | AVAIL PGDG 1.13 5 | AVAIL PGDG 1.13 10 | AVAIL PGDG 1.13 14 |
| el8.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 4 | AVAIL PGDG 1.13 5 | AVAIL PGDG 1.13 10 | AVAIL PGDG 1.13 10 |
| el9.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 4 | AVAIL PGDG 1.13 5 | AVAIL PGDG 1.13 10 | AVAIL PGDG 1.13 13 |
| el9.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 4 | AVAIL PGDG 1.13 5 | AVAIL PGDG 1.13 10 | AVAIL PGDG 1.13 10 |
| el10.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 3 | AVAIL PGDG 1.13 3 | AVAIL PGDG 1.13 3 | AVAIL PGDG 1.13 3 |
| el10.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 3 | AVAIL PGDG 1.13 3 | AVAIL PGDG 1.13 3 | AVAIL PGDG 1.13 3 |
| d12.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| d12.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| d13.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| d13.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| u22.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| u22.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| u24.x86_64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
| u24.aarch64 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 | AVAIL PGDG 1.13 2 |
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel8.x86_64.rpm pgdg 1.12 43.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_ivm_18-1.12-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel8.aarch64.rpm pgdg 1.12 41.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_ivm_18-1.12-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 49.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel9.x86_64.rpm pgdg 1.12 43.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_ivm_18-1.12-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel9.aarch64.rpm pgdg 1.12 42.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_ivm_18-1.12-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 50.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel10.x86_64.rpm pgdg 1.12 44.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_ivm_18-1.12-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 49.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_ivm_18 pg_ivm_18-1.12-1PGDG.rhel10.aarch64.rpm pgdg 1.12 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_ivm_18-1.12-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb pigsty 1.13 118.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb pigsty 1.13 115.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb pigsty 1.13 118.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb pigsty 1.13 114.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 121.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb pigsty 1.13 129.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 117.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb pigsty 1.13 127.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~noble_amd64.deb pigsty 1.13 123.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pg-ivm postgresql-18-pg-ivm_1.13-1PIGSTY~noble_arm64.deb pigsty 1.13 121.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-18-pg-ivm_1.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel8.x86_64.rpm pgdg 1.9 40.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_ivm_17-1.9-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 40.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel8.aarch64.rpm pgdg 1.9 38.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_ivm_17-1.9-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 49.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 42.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel9.x86_64.rpm pgdg 1.9 41.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_ivm_17-1.9-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 41.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_ivm_17 pg_ivm_17-1.9-1PGDG.rhel9.aarch64.rpm pgdg 1.9 39.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_ivm_17-1.9-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 50.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 44.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 43.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_ivm_17-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 49.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_ivm_17 pg_ivm_17-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 42.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_ivm_17-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb pigsty 1.13 118.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb pigsty 1.13 114.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb pigsty 1.13 118.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb pigsty 1.13 114.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 141.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb pigsty 1.13 149.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 137.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb pigsty 1.13 147.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~noble_amd64.deb pigsty 1.13 123.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 114.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pg-ivm postgresql-17-pg-ivm_1.13-1PIGSTY~noble_arm64.deb pigsty 1.13 121.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-17-pg-ivm_1.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 39.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_ivm_16-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 40.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_ivm_16-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 49.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 43.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_ivm_16-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 42.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 41.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 39.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_ivm_16 pg_ivm_16-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 41.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_ivm_16-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 50.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 43.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_ivm_16-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 49.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_ivm_16 pg_ivm_16-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 42.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_ivm_16-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb pigsty 1.13 118.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb pigsty 1.13 114.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb pigsty 1.13 117.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb pigsty 1.13 114.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 140.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb pigsty 1.13 148.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 136.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb pigsty 1.13 146.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~noble_amd64.deb pigsty 1.13 123.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 114.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pg-ivm postgresql-16-pg-ivm_1.13-1PIGSTY~noble_arm64.deb pigsty 1.13 121.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-16-pg-ivm_1.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 49.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 43.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 43.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 41.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel8.x86_64.rpm pgdg 1.5.1 39.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.5.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel8.x86_64.rpm pgdg 1.5 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel8.x86_64.rpm pgdg 1.4 38.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel8.x86_64.rpm pgdg 1.3 37.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_ivm_15-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 47.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 41.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 38.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 39.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel8.aarch64.rpm pgdg 1.5.1 37.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.5.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel8.aarch64.rpm pgdg 1.5 37.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.5-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel8.aarch64.rpm pgdg 1.4 36.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel8.aarch64.rpm pgdg 1.3 36.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_ivm_15-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 50.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 44.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 43.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 43.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 43.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel9.x86_64.rpm pgdg 1.5.1 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.5.1-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel9.x86_64.rpm pgdg 1.5 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel9.x86_64.rpm pgdg 1.4 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel9.x86_64.rpm pgdg 1.3 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_ivm_15-1.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 48.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 42.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 39.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 42.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 42.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.5.1-1.rhel9.aarch64.rpm pgdg 1.5.1 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.5.1-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.5-1.rhel9.aarch64.rpm pgdg 1.5 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.5-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.4-1.rhel9.aarch64.rpm pgdg 1.4 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_ivm_15 pg_ivm_15-1.3-1.rhel9.aarch64.rpm pgdg 1.3 38.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_ivm_15-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 45.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 44.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_ivm_15-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 50.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 43.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_ivm_15 pg_ivm_15-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 43.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_ivm_15-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 118.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb pigsty 1.13 118.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb pigsty 1.13 114.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 118.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb pigsty 1.13 118.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb pigsty 1.13 114.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 140.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb pigsty 1.13 148.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 136.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb pigsty 1.13 146.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 118.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~noble_amd64.deb pigsty 1.13 123.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pg-ivm postgresql-15-pg-ivm_1.13-1PIGSTY~noble_arm64.deb pigsty 1.13 121.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-15-pg-ivm_1.13-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel8.x86_64.rpm pgdg 1.13 78.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.13-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel8.x86_64.rpm pgdg 1.11 71.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.11-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel8.x86_64.rpm pgdg 1.10 71.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 68.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 71.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 71.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel8.x86_64.rpm pgdg 1.5.1 69.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.5.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel8.x86_64.rpm pgdg 1.5 69.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 68.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel8.x86_64.rpm pgdg 1.3 67.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.2-1.rhel8.x86_64.rpm pgdg 1.2 66.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.1-1.rhel8.x86_64.rpm pgdg 1.1 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.0-.rhel8.x86_64.rpm pgdg 1.0 74.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.0-.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_ivm_14 pg_ivm_14-1.0-alpha1.rhel8.x86_64.rpm pgdg 1.0 62.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_ivm_14-1.0-alpha1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel8.aarch64.rpm pgdg 1.13 73.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.13-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel8.aarch64.rpm pgdg 1.11 67.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.11-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel8.aarch64.rpm pgdg 1.10 66.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 64.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 67.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 66.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel8.aarch64.rpm pgdg 1.5.1 64.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.5.1-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel8.aarch64.rpm pgdg 1.5 64.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.5-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel8.aarch64.rpm pgdg 1.4 63.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.4-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel8.aarch64.rpm pgdg 1.3 63.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_ivm_14-1.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel9.x86_64.rpm pgdg 1.13 79.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.13-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel9.x86_64.rpm pgdg 1.11 73.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.11-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel9.x86_64.rpm pgdg 1.10 73.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 71.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 74.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 74.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel9.x86_64.rpm pgdg 1.5.1 72.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.5.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel9.x86_64.rpm pgdg 1.5 72.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel9.x86_64.rpm pgdg 1.4 71.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.4-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel9.x86_64.rpm pgdg 1.3 71.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.2-1.rhel9.x86_64.rpm pgdg 1.2 69.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.1-1.rhel9.x86_64.rpm pgdg 1.1 34.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.1-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_ivm_14 pg_ivm_14-1.0-.rhel9.x86_64.rpm pgdg 1.0 77.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_ivm_14-1.0-.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel9.aarch64.rpm pgdg 1.13 77.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.13-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel9.aarch64.rpm pgdg 1.11 70.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.11-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel9.aarch64.rpm pgdg 1.10 70.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 68.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 71.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 71.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.5.1-1.rhel9.aarch64.rpm pgdg 1.5.1 69.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.5.1-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.5-1.rhel9.aarch64.rpm pgdg 1.5 69.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.5-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.4-1.rhel9.aarch64.rpm pgdg 1.4 68.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.4-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_ivm_14 pg_ivm_14-1.3-1.rhel9.aarch64.rpm pgdg 1.3 68.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_ivm_14-1.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel10.x86_64.rpm pgdg 1.13 80.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.13-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel10.x86_64.rpm pgdg 1.11 74.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.11-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel10.x86_64.rpm pgdg 1.10 74.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_ivm_14-1.10-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.13-1PGDG.rhel10.aarch64.rpm pgdg 1.13 79.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.13-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.11-1PGDG.rhel10.aarch64.rpm pgdg 1.11 72.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.11-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_ivm_14 pg_ivm_14-1.10-1PGDG.rhel10.aarch64.rpm pgdg 1.10 72.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_ivm_14-1.10-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg12+1_amd64.deb pgdg 1.13 209.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb pigsty 1.13 208.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg12+1_arm64.deb pgdg 1.13 201.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb pigsty 1.13 201.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg13+1_amd64.deb pgdg 1.13 208.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb pigsty 1.13 208.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg13+1_arm64.deb pgdg 1.13 201.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb pigsty 1.13 201.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb pgdg 1.13 238.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb pigsty 1.13 252.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb pgdg 1.13 230.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb pigsty 1.13 248.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb pgdg 1.13 208.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~noble_amd64.deb pigsty 1.13 217.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb pgdg 1.13 202.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pg-ivm postgresql-14-pg-ivm_1.13-1PIGSTY~noble_arm64.deb pigsty 1.13 214.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ivm/postgresql-14-pg-ivm_1.13-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_ivm` using `pig build`:

```bash
pig build pkg pg_ivm         # build DEB packages
```


## Install

You can install `pg_ivm` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_ivm;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_ivm -v 18  # PG 18
pig ext install -y pg_ivm -v 17  # PG 17
pig ext install -y pg_ivm -v 16  # PG 16
pig ext install -y pg_ivm -v 15  # PG 15
pig ext install -y pg_ivm -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_ivm_18       # PG 18
dnf install -y pg_ivm_17       # PG 17
dnf install -y pg_ivm_16       # PG 16
dnf install -y pg_ivm_15       # PG 15
dnf install -y pg_ivm_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-ivm   # PG 18
apt install -y postgresql-17-pg-ivm   # PG 17
apt install -y postgresql-16-pg-ivm   # PG 16
apt install -y postgresql-15-pg-ivm   # PG 15
apt install -y postgresql-14-pg-ivm   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_ivm;
```




## Usage

> [pg_ivm: Incremental View Maintenance for PostgreSQL](https://github.com/sraoss/pg_ivm)

The `pg_ivm` extension provides Incremental View Maintenance (IVM), updating materialized views by applying only incremental changes rather than recomputing from scratch. Views are updated immediately in AFTER triggers when base tables are modified.

```sql
CREATE EXTENSION pg_ivm;
```

### Configuration

Add `pg_ivm` to preload libraries for correct maintenance:

```ini
shared_preload_libraries = 'pg_ivm'
```

### Functions

#### create_immv

```sql
pgivm.create_immv(immv_name text, view_definition text) RETURNS bigint
```

Creates an Incrementally Maintainable Materialized View (IMMV). Triggers are automatically created to keep the view updated. A unique index is created automatically if possible.

```sql
SELECT pgivm.create_immv('myview', 'SELECT * FROM mytab');
```

#### refresh_immv

```sql
pgivm.refresh_immv(immv_name text, with_data bool) RETURNS bigint
```

Completely replaces IMMV contents. With `with_data = false`, the IMMV becomes unpopulated and triggers are dropped. With `with_data = true`, triggers and indexes are recreated.

```sql
SELECT pgivm.refresh_immv('myview', true);
```

#### get_immv_def

```sql
pgivm.get_immv_def(immv regclass) RETURNS text
```

Returns the reconstructed SELECT command for an IMMV.

### IMMV Metadata Catalog

The `pgivm.pg_ivm_immv` catalog stores IMMV information:

| Column | Type | Description |
|--------|------|-------------|
| `immvrelid` | regclass | OID of the IMMV |
| `viewdef` | text | Query tree for the view definition |
| `ispopulated` | bool | Whether IMMV is currently populated |

### Examples

Create an IMMV with aggregates:

```sql
SELECT pgivm.create_immv('immv_agg',
    'SELECT bid, count(*), sum(abalance), avg(abalance)
     FROM pgbench_accounts JOIN pgbench_branches USING(bid) GROUP BY bid');
```

Updates to base tables are reflected automatically:

```sql
UPDATE pgbench_accounts SET abalance = abalance + 1000 WHERE aid = 4112345;
SELECT * FROM immv_agg WHERE bid = 42;  -- aggregates updated automatically
```

List all IMMVs:

```sql
SELECT immvrelid AS immv, pgivm.get_immv_def(immvrelid) AS def
FROM pgivm.pg_ivm_immv;
```

Drop an IMMV with `DROP TABLE`:

```sql
DROP TABLE myview;
```

### Disable/Enable Maintenance

Disable immediate maintenance before bulk modifications, then refresh:

```sql
SELECT pgivm.refresh_immv('myview', false);   -- disable
-- ... bulk modifications ...
SELECT pgivm.refresh_immv('myview', true);    -- refresh and re-enable
```

### Supported Query Features

- Inner and outer joins (including self-join)
- `DISTINCT` clause
- Aggregate functions: `count`, `sum`, `avg`, `min`, `max`
- Simple subqueries in `FROM` clause
- `EXISTS` subqueries in `WHERE` clause
- Simple CTEs (`WITH` queries)
- `GROUP BY` clause
