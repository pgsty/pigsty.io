---
title: "pg_profile"
linkTitle: "pg_profile"
description: "PostgreSQL load profile repository and report builder"
weight: 6000
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/zubkov-andrei/pg_profile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">zubkov-andrei/pg_profile</div>
    <div class="ext-card__desc">https://github.com/zubkov-andrei/pg_profile</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_profile-4.11.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_profile-4.11.tar.gz</div>
    <div class="ext-card__desc">pg_profile-4.11.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_profile`**](/ext/e/pg_profile) | `4.15` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6000  | [**`pg_profile`**](/ext/e/pg_profile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dblink`](/ext/e/dblink) [`plpgsql`](/ext/e/plpgsql) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`powa`](/ext/e/powa) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) [`pgsentinel`](/ext/e/pgsentinel) [`pg_datasentinel`](/ext/e/pg_datasentinel) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_track_settings`](/ext/e/pg_track_settings) [`pg_track_optimizer`](/ext/e/pg_track_optimizer) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `4.15` | {{< pgvers "18,17,16,15,14" >}} | `pg_profile` | `dblink`, `plpgsql` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.15` | {{< pgvers "18,17,16,15,14" >}} | `pg_profile_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.11` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-profile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.15 3 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 7 | AVAIL PGDG 4.15 7 | AVAIL PGDG 4.15 7 |
| el8.aarch64 | AVAIL PGDG 4.15 3 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 7 | AVAIL PGDG 4.15 7 | AVAIL PGDG 4.15 7 |
| el9.x86_64 | AVAIL PGDG 4.15 4 | AVAIL PGDG 4.15 6 | AVAIL PGDG 4.15 8 | AVAIL PGDG 4.15 8 | AVAIL PGDG 4.15 8 |
| el9.aarch64 | AVAIL PGDG 4.15 4 | AVAIL PGDG 4.15 6 | AVAIL PGDG 4.15 8 | AVAIL PGDG 4.15 8 | AVAIL PGDG 4.15 8 |
| el10.x86_64 | AVAIL PGDG 4.15 4 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 5 |
| el10.aarch64 | AVAIL PGDG 4.15 4 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 5 | AVAIL PGDG 4.15 5 |
| d12.x86_64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| d12.aarch64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| d13.x86_64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| d13.aarch64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| u22.x86_64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| u22.aarch64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| u24.x86_64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| u24.aarch64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| u26.x86_64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
| u26.aarch64 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 | AVAIL PIGSTY 4.11 1 |
@ el8.x86_64 18 pg_profile_18 pg_profile_18-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 221.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_profile_18-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_profile_18-4.11-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 18 pg_profile_18 pg_profile_18-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_profile_18-4.10-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_profile_18 pg_profile_18-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 220.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_profile_18-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_profile_18-4.11-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_profile_18 pg_profile_18-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_profile_18-4.10-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_profile_18 pg_profile_18-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_profile_18-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_profile_18-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 197.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_profile_18-4.11-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 18 pg_profile_18 pg_profile_18-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_profile_18-4.10-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_profile_18 pg_profile_18-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_profile_18-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_profile_18-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 196.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_profile_18-4.11-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_profile_18 pg_profile_18-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_profile_18-4.10-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_profile_18 pg_profile_18-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_profile_18-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_profile_18-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_profile_18-4.11-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 18 pg_profile_18 pg_profile_18-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_profile_18-4.10-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_profile_18 pg_profile_18-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_profile_18-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_profile_18-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_profile_18 pg_profile_18-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_profile_18-4.11-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_profile_18 pg_profile_18-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_profile_18-4.10-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~trixie_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~trixie_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~jammy_amd64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~jammy_arm64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~noble_amd64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~noble_arm64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~resolute_amd64.deb pigsty 4.11 191.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-profile postgresql-18-pg-profile_4.11-1PIGSTY~resolute_arm64.deb pigsty 4.11 191.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-18-pg-profile_4.11-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_profile_17 pg_profile_17-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 221.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_profile_17-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_profile_17-4.11-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_profile_17 pg_profile_17-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_profile_17-4.10-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_profile_17 pg_profile_17-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_profile_17-4.8-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_profile_17 pg_profile_17-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_profile_17-4.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_profile_17 pg_profile_17-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 220.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_profile_17-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_profile_17-4.11-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_profile_17 pg_profile_17-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_profile_17-4.10-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_profile_17 pg_profile_17-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_profile_17-4.8-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_profile_17 pg_profile_17-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_profile_17-4.7-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_profile_17 pg_profile_17-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_profile_17-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_profile_17-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 197.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_profile_17-4.11-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pg_profile_17 pg_profile_17-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_profile_17-4.10-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pg_profile_17 pg_profile_17-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_profile_17-4.8-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pg_profile_17 pg_profile_17-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_profile_17-4.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_profile_17 pg_profile_17-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_profile_17-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_profile_17-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 196.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_profile_17-4.11-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_profile_17 pg_profile_17-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_profile_17-4.10-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_profile_17 pg_profile_17-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_profile_17-4.8-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_profile_17 pg_profile_17-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_profile_17-4.7-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_profile_17 pg_profile_17-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_profile_17-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_profile_17-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_profile_17-4.11-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 pg_profile_17 pg_profile_17-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_profile_17-4.10-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 pg_profile_17 pg_profile_17-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_profile_17-4.8-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_profile_17 pg_profile_17-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_profile_17-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_profile_17-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_profile_17 pg_profile_17-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_profile_17-4.11-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_profile_17 pg_profile_17-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_profile_17-4.10-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_profile_17 pg_profile_17-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_profile_17-4.8-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~trixie_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~trixie_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~jammy_amd64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~jammy_arm64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~noble_amd64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~noble_arm64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~resolute_amd64.deb pigsty 4.11 191.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-profile postgresql-17-pg-profile_4.11-1PIGSTY~resolute_arm64.deb pigsty 4.11 191.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-17-pg-profile_4.11-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 221.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.11-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.10-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.8-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.6-1PGDG.rhel8.noarch.rpm pgdg 4.6 119.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_profile_16 pg_profile_16-4.4-1PGDG.rhel8.noarch.rpm pgdg 4.4 109.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_profile_16-4.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 220.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.11-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.10-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.8-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.6-1PGDG.rhel8.noarch.rpm pgdg 4.6 119.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_profile_16 pg_profile_16-4.4-1PGDG.rhel8.noarch.rpm pgdg 4.4 109.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_profile_16-4.4-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 197.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.11-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.10-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.8-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.6-1PGDG.rhel9.noarch.rpm pgdg 4.6 107.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_profile_16 pg_profile_16-4.4-1PGDG.rhel9.noarch.rpm pgdg 4.4 99.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_profile_16-4.4-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 196.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.11-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.10-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.8-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.6-1PGDG.rhel9.noarch.rpm pgdg 4.6 107.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_profile_16 pg_profile_16-4.4-1PGDG.rhel9.noarch.rpm pgdg 4.4 99.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_profile_16-4.4-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_profile_16 pg_profile_16-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_profile_16-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_profile_16-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_profile_16-4.11-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 pg_profile_16 pg_profile_16-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_profile_16-4.10-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 pg_profile_16 pg_profile_16-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_profile_16-4.8-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_profile_16 pg_profile_16-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_profile_16-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_profile_16-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_profile_16 pg_profile_16-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_profile_16-4.11-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_profile_16 pg_profile_16-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_profile_16-4.10-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_profile_16 pg_profile_16-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_profile_16-4.8-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~trixie_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~trixie_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~jammy_amd64.deb pigsty 4.11 193.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~jammy_arm64.deb pigsty 4.11 193.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~noble_amd64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~noble_arm64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~resolute_amd64.deb pigsty 4.11 191.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-profile postgresql-16-pg-profile_4.11-1PIGSTY~resolute_arm64.deb pigsty 4.11 191.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-16-pg-profile_4.11-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 221.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.11-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.10-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.8-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.6-1PGDG.rhel8.noarch.rpm pgdg 4.6 119.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_profile_15 pg_profile_15-4.4-1PGDG.rhel8.noarch.rpm pgdg 4.4 109.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_profile_15-4.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 220.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.11-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.10-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.8-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.6-1PGDG.rhel8.noarch.rpm pgdg 4.6 119.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_profile_15 pg_profile_15-4.4-1PGDG.rhel8.noarch.rpm pgdg 4.4 109.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_profile_15-4.4-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 197.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.11-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.10-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.8-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.6-1PGDG.rhel9.noarch.rpm pgdg 4.6 107.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_profile_15 pg_profile_15-4.4-1PGDG.rhel9.noarch.rpm pgdg 4.4 99.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_profile_15-4.4-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 196.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.11-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.10-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.8-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.6-1PGDG.rhel9.noarch.rpm pgdg 4.6 107.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_profile_15 pg_profile_15-4.4-1PGDG.rhel9.noarch.rpm pgdg 4.4 99.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_profile_15-4.4-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_profile_15 pg_profile_15-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_profile_15-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_profile_15-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_profile_15-4.11-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 pg_profile_15 pg_profile_15-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_profile_15-4.10-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 pg_profile_15 pg_profile_15-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_profile_15-4.8-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_profile_15 pg_profile_15-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_profile_15-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_profile_15-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_profile_15 pg_profile_15-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_profile_15-4.11-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_profile_15 pg_profile_15-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_profile_15-4.10-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_profile_15 pg_profile_15-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_profile_15-4.8-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~trixie_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~trixie_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~jammy_amd64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~jammy_arm64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~noble_amd64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~noble_arm64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~resolute_amd64.deb pigsty 4.11 191.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-profile postgresql-15-pg-profile_4.11-1PIGSTY~resolute_arm64.deb pigsty 4.11 191.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-15-pg-profile_4.11-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 221.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.11-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.10-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.8-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.6-1PGDG.rhel8.noarch.rpm pgdg 4.6 119.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_profile_14 pg_profile_14-4.4-1PGDG.rhel8.noarch.rpm pgdg 4.4 109.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_profile_14-4.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.15-1PGDG.rhel8.10.noarch.rpm pgdg 4.15 220.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.15-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel8.noarch.rpm pgdg 4.11 214.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.11-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.10-1PGDG.rhel8.noarch.rpm pgdg 4.10 214.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.10-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.8-1PGDG.rhel8.noarch.rpm pgdg 4.8 130.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.8-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.7-1PGDG.rhel8.noarch.rpm pgdg 4.7 130.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.6-1PGDG.rhel8.noarch.rpm pgdg 4.6 119.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_profile_14 pg_profile_14-4.4-1PGDG.rhel8.noarch.rpm pgdg 4.4 109.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_profile_14-4.4-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 197.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.11-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.10-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.8-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.6-1PGDG.rhel9.noarch.rpm pgdg 4.6 107.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_profile_14 pg_profile_14-4.4-1PGDG.rhel9.noarch.rpm pgdg 4.4 99.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_profile_14-4.4-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.15-1PGDG.rhel9.8.noarch.rpm pgdg 4.15 201.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.15-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel9.8.noarch.rpm pgdg 4.11 198.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.11-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel9.noarch.rpm pgdg 4.11 197.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.11-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.10-1PGDG.rhel9.noarch.rpm pgdg 4.10 196.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.10-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.8-1PGDG.rhel9.noarch.rpm pgdg 4.8 117.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.8-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.7-1PGDG.rhel9.noarch.rpm pgdg 4.7 115.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.6-1PGDG.rhel9.noarch.rpm pgdg 4.6 107.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_profile_14 pg_profile_14-4.4-1PGDG.rhel9.noarch.rpm pgdg 4.4 99.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_profile_14-4.4-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_profile_14 pg_profile_14-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_profile_14-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_profile_14-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_profile_14-4.11-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 pg_profile_14 pg_profile_14-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_profile_14-4.10-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 pg_profile_14 pg_profile_14-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_profile_14-4.8-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_profile_14 pg_profile_14-4.15-1PGDG.rhel10.2.noarch.rpm pgdg 4.15 201.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_profile_14-4.15-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel10.2.noarch.rpm pgdg 4.11 198.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_profile_14-4.11-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_profile_14 pg_profile_14-4.11-1PGDG.rhel10.noarch.rpm pgdg 4.11 197.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_profile_14-4.11-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_profile_14 pg_profile_14-4.10-1PGDG.rhel10.noarch.rpm pgdg 4.10 197.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_profile_14-4.10-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_profile_14 pg_profile_14-4.8-1PGDG.rhel10.noarch.rpm pgdg 4.8 117.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_profile_14-4.8-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~trixie_amd64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~trixie_arm64.deb pigsty 4.11 192.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~jammy_amd64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~jammy_arm64.deb pigsty 4.11 193.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~noble_amd64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~noble_arm64.deb pigsty 4.11 191.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~resolute_amd64.deb pigsty 4.11 191.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-profile postgresql-14-pg-profile_4.11-1PIGSTY~resolute_arm64.deb pigsty 4.11 191.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-profile/postgresql-14-pg-profile_4.11-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_profile` using `pig build`:

```bash
pig build pkg pg_profile         # build DEB packages
```


## Install

You can install `pg_profile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_profile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_profile -v 18  # PG 18
pig ext install -y pg_profile -v 17  # PG 17
pig ext install -y pg_profile -v 16  # PG 16
pig ext install -y pg_profile -v 15  # PG 15
pig ext install -y pg_profile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_profile_18       # PG 18
dnf install -y pg_profile_17       # PG 17
dnf install -y pg_profile_16       # PG 16
dnf install -y pg_profile_15       # PG 15
dnf install -y pg_profile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-profile   # PG 18
apt install -y postgresql-17-pg-profile   # PG 17
apt install -y postgresql-16-pg-profile   # PG 16
apt install -y postgresql-15-pg-profile   # PG 15
apt install -y postgresql-14-pg-profile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_profile CASCADE;  -- requires: dblink, plpgsql
```




## Usage

> [pg_profile: historical performance profiling tool for PostgreSQL](https://github.com/zubkov-andrei/pg_profile)

pg_profile collects periodic samples of PostgreSQL statistics and generates detailed historical performance reports. It depends on `pg_stat_statements` and optionally uses `pg_stat_kcache` and `pg_wait_sampling` for additional metrics.

### Taking Samples

Samples must be taken periodically (e.g., via cron). Each sample captures the current state of statistics:

```sql
SELECT profile.take_sample();
```

### Generating Reports

Build a report between two sample IDs to analyze performance during that interval:

```sql
-- Regular report between samples 1 and 2
SELECT profile.get_report(1, 2);

-- Differential report comparing two intervals
SELECT profile.get_diffreport(1, 2, 3, 4);
```

### Managing Servers

pg_profile can collect statistics from remote clusters:

```sql
-- Define a remote server
SELECT profile.create_server('remote', 'host=remote_host dbname=postgres');

-- List defined servers
SELECT * FROM profile.show_servers();

-- Enable/disable a server
SELECT profile.enable_server('remote');
SELECT profile.disable_server('remote');
```

### Baselines

Baselines protect sample ranges from automatic cleanup:

```sql
-- Create a baseline preserving samples 10 through 20
SELECT profile.create_baseline('incident_2024', 10, 20);

-- List baselines
SELECT * FROM profile.show_baselines();

-- Drop a baseline
SELECT profile.drop_baseline('incident_2024');
```

### Retention

Control how long samples are kept:

```sql
-- Set retention to 7 days for the local server
SELECT profile.set_server_max_sample_age('local', 7);
```

### Sample Information

```sql
-- Show available samples
SELECT * FROM profile.show_samples();

-- Show time spent taking samples (requires pg_profile.track_sample_timings = on)
SELECT * FROM v_sample_timings;
```

### Recommended Settings

```
track_activities = on
track_counts = on
track_io_timing = on
track_wal_io_timing = on      # PG 14+
track_functions = all
```
