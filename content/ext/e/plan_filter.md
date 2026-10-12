---
title: "plan_filter"
linkTitle: "plan_filter"
description: "filter statements by their execution plans."
weight: 2810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgexperts/pg_plan_filter">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgexperts/pg_plan_filter</div>
    <div class="ext-card__desc">https://github.com/pgexperts/pg_plan_filter</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_plan_filter-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_plan_filter-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_plan_filter-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_plan_filter`**](/ext/e/plan_filter) | `1.0.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2810  | [**`plan_filter`**](/ext/e/plan_filter) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_kpart`](/ext/e/pg_kpart) [`pg_command_fw`](/ext/e/pg_command_fw) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) [`pg_qualstats`](/ext/e/pg_qualstats) [`online_advisor`](/ext/e/online_advisor) [`block_copy_command`](/ext/e/block_copy_command) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_readonly`](/ext/e/pg_readonly) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Maintained RPM/DEB recipes and versioned source are 1.0.0; local package matrix on 2026-10-10 has RPM 1.0.0 and DEB 0.0.1. Retain maintained DEB 1.0.0; repository publication is a separate check.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_plan_filter` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_plan_filter_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-plan-filter` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el8.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el9.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el9.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.x86_64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| el10.aarch64 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 | AVAIL PGDG 1.0.0 2 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-1.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.0 16.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_plan_filter_18-1.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_18-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-1.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_plan_filter_18-1.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_18-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-1.0.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 16.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_plan_filter_18-1.0.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_18-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-1.0.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 15.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_plan_filter_18-1.0.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_18-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-1.0.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_plan_filter_18-1.0.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_18-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-1.0.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_plan_filter_18-1.0.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_plan_filter_18 pg_plan_filter_18-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_18-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 8.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-plan-filter postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-18-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-1.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.0 16.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_plan_filter_17-1.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_17-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-1.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_plan_filter_17-1.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_17-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-1.0.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 16.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_plan_filter_17-1.0.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_17-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-1.0.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 15.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_plan_filter_17-1.0.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_17-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-1.0.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_plan_filter_17-1.0.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_17-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-1.0.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_plan_filter_17-1.0.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_plan_filter_17 pg_plan_filter_17-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_17-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 8.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-plan-filter postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-17-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-1.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.0 16.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_plan_filter_16-1.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_16-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-1.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_plan_filter_16-1.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_16-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-1.0.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 16.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_plan_filter_16-1.0.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_16-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-1.0.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 15.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_plan_filter_16-1.0.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_16-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-1.0.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_plan_filter_16-1.0.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_16-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-1.0.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_plan_filter_16-1.0.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_plan_filter_16 pg_plan_filter_16-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_16-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 8.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-plan-filter postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-16-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-1.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.0 16.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_plan_filter_15-1.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_15-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-1.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_plan_filter_15-1.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_15-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-1.0.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 16.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_plan_filter_15-1.0.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_15-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-1.0.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 15.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_plan_filter_15-1.0.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_15-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-1.0.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_plan_filter_15-1.0.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_15-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-1.0.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_plan_filter_15-1.0.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_plan_filter_15 pg_plan_filter_15-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_15-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 8.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-plan-filter postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-15-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-1.0.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0.0 16.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_plan_filter_14-1.0.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 10.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_plan_filter_14-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-1.0.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_plan_filter_14-1.0.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 11.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_plan_filter_14-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-1.0.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0.0 16.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_plan_filter_14-1.0.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_plan_filter_14-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-1.0.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0.0 15.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_plan_filter_14-1.0.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_plan_filter_14-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-1.0.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_plan_filter_14-1.0.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 10.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_plan_filter_14-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-1.0.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 16.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_plan_filter_14-1.0.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_plan_filter_14 pg_plan_filter_14-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 10.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_plan_filter_14-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 9.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 9.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb pigsty 0.0.1 8.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-plan-filter postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb pigsty 0.0.1 8.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-plan-filter/postgresql-14-pg-plan-filter_0.0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_plan_filter` using `pig build`:

```bash
pig build pkg pg_plan_filter         # build RPM / DEB packages
```


## Install

You can install `pg_plan_filter` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_plan_filter;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_plan_filter -v 18  # PG 18
pig ext install -y pg_plan_filter -v 17  # PG 17
pig ext install -y pg_plan_filter -v 16  # PG 16
pig ext install -y pg_plan_filter -v 15  # PG 15
pig ext install -y pg_plan_filter -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_plan_filter_18       # PG 18
dnf install -y pg_plan_filter_17       # PG 17
dnf install -y pg_plan_filter_16       # PG 16
dnf install -y pg_plan_filter_15       # PG 15
dnf install -y pg_plan_filter_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-plan-filter   # PG 18
apt install -y postgresql-17-pg-plan-filter   # PG 17
apt install -y postgresql-16-pg-plan-filter   # PG 16
apt install -y postgresql-15-pg-plan-filter   # PG 15
apt install -y postgresql-14-pg-plan-filter   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'plan_filter';
```


## Usage

Sources:

- [README.md](https://github.com/pgexperts/pg_plan_filter/blob/c1afc73dacae8688456bdeef72ed6a3030c500ba/README.md)
- [Makefile](https://github.com/pgexperts/pg_plan_filter/blob/c1afc73dacae8688456bdeef72ed6a3030c500ba/Makefile)
- [License](https://github.com/pgexperts/pg_plan_filter/blob/c1afc73dacae8688456bdeef72ed6a3030c500ba/License)

`plan_filter` is the loadable library in pg_plan_filter 1.0.0. It rejects statements or transactions whose estimated plan cost exceeds configured limits. It supports PostgreSQL 14–18 and has no SQL extension to create.

### Core Workflow

```ini
shared_preload_libraries = 'plan_filter'
plan_filter.statement_cost_limit = 100000.0
plan_filter.transaction_cost_limit = 500000.0
plan_filter.filter_select_only = false
```

```sql
SELECT current_setting('plan_filter.module_loaded', true) IS NOT NULL AS active;
```

### Operational Boundaries

Append the library to the existing preload list and restart; `LOAD` is also supported for development and testing. Both cost limits default to zero, disabling enforcement. `plan_filter.statement_cost_limit` caps a single plan and can also reject expensive plain EXPLAIN. `plan_filter.transaction_cost_limit` charges every execution, including repeated prepared statements; rolling back to a savepoint does not refund the budget. Plain EXPLAIN does not consume the transaction budget, while plan-bearing utility commands do.

`plan_filter.filter_select_only` applies both limits only to SELECT when true; SELECT can still have side effects. `plan_filter.module_loaded` is a read-only presence signal. The limit settings require superuser or explicitly granted parameter-setting privileges. Rejection uses SQLSTATE 54001. Cost is an estimate rather than elapsed time, and ordinary roles can lower planner cost settings to evade the threshold. Use this as cooperative protection against accidental load, not as the sole security boundary against hostile sessions.
