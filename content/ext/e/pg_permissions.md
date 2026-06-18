---
title: "pg_permissions"
linkTitle: "pg_permissions"
description: "view object permissions and compare them with the desired state"
weight: 5140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/pg_permissions">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/pg_permissions</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/pg_permissions</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_permissions-REL_1_3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_permissions-REL_1_3.tar.gz</div>
    <div class="ext-card__desc">pg_permissions-REL_1_3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_permissions`**](/ext/e/pg_permissions) | `1.4` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5140  | [**`pg_permissions`**](/ext/e/pg_permissions) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_readonly`](/ext/e/pg_readonly) [`pgaudit`](/ext/e/pgaudit) [`set_user`](/ext/e/set_user) [`pg_upless`](/ext/e/pg_upless) [`safeupdate`](/ext/e/safeupdate) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) [`credcheck`](/ext/e/credcheck) [`login_hook`](/ext/e/login_hook) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_permissions` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_permissions_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-permissions` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 4 | AVAIL PGDG 1.4 4 | AVAIL PGDG 1.4 4 |
| el8.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 4 | AVAIL PGDG 1.4 4 | AVAIL PGDG 1.4 4 |
| el9.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| el9.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| el10.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| el10.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| d12.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| d12.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| d13.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| d13.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 1 |
| u22.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| u22.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| u24.x86_64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| u24.aarch64 | AVAIL PGDG 1.4 1 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| u26.x86_64 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
| u26.aarch64 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 | AVAIL PGDG 1.4 2 |
@ el8.x86_64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_permissions_18-1.4-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_permissions_18-1.4-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_permissions_18-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_permissions_18-1.4-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_permissions_17 pg_permissions_17-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_permissions_17-1.4-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_permissions_17 pg_permissions_17-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_permissions_17-1.4-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 17 pg_permissions_17 pg_permissions_17-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_permissions_17-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.4-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.1-3.rhel8.noarch.rpm pgdg 1.1 12.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.1-3.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.1-3.rhel8.noarch.rpm pgdg 1.1 12.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.1-3.rhel8.noarch.rpm
@ el9.x86_64 16 pg_permissions_16 pg_permissions_16-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_permissions_16-1.4-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_permissions_16 pg_permissions_16-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_permissions_16-1.4-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 16 pg_permissions_16 pg_permissions_16-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_permissions_16-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.4-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.1-2.rhel8.noarch.rpm pgdg 1.1 12.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.1-2.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.1-2.rhel8.noarch.rpm pgdg 1.1 12.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.1-2.rhel8.noarch.rpm
@ el9.x86_64 15 pg_permissions_15 pg_permissions_15-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_permissions_15-1.4-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_permissions_15 pg_permissions_15-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_permissions_15-1.4-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 15 pg_permissions_15 pg_permissions_15-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_permissions_15-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.4-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_permissions_14 pg_permissions_14-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_permissions_14-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_permissions_14 pg_permissions_14-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_permissions_14-1.3-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_permissions_14 pg_permissions_14-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_permissions_14-1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pg_permissions_14 pg_permissions_14-1.1-2.rhel8.noarch.rpm pgdg 1.1 12.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_permissions_14-1.1-2.rhel8.noarch.rpm
@ el8.aarch64 14 pg_permissions_14 pg_permissions_14-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_permissions_14-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_permissions_14 pg_permissions_14-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_permissions_14-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_permissions_14 pg_permissions_14-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_permissions_14-1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_permissions_14 pg_permissions_14-1.1-2.rhel8.noarch.rpm pgdg 1.1 12.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_permissions_14-1.1-2.rhel8.noarch.rpm
@ el9.x86_64 14 pg_permissions_14 pg_permissions_14-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_permissions_14-1.4-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_permissions_14 pg_permissions_14-1.4-2PGDG.rhel9.8.noarch.rpm pgdg 1.4 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_permissions_14-1.4-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 14 pg_permissions_14 pg_permissions_14-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_permissions_14-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_permissions_14 pg_permissions_14-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_permissions_14-1.4-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb pigsty 1.3 7.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~noble_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~noble_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.x86_64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-pg-permissions postgresql-14-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb pigsty 1.3 7.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-permissions/postgresql-14-pg-permissions_1.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_permissions` using `pig build`:

```bash
pig build pkg pg_permissions         # build DEB packages
```


## Install

You can install `pg_permissions` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_permissions;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_permissions -v 18  # PG 18
pig ext install -y pg_permissions -v 17  # PG 17
pig ext install -y pg_permissions -v 16  # PG 16
pig ext install -y pg_permissions -v 15  # PG 15
pig ext install -y pg_permissions -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_permissions_18       # PG 18
dnf install -y pg_permissions_17       # PG 17
dnf install -y pg_permissions_16       # PG 16
dnf install -y pg_permissions_15       # PG 15
dnf install -y pg_permissions_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-permissions   # PG 18
apt install -y postgresql-17-pg-permissions   # PG 17
apt install -y postgresql-16-pg-permissions   # PG 16
apt install -y postgresql-15-pg-permissions   # PG 15
apt install -y postgresql-14-pg-permissions   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_permissions;
```




## Usage

> [pg_permissions: view object permissions and compare them with the desired state](https://github.com/cybertec-postgresql/pg_permissions)

pg_permissions lets you review actual permissions on database objects and compare them against a desired permission state.

### Define Desired Permissions

Insert entries into `permission_target` to describe what permissions should exist:

```sql
INSERT INTO permission_target (role_name, permissions, object_type, schema_name)
VALUES ('appuser', '{SELECT,INSERT,UPDATE,DELETE}', 'TABLE', 'appschema');

INSERT INTO permission_target (role_name, permissions, object_type, schema_name)
VALUES ('appuser', '{USAGE}', 'SCHEMA', 'appschema');

INSERT INTO permission_target (role_name, permissions, object_type, schema_name, object_name)
VALUES ('appuser', '{USAGE}', 'SEQUENCE', 'appschema', 'appseq');
```

Set `object_name` or `column_name` to NULL to apply to all objects of that type in the schema.

### Find Permission Differences

```sql
SELECT * FROM permission_diffs();
```

Returns rows where `missing = TRUE` (permission should exist but doesn't) or `missing = FALSE` (extra permission that shouldn't exist).

### Review Actual Permissions

Available views (all with the same column structure):

- `database_permissions` -- permissions on the current database
- `schema_permissions` -- permissions on schemas
- `table_permissions` -- permissions on tables
- `view_permissions` -- permissions on views
- `column_permissions` -- permissions on table/view columns
- `function_permissions` -- permissions on functions
- `sequence_permissions` -- permissions on sequences
- `all_permissions` -- UNION of all above

```sql
SELECT * FROM table_permissions WHERE role_name = 'appuser' AND schema_name = 'appschema';
```

### Grant/Revoke via Views

The `granted` column of the permission views is updatable -- updating it executes the appropriate `GRANT` or `REVOKE` command.

Note: superusers are not shown in the views (they automatically have all permissions).
