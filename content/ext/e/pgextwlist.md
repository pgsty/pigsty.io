---
title: "pgextwlist"
linkTitle: "pgextwlist"
description: "PostgreSQL Extension Whitelisting"
weight: 7390
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dimitri/pgextwlist">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dimitri/pgextwlist</div>
    <div class="ext-card__desc">https://github.com/dimitri/pgextwlist</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgextwlist-1.19.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgextwlist-1.19.tar.gz</div>
    <div class="ext-card__desc">pgextwlist-1.19.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgextwlist`**](/ext/e/pgextwlist) | `1.20` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7390  | [**`pgextwlist`**](/ext/e/pgextwlist) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_command_fw`](/ext/e/pg_command_fw) [`supautils`](/ext/e/supautils) [`block_copy_command`](/ext/e/block_copy_command) [`pg_kpart`](/ext/e/pg_kpart) [`noset`](/ext/e/noset) [`sepgsql`](/ext/e/sepgsql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.20` | {{< pgvers "18,17,16,15,14" >}} | `pgextwlist` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.20` | {{< pgvers "18,17,16,15,14" >}} | `pgextwlist_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.20` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgextwlist` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 |
| el8.aarch64 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 | AVAIL PGDG 1.20 3 |
| el9.x86_64 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 |
| el9.aarch64 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 |
| el10.x86_64 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 |
| el10.aarch64 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 | AVAIL PGDG 1.20 5 |
| d12.x86_64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| d12.aarch64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| d13.x86_64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| d13.aarch64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| u22.x86_64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| u22.aarch64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| u24.x86_64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| u24.aarch64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| u26.x86_64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
| u26.aarch64 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 | AVAIL PGDG 1.20 2 |
@ el8.x86_64 18 pgextwlist_18 pgextwlist_18-1.20-1PGDG.rhel8.10.x86_64.rpm pgdg 1.20 22.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgextwlist_18-1.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PIGSTY.el8.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgextwlist_18-1.19-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel8.10.x86_64.rpm pgdg 1.19 20.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgextwlist_18-1.19-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pgextwlist_18 pgextwlist_18-1.20-1PGDG.rhel8.10.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgextwlist_18-1.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PIGSTY.el8.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgextwlist_18-1.19-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel8.10.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgextwlist_18-1.19-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pgextwlist_18 pgextwlist_18-1.20-1PGDG.rhel9.8.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgextwlist_18-1.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PIGSTY.el9.x86_64.rpm pigsty 1.19 20.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgextwlist_18-1.19-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel9.8.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgextwlist_18-1.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel9.7.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgextwlist_18-1.19-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel9.6.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgextwlist_18-1.19-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pgextwlist_18 pgextwlist_18-1.20-1PGDG.rhel9.8.aarch64.rpm pgdg 1.20 21.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgextwlist_18-1.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PIGSTY.el9.aarch64.rpm pigsty 1.19 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgextwlist_18-1.19-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel9.8.aarch64.rpm pgdg 1.19 20.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgextwlist_18-1.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel9.7.aarch64.rpm pgdg 1.19 20.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgextwlist_18-1.19-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel9.6.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgextwlist_18-1.19-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pgextwlist_18 pgextwlist_18-1.20-1PGDG.rhel10.2.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgextwlist_18-1.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PIGSTY.el10.x86_64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgextwlist_18-1.19-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel10.2.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgextwlist_18-1.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel10.1.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgextwlist_18-1.19-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel10.0.x86_64.rpm pgdg 1.19 21.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgextwlist_18-1.19-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pgextwlist_18 pgextwlist_18-1.20-1PGDG.rhel10.2.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgextwlist_18-1.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PIGSTY.el10.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgextwlist_18-1.19-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel10.2.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgextwlist_18-1.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel10.1.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgextwlist_18-1.19-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgextwlist_18 pgextwlist_18-1.19-1PGDG.rhel10.0.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgextwlist_18-1.19-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg12+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg12+1_amd64.deb pgdg 1.19 29.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg12+1_arm64.deb pgdg 1.20 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg12+1_arm64.deb pgdg 1.19 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg13+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg13+1_amd64.deb pgdg 1.19 29.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg13+1_arm64.deb pgdg 1.20 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg13+1_arm64.deb pgdg 1.19 28.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb pgdg 1.20 35.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb pgdg 1.19 30.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb pgdg 1.20 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb pgdg 1.19 29.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb pgdg 1.19 29.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb pgdg 1.20 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb pgdg 1.19 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb pgdg 1.19 29.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb pgdg 1.20 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgextwlist postgresql-18-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb pgdg 1.19 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-18-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgextwlist_17 pgextwlist_17-1.20-1PGDG.rhel8.10.x86_64.rpm pgdg 1.20 22.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgextwlist_17-1.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PIGSTY.el8.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgextwlist_17-1.19-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel8.10.x86_64.rpm pgdg 1.19 20.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgextwlist_17-1.19-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pgextwlist_17 pgextwlist_17-1.20-1PGDG.rhel8.10.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgextwlist_17-1.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PIGSTY.el8.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgextwlist_17-1.19-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel8.10.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgextwlist_17-1.19-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pgextwlist_17 pgextwlist_17-1.20-1PGDG.rhel9.8.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgextwlist_17-1.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PIGSTY.el9.x86_64.rpm pigsty 1.19 20.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgextwlist_17-1.19-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel9.8.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgextwlist_17-1.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel9.7.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgextwlist_17-1.19-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel9.6.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgextwlist_17-1.19-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 pgextwlist_17 pgextwlist_17-1.20-1PGDG.rhel9.8.aarch64.rpm pgdg 1.20 21.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgextwlist_17-1.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PIGSTY.el9.aarch64.rpm pigsty 1.19 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgextwlist_17-1.19-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel9.8.aarch64.rpm pgdg 1.19 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgextwlist_17-1.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel9.7.aarch64.rpm pgdg 1.19 20.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgextwlist_17-1.19-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel9.6.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgextwlist_17-1.19-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 pgextwlist_17 pgextwlist_17-1.20-1PGDG.rhel10.2.x86_64.rpm pgdg 1.20 22.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgextwlist_17-1.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PIGSTY.el10.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgextwlist_17-1.19-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel10.2.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgextwlist_17-1.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel10.1.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgextwlist_17-1.19-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel10.0.x86_64.rpm pgdg 1.19 21.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgextwlist_17-1.19-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 pgextwlist_17 pgextwlist_17-1.20-1PGDG.rhel10.2.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgextwlist_17-1.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PIGSTY.el10.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgextwlist_17-1.19-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel10.2.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgextwlist_17-1.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel10.1.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgextwlist_17-1.19-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgextwlist_17 pgextwlist_17-1.19-1PGDG.rhel10.0.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgextwlist_17-1.19-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg12+1_amd64.deb pgdg 1.20 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg12+1_amd64.deb pgdg 1.19 29.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg12+1_arm64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg12+1_arm64.deb pgdg 1.19 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg13+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg13+1_amd64.deb pgdg 1.19 29.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg13+1_arm64.deb pgdg 1.20 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg13+1_arm64.deb pgdg 1.19 28.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb pgdg 1.20 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb pgdg 1.19 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb pgdg 1.20 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb pgdg 1.19 37.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb pgdg 1.19 29.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb pgdg 1.19 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb pgdg 1.19 29.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb pgdg 1.20 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgextwlist postgresql-17-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb pgdg 1.19 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-17-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgextwlist_16 pgextwlist_16-1.20-1PGDG.rhel8.10.x86_64.rpm pgdg 1.20 22.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgextwlist_16-1.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PIGSTY.el8.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgextwlist_16-1.19-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel8.10.x86_64.rpm pgdg 1.19 20.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgextwlist_16-1.19-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 pgextwlist_16 pgextwlist_16-1.20-1PGDG.rhel8.10.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgextwlist_16-1.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PIGSTY.el8.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgextwlist_16-1.19-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel8.10.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgextwlist_16-1.19-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 pgextwlist_16 pgextwlist_16-1.20-1PGDG.rhel9.8.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgextwlist_16-1.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PIGSTY.el9.x86_64.rpm pigsty 1.19 20.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgextwlist_16-1.19-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel9.8.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgextwlist_16-1.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel9.7.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgextwlist_16-1.19-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel9.6.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgextwlist_16-1.19-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 pgextwlist_16 pgextwlist_16-1.20-1PGDG.rhel9.8.aarch64.rpm pgdg 1.20 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgextwlist_16-1.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PIGSTY.el9.aarch64.rpm pigsty 1.19 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgextwlist_16-1.19-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel9.8.aarch64.rpm pgdg 1.19 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgextwlist_16-1.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel9.7.aarch64.rpm pgdg 1.19 20.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgextwlist_16-1.19-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel9.6.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgextwlist_16-1.19-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 pgextwlist_16 pgextwlist_16-1.20-1PGDG.rhel10.2.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgextwlist_16-1.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PIGSTY.el10.x86_64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgextwlist_16-1.19-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel10.2.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgextwlist_16-1.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel10.1.x86_64.rpm pgdg 1.19 20.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgextwlist_16-1.19-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel10.0.x86_64.rpm pgdg 1.19 21.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgextwlist_16-1.19-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 pgextwlist_16 pgextwlist_16-1.20-1PGDG.rhel10.2.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgextwlist_16-1.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PIGSTY.el10.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgextwlist_16-1.19-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel10.2.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgextwlist_16-1.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel10.1.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgextwlist_16-1.19-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgextwlist_16 pgextwlist_16-1.19-1PGDG.rhel10.0.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgextwlist_16-1.19-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg12+1_amd64.deb pgdg 1.20 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg12+1_amd64.deb pgdg 1.19 29.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg12+1_arm64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg12+1_arm64.deb pgdg 1.19 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg13+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg13+1_amd64.deb pgdg 1.19 29.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg13+1_arm64.deb pgdg 1.20 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg13+1_arm64.deb pgdg 1.19 28.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb pgdg 1.20 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb pgdg 1.19 37.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb pgdg 1.20 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb pgdg 1.19 37.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb pgdg 1.20 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb pgdg 1.19 29.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb pgdg 1.19 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb pgdg 1.19 29.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb pgdg 1.20 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgextwlist postgresql-16-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb pgdg 1.19 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-16-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgextwlist_15 pgextwlist_15-1.20-1PGDG.rhel8.10.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgextwlist_15-1.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PIGSTY.el8.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgextwlist_15-1.19-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel8.10.x86_64.rpm pgdg 1.19 20.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgextwlist_15-1.19-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 pgextwlist_15 pgextwlist_15-1.20-1PGDG.rhel8.10.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgextwlist_15-1.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PIGSTY.el8.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgextwlist_15-1.19-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel8.10.aarch64.rpm pgdg 1.19 20.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgextwlist_15-1.19-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 pgextwlist_15 pgextwlist_15-1.20-1PGDG.rhel9.8.x86_64.rpm pgdg 1.20 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgextwlist_15-1.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PIGSTY.el9.x86_64.rpm pigsty 1.19 20.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgextwlist_15-1.19-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel9.8.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgextwlist_15-1.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel9.7.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgextwlist_15-1.19-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel9.6.x86_64.rpm pgdg 1.19 21.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgextwlist_15-1.19-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 pgextwlist_15 pgextwlist_15-1.20-1PGDG.rhel9.8.aarch64.rpm pgdg 1.20 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgextwlist_15-1.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PIGSTY.el9.aarch64.rpm pigsty 1.19 20.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgextwlist_15-1.19-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel9.8.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgextwlist_15-1.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel9.7.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgextwlist_15-1.19-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel9.6.aarch64.rpm pgdg 1.19 20.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgextwlist_15-1.19-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 pgextwlist_15 pgextwlist_15-1.20-1PGDG.rhel10.2.x86_64.rpm pgdg 1.20 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgextwlist_15-1.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PIGSTY.el10.x86_64.rpm pigsty 1.19 20.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgextwlist_15-1.19-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel10.2.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgextwlist_15-1.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel10.1.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgextwlist_15-1.19-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel10.0.x86_64.rpm pgdg 1.19 21.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgextwlist_15-1.19-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 pgextwlist_15 pgextwlist_15-1.20-1PGDG.rhel10.2.aarch64.rpm pgdg 1.20 22.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgextwlist_15-1.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PIGSTY.el10.aarch64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgextwlist_15-1.19-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel10.2.aarch64.rpm pgdg 1.19 20.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgextwlist_15-1.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel10.1.aarch64.rpm pgdg 1.19 20.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgextwlist_15-1.19-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgextwlist_15 pgextwlist_15-1.19-1PGDG.rhel10.0.aarch64.rpm pgdg 1.19 20.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgextwlist_15-1.19-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg12+1_amd64.deb pgdg 1.20 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg12+1_amd64.deb pgdg 1.19 28.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg12+1_arm64.deb pgdg 1.20 33.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg12+1_arm64.deb pgdg 1.19 28.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg13+1_amd64.deb pgdg 1.20 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg13+1_amd64.deb pgdg 1.19 28.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg13+1_arm64.deb pgdg 1.20 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg13+1_arm64.deb pgdg 1.19 28.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb pgdg 1.20 43.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb pgdg 1.19 37.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb pgdg 1.20 42.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb pgdg 1.19 36.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb pgdg 1.20 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb pgdg 1.19 29.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb pgdg 1.20 33.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb pgdg 1.19 28.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb pgdg 1.19 29.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb pgdg 1.20 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgextwlist postgresql-15-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb pgdg 1.19 28.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-15-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgextwlist_14 pgextwlist_14-1.20-1PGDG.rhel8.10.x86_64.rpm pgdg 1.20 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgextwlist_14-1.20-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PIGSTY.el8.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgextwlist_14-1.19-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel8.10.x86_64.rpm pgdg 1.19 20.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgextwlist_14-1.19-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 pgextwlist_14 pgextwlist_14-1.20-1PGDG.rhel8.10.aarch64.rpm pgdg 1.20 22.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgextwlist_14-1.20-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PIGSTY.el8.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgextwlist_14-1.19-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel8.10.aarch64.rpm pgdg 1.19 20.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgextwlist_14-1.19-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 pgextwlist_14 pgextwlist_14-1.20-1PGDG.rhel9.8.x86_64.rpm pgdg 1.20 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgextwlist_14-1.20-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PIGSTY.el9.x86_64.rpm pigsty 1.19 20.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgextwlist_14-1.19-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel9.8.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgextwlist_14-1.19-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel9.7.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgextwlist_14-1.19-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel9.6.x86_64.rpm pgdg 1.19 21.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgextwlist_14-1.19-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 pgextwlist_14 pgextwlist_14-1.20-1PGDG.rhel9.8.aarch64.rpm pgdg 1.20 22.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgextwlist_14-1.20-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PIGSTY.el9.aarch64.rpm pigsty 1.19 20.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgextwlist_14-1.19-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel9.8.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgextwlist_14-1.19-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel9.7.aarch64.rpm pgdg 1.19 20.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgextwlist_14-1.19-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel9.6.aarch64.rpm pgdg 1.19 20.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgextwlist_14-1.19-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 pgextwlist_14 pgextwlist_14-1.20-1PGDG.rhel10.2.x86_64.rpm pgdg 1.20 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgextwlist_14-1.20-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PIGSTY.el10.x86_64.rpm pigsty 1.19 20.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgextwlist_14-1.19-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel10.2.x86_64.rpm pgdg 1.19 20.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgextwlist_14-1.19-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel10.1.x86_64.rpm pgdg 1.19 21.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgextwlist_14-1.19-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel10.0.x86_64.rpm pgdg 1.19 21.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgextwlist_14-1.19-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 pgextwlist_14 pgextwlist_14-1.20-1PGDG.rhel10.2.aarch64.rpm pgdg 1.20 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgextwlist_14-1.20-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PIGSTY.el10.aarch64.rpm pigsty 1.19 20.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgextwlist_14-1.19-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel10.2.aarch64.rpm pgdg 1.19 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgextwlist_14-1.19-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel10.1.aarch64.rpm pgdg 1.19 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgextwlist_14-1.19-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgextwlist_14 pgextwlist_14-1.19-1PGDG.rhel10.0.aarch64.rpm pgdg 1.19 20.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgextwlist_14-1.19-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg12+1_amd64.deb pgdg 1.20 34.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg12+1_amd64.deb pgdg 1.19 28.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg12+1_arm64.deb pgdg 1.20 33.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg12+1_arm64.deb pgdg 1.19 28.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg13+1_amd64.deb pgdg 1.20 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg13+1_amd64.deb pgdg 1.19 28.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg13+1_arm64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg13+1_arm64.deb pgdg 1.19 28.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb pgdg 1.20 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb pgdg 1.19 37.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb pgdg 1.20 42.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb pgdg 1.19 36.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb pgdg 1.20 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb pgdg 1.19 29.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb pgdg 1.20 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb pgdg 1.19 28.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb pgdg 1.20 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb pgdg 1.19 28.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb pgdg 1.20 33.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.20-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgextwlist postgresql-14-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb pgdg 1.19 28.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgextwlist/postgresql-14-pgextwlist_1.19-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pgextwlist` using `pig build`:

```bash
pig build pkg pgextwlist         # build RPM packages
```


## Install

You can install `pgextwlist` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgextwlist;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgextwlist -v 18  # PG 18
pig ext install -y pgextwlist -v 17  # PG 17
pig ext install -y pgextwlist -v 16  # PG 16
pig ext install -y pgextwlist -v 15  # PG 15
pig ext install -y pgextwlist -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgextwlist_18       # PG 18
dnf install -y pgextwlist_17       # PG 17
dnf install -y pgextwlist_16       # PG 16
dnf install -y pgextwlist_15       # PG 15
dnf install -y pgextwlist_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgextwlist   # PG 18
apt install -y postgresql-17-pgextwlist   # PG 17
apt install -y postgresql-16-pgextwlist   # PG 16
apt install -y postgresql-15-pgextwlist   # PG 15
apt install -y postgresql-14-pgextwlist   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgextwlist';
```


## Usage

Sources:

- [pgextwlist v1.20 README](https://github.com/dimitri/pgextwlist/blob/v1.20/README.md)
- [Changes from v1.19 to v1.20](https://github.com/dimitri/pgextwlist/compare/v1.19...v1.20)

pgextwlist lets selected non-superusers run extension lifecycle commands for an explicit allowlist. It temporarily executes those commands with bootstrap-superuser authority, so the allowlist and any custom scripts are part of the database's security boundary.

The module is preloaded and does not itself need CREATE EXTENSION.

### Configure the Allowlist

Load the module for each backend:

    local_preload_libraries = 'pgextwlist'
    extwlist.extensions = 'hstore,cube,pg_stat_statements'

The list may also be assigned per role:

    ALTER ROLE extension_admin
      SET extwlist.extensions = 'hstore,pg_stat_statements';

Reconnect after changing local_preload_libraries. A whitelisted user can then run:

    CREATE EXTENSION hstore;
    ALTER EXTENSION hstore UPDATE;
    COMMENT ON EXTENSION hstore IS 'approved utility';
    DROP EXTENSION hstore;

An extension not named in extwlist.extensions is rejected.

### Restrict Database Ownership

Version 1.20 adds:

    extwlist.restrict_to_database_owner = on

When enabled, the caller must also own the current database. This is off by default for compatibility. Enable it when extension administration should not cross database-ownership boundaries.

### Custom Lifecycle Scripts

Set extwlist.custom_path to an existing readable directory. Version 1.20 raises an error for a missing or unreadable path rather than silently skipping it.

For extension extname, scripts under extname/ can include:

- before--1.0.sql and after--1.0.sql around creation of a specific version.
- before-create.sql and after-create.sql as creation fallbacks.
- before-update.sql and after-update.sql around an update.
- before-drop.sql and after-drop.sql around removal.

Templates can use @extschema@, @current_user@, and @database_owner@. Only trusted administrators should be able to write this directory because scripts execute with elevated authority.

### Configuration Index

- local_preload_libraries: loads pgextwlist into new sessions.
- extwlist.extensions: comma-separated allowlist.
- extwlist.custom_path: base directory for lifecycle scripts.
- extwlist.restrict_to_database_owner: additionally require database ownership.

### Security and Compatibility Notes

- Version 1.20 rejects substitution names containing quote, dollar, apostrophe, or backslash characters, addressing the command-injection class tracked as CVE-2023-39417.
- CREATE EXTENSION, DROP EXTENSION, ALTER EXTENSION UPDATE, and COMMENT ON EXTENSION are supported. ALTER EXTENSION ADD and DROP are not supported.
- Objects created through the elevated path are owned according to the extension/bootstrap-superuser behavior, not necessarily by the requesting role.
- Review extension SQL and custom scripts before adding a name. Whitelisting an extension grants the caller the power embodied by its install and update scripts.
