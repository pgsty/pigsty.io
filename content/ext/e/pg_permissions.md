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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_permissions-1.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_permissions-1.6.tar.gz</div>
    <div class="ext-card__desc">pg_permissions-1.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_permissions`**](/ext/e/pg_permissions) | `1.6` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5140  | [**`pg_permissions`**](/ext/e/pg_permissions) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`set_user`](/ext/e/set_user) [`pg_roast`](/ext/e/pg_roast) [`pg_readonly`](/ext/e/pg_readonly) [`pgaudit`](/ext/e/pgaudit) [`pg_command_fw`](/ext/e/pg_command_fw) [`acl`](/ext/e/acl) [`pg_auditor`](/ext/e/pg_auditor) [`pg_snakeoil`](/ext/e/pg_snakeoil) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG RPM SQL 1.3.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6` | {{< pgvers "19,18,17,16,15" >}} | `pg_permissions` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.1` | {{< pgvers "19,18,17,16,15" >}} | `pg_permissions_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.4.1` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-pg-permissions` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 1.4.1 4 | AVAIL PGDG 1.4.1 5 | AVAIL PGDG 1.4.1 7 | AVAIL PGDG 1.4.1 7 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 1.4.1 4 | AVAIL PGDG 1.4.1 5 | AVAIL PGDG 1.4.1 7 | AVAIL PGDG 1.4.1 7 |
| el9.x86_64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 |
| el9.aarch64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 |
| el10.x86_64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 | AVAIL PGDG 1.4.1 2 |
| el10.aarch64 | AVAIL PGDG 1.4.1 1 | AVAIL PGDG 1.4.1 6 | AVAIL PGDG 1.4.1 7 | AVAIL PGDG 1.4.1 7 | AVAIL PGDG 1.4.1 7 |
| d12.x86_64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| d12.aarch64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| d13.x86_64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| d13.aarch64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| u22.x86_64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| u22.aarch64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| u24.x86_64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| u24.aarch64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| u26.x86_64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
| u26.aarch64 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 | AVAIL PGDG 1.4.1 3 |
@ el9.x86_64 19 pg_permissions_19 pg_permissions_19-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.6KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pg_permissions_19-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.aarch64 19 pg_permissions_19 pg_permissions_19-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.5KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pg_permissions_19-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el10.x86_64 19 pg_permissions_19 pg_permissions_19-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pg_permissions_19-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.aarch64 19 pg_permissions_19 pg_permissions_19-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pg_permissions_19-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ d12.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d13.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u24.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u26.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 19 postgresql-19-pg-permissions postgresql-19-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-19-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ el8.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_permissions_18-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_permissions_18-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_permissions_18-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_permissions_18-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_permissions_18-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_permissions_18-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_permissions_18-1.4-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_permissions_18-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_permissions_18-1.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_permissions_18-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_permissions_18-1.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_permissions_18-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.x86_64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_permissions_18-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_permissions_18-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-4PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_permissions_18-1.4.1-4PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_permissions_18-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_permissions_18-1.4.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_permissions_18-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_permissions_18 pg_permissions_18-1.4-2PGDG.rhel10.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_permissions_18-1.4-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-pg-permissions postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-18-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_permissions_17-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_permissions_17-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_permissions_17-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pg_permissions_17 pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_permissions_17-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_permissions_17-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_permissions_17-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_permissions_17-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_permissions_17 pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_permissions_17-1.3-2PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_permissions_17-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_permissions_17-1.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_permissions_17-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_permissions_17-1.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_permissions_17-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.x86_64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_permissions_17-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-4PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.4.1-4PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_permissions_17-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.4.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.4-1PGDG.rhel10.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.4-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_permissions_17 pg_permissions_17-1.3-2PGDG.rhel10.noarch.rpm pgdg 1.3 13.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_permissions_17-1.3-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u24.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-pg-permissions postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-17-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_permissions_16-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pg_permissions_16 pg_permissions_16-1.1-3.rhel8.noarch.rpm pgdg 1.1 12.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_permissions_16-1.1-3.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_permissions_16-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_permissions_16 pg_permissions_16-1.1-3.rhel8.noarch.rpm pgdg 1.1 12.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_permissions_16-1.1-3.rhel8.noarch.rpm
@ el9.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_permissions_16-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_permissions_16-1.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_permissions_16-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_permissions_16-1.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_permissions_16-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.x86_64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_permissions_16-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-4PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.4.1-4PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_permissions_16-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.4.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.4-1PGDG.rhel10.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.4-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_permissions_16 pg_permissions_16-1.3-2PGDG.rhel10.noarch.rpm pgdg 1.3 13.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_permissions_16-1.3-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u24.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-pg-permissions postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-16-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_permissions_15-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pg_permissions_15 pg_permissions_15-1.1-2.rhel8.noarch.rpm pgdg 1.1 12.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_permissions_15-1.1-2.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.4.1-4PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGSTY.el8.noarch.rpm pigsty 1.4.1 18.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_permissions_15-1.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.4.1 14.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.4.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.4-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm pgdg 1.3 13.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.3-2PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm pgdg 1.3 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_permissions_15 pg_permissions_15-1.1-2.rhel8.noarch.rpm pgdg 1.1 12.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_permissions_15-1.1-2.rhel8.noarch.rpm
@ el9.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_permissions_15-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_permissions_15-1.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel9.9.noarch.rpm pgdg 1.4.1 13.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_permissions_15-1.4.1-4PGDG.rhel9.9.noarch.rpm
@ el9.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGSTY.el9.noarch.rpm pigsty 1.4.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_permissions_15-1.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_permissions_15-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.x86_64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_permissions_15-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel10.3.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.4.1-4PGDG.rhel10.3.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-4PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.4.1-4PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGSTY.el10.noarch.rpm pigsty 1.4.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_permissions_15-1.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.4.1 13.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.4.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4-2PGDG.rhel10.2.noarch.rpm pgdg 1.4 13.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.4-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.4-1PGDG.rhel10.noarch.rpm pgdg 1.4 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.4-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_permissions_15 pg_permissions_15-1.3-2PGDG.rhel10.noarch.rpm pgdg 1.3 13.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_permissions_15-1.3-2PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg12+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg12+2_all.deb
@ d12.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg12+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg12+1_all.deb
@ d13.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg13+2_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg13+2_all.deb
@ d13.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg13+1_all.deb pgdg 1.4.1 11.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb pgdg 1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg13+1_all.deb
@ u22.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+2_all.deb
@ u22.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg22.04+1_all.deb
@ u24.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+2_all.deb
@ u24.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg24.04+1_all.deb
@ u26.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.x86_64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+2_all.deb
@ u26.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb pgdg 1.4.1 10.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4.1-1.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-pg-permissions postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb pgdg 1.4 8.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-permissions/postgresql-15-pg-permissions_1.4-2.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_permissions` using `pig build`:

```bash
pig build pkg pg_permissions         # build RPM / DEB packages
```


## Install

You can install `pg_permissions` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_permissions;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_permissions -v 19  # PG 19
pig ext install -y pg_permissions -v 18  # PG 18
pig ext install -y pg_permissions -v 17  # PG 17
pig ext install -y pg_permissions -v 16  # PG 16
pig ext install -y pg_permissions -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_permissions_19       # PG 19
dnf install -y pg_permissions_18       # PG 18
dnf install -y pg_permissions_17       # PG 17
dnf install -y pg_permissions_16       # PG 16
dnf install -y pg_permissions_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-permissions   # PG 19
apt install -y postgresql-18-pg-permissions   # PG 18
apt install -y postgresql-17-pg-permissions   # PG 17
apt install -y postgresql-16-pg-permissions   # PG 16
apt install -y postgresql-15-pg-permissions   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION pg_permissions;
```

## Usage

Sources:

- [README.md](https://github.com/cybertec-postgresql/pg_permissions/blob/REL_1_6/README.md)
- [pg_permissions.control](https://github.com/cybertec-postgresql/pg_permissions/blob/REL_1_6/pg_permissions.control)
- [pg_permissions--1.5--1.6.sql](https://github.com/cybertec-postgresql/pg_permissions/blob/REL_1_6/pg_permissions--1.5--1.6.sql)

`pg_permissions` compares actual privileges with a desired baseline and can generate or apply corrective grants. Version 1.6 requires PostgreSQL 15 or later. It is pure SQL, requires no preload, and is not relocatable; choose the installation schema initially. The installer needs CREATE privileges there.

### Define and Inspect a Baseline

The application role and schema in this example must already exist:

```sql
CREATE EXTENSION pg_permissions SCHEMA public;
INSERT INTO public.permission_target
  (role_name, permissions, object_type, schema_name)
VALUES ('appuser', '{SELECT,INSERT,UPDATE,DELETE}', 'TABLE', 'appschema'),
       ('appuser', '{USAGE}', 'SCHEMA', 'appschema');
SELECT * FROM public.permission_diffs();
SELECT * FROM public.permission_diff_summary ORDER BY objects DESC;
SELECT public.permission_apply();
```

A missing flag of true means a required privilege is absent; false means an extra privilege. A NULL object name covers all objects of the specified type in that schema. Audit scope is limited to targeted objects, managed roles and roles inheriting from them. Use `all_permissions` for a broader review. Superusers are omitted because they implicitly hold all privileges.

### Review Before Applying

`permission_fix_sql()` returns corrective SQL. `permission_apply()` defaults to a dry run; `permission_apply(false)` executes it using the caller's privileges. The writable `granted` column on permission views also executes GRANT or REVOKE. Restrict both baseline writes and permission-changing access.

The object views cover databases, schemas, tables, views, columns, functions and sequences. Their `source` column distinguishes ownership, direct grants, PUBLIC and inherited-role privileges. `PUBLIC` can be an explicit target grantee. `permission_target_snapshot(role, schema)` adopts current grants as the baseline; this changes the desired state and should be deliberate.

`default_acl_target`, `default_acl_permissions` and `default_acl_diffs()` separately handle ALTER DEFAULT PRIVILEGES. A default privilege affects future objects; it does not repair existing grants. Baseline tables are readable by PUBLIC but writable only by the extension owner and explicitly authorized roles. `role_dependencies()` inspects dependencies; `role_drop()` can reassign ownership and drop roles and warrants a separate review.

### Upgrade Boundary

Follow the version-by-version update scripts. For an installed 1.4 database:

```sql
ALTER EXTENSION pg_permissions UPDATE TO '1.5';
ALTER EXTENSION pg_permissions UPDATE TO '1.6';
```

Version 1.6 restores the missing 1.2-to-1.3 path. Its 1.5-to-1.6 migration rewrites the baseline: empty permission lists are removed, COLUMN entries without a column become table-level entries, and duplicates are merged. Back up and review the desired state before upgrading. MAINTAIN privileges are rejected before PostgreSQL 17.
