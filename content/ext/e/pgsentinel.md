---
title: "pgsentinel"
linkTitle: "pgsentinel"
description: "active session history"
weight: 6410
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgsentinel/pgsentinel">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgsentinel/pgsentinel</div>
    <div class="ext-card__desc">https://github.com/pgsentinel/pgsentinel</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsentinel-1.4.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsentinel-1.4.2.tar.gz</div>
    <div class="ext-card__desc">pgsentinel-1.4.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgsentinel`**](/ext/e/pgsentinel) | `1.4.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6410  | [**`pgsentinel`**](/ext/e/pgsentinel) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_datasentinel`](/ext/e/pg_datasentinel) [`pg_profile`](/ext/e/pg_profile) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) [`pg_stat_ch`](/ext/e/pg_stat_ch) [`pgmonitor`](/ext/e/pgmonitor) [`system_stats`](/ext/e/system_stats) [`pgnodemx`](/ext/e/pgnodemx) [`powa`](/ext/e/powa) [`pg_stat_statements`](/ext/e/pg_stat_statements) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Package/source release and PIGSTY RPM are 1.4.2; shipped pgsentinel.control and PGDG DEB remain 1.4.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `pgsentinel` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `pgsentinel_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgsentinel` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 4 | AVAIL PIGSTY 1.4.2 4 | AVAIL PIGSTY 1.4.2 4 | AVAIL PIGSTY 1.4.2 4 |
| el8.aarch64 | AVAIL PIGSTY 1.4.2 3 | AVAIL PIGSTY 1.4.2 4 | AVAIL PIGSTY 1.4.2 4 | AVAIL PIGSTY 1.4.2 4 | AVAIL PIGSTY 1.4.2 4 |
| el9.x86_64 | AVAIL PIGSTY 1.4.2 6 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 |
| el9.aarch64 | AVAIL PIGSTY 1.4.2 6 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 |
| el10.x86_64 | AVAIL PIGSTY 1.4.2 6 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 |
| el10.aarch64 | AVAIL PIGSTY 1.4.2 6 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 | AVAIL PIGSTY 1.4.2 7 |
| d12.x86_64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| d12.aarch64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| d13.x86_64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| d13.aarch64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| u22.x86_64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| u22.aarch64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| u24.x86_64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| u24.aarch64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| u26.x86_64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
| u26.aarch64 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 | AVAIL PGDG 1.4.2 4 |
@ el8.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.2-1PIGSTY.el8.x86_64.rpm pigsty 1.4.2 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsentinel_18-1.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 24.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgsentinel_18-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3.1 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgsentinel_18-1.3.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.2-1PIGSTY.el8.aarch64.rpm pigsty 1.4.2 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsentinel_18-1.4.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgsentinel_18-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgsentinel_18-1.3.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.2-1PIGSTY.el9.x86_64.rpm pigsty 1.4.2 23.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsentinel_18-1.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 25.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsentinel_18-1.4.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.0 25.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsentinel_18-1.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.0 25.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsentinel_18-1.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3.1 24.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsentinel_18-1.3.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3.1 24.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsentinel_18-1.3.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.2-1PIGSTY.el9.aarch64.rpm pigsty 1.4.2 23.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsentinel_18-1.4.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsentinel_18-1.4.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.0 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsentinel_18-1.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.0 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsentinel_18-1.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3.1 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsentinel_18-1.3.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3.1 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsentinel_18-1.3.1-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.2-1PIGSTY.el10.x86_64.rpm pigsty 1.4.2 24.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsentinel_18-1.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 25.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsentinel_18-1.4.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.4.0 25.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsentinel_18-1.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.4.0 25.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsentinel_18-1.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3.1 24.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsentinel_18-1.3.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3.1 25.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsentinel_18-1.3.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.2-1PIGSTY.el10.aarch64.rpm pigsty 1.4.2 23.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsentinel_18-1.4.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsentinel_18-1.4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.4.0 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsentinel_18-1.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgsentinel_18 pgsentinel_18-1.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.4.0 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsentinel_18-1.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsentinel_18-1.3.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgsentinel_18 pgsentinel_18-1.3.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsentinel_18-1.3.1-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb pgdg 1.4.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 40.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb pgdg 1.4.1 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb pgdg 1.4.0 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 39.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb pgdg 1.4.1 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb pgdg 1.4.0 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 40.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 39.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb pgdg 1.4.2 46.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb pgdg 1.4.1 46.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb pgdg 1.4.0 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 44.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb pgdg 1.4.0 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 43.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb pgdg 1.4.0 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 42.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 42.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb pgdg 1.4.2 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb pgdg 1.4.1 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 43.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb pgdg 1.4.0 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 42.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-pgsentinel postgresql-18-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb pgdg 1.4.0 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-18-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.2-1PIGSTY.el8.x86_64.rpm pigsty 1.4.2 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsentinel_17-1.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsentinel_17-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3.1 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsentinel_17-1.3.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgsentinel_17 pgsentinel_17-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsentinel_17-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.2-1PIGSTY.el8.aarch64.rpm pigsty 1.4.2 23.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsentinel_17-1.4.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsentinel_17-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3.1 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsentinel_17-1.3.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgsentinel_17 pgsentinel_17-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsentinel_17-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.2-1PIGSTY.el9.x86_64.rpm pigsty 1.4.2 24.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsentinel_17-1.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 25.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsentinel_17-1.4.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.0 25.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsentinel_17-1.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.0 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsentinel_17-1.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3.1 24.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsentinel_17-1.3.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3.1 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsentinel_17-1.3.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgsentinel_17 pgsentinel_17-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsentinel_17-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.2-1PIGSTY.el9.aarch64.rpm pigsty 1.4.2 23.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsentinel_17-1.4.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsentinel_17-1.4.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.0 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsentinel_17-1.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.0 24.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsentinel_17-1.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3.1 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsentinel_17-1.3.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsentinel_17-1.3.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgsentinel_17 pgsentinel_17-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsentinel_17-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.2-1PIGSTY.el10.x86_64.rpm pigsty 1.4.2 24.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsentinel_17-1.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 25.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsentinel_17-1.4.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.4.0 25.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsentinel_17-1.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.4.0 25.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsentinel_17-1.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3.1 24.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsentinel_17-1.3.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3.1 25.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsentinel_17-1.3.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgsentinel_17 pgsentinel_17-1.2.0-1PGDG.rhel10.x86_64.rpm pgdg 1.2.0 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsentinel_17-1.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.2-1PIGSTY.el10.aarch64.rpm pigsty 1.4.2 23.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsentinel_17-1.4.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsentinel_17-1.4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsentinel_17-1.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsentinel_17-1.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsentinel_17-1.3.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.3.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsentinel_17-1.3.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgsentinel_17 pgsentinel_17-1.2.0-1PGDG.rhel10.aarch64.rpm pgdg 1.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsentinel_17-1.2.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb pgdg 1.4.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb pgdg 1.4.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 40.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb pgdg 1.4.1 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 39.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 40.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb pgdg 1.4.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb pgdg 1.4.0 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 39.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb pgdg 1.4.2 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb pgdg 1.4.1 54.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb pgdg 1.4.0 53.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 52.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb pgdg 1.4.2 52.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb pgdg 1.4.1 52.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb pgdg 1.4.0 52.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 51.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb pgdg 1.4.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 42.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb pgdg 1.4.2 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb pgdg 1.4.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 42.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb pgdg 1.4.2 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb pgdg 1.4.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 43.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb pgdg 1.4.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb pgdg 1.4.2 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb pgdg 1.4.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 42.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-pgsentinel postgresql-17-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb pgdg 1.4.0 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-17-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.2-1PIGSTY.el8.x86_64.rpm pigsty 1.4.2 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsentinel_16-1.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsentinel_16-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3.1 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsentinel_16-1.3.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgsentinel_16 pgsentinel_16-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsentinel_16-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.2-1PIGSTY.el8.aarch64.rpm pigsty 1.4.2 23.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsentinel_16-1.4.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsentinel_16-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3.1 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsentinel_16-1.3.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgsentinel_16 pgsentinel_16-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsentinel_16-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.2-1PIGSTY.el9.x86_64.rpm pigsty 1.4.2 23.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsentinel_16-1.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 25.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsentinel_16-1.4.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.0 25.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsentinel_16-1.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.0 25.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsentinel_16-1.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3.1 24.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsentinel_16-1.3.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3.1 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsentinel_16-1.3.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgsentinel_16 pgsentinel_16-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsentinel_16-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.2-1PIGSTY.el9.aarch64.rpm pigsty 1.4.2 23.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsentinel_16-1.4.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 24.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsentinel_16-1.4.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.0 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsentinel_16-1.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.0 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsentinel_16-1.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3.1 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsentinel_16-1.3.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsentinel_16-1.3.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgsentinel_16 pgsentinel_16-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsentinel_16-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.2-1PIGSTY.el10.x86_64.rpm pigsty 1.4.2 24.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsentinel_16-1.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsentinel_16-1.4.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.4.0 25.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsentinel_16-1.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.4.0 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsentinel_16-1.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3.1 24.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsentinel_16-1.3.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3.1 25.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsentinel_16-1.3.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgsentinel_16 pgsentinel_16-1.2.0-1PGDG.rhel10.x86_64.rpm pgdg 1.2.0 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsentinel_16-1.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.2-1PIGSTY.el10.aarch64.rpm pigsty 1.4.2 23.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsentinel_16-1.4.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsentinel_16-1.4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsentinel_16-1.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsentinel_16-1.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsentinel_16-1.3.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.3.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsentinel_16-1.3.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgsentinel_16 pgsentinel_16-1.2.0-1PGDG.rhel10.aarch64.rpm pgdg 1.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsentinel_16-1.2.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 40.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb pgdg 1.4.2 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb pgdg 1.4.0 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 39.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb pgdg 1.4.0 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 40.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 39.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb pgdg 1.4.2 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb pgdg 1.4.1 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb pgdg 1.4.0 53.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 52.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb pgdg 1.4.2 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb pgdg 1.4.1 52.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb pgdg 1.4.0 52.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 51.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb pgdg 1.4.1 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 42.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 42.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb pgdg 1.4.2 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb pgdg 1.4.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 43.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb pgdg 1.4.0 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb pgdg 1.4.2 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb pgdg 1.4.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 42.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-pgsentinel postgresql-16-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb pgdg 1.4.0 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-16-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.2-1PIGSTY.el8.x86_64.rpm pigsty 1.4.2 23.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsentinel_15-1.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsentinel_15-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3.1 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsentinel_15-1.3.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgsentinel_15 pgsentinel_15-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsentinel_15-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.2-1PIGSTY.el8.aarch64.rpm pigsty 1.4.2 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsentinel_15-1.4.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsentinel_15-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3.1 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsentinel_15-1.3.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgsentinel_15 pgsentinel_15-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsentinel_15-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.2-1PIGSTY.el9.x86_64.rpm pigsty 1.4.2 24.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsentinel_15-1.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsentinel_15-1.4.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.0 25.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsentinel_15-1.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.0 25.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsentinel_15-1.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3.1 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsentinel_15-1.3.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3.1 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsentinel_15-1.3.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgsentinel_15 pgsentinel_15-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsentinel_15-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.2-1PIGSTY.el9.aarch64.rpm pigsty 1.4.2 23.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsentinel_15-1.4.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsentinel_15-1.4.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsentinel_15-1.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsentinel_15-1.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsentinel_15-1.3.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsentinel_15-1.3.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgsentinel_15 pgsentinel_15-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsentinel_15-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.2-1PIGSTY.el10.x86_64.rpm pigsty 1.4.2 24.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsentinel_15-1.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 26.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsentinel_15-1.4.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.4.0 25.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsentinel_15-1.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.4.0 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsentinel_15-1.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3.1 25.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsentinel_15-1.3.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3.1 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsentinel_15-1.3.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgsentinel_15 pgsentinel_15-1.2.0-1PGDG.rhel10.x86_64.rpm pgdg 1.2.0 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsentinel_15-1.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.2-1PIGSTY.el10.aarch64.rpm pigsty 1.4.2 23.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsentinel_15-1.4.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsentinel_15-1.4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.4.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsentinel_15-1.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.4.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsentinel_15-1.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsentinel_15-1.3.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.3.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3.1 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsentinel_15-1.3.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgsentinel_15 pgsentinel_15-1.2.0-1PGDG.rhel10.aarch64.rpm pgdg 1.2.0 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsentinel_15-1.2.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb pgdg 1.4.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb pgdg 1.4.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb pgdg 1.4.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 40.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb pgdg 1.4.2 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb pgdg 1.4.1 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb pgdg 1.4.0 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 39.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb pgdg 1.4.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb pgdg 1.4.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb pgdg 1.4.0 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 40.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb pgdg 1.4.2 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb pgdg 1.4.1 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb pgdg 1.4.0 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 39.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb pgdg 1.4.2 53.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb pgdg 1.4.1 53.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb pgdg 1.4.0 53.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 52.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb pgdg 1.4.2 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb pgdg 1.4.1 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb pgdg 1.4.0 52.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 51.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb pgdg 1.4.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb pgdg 1.4.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb pgdg 1.4.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 42.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb pgdg 1.4.2 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb pgdg 1.4.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb pgdg 1.4.0 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 42.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb pgdg 1.4.2 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb pgdg 1.4.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 43.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb pgdg 1.4.0 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb pgdg 1.4.2 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb pgdg 1.4.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 42.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-pgsentinel postgresql-15-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb pgdg 1.4.0 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-15-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.2-1PIGSTY.el8.x86_64.rpm pigsty 1.4.2 23.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsentinel_14-1.4.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.4.0 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsentinel_14-1.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.3.1 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsentinel_14-1.3.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgsentinel_14 pgsentinel_14-1.2.0-1PGDG.rhel8.x86_64.rpm pgdg 1.2.0 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsentinel_14-1.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.2-1PIGSTY.el8.aarch64.rpm pigsty 1.4.2 22.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsentinel_14-1.4.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsentinel_14-1.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.3.1 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsentinel_14-1.3.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgsentinel_14 pgsentinel_14-1.2.0-1PGDG.rhel8.aarch64.rpm pgdg 1.2.0 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsentinel_14-1.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.2-1PIGSTY.el9.x86_64.rpm pigsty 1.4.2 24.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsentinel_14-1.4.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.1-1PGDG.rhel9.8.x86_64.rpm pgdg 1.4.1 25.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsentinel_14-1.4.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.4.0 25.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsentinel_14-1.4.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.4.0 25.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsentinel_14-1.4.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.3.1 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsentinel_14-1.3.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.3.1 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsentinel_14-1.3.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgsentinel_14 pgsentinel_14-1.2.0-1PGDG.rhel9.x86_64.rpm pgdg 1.2.0 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsentinel_14-1.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.2-1PIGSTY.el9.aarch64.rpm pigsty 1.4.2 23.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsentinel_14-1.4.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.1-1PGDG.rhel9.8.aarch64.rpm pgdg 1.4.1 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsentinel_14-1.4.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.4.0 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsentinel_14-1.4.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsentinel_14-1.4.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.3.1 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsentinel_14-1.3.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsentinel_14-1.3.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgsentinel_14 pgsentinel_14-1.2.0-1PGDG.rhel9.aarch64.rpm pgdg 1.2.0 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsentinel_14-1.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.2-1PIGSTY.el10.x86_64.rpm pigsty 1.4.2 24.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsentinel_14-1.4.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.1-1PGDG.rhel10.2.x86_64.rpm pgdg 1.4.1 25.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsentinel_14-1.4.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.4.0 25.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsentinel_14-1.4.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.4.0 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsentinel_14-1.4.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.3.1 25.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsentinel_14-1.3.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.3.1 25.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsentinel_14-1.3.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgsentinel_14 pgsentinel_14-1.2.0-1PGDG.rhel10.x86_64.rpm pgdg 1.2.0 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsentinel_14-1.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.2-1PIGSTY.el10.aarch64.rpm pigsty 1.4.2 23.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsentinel_14-1.4.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.1-1PGDG.rhel10.2.aarch64.rpm pgdg 1.4.1 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsentinel_14-1.4.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsentinel_14-1.4.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.4.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.4.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsentinel_14-1.4.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.3.1 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsentinel_14-1.3.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.3.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.3.1 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsentinel_14-1.3.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgsentinel_14 pgsentinel_14-1.2.0-1PGDG.rhel10.aarch64.rpm pgdg 1.2.0 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsentinel_14-1.2.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb pgdg 1.4.2 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb pgdg 1.4.1 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb pgdg 1.4.0 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb pigsty 1.4.0 40.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb pgdg 1.4.2 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb pgdg 1.4.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb pgdg 1.4.0 43.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb pigsty 1.4.0 39.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb pgdg 1.4.2 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb pgdg 1.4.1 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb pgdg 1.4.0 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb pigsty 1.4.0 40.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb pgdg 1.4.2 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb pgdg 1.4.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb pgdg 1.4.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb pigsty 1.4.0 39.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb pgdg 1.4.2 51.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb pgdg 1.4.1 51.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb pgdg 1.4.0 50.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb pigsty 1.4.0 49.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb pgdg 1.4.2 49.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb pgdg 1.4.1 49.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb pgdg 1.4.0 49.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb pigsty 1.4.0 48.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb pgdg 1.4.2 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb pgdg 1.4.1 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb pgdg 1.4.0 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb pigsty 1.4.0 42.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb pgdg 1.4.2 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb pgdg 1.4.1 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb pgdg 1.4.0 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb pigsty 1.4.0 41.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb pgdg 1.4.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb pgdg 1.4.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 43.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb pgdg 1.4.0 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb pgdg 1.4.2 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb pgdg 1.4.1 43.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 42.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-pgsentinel postgresql-14-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb pgdg 1.4.0 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsentinel/postgresql-14-pgsentinel_1.4.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgsentinel` using `pig build`:

```bash
pig build pkg pgsentinel         # build RPM / DEB packages
```


## Install

You can install `pgsentinel` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgsentinel;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgsentinel -v 18  # PG 18
pig ext install -y pgsentinel -v 17  # PG 17
pig ext install -y pgsentinel -v 16  # PG 16
pig ext install -y pgsentinel -v 15  # PG 15
pig ext install -y pgsentinel -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgsentinel_18       # PG 18
dnf install -y pgsentinel_17       # PG 17
dnf install -y pgsentinel_16       # PG 16
dnf install -y pgsentinel_15       # PG 15
dnf install -y pgsentinel_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgsentinel   # PG 18
apt install -y postgresql-17-pgsentinel   # PG 17
apt install -y postgresql-16-pgsentinel   # PG 16
apt install -y postgresql-15-pgsentinel   # PG 15
apt install -y postgresql-14-pgsentinel   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgsentinel';
```


**Create Extension**:

```sql
CREATE EXTENSION pgsentinel;
```

## Usage

Sources:

- [pgsentinel 1.4.2 README](https://github.com/pgsentinel/pgsentinel/blob/v1.4.2/README.md)
- [pgsentinel 1.4.2 release](https://github.com/pgsentinel/pgsentinel/releases/tag/v1.4.2)
- [pgsentinel 1.4.1 to 1.4.2 changes](https://github.com/pgsentinel/pgsentinel/compare/v1.4.1...v1.4.2)
- [pgsentinel control file](https://github.com/pgsentinel/pgsentinel/blob/v1.4.2/src/pgsentinel.control)

`pgsentinel` records active session history by sampling `pg_stat_activity` at regular intervals and linking activity with `pg_stat_statements` query statistics. It keeps recent samples in shared-memory ring buffers managed by a background worker.

```ini
shared_preload_libraries = 'pg_stat_statements,pgsentinel'
pg_stat_statements.track = all
pgsentinel.db_name = 'postgres'
```

Restart PostgreSQL, then enable both extensions in the database used by the worker:

```sql
CREATE EXTENSION pg_stat_statements;
CREATE EXTENSION pgsentinel;
```

### Active Session History

```sql
SELECT ash_time, datname, usename, pid, state,
       wait_event_type, wait_event, query, queryid
FROM pg_active_session_history
ORDER BY ash_time DESC;
```

Key columns beyond `pg_stat_activity`:

| Column | Description |
|--------|-------------|
| `ash_time` | Sampling timestamp |
| `top_level_query` | Top-level statement (for PL/pgSQL) |
| `query` | Statement with actual parameter values |
| `cmdtype` | Statement type: SELECT, UPDATE, INSERT, DELETE, UTILITY, UNKNOWN, NOTHING |
| `queryid` | Links to `pg_stat_statements` |
| `blockers` | Number of blocking processes |
| `blockerpid` | PID of a blocking process |
| `blocker_state` | State of the blocker |

### Query Statistics History

When enabled, pgsentinel also samples `pg_stat_statements` concurrently:

```sql
SELECT ash_time, queryid, calls, total_exec_time, rows,
       shared_blks_hit, shared_blks_read
FROM pg_stat_statements_history
ORDER BY ash_time DESC;
```

### Example: Wait Analysis

```sql
-- Top wait events in the last hour
SELECT wait_event_type, wait_event, count(*)
FROM pg_active_session_history
WHERE ash_time > now() - interval '1 hour'
  AND wait_event IS NOT NULL
GROUP BY 1, 2
ORDER BY 3 DESC;

-- Blocking analysis
SELECT blockerpid, blocker_state, count(*)
FROM pg_active_session_history
WHERE blockers > 0
GROUP BY 1, 2
ORDER BY 3 DESC;
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pgsentinel_ash.sampling_period` | 1 | Sampling period in seconds |
| `pgsentinel_ash.max_entries` | 1000 | Ring buffer size for ASH |
| `pgsentinel.db_name` | `postgres` | Database for worker connection |
| `pgsentinel_ash.track_idle_trans` | `false` | Track idle-in-transaction sessions |
| `pgsentinel_pgssh.max_entries` | 1000 | Ring buffer for pg_stat_statements history |
| `pgsentinel_pgssh.enable` | `false` | Enable pg_stat_statements history |

### Version and Operational Notes

- Release 1.4.2 fixes query-statistics history on PostgreSQL 17, whose `pg_stat_statements` view renamed block I/O timing columns to `shared_blk_read_time` and `shared_blk_write_time`.
- The same release adds PostgreSQL 19 build compatibility without changing the SQL views or GUC surface.
- Ring-buffer history is memory-resident and finite; increase the entry limits only after accounting for shared-memory use, and export samples externally when longer retention is required.
- Query text can contain literal parameter values. Restrict access to the history views when statements may include sensitive data.
