---
title: "pg_auth_mon"
linkTitle: "pg_auth_mon"
description: "monitor connection attempts per user"
weight: 7150
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RafiaSabih/pg_auth_mon">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RafiaSabih/pg_auth_mon</div>
    <div class="ext-card__desc">https://github.com/RafiaSabih/pg_auth_mon</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_auth_mon-3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_auth_mon-3.0.tar.gz</div>
    <div class="ext-card__desc">pg_auth_mon-3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_auth_mon`**](/ext/e/pg_auth_mon) | `3.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7150  | [**`pg_auth_mon`**](/ext/e/pg_auth_mon) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`pgaudit`](/ext/e/pgaudit) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`login_hook`](/ext/e/login_hook) [`auth_delay`](/ext/e/auth_delay) [`credcheck`](/ext/e/credcheck) [`logerrors`](/ext/e/logerrors) [`set_user`](/ext/e/set_user) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_auth_mon` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_auth_mon_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-auth-mon` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 2.0 1 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 |
| el8.aarch64 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 2.0 1 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 |
| el9.x86_64 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 2.0 1 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 1 |
| el9.aarch64 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 2.0 1 | AVAIL PGDG 2.0 2 | AVAIL PGDG 2.0 2 |
| el10.x86_64 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 |
| el10.aarch64 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 | AVAIL PGDG 3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 | AVAIL PIGSTY 3.0 1 |
@ el8.x86_64 18 pg_auth_mon_18 pg_auth_mon_18-3.0-3PGDG.rhel8.x86_64.rpm pgdg 3.0 16.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_auth_mon_18-3.0-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_auth_mon_18 pg_auth_mon_18-3.0-3PGDG.rhel8.aarch64.rpm pgdg 3.0 17.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_auth_mon_18-3.0-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_auth_mon_18 pg_auth_mon_18-3.0-3PGDG.rhel9.x86_64.rpm pgdg 3.0 16.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_auth_mon_18-3.0-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_auth_mon_18 pg_auth_mon_18-3.0-3PGDG.rhel9.aarch64.rpm pgdg 3.0 16.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_auth_mon_18-3.0-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_auth_mon_18 pg_auth_mon_18-3.0-3PGDG.rhel10.x86_64.rpm pgdg 3.0 17.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_auth_mon_18-3.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_auth_mon_18 pg_auth_mon_18-3.0-3PGDG.rhel10.aarch64.rpm pgdg 3.0 17.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_auth_mon_18-3.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb pigsty 3.0 16.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb pigsty 3.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb pigsty 3.0 17.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb pigsty 3.0 17.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb pigsty 3.0 17.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-auth-mon postgresql-18-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb pigsty 3.0 17.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-18-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_auth_mon_17 pg_auth_mon_17-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 16.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_auth_mon_17-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_auth_mon_17 pg_auth_mon_17-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 16.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_auth_mon_17-3.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_auth_mon_17 pg_auth_mon_17-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 16.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_auth_mon_17-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_auth_mon_17 pg_auth_mon_17-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 16.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_auth_mon_17-3.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_auth_mon_17 pg_auth_mon_17-3.0-3PGDG.rhel10.x86_64.rpm pgdg 3.0 17.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_auth_mon_17-3.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_auth_mon_17 pg_auth_mon_17-3.0-3PGDG.rhel10.aarch64.rpm pgdg 3.0 17.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_auth_mon_17-3.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb pigsty 3.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb pigsty 3.0 16.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb pigsty 3.0 20.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb pigsty 3.0 20.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb pigsty 3.0 17.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-auth-mon postgresql-17-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb pigsty 3.0 17.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-17-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_auth_mon_16 pg_auth_mon_16-2.0-1.rhel8.x86_64.rpm pgdg 2.0 16.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_auth_mon_16-2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_auth_mon_16 pg_auth_mon_16-2.0-1.rhel8.aarch64.rpm pgdg 2.0 16.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_auth_mon_16-2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_auth_mon_16 pg_auth_mon_16-2.0-1.rhel9.x86_64.rpm pgdg 2.0 16.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_auth_mon_16-2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_auth_mon_16 pg_auth_mon_16-2.0-1.rhel9.aarch64.rpm pgdg 2.0 16.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_auth_mon_16-2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_auth_mon_16 pg_auth_mon_16-3.0-3PGDG.rhel10.x86_64.rpm pgdg 3.0 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_auth_mon_16-3.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_auth_mon_16 pg_auth_mon_16-3.0-3PGDG.rhel10.aarch64.rpm pgdg 3.0 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_auth_mon_16-3.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb pigsty 3.0 16.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb pigsty 3.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb pigsty 3.0 20.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb pigsty 3.0 20.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb pigsty 3.0 17.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-auth-mon postgresql-16-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb pigsty 3.0 17.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-16-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_auth_mon_15 pg_auth_mon_15-2.0-1.rhel8.x86_64.rpm pgdg 2.0 16.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_auth_mon_15-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_auth_mon_15 pg_auth_mon_15-1.0-1.rhel8.x86_64.rpm pgdg 1.0 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_auth_mon_15-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_auth_mon_15 pg_auth_mon_15-2.0-1.rhel8.aarch64.rpm pgdg 2.0 16.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_auth_mon_15-2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_auth_mon_15 pg_auth_mon_15-1.0-1.rhel8.aarch64.rpm pgdg 1.0 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_auth_mon_15-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_auth_mon_15 pg_auth_mon_15-2.0-1.rhel9.x86_64.rpm pgdg 2.0 16.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_auth_mon_15-2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_auth_mon_15 pg_auth_mon_15-1.0-1.rhel9.x86_64.rpm pgdg 1.0 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_auth_mon_15-1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_auth_mon_15 pg_auth_mon_15-2.0-1.rhel9.aarch64.rpm pgdg 2.0 16.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_auth_mon_15-2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_auth_mon_15 pg_auth_mon_15-1.0-1.rhel9.aarch64.rpm pgdg 1.0 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_auth_mon_15-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_auth_mon_15 pg_auth_mon_15-3.0-3PGDG.rhel10.x86_64.rpm pgdg 3.0 17.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_auth_mon_15-3.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_auth_mon_15 pg_auth_mon_15-3.0-3PGDG.rhel10.aarch64.rpm pgdg 3.0 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_auth_mon_15-3.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb pigsty 3.0 16.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb pigsty 3.0 16.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb pigsty 3.0 16.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb pigsty 3.0 20.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb pigsty 3.0 20.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb pigsty 3.0 17.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-auth-mon postgresql-15-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb pigsty 3.0 17.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-15-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_auth_mon_14 pg_auth_mon_14-2.0-1.rhel8.x86_64.rpm pgdg 2.0 16.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auth_mon_14-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_auth_mon_14 pg_auth_mon_14-1.0-1.rhel8.x86_64.rpm pgdg 1.0 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_auth_mon_14-1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_auth_mon_14 pg_auth_mon_14-2.0-1.rhel8.aarch64.rpm pgdg 2.0 16.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_auth_mon_14-2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_auth_mon_14 pg_auth_mon_14-1.0-1.rhel8.aarch64.rpm pgdg 1.0 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_auth_mon_14-1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_auth_mon_14 pg_auth_mon_14-2.0-1.rhel9.x86_64.rpm pgdg 2.0 16.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_auth_mon_14-2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_auth_mon_14 pg_auth_mon_14-2.0-1.rhel9.aarch64.rpm pgdg 2.0 16.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_auth_mon_14-2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_auth_mon_14 pg_auth_mon_14-1.0-1.rhel9.aarch64.rpm pgdg 1.0 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_auth_mon_14-1.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_auth_mon_14 pg_auth_mon_14-3.0-3PGDG.rhel10.x86_64.rpm pgdg 3.0 17.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_auth_mon_14-3.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_auth_mon_14 pg_auth_mon_14-3.0-3PGDG.rhel10.aarch64.rpm pgdg 3.0 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_auth_mon_14-3.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb pigsty 3.0 16.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb pigsty 3.0 16.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb pigsty 3.0 16.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb pigsty 3.0 20.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb pigsty 3.0 20.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb pigsty 3.0 17.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-auth-mon postgresql-14-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb pigsty 3.0 17.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-auth-mon/postgresql-14-pg-auth-mon_3.0-3PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_auth_mon` using `pig build`:

```bash
pig build pkg pg_auth_mon         # build DEB packages
```


## Install

You can install `pg_auth_mon` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_auth_mon;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_auth_mon -v 18  # PG 18
pig ext install -y pg_auth_mon -v 17  # PG 17
pig ext install -y pg_auth_mon -v 16  # PG 16
pig ext install -y pg_auth_mon -v 15  # PG 15
pig ext install -y pg_auth_mon -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_auth_mon_18       # PG 18
dnf install -y pg_auth_mon_17       # PG 17
dnf install -y pg_auth_mon_16       # PG 16
dnf install -y pg_auth_mon_15       # PG 15
dnf install -y pg_auth_mon_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-auth-mon   # PG 18
apt install -y postgresql-17-pg-auth-mon   # PG 17
apt install -y postgresql-16-pg-auth-mon   # PG 16
apt install -y postgresql-15-pg-auth-mon   # PG 15
apt install -y postgresql-14-pg-auth-mon   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_auth_mon';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_auth_mon;
```




## Usage

> [pg_auth_mon: Monitor authentication attempts](https://github.com/RafiaSabih/pg_auth_mon)

`pg_auth_mon` stores authentication attempt statistics per user, tracking successful and failed logins with timestamps.

```sql
CREATE EXTENSION pg_auth_mon;
```

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'pg_auth_mon'
```

Optional GUC:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_auth_mon.log_period` | `0` | Dump stats to Postgres log every N minutes (0=off) |

### Querying Authentication Stats

```sql
SELECT * FROM pg_auth_mon;
```

The `pg_auth_mon` view provides per-user information:

| Column | Description |
|--------|-------------|
| `uid` | User OID (0 for invalid/non-existing usernames) |
| `successful_auth_count` | Total number of successful logins |
| `last_successful_auth` | Timestamp of last successful login |
| `failed_auth_count` | Total number of failed authentications |
| `last_failed_auth` | Timestamp of last failed login |
| `hba_conflicts_count` | Count of HBA file conflicts |

All login attempts with invalid usernames are aggregated into a single row with OID 0.
