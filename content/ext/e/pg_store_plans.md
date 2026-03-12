---
title: "pg_store_plans"
linkTitle: "pg_store_plans"
description: "track plan statistics of all SQL statements executed"
weight: 6250
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ossc-db/pg_store_plans">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ossc-db/pg_store_plans</div>
    <div class="ext-card__desc">https://github.com/ossc-db/pg_store_plans</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_store_plans-1.9.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_store_plans-1.9.tar.gz</div>
    <div class="ext-card__desc">pg_store_plans-1.9.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_store_plans`**](/ext/e/pg_store_plans) | `1.9` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6250  | [**`pg_store_plans`**](/ext/e/pg_store_plans) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_show_plans`](/ext/e/pg_show_plans) [`auto_explain`](/ext/e/auto_explain) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pre_prepare`](/ext/e/pre_prepare) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`explain_ui`](/ext/e/explain_ui) [`plprofiler`](/ext/e/plprofiler) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg18 breaks, fixed by Vonng


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.9` | {{< pgvers "18,17,16,15,14" >}} | `pg_store_plans` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.9` | {{< pgvers "18,17,16,15,14" >}} | `pg_store_plans_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-store-plan` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 2 | AVAIL PIGSTY 1.8 3 | AVAIL PIGSTY 1.8 1 |
| el8.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 2 | AVAIL PIGSTY 1.8 3 | AVAIL PIGSTY 1.8 1 |
| el9.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 2 | AVAIL PIGSTY 1.8 3 | AVAIL PIGSTY 1.8 1 |
| el9.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 2 | AVAIL PIGSTY 1.8 3 | AVAIL PIGSTY 1.8 1 |
| el10.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| d12.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| d13.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| d13.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| u22.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| u22.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| u24.x86_64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
| u24.aarch64 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 | AVAIL PIGSTY 1.9 1 |
@ el8.x86_64 18 pg_store_plans_18 pg_store_plans_18-1.9-1PIGSTY.el8.x86_64.rpm pigsty 1.9 44.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_store_plans_18-1.9-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_store_plans_18 pg_store_plans_18-1.9-1PIGSTY.el8.aarch64.rpm pigsty 1.9 43.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_store_plans_18-1.9-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_store_plans_18 pg_store_plans_18-1.9-1PIGSTY.el9.x86_64.rpm pigsty 1.9 43.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_store_plans_18-1.9-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_store_plans_18 pg_store_plans_18-1.9-1PIGSTY.el9.aarch64.rpm pigsty 1.9 42.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_store_plans_18-1.9-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_store_plans_18 pg_store_plans_18-1.9-1PIGSTY.el10.x86_64.rpm pigsty 1.9 44.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_store_plans_18-1.9-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_store_plans_18 pg_store_plans_18-1.9-1PIGSTY.el10.aarch64.rpm pigsty 1.9 43.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_store_plans_18-1.9-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb pigsty 1.9 108.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb pigsty 1.9 105.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb pigsty 1.9 108.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb pigsty 1.9 105.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb pigsty 1.9 118.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb pigsty 1.9 116.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb pigsty 1.9 113.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-store-plan postgresql-18-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb pigsty 1.9 112.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-18-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_store_plans_17 pg_store_plans_17-1.8-2PIGSTY.el8.x86_64.rpm pigsty 1.8 40.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_store_plans_17-1.8-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_store_plans_17 pg_store_plans_17-1.8-2PIGSTY.el8.aarch64.rpm pigsty 1.8 39.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_store_plans_17-1.8-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_store_plans_17 pg_store_plans_17-1.8-2PIGSTY.el9.x86_64.rpm pigsty 1.8 42.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_store_plans_17-1.8-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_store_plans_17 pg_store_plans_17-1.8-2PIGSTY.el9.aarch64.rpm pigsty 1.8 41.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_store_plans_17-1.8-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_store_plans_17 pg_store_plans_17-1.9-1PIGSTY.el10.x86_64.rpm pigsty 1.9 43.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_store_plans_17-1.9-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_store_plans_17 pg_store_plans_17-1.9-1PIGSTY.el10.aarch64.rpm pigsty 1.9 42.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_store_plans_17-1.9-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb pigsty 1.9 107.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb pigsty 1.9 105.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb pigsty 1.9 108.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb pigsty 1.9 105.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb pigsty 1.9 129.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb pigsty 1.9 127.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb pigsty 1.9 113.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-store-plan postgresql-17-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb pigsty 1.9 112.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-17-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_store_plans_16 pg_store_plans_16-1.8-2PIGSTY.el8.x86_64.rpm pigsty 1.8 40.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_store_plans_16-1.8-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_store_plans_16 pg_store_plans_16-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 45.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_store_plans_16-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_store_plans_16 pg_store_plans_16-1.8-2PIGSTY.el8.aarch64.rpm pigsty 1.8 39.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_store_plans_16-1.8-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_store_plans_16 pg_store_plans_16-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_store_plans_16-1.8-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_store_plans_16 pg_store_plans_16-1.8-2PIGSTY.el9.x86_64.rpm pigsty 1.8 42.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_store_plans_16-1.8-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_store_plans_16 pg_store_plans_16-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 46.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_store_plans_16-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_store_plans_16 pg_store_plans_16-1.8-2PIGSTY.el9.aarch64.rpm pigsty 1.8 41.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_store_plans_16-1.8-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_store_plans_16 pg_store_plans_16-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 45.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_store_plans_16-1.8-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_store_plans_16 pg_store_plans_16-1.8-3PGDG.rhel10.x86_64.rpm pgdg 1.8 47.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_store_plans_16-1.8-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_store_plans_16 pg_store_plans_16-1.8-3PGDG.rhel10.aarch64.rpm pgdg 1.8 46.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_store_plans_16-1.8-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb pigsty 1.9 108.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb pigsty 1.9 105.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb pigsty 1.9 108.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb pigsty 1.9 105.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb pigsty 1.9 129.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb pigsty 1.9 127.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb pigsty 1.9 113.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-store-plan postgresql-16-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb pigsty 1.9 112.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-16-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.8-2PIGSTY.el8.x86_64.rpm pigsty 1.8 41.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_store_plans_15-1.8-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 46.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_store_plans_15-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 46.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_store_plans_15-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.8-2PIGSTY.el8.aarch64.rpm pigsty 1.8 40.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_store_plans_15-1.8-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 45.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_store_plans_15-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 44.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_store_plans_15-1.7-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.8-2PIGSTY.el9.x86_64.rpm pigsty 1.8 43.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_store_plans_15-1.8-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 47.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_store_plans_15-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 47.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_store_plans_15-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.8-2PIGSTY.el9.aarch64.rpm pigsty 1.8 43.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_store_plans_15-1.8-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 46.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_store_plans_15-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 45.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_store_plans_15-1.7-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_store_plans_15 pg_store_plans_15-1.8-3PGDG.rhel10.x86_64.rpm pgdg 1.8 48.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_store_plans_15-1.8-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_store_plans_15 pg_store_plans_15-1.8-3PGDG.rhel10.aarch64.rpm pgdg 1.8 47.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_store_plans_15-1.8-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb pigsty 1.9 109.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb pigsty 1.9 106.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb pigsty 1.9 110.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb pigsty 1.9 106.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb pigsty 1.9 131.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb pigsty 1.9 129.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb pigsty 1.9 116.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-store-plan postgresql-15-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb pigsty 1.9 114.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-15-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_store_plans_14 pg_store_plans_14-1.8-2PIGSTY.el8.x86_64.rpm pigsty 1.8 41.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_store_plans_14-1.8-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_store_plans_14 pg_store_plans_14-1.8-2PIGSTY.el8.aarch64.rpm pigsty 1.8 40.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_store_plans_14-1.8-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_store_plans_14 pg_store_plans_14-1.8-2PIGSTY.el9.x86_64.rpm pigsty 1.8 43.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_store_plans_14-1.8-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_store_plans_14 pg_store_plans_14-1.8-2PIGSTY.el9.aarch64.rpm pigsty 1.8 43.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_store_plans_14-1.8-2PIGSTY.el9.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb pigsty 1.9 109.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb pigsty 1.9 106.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb pigsty 1.9 109.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb pigsty 1.9 106.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb pigsty 1.9 130.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb pigsty 1.9 128.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb pigsty 1.9 115.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-store-plan postgresql-14-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb pigsty 1.9 114.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-store-plan/postgresql-14-pg-store-plan_1.9-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_store_plans` using `pig build`:

```bash
pig build pkg pg_store_plans         # build RPM / DEB packages
```


## Install

You can install `pg_store_plans` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_store_plans;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_store_plans -v 18  # PG 18
pig ext install -y pg_store_plans -v 17  # PG 17
pig ext install -y pg_store_plans -v 16  # PG 16
pig ext install -y pg_store_plans -v 15  # PG 15
pig ext install -y pg_store_plans -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_store_plans_18       # PG 18
dnf install -y pg_store_plans_17       # PG 17
dnf install -y pg_store_plans_16       # PG 16
dnf install -y pg_store_plans_15       # PG 15
dnf install -y pg_store_plans_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-store-plan   # PG 18
apt install -y postgresql-17-pg-store-plan   # PG 17
apt install -y postgresql-16-pg-store-plan   # PG 16
apt install -y postgresql-15-pg-store-plan   # PG 15
apt install -y postgresql-14-pg-store-plan   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_store_plans';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_store_plans;
```



## Usage

> [pg_store_plans: execution plan storage and statistics](https://github.com/ossc-db/pg_store_plans)

pg_store_plans tracks execution plan statistics for all SQL statements, complementing `pg_stat_statements` with plan-level detail. Joinable via `queryid` on PostgreSQL 14+.

### Viewing Plan Statistics

```sql
-- View tracked plans with statistics
SELECT queryid, planid, plan, calls, total_time, rows
FROM pg_store_plans
ORDER BY total_time DESC;

-- Check module status
SELECT * FROM pg_store_plans_info;
```

### Key View Columns

| Column | Type | Description |
|--------|------|-------------|
| `queryid` | bigint | Query ID (joinable with pg_stat_statements) |
| `planid` | bigint | Plan hash code |
| `plan` | text | Representative plan text |
| `calls` | bigint | Execution count |
| `total_time` | double precision | Total execution time (ms) |
| `rows` | bigint | Total rows retrieved/affected |
| `shared_blks_hit` | bigint | Shared buffer hits |
| `shared_blks_read` | bigint | Shared blocks read |
| `first_call` | timestamptz | First execution time |
| `last_call` | timestamptz | Last execution time |

### Functions

```sql
-- Reset all statistics (superuser only)
SELECT pg_store_plans_reset();

-- Convert plan formats
SELECT pg_store_plans_textplan(plan);   -- to text
SELECT pg_store_plans_jsonplan(plan);   -- to JSON
SELECT pg_store_plans_xmlplan(plan);    -- to XML
SELECT pg_store_plans_yamlplan(plan);   -- to YAML

-- Calculate query hash
SELECT pg_store_hash_query('SELECT 1');
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_store_plans.max` | 1000 | Maximum tracked plans (server start only) |
| `pg_store_plans.track` | `top` | `top`, `all`, `verbose`, `none` |
| `pg_store_plans.plan_format` | `text` | `text`, `json`, `xml`, `yaml`, `raw` |
| `pg_store_plans.min_duration` | 0 | Minimum execution time to track (ms) |
| `pg_store_plans.log_analyze` | `off` | Include EXPLAIN ANALYZE output |
| `pg_store_plans.log_buffers` | `off` | Include buffer statistics |
| `pg_store_plans.log_timing` | `true` | Record actual timings |
| `pg_store_plans.plan_storage` | `file` | Storage: `file` or `shmem` |
| `pg_store_plans.max_plan_length` | 5000 | Max bytes for plan text |
| `pg_store_plans.save` | `on` | Persist stats across restarts |
