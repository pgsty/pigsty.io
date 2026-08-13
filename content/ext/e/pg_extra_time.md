---
title: "pg_extra_time"
linkTitle: "pg_extra_time"
description: "Some date time functions and operators that,"
weight: 4220
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_extra_time">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_extra_time</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_extra_time</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_extra_time-2.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_extra_time-2.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_extra_time-2.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_extra_time`**](/ext/e/pg_extra_time) | `2.1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4220  | [**`pg_extra_time`**](/ext/e/pg_extra_time) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgcalendar`](/ext/e/pgcalendar) [`pg_math`](/ext/e/pg_math) [`pgsql_tweaks`](/ext/e/pgsql_tweaks) [`pg_rrule`](/ext/e/pg_rrule) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_extra_time` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_extra_time_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-extra-time` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.1.0 2 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 4 | AVAIL PIGSTY 2.1.0 4 | AVAIL PIGSTY 2.1.0 4 |
| el8.aarch64 | AVAIL PIGSTY 2.1.0 2 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 4 | AVAIL PIGSTY 2.1.0 4 | AVAIL PIGSTY 2.1.0 4 |
| el9.x86_64 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 4 | AVAIL PIGSTY 2.1.0 5 | AVAIL PIGSTY 2.1.0 5 | AVAIL PIGSTY 2.1.0 5 |
| el9.aarch64 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 4 | AVAIL PIGSTY 2.1.0 5 | AVAIL PIGSTY 2.1.0 5 | AVAIL PIGSTY 2.1.0 5 |
| el10.x86_64 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 |
| el10.aarch64 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 | AVAIL PIGSTY 2.1.0 3 |
| d12.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 | AVAIL PIGSTY 2.1.0 1 |
@ el8.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_extra_time_18-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_extra_time_18-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_extra_time_18-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_extra_time_18-2.0.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_extra_time_18-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_extra_time_18-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_extra_time_18-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_extra_time_18-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_extra_time_18-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_extra_time_18-2.0.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_extra_time_18-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_extra_time_18-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_extra_time_18-2.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_extra_time_18-2.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_extra_time_18-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_extra_time_18 pg_extra_time_18-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_extra_time_18-2.0.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-extra-time postgresql-18-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-18-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_extra_time_17-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_extra_time_17-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_extra_time_17 pg_extra_time_17-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_extra_time_17-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_extra_time_17-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_extra_time_17-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_extra_time_17 pg_extra_time_17-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_extra_time_17-1.1.3-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_extra_time_17-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_extra_time_17-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_extra_time_17-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pg_extra_time_17 pg_extra_time_17-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_extra_time_17-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_extra_time_17-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_extra_time_17-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_extra_time_17-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_extra_time_17 pg_extra_time_17-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_extra_time_17-1.1.3-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_extra_time_17-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_extra_time_17-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_extra_time_17-2.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_extra_time_17-2.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_extra_time_17-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_extra_time_17 pg_extra_time_17-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_extra_time_17-2.0.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-extra-time postgresql-17-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-17-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_extra_time_16-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_extra_time_16-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_extra_time_16 pg_extra_time_16-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_extra_time_16-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_extra_time_16 pg_extra_time_16-1.1.2-1PGDG.rhel8.noarch.rpm pgdg 1.1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_extra_time_16-1.1.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_extra_time_16-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_extra_time_16-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_extra_time_16 pg_extra_time_16-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_extra_time_16-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_extra_time_16 pg_extra_time_16-1.1.2-1PGDG.rhel8.noarch.rpm pgdg 1.1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_extra_time_16-1.1.2-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_extra_time_16-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_extra_time_16-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_extra_time_16-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_extra_time_16 pg_extra_time_16-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_extra_time_16-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pg_extra_time_16 pg_extra_time_16-1.1.2-1PGDG.rhel9.noarch.rpm pgdg 1.1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_extra_time_16-1.1.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_extra_time_16-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_extra_time_16-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_extra_time_16-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_extra_time_16 pg_extra_time_16-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_extra_time_16-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_extra_time_16 pg_extra_time_16-1.1.2-1PGDG.rhel9.noarch.rpm pgdg 1.1.2 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_extra_time_16-1.1.2-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_extra_time_16-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_extra_time_16-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_extra_time_16-2.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_extra_time_16-2.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_extra_time_16-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_extra_time_16 pg_extra_time_16-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_extra_time_16-2.0.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-extra-time postgresql-16-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-16-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_extra_time_15-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_extra_time_15-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_extra_time_15 pg_extra_time_15-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_extra_time_15-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_extra_time_15 pg_extra_time_15-1.1.2-1PGDG.rhel8.noarch.rpm pgdg 1.1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_extra_time_15-1.1.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_extra_time_15-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_extra_time_15-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_extra_time_15 pg_extra_time_15-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_extra_time_15-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_extra_time_15 pg_extra_time_15-1.1.2-1PGDG.rhel8.noarch.rpm pgdg 1.1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_extra_time_15-1.1.2-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_extra_time_15-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_extra_time_15-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_extra_time_15-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_extra_time_15 pg_extra_time_15-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_extra_time_15-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pg_extra_time_15 pg_extra_time_15-1.1.2-1PGDG.rhel9.noarch.rpm pgdg 1.1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_extra_time_15-1.1.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_extra_time_15-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_extra_time_15-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_extra_time_15-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_extra_time_15 pg_extra_time_15-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_extra_time_15-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_extra_time_15 pg_extra_time_15-1.1.2-1PGDG.rhel9.noarch.rpm pgdg 1.1.2 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_extra_time_15-1.1.2-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_extra_time_15-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_extra_time_15-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_extra_time_15-2.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_extra_time_15-2.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_extra_time_15-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_extra_time_15 pg_extra_time_15-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_extra_time_15-2.0.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 37.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 37.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-extra-time postgresql-15-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-15-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.1.0-1PIGSTY.el8.x86_64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_extra_time_14-2.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_extra_time_14-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_extra_time_14 pg_extra_time_14-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_extra_time_14-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_extra_time_14 pg_extra_time_14-1.1.2-1PGDG.rhel8.noarch.rpm pgdg 1.1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_extra_time_14-1.1.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.1.0-1PIGSTY.el8.aarch64.rpm pigsty 2.1.0 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_extra_time_14-2.1.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel8.noarch.rpm pgdg 2.0.0 33.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_extra_time_14-2.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_extra_time_14 pg_extra_time_14-1.1.3-1PGDG.rhel8.noarch.rpm pgdg 1.1.3 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_extra_time_14-1.1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_extra_time_14 pg_extra_time_14-1.1.2-1PGDG.rhel8.noarch.rpm pgdg 1.1.2 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_extra_time_14-1.1.2-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.1.0-1PIGSTY.el9.x86_64.rpm pigsty 2.1.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_extra_time_14-2.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_extra_time_14-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_extra_time_14-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_extra_time_14 pg_extra_time_14-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_extra_time_14-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pg_extra_time_14 pg_extra_time_14-1.1.2-1PGDG.rhel9.noarch.rpm pgdg 1.1.2 18.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_extra_time_14-1.1.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.1.0-1PIGSTY.el9.aarch64.rpm pigsty 2.1.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_extra_time_14-2.1.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel9.8.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_extra_time_14-2.0.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel9.noarch.rpm pgdg 2.0.0 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_extra_time_14-2.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_extra_time_14 pg_extra_time_14-1.1.3-1PGDG.rhel9.noarch.rpm pgdg 1.1.3 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_extra_time_14-1.1.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_extra_time_14 pg_extra_time_14-1.1.2-1PGDG.rhel9.noarch.rpm pgdg 1.1.2 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_extra_time_14-1.1.2-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.1.0-1PIGSTY.el10.x86_64.rpm pigsty 2.1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_extra_time_14-2.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_extra_time_14-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_extra_time_14-2.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.1.0-1PIGSTY.el10.aarch64.rpm pigsty 2.1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_extra_time_14-2.1.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel10.2.noarch.rpm pgdg 2.0.0 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_extra_time_14-2.0.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_extra_time_14 pg_extra_time_14-2.0.0-1PGDG.rhel10.noarch.rpm pgdg 2.0.0 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_extra_time_14-2.0.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb pigsty 2.1.0 40.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb pigsty 2.1.0 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-extra-time postgresql-14-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb pigsty 2.1.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-extra-time/postgresql-14-pg-extra-time_2.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_extra_time` using `pig build`:

```bash
pig build pkg pg_extra_time         # build RPM / DEB packages
```


## Install

You can install `pg_extra_time` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_extra_time;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_extra_time -v 18  # PG 18
pig ext install -y pg_extra_time -v 17  # PG 17
pig ext install -y pg_extra_time -v 16  # PG 16
pig ext install -y pg_extra_time -v 15  # PG 15
pig ext install -y pg_extra_time -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_extra_time_18       # PG 18
dnf install -y pg_extra_time_17       # PG 17
dnf install -y pg_extra_time_16       # PG 16
dnf install -y pg_extra_time_15       # PG 15
dnf install -y pg_extra_time_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-extra-time   # PG 18
apt install -y postgresql-17-pg-extra-time   # PG 17
apt install -y postgresql-16-pg-extra-time   # PG 16
apt install -y postgresql-15-pg-extra-time   # PG 15
apt install -y postgresql-14-pg-extra-time   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_extra_time;
```




## Usage

> Sources: [pg_extra_time upstream README](https://github.com/bigsmoke/pg_extra_time), [PGXN pg_extra_time](https://pgxn.org/dist/pg_extra_time/).

`pg_extra_time` provides small SQL functions and casts for date/time, interval, and range calculations that are awkward with PostgreSQL core functions alone.

```sql
CREATE EXTENSION pg_extra_time;
```

### Convert to Seconds (float)

Use `to_float(...)` or explicit casts to `float`/`double precision` for timestamps, timestamp ranges, and intervals. Timestamp values are measured from the Unix epoch; ranges and intervals are measured by duration in seconds.

```sql
SELECT to_float('1970-01-01 00:00:00+0'::timestamptz);  -- 0.0
SELECT to_float('1970-01-01 00:00:00+0'::timestamp);    -- 0.0
SELECT to_float('1 day 1 sec'::interval);                -- 86401.0
SELECT to_float('[2024-06-06 05:58:00,2024-06-06 06:00:10]'::tstzrange);  -- 130.0
SELECT to_float('[2024-06-06 05:58:00,2024-06-06 06:00:10]'::tsrange);    -- 130.0
```

Cast syntax also works:

```sql
SELECT '1970-01-01 01:03:01+00'::timestamptz::float;    -- 3181.00
SELECT '1 day 1 sec 200 ms'::interval::float;            -- 86401.2
SELECT '[epoch,1970-01-01T01:03:01+00]'::tstzrange::float;  -- 3181.00
```

### Convert to Days

Use `days(...)` when fractions matter and `whole_days(...)` when an integer number of complete days is needed.

```sql
SELECT days('[2024-06-06,2024-06-09)'::daterange);       -- 2
SELECT days('[2024-06-06,2024-06-08 06:00]'::tstzrange);  -- 3.25 (fractional days)
SELECT whole_days('[2024-06-06,2024-06-08 18:00]'::tstzrange);  -- 2
SELECT days('10 days 12 hours'::interval);                -- 10.5
SELECT whole_days('10 days 20 hours'::interval);          -- 10
```

`whole_days(interval)` handles negative intervals by applying the sign after flooring the absolute day count.

### Count Date Parts

`date_part_parts(part, subpart, timestamp with time zone, timezone)` returns how many smaller date parts exist in a larger date part at a given timestamp and timezone. This helps with calculations where a day is not always 24 hours because of DST.

```sql
SELECT date_part_parts('month', 'days', '2024-02-12'::timestamptz, 'UTC');  -- 29
SELECT date_part_parts('year', 'days', '2024-08-23'::timestamptz, 'UTC');   -- 366
```

### Build And Split Ranges

Use `make_tstzrange` or `make_tsrange` to build ranges from a timestamp and interval, including negative intervals.

```sql
SELECT make_tstzrange('2024-01-05 00:00+00'::timestamptz, '-4 days'::interval);
SELECT make_tsrange('2024-01-01 00:00'::timestamp, '4 days'::interval, '[)');
```

`each_subperiod(tstzrange, interval, round_remainder integer DEFAULT 0)` splits a timestamp range into interval-sized chunks. The remainder policy is: `1` rounds up to a full chunk, `0` keeps a partial final chunk, and `-1` discards the remainder.

```sql
SELECT *
FROM each_subperiod(
  '[2023-01-01,2023-04-02)'::tstzrange,
  '1 month'::interval,
  0
);
```

### Extract And Remainder Intervals

`to_interval(tstzrange)` extracts an interval from a timestamp range using month, day, and microsecond units. `to_interval(tstzrange, interval[])` accepts explicit units in greatest-first order and rounds down by discarding the remainder.

```sql
SELECT to_interval('[2024-01-01,2024-01-05]'::tstzrange);  -- 4 days
SELECT to_interval(
  '[2024-01-01,2024-04-13 01:10]'::tstzrange,
  ARRAY['1 mon'::interval, '1 day'::interval, '1 hour'::interval]
);
```

Use `%` or `modulo(...)` when the remainder matters.

```sql
SELECT '10 seconds 100 milliseconds'::interval % '3 seconds'::interval;
SELECT '[2024-01-01,2024-01-10)'::tstzrange % '4 days'::interval;
```

### Caveats

`to_float(tstzrange)` and `to_float(tsrange)` return positive or negative infinity for unbounded ranges and `0` for empty ranges. Integer casts are intentionally not provided; use `whole_days(...)` when you need integer days. Deprecated aliases such as `extract_days(interval)` and `extract_interval(tstzrange, interval[])` remain for compatibility, but upstream recommends `whole_days(...)` and `to_interval(...)` instead.

### Reference

Common public functions:

| Function | Use |
|----------|-----|
| `current_timezone()` | Return the active `pg_timezone_names` row |
| `date_part_parts(...)` | Count smaller date parts inside larger date parts |
| `days(...)` | Fractional or integer day count, depending on input type |
| `whole_days(...)` | Whole days from intervals or timestamp ranges |
| `to_float(...)` | Seconds from timestamps, timestamp ranges, or intervals |
| `to_interval(...)` | Interval extracted from a `tstzrange` |
| `make_tsrange(...)` / `make_tstzrange(...)` | Build ranges from timestamp plus interval |
| `each_subperiod(...)` | Split a `tstzrange` into subranges |
| `modulo(...)` / `%` | Remainder after dividing intervals or ranges |
