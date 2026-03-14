---
title: "safeupdate"
linkTitle: "safeupdate"
description: "Require criteria for UPDATE and DELETE"
weight: 5820
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/eradman/pg-safeupdate">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">eradman/pg-safeupdate</div>
    <div class="ext-card__desc">https://github.com/eradman/pg-safeupdate</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-safeupdate-1.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-safeupdate-1.5.tar.gz</div>
    <div class="ext-card__desc">pg-safeupdate-1.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`safeupdate`**](/ext/e/safeupdate) | `1.5` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5820  | [**`safeupdate`**](/ext/e/safeupdate) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_readonly`](/ext/e/pg_readonly) [`pg_upless`](/ext/e/pg_upless) [`pg_savior`](/ext/e/pg_savior) [`pg_permissions`](/ext/e/pg_permissions) [`pgaudit`](/ext/e/pgaudit) [`set_user`](/ext/e/set_user) [`login_hook`](/ext/e/login_hook) [`noset`](/ext/e/noset) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `safeupdate` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `safeupdate_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-safeupdate` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 2 |
| el8.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 3 | AVAIL PGDG 1.5 3 |
| el9.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 3 | AVAIL PGDG 1.5 2 |
| el9.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 2 | AVAIL PGDG 1.5 3 | AVAIL PGDG 1.5 3 |
| el10.x86_64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| el10.aarch64 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 | AVAIL PGDG 1.5 1 |
| d12.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d12.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d13.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| d13.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u22.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u22.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u24.x86_64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
| u24.aarch64 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 | AVAIL PIGSTY 1.5 1 |
@ el8.x86_64 18 safeupdate_18 safeupdate_18-1.5-2PGDG.rhel8.x86_64.rpm pgdg 1.5 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/safeupdate_18-1.5-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 safeupdate_18 safeupdate_18-1.5-2PGDG.rhel8.aarch64.rpm pgdg 1.5 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/safeupdate_18-1.5-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 safeupdate_18 safeupdate_18-1.5-2PGDG.rhel9.x86_64.rpm pgdg 1.5 12.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/safeupdate_18-1.5-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 safeupdate_18 safeupdate_18-1.5-2PGDG.rhel9.aarch64.rpm pgdg 1.5 12.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/safeupdate_18-1.5-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 safeupdate_18 safeupdate_18-1.5-2PGDG.rhel10.x86_64.rpm pgdg 1.5 13.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/safeupdate_18-1.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 safeupdate_18 safeupdate_18-1.5-2PGDG.rhel10.aarch64.rpm pgdg 1.5 13.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/safeupdate_18-1.5-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 9.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-safeupdate postgresql-18-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 9.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-18-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb
@ el8.x86_64 17 safeupdate_17 safeupdate_17-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/safeupdate_17-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 safeupdate_17 safeupdate_17-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/safeupdate_17-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 safeupdate_17 safeupdate_17-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 12.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/safeupdate_17-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 safeupdate_17 safeupdate_17-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 12.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/safeupdate_17-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 safeupdate_17 safeupdate_17-1.5-2PGDG.rhel10.x86_64.rpm pgdg 1.5 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/safeupdate_17-1.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 safeupdate_17 safeupdate_17-1.5-2PGDG.rhel10.aarch64.rpm pgdg 1.5 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/safeupdate_17-1.5-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 9.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-safeupdate postgresql-17-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 9.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-17-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb
@ el8.x86_64 16 safeupdate_16 safeupdate_16-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/safeupdate_16-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 safeupdate_16 safeupdate_16-1.4.2-2PGDG.rhel8.x86_64.rpm pgdg 1.4.2 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/safeupdate_16-1.4.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 safeupdate_16 safeupdate_16-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/safeupdate_16-1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 safeupdate_16 safeupdate_16-1.4.2-2PGDG.rhel8.aarch64.rpm pgdg 1.4.2 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/safeupdate_16-1.4.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 safeupdate_16 safeupdate_16-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/safeupdate_16-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 safeupdate_16 safeupdate_16-1.4.2-2PGDG.rhel9.x86_64.rpm pgdg 1.4.2 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/safeupdate_16-1.4.2-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 safeupdate_16 safeupdate_16-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 12.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/safeupdate_16-1.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 safeupdate_16 safeupdate_16-1.4.2-2PGDG.rhel9.aarch64.rpm pgdg 1.4.2 12.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/safeupdate_16-1.4.2-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 safeupdate_16 safeupdate_16-1.5-2PGDG.rhel10.x86_64.rpm pgdg 1.5 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/safeupdate_16-1.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 safeupdate_16 safeupdate_16-1.5-2PGDG.rhel10.aarch64.rpm pgdg 1.5 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/safeupdate_16-1.5-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 9.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-safeupdate postgresql-16-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-16-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb
@ el8.x86_64 15 safeupdate_15 safeupdate_15-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/safeupdate_15-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 safeupdate_15 safeupdate_15-1.4-1.rhel8.x86_64.rpm pgdg 1.4 17.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/safeupdate_15-1.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 safeupdate_15 safeupdate_15-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/safeupdate_15-1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 safeupdate_15 safeupdate_15-1.4.2-1.rhel8.aarch64.rpm pgdg 1.4.2 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/safeupdate_15-1.4.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 safeupdate_15 safeupdate_15-1.4-1.rhel8.aarch64.rpm pgdg 1.4 17.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/safeupdate_15-1.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 safeupdate_15 safeupdate_15-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 12.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/safeupdate_15-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 safeupdate_15 safeupdate_15-1.4.2-1.rhel9.x86_64.rpm pgdg 1.4.2 12.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/safeupdate_15-1.4.2-1.rhel9.x86_64.rpm
@ el9.x86_64 15 safeupdate_15 safeupdate_15-1.4-1.rhel9.x86_64.rpm pgdg 1.4 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/safeupdate_15-1.4-1.rhel9.x86_64.rpm
@ el9.aarch64 15 safeupdate_15 safeupdate_15-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 12.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/safeupdate_15-1.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 safeupdate_15 safeupdate_15-1.4.2-1.rhel9.aarch64.rpm pgdg 1.4.2 12.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/safeupdate_15-1.4.2-1.rhel9.aarch64.rpm
@ el9.aarch64 15 safeupdate_15 safeupdate_15-1.4-1.rhel9.aarch64.rpm pgdg 1.4 17.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/safeupdate_15-1.4-1.rhel9.aarch64.rpm
@ el10.x86_64 15 safeupdate_15 safeupdate_15-1.5-2PGDG.rhel10.x86_64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/safeupdate_15-1.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 safeupdate_15 safeupdate_15-1.5-2PGDG.rhel10.aarch64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/safeupdate_15-1.5-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 9.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-safeupdate postgresql-15-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-15-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb
@ el8.x86_64 14 safeupdate_14 safeupdate_14-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/safeupdate_14-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 safeupdate_14 safeupdate_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/safeupdate_14-1.4-1.rhel8.x86_64.rpm
@ el8.aarch64 14 safeupdate_14 safeupdate_14-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/safeupdate_14-1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 safeupdate_14 safeupdate_14-1.4.2-1.rhel8.aarch64.rpm pgdg 1.4.2 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/safeupdate_14-1.4.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 safeupdate_14 safeupdate_14-1.4-1.rhel8.aarch64.rpm pgdg 1.4 17.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/safeupdate_14-1.4-1.rhel8.aarch64.rpm
@ el9.x86_64 14 safeupdate_14 safeupdate_14-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 12.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/safeupdate_14-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 safeupdate_14 safeupdate_14-1.4.2-1.rhel9.x86_64.rpm pgdg 1.4.2 12.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/safeupdate_14-1.4.2-1.rhel9.x86_64.rpm
@ el9.aarch64 14 safeupdate_14 safeupdate_14-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 12.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/safeupdate_14-1.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 safeupdate_14 safeupdate_14-1.4.2-1.rhel9.aarch64.rpm pgdg 1.4.2 12.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/safeupdate_14-1.4.2-1.rhel9.aarch64.rpm
@ el9.aarch64 14 safeupdate_14 safeupdate_14-1.4-1.rhel9.aarch64.rpm pgdg 1.4 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/safeupdate_14-1.4-1.rhel9.aarch64.rpm
@ el10.x86_64 14 safeupdate_14 safeupdate_14-1.5-2PGDG.rhel10.x86_64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/safeupdate_14-1.5-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 safeupdate_14 safeupdate_14-1.5-2PGDG.rhel10.aarch64.rpm pgdg 1.5 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/safeupdate_14-1.5-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb pigsty 1.5 8.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb pigsty 1.5 8.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb pigsty 1.5 9.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb pigsty 1.5 9.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-safeupdate postgresql-14-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb pigsty 1.5 8.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-safeupdate/postgresql-14-pg-safeupdate_1.5-2PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `safeupdate` using `pig build`:

```bash
pig build pkg safeupdate         # build DEB packages
```


## Install

You can install `safeupdate` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install safeupdate;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y safeupdate -v 18  # PG 18
pig ext install -y safeupdate -v 17  # PG 17
pig ext install -y safeupdate -v 16  # PG 16
pig ext install -y safeupdate -v 15  # PG 15
pig ext install -y safeupdate -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y safeupdate_18       # PG 18
dnf install -y safeupdate_17       # PG 17
dnf install -y safeupdate_16       # PG 16
dnf install -y safeupdate_15       # PG 15
dnf install -y safeupdate_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-safeupdate   # PG 18
apt install -y postgresql-17-pg-safeupdate   # PG 17
apt install -y postgresql-16-pg-safeupdate   # PG 16
apt install -y postgresql-15-pg-safeupdate   # PG 15
apt install -y postgresql-14-pg-safeupdate   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'safeupdate';
```





## Usage

> [safeupdate: Require criteria for UPDATE and DELETE](https://github.com/eradman/pg-safeupdate)

The `safeupdate` extension prevents accidental mass data changes by raising an error whenever `UPDATE` or `DELETE` statements are executed without a `WHERE` clause.

### Activation

```sql
-- Per-session
LOAD 'safeupdate';

-- Per-database (persistent)
ALTER DATABASE mydb SET session_preload_libraries = 'safeupdate';

-- Global (all databases, requires restart)
-- shared_preload_libraries = 'safeupdate'   -- in postgresql.conf
```

### Behavior

```sql
-- Blocked: UPDATE without WHERE
UPDATE rack SET fan_speed = 70;
-- ERROR: UPDATE requires a WHERE clause

-- Blocked: DELETE without WHERE
DELETE FROM rack;
-- ERROR: DELETE requires a WHERE clause

-- Allowed: with WHERE clause
UPDATE rack SET fan_speed = 90 WHERE fan_speed = 70;

-- Workaround: explicit always-true condition
UPDATE rack SET fan_speed = 90 WHERE 1 = 1;
```

### Administrative Override

```sql
-- Temporarily disable protection in current session
SET safeupdate.enabled = 0;
```

CTE-based modifications without WHERE conditions are also blocked. The extension is particularly useful with PostgREST or other systems that provide direct write access to the database.
