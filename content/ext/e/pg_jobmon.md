---
title: "pg_jobmon"
linkTitle: "pg_jobmon"
description: "Extension for logging and monitoring functions in PostgreSQL"
weight: 7160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/omniti-labs/pg_jobmon">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">omniti-labs/pg_jobmon</div>
    <div class="ext-card__desc">https://github.com/omniti-labs/pg_jobmon</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_jobmon-1.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_jobmon-1.4.1.tar.gz</div>
    <div class="ext-card__desc">pg_jobmon-1.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_jobmon`**](/ext/e/pg_jobmon) | `1.4.1` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7160  | [**`pg_jobmon`**](/ext/e/pg_jobmon) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`dblink`](/ext/e/dblink) [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pgagent`](/ext/e/pgagent) [`pg_background`](/ext/e/pg_background) [`logerrors`](/ext/e/logerrors) [`bgw_replstatus`](/ext/e/bgw_replstatus) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`pg_auth_mon`](/ext/e/pg_auth_mon) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_jobmon` | `dblink` |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_jobmon_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-jobmon` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| el8.aarch64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| el9.x86_64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| el9.aarch64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| el10.x86_64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| el10.aarch64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 | AVAIL PIGSTY 1.4.1 1 |
@ el8.x86_64 18 pg_jobmon_18 pg_jobmon_18-1.4.1-5PGDG.rhel8.noarch.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_jobmon_18-1.4.1-5PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_jobmon_18 pg_jobmon_18-1.4.1-5PGDG.rhel8.noarch.rpm pgdg 1.4.1 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_jobmon_18-1.4.1-5PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_jobmon_18 pg_jobmon_18-1.4.1-5PGDG.rhel9.noarch.rpm pgdg 1.4.1 29.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_jobmon_18-1.4.1-5PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_jobmon_18 pg_jobmon_18-1.4.1-5PGDG.rhel9.noarch.rpm pgdg 1.4.1 29.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_jobmon_18-1.4.1-5PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_jobmon_18 pg_jobmon_18-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_jobmon_18-1.4.1-5PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_jobmon_18 pg_jobmon_18-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_jobmon_18-1.4.1-5PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-jobmon postgresql-18-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-18-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_jobmon_17 pg_jobmon_17-1.4.1-4PGDG.rhel8.noarch.rpm pgdg 1.4.1 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_jobmon_17-1.4.1-4PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_jobmon_17 pg_jobmon_17-1.4.1-4PGDG.rhel8.noarch.rpm pgdg 1.4.1 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_jobmon_17-1.4.1-4PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_jobmon_17 pg_jobmon_17-1.4.1-4PGDG.rhel9.noarch.rpm pgdg 1.4.1 29.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_jobmon_17-1.4.1-4PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_jobmon_17 pg_jobmon_17-1.4.1-4PGDG.rhel9.noarch.rpm pgdg 1.4.1 29.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_jobmon_17-1.4.1-4PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_jobmon_17 pg_jobmon_17-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_jobmon_17-1.4.1-5PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_jobmon_17 pg_jobmon_17-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_jobmon_17-1.4.1-5PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-jobmon postgresql-17-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-17-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_jobmon_16 pg_jobmon_16-1.4.1-2.rhel8.noarch.rpm pgdg 1.4.1 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_jobmon_16-1.4.1-2.rhel8.noarch.rpm
@ el8.aarch64 16 pg_jobmon_16 pg_jobmon_16-1.4.1-2.rhel8.noarch.rpm pgdg 1.4.1 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_jobmon_16-1.4.1-2.rhel8.noarch.rpm
@ el9.x86_64 16 pg_jobmon_16 pg_jobmon_16-1.4.1-2.rhel9.noarch.rpm pgdg 1.4.1 29.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_jobmon_16-1.4.1-2.rhel9.noarch.rpm
@ el9.aarch64 16 pg_jobmon_16 pg_jobmon_16-1.4.1-2.rhel9.noarch.rpm pgdg 1.4.1 29.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_jobmon_16-1.4.1-2.rhel9.noarch.rpm
@ el10.x86_64 16 pg_jobmon_16 pg_jobmon_16-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_jobmon_16-1.4.1-5PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_jobmon_16 pg_jobmon_16-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_jobmon_16-1.4.1-5PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-jobmon postgresql-16-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-16-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_jobmon_15 pg_jobmon_15-1.4.1-1.rhel8.noarch.rpm pgdg 1.4.1 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_jobmon_15-1.4.1-1.rhel8.noarch.rpm
@ el8.aarch64 15 pg_jobmon_15 pg_jobmon_15-1.4.1-1.rhel8.noarch.rpm pgdg 1.4.1 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_jobmon_15-1.4.1-1.rhel8.noarch.rpm
@ el9.x86_64 15 pg_jobmon_15 pg_jobmon_15-1.4.1-1.rhel9.noarch.rpm pgdg 1.4.1 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_jobmon_15-1.4.1-1.rhel9.noarch.rpm
@ el9.aarch64 15 pg_jobmon_15 pg_jobmon_15-1.4.1-1.rhel9.noarch.rpm pgdg 1.4.1 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_jobmon_15-1.4.1-1.rhel9.noarch.rpm
@ el10.x86_64 15 pg_jobmon_15 pg_jobmon_15-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_jobmon_15-1.4.1-5PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_jobmon_15 pg_jobmon_15-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_jobmon_15-1.4.1-5PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-jobmon postgresql-15-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-15-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_jobmon_14 pg_jobmon_14-1.4.1-1.rhel8.noarch.rpm pgdg 1.4.1 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_jobmon_14-1.4.1-1.rhel8.noarch.rpm
@ el8.aarch64 14 pg_jobmon_14 pg_jobmon_14-1.4.1-1.rhel8.noarch.rpm pgdg 1.4.1 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_jobmon_14-1.4.1-1.rhel8.noarch.rpm
@ el9.x86_64 14 pg_jobmon_14 pg_jobmon_14-1.4.1-1.rhel9.noarch.rpm pgdg 1.4.1 29.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_jobmon_14-1.4.1-1.rhel9.noarch.rpm
@ el9.aarch64 14 pg_jobmon_14 pg_jobmon_14-1.4.1-1.rhel9.noarch.rpm pgdg 1.4.1 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_jobmon_14-1.4.1-1.rhel9.noarch.rpm
@ el10.x86_64 14 pg_jobmon_14 pg_jobmon_14-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_jobmon_14-1.4.1-5PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_jobmon_14 pg_jobmon_14-1.4.1-5PGDG.rhel10.noarch.rpm pgdg 1.4.1 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_jobmon_14-1.4.1-5PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb pigsty 1.4.1 26.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb pigsty 1.4.1 23.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb pigsty 1.4.1 23.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-jobmon postgresql-14-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb pigsty 1.4.1 18.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-jobmon/postgresql-14-pg-jobmon_1.4.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_jobmon` using `pig build`:

```bash
pig build pkg pg_jobmon         # build DEB packages
```


## Install

You can install `pg_jobmon` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_jobmon;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_jobmon -v 18  # PG 18
pig ext install -y pg_jobmon -v 17  # PG 17
pig ext install -y pg_jobmon -v 16  # PG 16
pig ext install -y pg_jobmon -v 15  # PG 15
pig ext install -y pg_jobmon -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_jobmon_18       # PG 18
dnf install -y pg_jobmon_17       # PG 17
dnf install -y pg_jobmon_16       # PG 16
dnf install -y pg_jobmon_15       # PG 15
dnf install -y pg_jobmon_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-jobmon   # PG 18
apt install -y postgresql-17-pg-jobmon   # PG 17
apt install -y postgresql-16-pg-jobmon   # PG 16
apt install -y postgresql-15-pg-jobmon   # PG 15
apt install -y postgresql-14-pg-jobmon   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_jobmon CASCADE;  -- requires: dblink
```




## Usage

> [pg_jobmon: Autonomous job logging and monitoring for PostgreSQL](https://github.com/omniti-labs/pg_jobmon)

`pg_jobmon` provides autonomous (non-transactional) logging for PostgreSQL transactions and functions. If a function fails, all log information written up to that point is preserved rather than rolled back.

```sql
CREATE SCHEMA jobmon;
CREATE EXTENSION pg_jobmon SCHEMA jobmon;
```

### Setup

The extension uses dblink to connect back to the same database (for non-transactional logging). Add credentials:

```sql
INSERT INTO jobmon.dblink_mapping_jobmon (username, pwd) VALUES ('rolename', 'rolepassword');
```

For non-standard ports:

```sql
INSERT INTO jobmon.dblink_mapping_jobmon (host, username, pwd, port)
VALUES ('localhost', 'rolename', 'rolepassword', '5999');
```

### Core Logging Functions

```sql
-- Start a new job
SELECT jobmon.add_job('My Job Name');

-- Add a step to the job
SELECT jobmon.add_step(job_id, 'Step description');

-- Update step status
SELECT jobmon.update_step(step_id, 'OK', 'Step completed successfully');
SELECT jobmon.update_step(step_id, 'WARNING', 'Something unexpected');

-- Close the job
SELECT jobmon.close_job(job_id);

-- Or fail the job
SELECT jobmon.fail_job(job_id);
```

### Monitoring Functions

```sql
-- Check for failed jobs
SELECT * FROM jobmon.check_job_status();

-- View job history
SELECT * FROM jobmon.job_log ORDER BY start_time DESC;

-- View step details
SELECT * FROM jobmon.job_detail WHERE job_id = 123;
```

The autonomous logging ensures that even if the parent transaction rolls back, the job log entries are preserved for troubleshooting.
