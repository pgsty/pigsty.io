---
title: "set_user"
linkTitle: "set_user"
description: "similar to SET ROLE but with added logging"
weight: 7370
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgaudit/set_user">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgaudit/set_user</div>
    <div class="ext-card__desc">https://github.com/pgaudit/set_user</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`set_user`**](/ext/e/set_user) | `4.2.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7370  | [**`set_user`**](/ext/e/set_user) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_permissions`](/ext/e/pg_permissions) [`login_hook`](/ext/e/login_hook) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pg_session_jwt`](/ext/e/pg_session_jwt) [`auth_delay`](/ext/e/auth_delay) [`pgaudit`](/ext/e/pgaudit) [`pg_roast`](/ext/e/pg_roast) [`pg_readonly`](/ext/e/pg_readonly) [`acl`](/ext/e/acl) [`pg_command_fw`](/ext/e/pg_command_fw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.0` | {{< pgvers "18,17,16,15,14" >}} | `set_user` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.0` | {{< pgvers "18,17,16,15,14" >}} | `set_user_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-set-user` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.1.0 1 | AVAIL PGDG 4.1.0 2 | AVAIL PGDG 4.1.0 3 | AVAIL PGDG 4.1.0 4 |
| el8.aarch64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.1.0 1 | AVAIL PGDG 4.1.0 2 | AVAIL PGDG 4.1.0 3 | AVAIL PGDG 4.1.0 4 |
| el9.x86_64 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 3 | AVAIL PGDG 4.2.0 4 | AVAIL PGDG 4.2.0 4 |
| el9.aarch64 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 3 | AVAIL PGDG 4.2.0 4 | AVAIL PGDG 4.2.0 5 |
| el10.x86_64 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 |
| el10.aarch64 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 | AVAIL PGDG 4.2.0 2 |
| d12.x86_64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| d12.aarch64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| d13.x86_64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| d13.aarch64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| u22.x86_64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| u22.aarch64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| u24.x86_64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| u24.aarch64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| u26.x86_64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
| u26.aarch64 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 | AVAIL PGDG 4.2.0 1 |
@ el8.x86_64 18 set_user_18 set_user_18-4.2.0-1PGDG.rhel8.x86_64.rpm pgdg 4.2.0 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/set_user_18-4.2.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 set_user_18 set_user_18-4.2.0-1PGDG.rhel8.aarch64.rpm pgdg 4.2.0 26.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/set_user_18-4.2.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 set_user_18 set_user_18-4.2.0-3PGDG.rhel9.8.x86_64.rpm pgdg 4.2.0 26.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/set_user_18-4.2.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 set_user_18 set_user_18-4.2.0-1PGDG.rhel9.x86_64.rpm pgdg 4.2.0 26.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/set_user_18-4.2.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 set_user_18 set_user_18-4.2.0-3PGDG.rhel9.8.aarch64.rpm pgdg 4.2.0 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/set_user_18-4.2.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 set_user_18 set_user_18-4.2.0-1PGDG.rhel9.aarch64.rpm pgdg 4.2.0 25.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/set_user_18-4.2.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 set_user_18 set_user_18-4.2.0-3PGDG.rhel10.2.x86_64.rpm pgdg 4.2.0 26.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/set_user_18-4.2.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 set_user_18 set_user_18-4.2.0-1PGDG.rhel10.x86_64.rpm pgdg 4.2.0 27.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/set_user_18-4.2.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 set_user_18 set_user_18-4.2.0-3PGDG.rhel10.2.aarch64.rpm pgdg 4.2.0 26.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/set_user_18-4.2.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 set_user_18 set_user_18-4.2.0-1PGDG.rhel10.aarch64.rpm pgdg 4.2.0 26.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/set_user_18-4.2.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg12+1_amd64.deb pgdg 4.2.0 35.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg12+1_arm64.deb pgdg 4.2.0 34.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg13+1_amd64.deb pgdg 4.2.0 35.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg13+1_arm64.deb pgdg 4.2.0 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg22.04+1_amd64.deb pgdg 4.2.0 35.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg22.04+1_arm64.deb pgdg 4.2.0 34.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg24.04+1_amd64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg24.04+1_arm64.deb pgdg 4.2.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg26.04+1_amd64.deb pgdg 4.2.0 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-set-user postgresql-18-set-user_4.2.0-1.pgdg26.04+1_arm64.deb pgdg 4.2.0 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-18-set-user_4.2.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 set_user_17 set_user_17-4.1.0-1PGDG.rhel8.x86_64.rpm pgdg 4.1.0 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/set_user_17-4.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 set_user_17 set_user_17-4.1.0-1PGDG.rhel8.aarch64.rpm pgdg 4.1.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/set_user_17-4.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 set_user_17 set_user_17-4.2.0-3PGDG.rhel9.8.x86_64.rpm pgdg 4.2.0 26.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/set_user_17-4.2.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 set_user_17 set_user_17-4.1.0-1PGDG.rhel9.x86_64.rpm pgdg 4.1.0 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/set_user_17-4.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 set_user_17 set_user_17-4.2.0-3PGDG.rhel9.8.aarch64.rpm pgdg 4.2.0 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/set_user_17-4.2.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 set_user_17 set_user_17-4.1.0-1PGDG.rhel9.aarch64.rpm pgdg 4.1.0 25.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/set_user_17-4.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 set_user_17 set_user_17-4.2.0-3PGDG.rhel10.2.x86_64.rpm pgdg 4.2.0 26.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/set_user_17-4.2.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 set_user_17 set_user_17-4.1.0-2PGDG.rhel10.x86_64.rpm pgdg 4.1.0 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/set_user_17-4.1.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 set_user_17 set_user_17-4.2.0-3PGDG.rhel10.2.aarch64.rpm pgdg 4.2.0 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/set_user_17-4.2.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 set_user_17 set_user_17-4.1.0-2PGDG.rhel10.aarch64.rpm pgdg 4.1.0 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/set_user_17-4.1.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg12+1_amd64.deb pgdg 4.2.0 35.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg12+1_arm64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg13+1_amd64.deb pgdg 4.2.0 35.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg13+1_arm64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg22.04+1_amd64.deb pgdg 4.2.0 39.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg22.04+1_arm64.deb pgdg 4.2.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg24.04+1_amd64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg24.04+1_arm64.deb pgdg 4.2.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg26.04+1_amd64.deb pgdg 4.2.0 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-set-user postgresql-17-set-user_4.2.0-1.pgdg26.04+1_arm64.deb pgdg 4.2.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-17-set-user_4.2.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 set_user_16 set_user_16-4.1.0-1PGDG.rhel8.x86_64.rpm pgdg 4.1.0 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/set_user_16-4.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 set_user_16 set_user_16-4.0.1-2.rhel8.1.x86_64.rpm pgdg 4.0.1 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/set_user_16-4.0.1-2.rhel8.1.x86_64.rpm
@ el8.aarch64 16 set_user_16 set_user_16-4.1.0-1PGDG.rhel8.aarch64.rpm pgdg 4.1.0 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/set_user_16-4.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 set_user_16 set_user_16-4.0.1-2.rhel8.1.aarch64.rpm pgdg 4.0.1 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/set_user_16-4.0.1-2.rhel8.1.aarch64.rpm
@ el9.x86_64 16 set_user_16 set_user_16-4.2.0-3PGDG.rhel9.8.x86_64.rpm pgdg 4.2.0 26.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/set_user_16-4.2.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 set_user_16 set_user_16-4.1.0-1PGDG.rhel9.x86_64.rpm pgdg 4.1.0 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/set_user_16-4.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 set_user_16 set_user_16-4.0.1-2.rhel9.1.x86_64.rpm pgdg 4.0.1 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/set_user_16-4.0.1-2.rhel9.1.x86_64.rpm
@ el9.aarch64 16 set_user_16 set_user_16-4.2.0-3PGDG.rhel9.8.aarch64.rpm pgdg 4.2.0 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/set_user_16-4.2.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 set_user_16 set_user_16-4.1.0-1PGDG.rhel9.aarch64.rpm pgdg 4.1.0 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/set_user_16-4.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 set_user_16 set_user_16-4.0.1-2.rhel9.1.aarch64.rpm pgdg 4.0.1 25.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/set_user_16-4.0.1-2.rhel9.1.aarch64.rpm
@ el10.x86_64 16 set_user_16 set_user_16-4.2.0-3PGDG.rhel10.2.x86_64.rpm pgdg 4.2.0 26.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/set_user_16-4.2.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 set_user_16 set_user_16-4.1.0-2PGDG.rhel10.x86_64.rpm pgdg 4.1.0 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/set_user_16-4.1.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 set_user_16 set_user_16-4.2.0-3PGDG.rhel10.2.aarch64.rpm pgdg 4.2.0 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/set_user_16-4.2.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 set_user_16 set_user_16-4.1.0-2PGDG.rhel10.aarch64.rpm pgdg 4.1.0 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/set_user_16-4.1.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg12+1_amd64.deb pgdg 4.2.0 35.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg12+1_arm64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg13+1_amd64.deb pgdg 4.2.0 35.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg13+1_arm64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg22.04+1_amd64.deb pgdg 4.2.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg22.04+1_arm64.deb pgdg 4.2.0 38.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg24.04+1_amd64.deb pgdg 4.2.0 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg24.04+1_arm64.deb pgdg 4.2.0 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg26.04+1_amd64.deb pgdg 4.2.0 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-set-user postgresql-16-set-user_4.2.0-1.pgdg26.04+1_arm64.deb pgdg 4.2.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-16-set-user_4.2.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 set_user_15 set_user_15-4.1.0-1PGDG.rhel8.x86_64.rpm pgdg 4.1.0 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/set_user_15-4.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 set_user_15 set_user_15-4.0.1-2.rhel8.x86_64.rpm pgdg 4.0.1 26.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/set_user_15-4.0.1-2.rhel8.x86_64.rpm
@ el8.x86_64 15 set_user_15 set_user_15-4.0.0-1.rhel8.x86_64.rpm pgdg 4.0.0 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/set_user_15-4.0.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 set_user_15 set_user_15-4.1.0-1PGDG.rhel8.aarch64.rpm pgdg 4.1.0 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/set_user_15-4.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 set_user_15 set_user_15-4.0.1-2.rhel8.aarch64.rpm pgdg 4.0.1 25.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/set_user_15-4.0.1-2.rhel8.aarch64.rpm
@ el8.aarch64 15 set_user_15 set_user_15-4.0.0-1.rhel8.aarch64.rpm pgdg 4.0.0 25.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/set_user_15-4.0.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 set_user_15 set_user_15-4.2.0-3PGDG.rhel9.8.x86_64.rpm pgdg 4.2.0 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/set_user_15-4.2.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 set_user_15 set_user_15-4.1.0-1PGDG.rhel9.x86_64.rpm pgdg 4.1.0 26.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/set_user_15-4.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 set_user_15 set_user_15-4.0.1-2.rhel9.x86_64.rpm pgdg 4.0.1 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/set_user_15-4.0.1-2.rhel9.x86_64.rpm
@ el9.x86_64 15 set_user_15 set_user_15-4.0.0-1.rhel9.x86_64.rpm pgdg 4.0.0 25.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/set_user_15-4.0.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 set_user_15 set_user_15-4.2.0-3PGDG.rhel9.8.aarch64.rpm pgdg 4.2.0 26.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/set_user_15-4.2.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 set_user_15 set_user_15-4.1.0-1PGDG.rhel9.aarch64.rpm pgdg 4.1.0 25.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/set_user_15-4.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 set_user_15 set_user_15-4.0.1-2.rhel9.aarch64.rpm pgdg 4.0.1 25.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/set_user_15-4.0.1-2.rhel9.aarch64.rpm
@ el9.aarch64 15 set_user_15 set_user_15-4.0.0-1.rhel9.aarch64.rpm pgdg 4.0.0 25.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/set_user_15-4.0.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 set_user_15 set_user_15-4.2.0-3PGDG.rhel10.2.x86_64.rpm pgdg 4.2.0 26.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/set_user_15-4.2.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 set_user_15 set_user_15-4.1.0-2PGDG.rhel10.x86_64.rpm pgdg 4.1.0 26.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/set_user_15-4.1.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 set_user_15 set_user_15-4.2.0-3PGDG.rhel10.2.aarch64.rpm pgdg 4.2.0 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/set_user_15-4.2.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 set_user_15 set_user_15-4.1.0-2PGDG.rhel10.aarch64.rpm pgdg 4.1.0 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/set_user_15-4.1.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg12+1_amd64.deb pgdg 4.2.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg12+1_arm64.deb pgdg 4.2.0 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg13+1_amd64.deb pgdg 4.2.0 34.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg13+1_arm64.deb pgdg 4.2.0 34.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg22.04+1_amd64.deb pgdg 4.2.0 38.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg22.04+1_arm64.deb pgdg 4.2.0 37.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg24.04+1_amd64.deb pgdg 4.2.0 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg24.04+1_arm64.deb pgdg 4.2.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg26.04+1_amd64.deb pgdg 4.2.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-set-user postgresql-15-set-user_4.2.0-1.pgdg26.04+1_arm64.deb pgdg 4.2.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-15-set-user_4.2.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 set_user_14 set_user_14-4.1.0-1PGDG.rhel8.x86_64.rpm pgdg 4.1.0 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/set_user_14-4.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 set_user_14 set_user_14-4.0.1-2.rhel8.x86_64.rpm pgdg 4.0.1 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/set_user_14-4.0.1-2.rhel8.x86_64.rpm
@ el8.x86_64 14 set_user_14 set_user_14-4.0.0-1.rhel8.x86_64.rpm pgdg 4.0.0 25.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/set_user_14-4.0.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 set_user_14 set_user_14-3.0.0-1.rhel8.x86_64.rpm pgdg 3.0.0 25.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/set_user_14-3.0.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 set_user_14 set_user_14-4.1.0-1PGDG.rhel8.aarch64.rpm pgdg 4.1.0 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/set_user_14-4.1.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 set_user_14 set_user_14-4.0.1-2.rhel8.aarch64.rpm pgdg 4.0.1 25.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/set_user_14-4.0.1-2.rhel8.aarch64.rpm
@ el8.aarch64 14 set_user_14 set_user_14-4.0.0-1.rhel8.aarch64.rpm pgdg 4.0.0 25.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/set_user_14-4.0.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 set_user_14 set_user_14-3.0.0-1.rhel8.aarch64.rpm pgdg 3.0.0 25.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/set_user_14-3.0.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 set_user_14 set_user_14-4.2.0-3PGDG.rhel9.8.x86_64.rpm pgdg 4.2.0 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/set_user_14-4.2.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 set_user_14 set_user_14-4.1.0-1PGDG.rhel9.x86_64.rpm pgdg 4.1.0 26.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/set_user_14-4.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 set_user_14 set_user_14-4.0.1-2.rhel9.x86_64.rpm pgdg 4.0.1 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/set_user_14-4.0.1-2.rhel9.x86_64.rpm
@ el9.x86_64 14 set_user_14 set_user_14-4.0.0-1.rhel9.x86_64.rpm pgdg 4.0.0 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/set_user_14-4.0.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 set_user_14 set_user_14-4.2.0-3PGDG.rhel9.8.aarch64.rpm pgdg 4.2.0 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/set_user_14-4.2.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 set_user_14 set_user_14-4.1.0-1PGDG.rhel9.aarch64.rpm pgdg 4.1.0 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/set_user_14-4.1.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 set_user_14 set_user_14-4.0.1-2.rhel9.aarch64.rpm pgdg 4.0.1 25.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/set_user_14-4.0.1-2.rhel9.aarch64.rpm
@ el9.aarch64 14 set_user_14 set_user_14-4.0.0-1.rhel9.aarch64.rpm pgdg 4.0.0 25.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/set_user_14-4.0.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 set_user_14 set_user_14-3.0.0-1.rhel9.aarch64.rpm pgdg 3.0.0 25.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/set_user_14-3.0.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 set_user_14 set_user_14-4.2.0-3PGDG.rhel10.2.x86_64.rpm pgdg 4.2.0 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/set_user_14-4.2.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 set_user_14 set_user_14-4.1.0-2PGDG.rhel10.x86_64.rpm pgdg 4.1.0 26.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/set_user_14-4.1.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 set_user_14 set_user_14-4.2.0-3PGDG.rhel10.2.aarch64.rpm pgdg 4.2.0 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/set_user_14-4.2.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 set_user_14 set_user_14-4.1.0-2PGDG.rhel10.aarch64.rpm pgdg 4.1.0 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/set_user_14-4.1.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg12+1_amd64.deb pgdg 4.2.0 34.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg12+1_arm64.deb pgdg 4.2.0 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg13+1_amd64.deb pgdg 4.2.0 34.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg13+1_arm64.deb pgdg 4.2.0 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg22.04+1_amd64.deb pgdg 4.2.0 38.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg22.04+1_arm64.deb pgdg 4.2.0 37.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg24.04+1_amd64.deb pgdg 4.2.0 34.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg24.04+1_arm64.deb pgdg 4.2.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg26.04+1_amd64.deb pgdg 4.2.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-set-user postgresql-14-set-user_4.2.0-1.pgdg26.04+1_arm64.deb pgdg 4.2.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-set-user/postgresql-14-set-user_4.2.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `set_user` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install set_user;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y set_user -v 18  # PG 18
pig ext install -y set_user -v 17  # PG 17
pig ext install -y set_user -v 16  # PG 16
pig ext install -y set_user -v 15  # PG 15
pig ext install -y set_user -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y set_user_18       # PG 18
dnf install -y set_user_17       # PG 17
dnf install -y set_user_16       # PG 16
dnf install -y set_user_15       # PG 15
dnf install -y set_user_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-set-user   # PG 18
apt install -y postgresql-17-set-user   # PG 17
apt install -y postgresql-16-set-user   # PG 16
apt install -y postgresql-15-set-user   # PG 15
apt install -y postgresql-14-set-user   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'set_user';
```


**Create Extension**:

```sql
CREATE EXTENSION set_user;
```




## Usage

> [set_user: User switching with enhanced logging and control](https://github.com/pgaudit/set_user)

`set_user` allows switching users and optional privilege escalation with enhanced audit logging. It provides an additional layer of control when unprivileged users must escalate to superuser or object owner roles for maintenance tasks.

```sql
CREATE EXTENSION set_user;
```

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'set_user'
```

| Parameter | Default | Description |
|-----------|---------|-------------|
| `set_user.block_alter_system` | `on` | Block ALTER SYSTEM when escalated |
| `set_user.block_copy_program` | `on` | Block COPY PROGRAM when escalated |
| `set_user.block_log_statement` | `on` | Block SET log_statement; force `log_statement=all` for superusers |
| `set_user.superuser_allowlist` | `*` | Roles allowed to escalate to superuser |
| `set_user.nosuperuser_target_allowlist` | `*` | Roles allowed as non-superuser targets |
| `set_user.superuser_audit_tag` | `AUDIT` | Tag appended to log_line_prefix on escalation |

### Functions

```sql
-- Switch to a non-superuser role
SELECT set_user('dbclient');

-- Escalate to superuser (requires EXECUTE on set_user_u)
SELECT set_user_u('postgres');

-- Switch with a token (token required for reset)
SELECT set_user('dbclient', 'my_secret_token');

-- Reset back to original user
SELECT reset_user();
SELECT reset_user('my_secret_token');  -- if token was used

-- Irrevocable session auth switch
SELECT set_session_auth('target_role');
```

### Permission Setup

```sql
-- Allow role to switch to non-superuser roles
GRANT EXECUTE ON FUNCTION set_user(text) TO admin;

-- Allow role to escalate to superuser
GRANT EXECUTE ON FUNCTION set_user_u(text) TO dba;
```

### Behavior on Escalation

When escalating to a superuser role:
- The role transition is logged with a specific notation
- `ALTER SYSTEM` and `COPY PROGRAM` are blocked (if configured)
- `log_statement` is forced to `all` for full audit trail
- The `AUDIT` tag is appended to `log_line_prefix`
