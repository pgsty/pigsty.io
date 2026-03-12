---
title: "credcheck"
linkTitle: "credcheck"
description: "credcheck - postgresql plain text credential checker"
weight: 7310
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/MigOpsRepos/credcheck">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">MigOpsRepos/credcheck</div>
    <div class="ext-card__desc">https://github.com/MigOpsRepos/credcheck</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`credcheck`**](/ext/e/credcheck) | `4.6` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7310  | [**`credcheck`**](/ext/e/credcheck) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`login_hook`](/ext/e/login_hook) [`passwordcheck`](/ext/e/passwordcheck) [`pgaudit`](/ext/e/pgaudit) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`set_user`](/ext/e/set_user) [`auth_delay`](/ext/e/auth_delay) [`pg_permissions`](/ext/e/pg_permissions) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.6` | {{< pgvers "18,17,16,15,14" >}} | `credcheck` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.6` | {{< pgvers "18,17,16,15,14" >}} | `credcheck_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-credcheck` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 8 | AVAIL PGDG 4.6 11 | AVAIL PGDG 4.6 16 | AVAIL PGDG 4.6 16 |
| el8.aarch64 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 8 | AVAIL PGDG 4.6 11 | AVAIL PGDG 4.6 16 | AVAIL PGDG 4.6 16 |
| el9.x86_64 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 8 | AVAIL PGDG 4.6 11 | AVAIL PGDG 4.6 16 | AVAIL PGDG 4.6 15 |
| el9.aarch64 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 8 | AVAIL PGDG 4.6 11 | AVAIL PGDG 4.6 16 | AVAIL PGDG 4.6 16 |
| el10.x86_64 | AVAIL PGDG 4.5 6 | AVAIL PGDG 4.5 6 | AVAIL PGDG 4.5 6 | AVAIL PGDG 4.5 6 | AVAIL PGDG 4.5 6 |
| el10.aarch64 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 7 | AVAIL PGDG 4.6 7 |
| d12.x86_64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| d12.aarch64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| d13.x86_64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| d13.aarch64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| u22.x86_64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| u22.aarch64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| u24.x86_64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
| u24.aarch64 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 | AVAIL PGDG 4.6 1 |
@ el8.x86_64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel8.x86_64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/credcheck_18-3.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel8.aarch64.rpm pgdg 3.0 35.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/credcheck_18-3.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel9.x86_64.rpm pgdg 3.0 35.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/credcheck_18-3.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 39.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel9.aarch64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/credcheck_18-3.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/credcheck_18-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 39.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 credcheck_18 credcheck_18-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/credcheck_18-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 73.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 73.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 68.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-credcheck postgresql-18-credcheck_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-18-credcheck_4.6-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel8.x86_64.rpm pgdg 2.8 35.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/credcheck_17-2.8-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel8.aarch64.rpm pgdg 2.8 34.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/credcheck_17-2.8-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 35.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel9.x86_64.rpm pgdg 2.8 35.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/credcheck_17-2.8-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 credcheck_17 credcheck_17-2.8-1PGDG.rhel9.aarch64.rpm pgdg 2.8 35.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/credcheck_17-2.8-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 credcheck_17 credcheck_17-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/credcheck_17-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 credcheck_17 credcheck_17-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/credcheck_17-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 74.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 73.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 73.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 68.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-credcheck postgresql-17-credcheck_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-17-credcheck_4.6-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 34.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/credcheck_16-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 34.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 33.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/credcheck_16-2.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 36.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 35.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel9.x86_64.rpm pgdg 2.6 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/credcheck_16-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 34.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 34.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 credcheck_16 credcheck_16-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/credcheck_16-2.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 credcheck_16 credcheck_16-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/credcheck_16-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 40.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 credcheck_16 credcheck_16-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/credcheck_16-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 74.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 73.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 73.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 75.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 73.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-credcheck postgresql-16-credcheck_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 67.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-16-credcheck_4.6-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 34.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 34.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 31.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-2.0-1.rhel8.x86_64.rpm pgdg 2.0 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-1.2-1.rhel8.x86_64.rpm pgdg 1.2 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-1.0-1.rhel8.x86_64.rpm pgdg 1.0 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-1.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-0.2.0-3.rhel8.x86_64.rpm pgdg 0.2.0 18.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-0.2.0-3.rhel8.x86_64.rpm
@ el8.x86_64 15 credcheck_15 credcheck_15-0.2.0-1.rhel8.x86_64.rpm pgdg 0.2.0 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/credcheck_15-0.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 34.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 33.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-2.0-1.rhel8.aarch64.rpm pgdg 2.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-1.2-1.rhel8.aarch64.rpm pgdg 1.2 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-1.0-1.rhel8.aarch64.rpm pgdg 1.0 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-1.0-1.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-0.2.0-3.rhel8.aarch64.rpm pgdg 0.2.0 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-0.2.0-3.rhel8.aarch64.rpm
@ el8.aarch64 15 credcheck_15 credcheck_15-0.2.0-1.rhel8.aarch64.rpm pgdg 0.2.0 34.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/credcheck_15-0.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 36.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 35.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel9.x86_64.rpm pgdg 2.6 34.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-2.0-1.rhel9.x86_64.rpm pgdg 2.0 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-1.2-1.rhel9.x86_64.rpm pgdg 1.2 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-1.0-1.rhel9.x86_64.rpm pgdg 1.0 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-1.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-0.2.0-3.rhel9.x86_64.rpm pgdg 0.2.0 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-0.2.0-3.rhel9.x86_64.rpm
@ el9.x86_64 15 credcheck_15 credcheck_15-0.2.0-1.rhel9.x86_64.rpm pgdg 0.2.0 35.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/credcheck_15-0.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 34.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 34.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-2.0-1.rhel9.aarch64.rpm pgdg 2.0 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-1.2-1.rhel9.aarch64.rpm pgdg 1.2 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-1.2-1.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-1.0-1.rhel9.aarch64.rpm pgdg 1.0 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-1.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-0.2.0-3.rhel9.aarch64.rpm pgdg 0.2.0 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-0.2.0-3.rhel9.aarch64.rpm
@ el9.aarch64 15 credcheck_15 credcheck_15-0.2.0-1.rhel9.aarch64.rpm pgdg 0.2.0 35.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/credcheck_15-0.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 credcheck_15 credcheck_15-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/credcheck_15-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 39.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 credcheck_15 credcheck_15-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/credcheck_15-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 72.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 73.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 72.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 74.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 73.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-credcheck postgresql-15-credcheck_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-15-credcheck_4.6-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel8.10.x86_64.rpm pgdg 4.6 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel8.10.x86_64.rpm pgdg 4.5 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel8.10.x86_64.rpm pgdg 4.4 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel8.10.x86_64.rpm pgdg 4.3 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel8.x86_64.rpm pgdg 4.2 40.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel8.x86_64.rpm pgdg 4.1 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-4.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel8.x86_64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-3.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel8.x86_64.rpm pgdg 2.7 34.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel8.x86_64.rpm pgdg 2.6 34.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel8.x86_64.rpm pgdg 2.2 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel8.x86_64.rpm pgdg 2.1 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-2.0-1.rhel8.x86_64.rpm pgdg 2.0 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-1.2-1.rhel8.x86_64.rpm pgdg 1.2 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-1.0-1.rhel8.x86_64.rpm pgdg 1.0 27.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-1.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-0.2.0-3.rhel8.x86_64.rpm pgdg 0.2.0 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-0.2.0-3.rhel8.x86_64.rpm
@ el8.x86_64 14 credcheck_14 credcheck_14-0.2.0-1.rhel8.x86_64.rpm pgdg 0.2.0 35.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/credcheck_14-0.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel8.10.aarch64.rpm pgdg 4.6 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel8.10.aarch64.rpm pgdg 4.5 40.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.5-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel8.10.aarch64.rpm pgdg 4.4 40.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel8.10.aarch64.rpm pgdg 4.3 39.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel8.aarch64.rpm pgdg 4.2 39.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel8.aarch64.rpm pgdg 4.1 38.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-4.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel8.aarch64.rpm pgdg 3.0 35.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-3.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel8.aarch64.rpm pgdg 2.7 34.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel8.aarch64.rpm pgdg 2.6 33.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel8.aarch64.rpm pgdg 2.2 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel8.aarch64.rpm pgdg 2.1 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-2.0-1.rhel8.aarch64.rpm pgdg 2.0 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-2.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-1.2-1.rhel8.aarch64.rpm pgdg 1.2 27.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-1.0-1.rhel8.aarch64.rpm pgdg 1.0 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-1.0-1.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-0.2.0-3.rhel8.aarch64.rpm pgdg 0.2.0 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-0.2.0-3.rhel8.aarch64.rpm
@ el8.aarch64 14 credcheck_14 credcheck_14-0.2.0-1.rhel8.aarch64.rpm pgdg 0.2.0 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/credcheck_14-0.2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel9.7.x86_64.rpm pgdg 4.6 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel9.7.x86_64.rpm pgdg 4.5 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel9.7.x86_64.rpm pgdg 4.4 40.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.4-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel9.7.x86_64.rpm pgdg 4.3 40.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel9.x86_64.rpm pgdg 4.2 39.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel9.x86_64.rpm pgdg 4.1 39.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-4.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel9.x86_64.rpm pgdg 3.0 36.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-3.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel9.x86_64.rpm pgdg 2.7 35.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel9.x86_64.rpm pgdg 2.6 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel9.x86_64.rpm pgdg 2.2 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel9.x86_64.rpm pgdg 2.1 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-2.0-1.rhel9.x86_64.rpm pgdg 2.0 31.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-1.2-1.rhel9.x86_64.rpm pgdg 1.2 28.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-1.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-1.0-1.rhel9.x86_64.rpm pgdg 1.0 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-1.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 credcheck_14 credcheck_14-0.2.0-3.rhel9.x86_64.rpm pgdg 0.2.0 18.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/credcheck_14-0.2.0-3.rhel9.x86_64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel9.7.aarch64.rpm pgdg 4.6 40.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel9.7.aarch64.rpm pgdg 4.5 40.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel9.7.aarch64.rpm pgdg 4.4 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel9.7.aarch64.rpm pgdg 4.3 39.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel9.aarch64.rpm pgdg 4.2 39.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel9.aarch64.rpm pgdg 4.1 38.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-4.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-3.0-1PGDG.rhel9.aarch64.rpm pgdg 3.0 35.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-3.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.7-1PGDG.rhel9.aarch64.rpm pgdg 2.7 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.6-1PGDG.rhel9.aarch64.rpm pgdg 2.6 34.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.2-1PGDG.rhel9.aarch64.rpm pgdg 2.2 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.1-1PGDG.rhel9.aarch64.rpm pgdg 2.1 31.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-2.0-1.rhel9.aarch64.rpm pgdg 2.0 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-2.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-1.2-1.rhel9.aarch64.rpm pgdg 1.2 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-1.2-1.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-1.0-1.rhel9.aarch64.rpm pgdg 1.0 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-1.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-0.2.0-3.rhel9.aarch64.rpm pgdg 0.2.0 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-0.2.0-3.rhel9.aarch64.rpm
@ el9.aarch64 14 credcheck_14 credcheck_14-0.2.0-1.rhel9.aarch64.rpm pgdg 0.2.0 35.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/credcheck_14-0.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel10.1.x86_64.rpm pgdg 4.5 41.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel10.1.x86_64.rpm pgdg 4.4 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel10.1.x86_64.rpm pgdg 4.3 40.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel10.x86_64.rpm pgdg 4.2 40.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.2-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel10.x86_64.rpm pgdg 4.1 39.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-4.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 credcheck_14 credcheck_14-3.0-2PGDG.rhel10.x86_64.rpm pgdg 3.0 36.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/credcheck_14-3.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.6-1PGDG.rhel10.1.aarch64.rpm pgdg 4.6 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.5-1PGDG.rhel10.1.aarch64.rpm pgdg 4.5 40.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.4-1PGDG.rhel10.1.aarch64.rpm pgdg 4.4 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.3-1PGDG.rhel10.1.aarch64.rpm pgdg 4.3 39.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.2-1PGDG.rhel10.aarch64.rpm pgdg 4.2 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.2-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-4.1-1PGDG.rhel10.aarch64.rpm pgdg 4.1 39.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-4.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 credcheck_14 credcheck_14-3.0-2PGDG.rhel10.aarch64.rpm pgdg 3.0 36.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/credcheck_14-3.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg12+1_amd64.deb pgdg 4.6 73.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg12+1_arm64.deb pgdg 4.6 72.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg13+1_amd64.deb pgdg 4.6 73.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg13+1_arm64.deb pgdg 4.6 72.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg22.04+1_amd64.deb pgdg 4.6 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg22.04+1_arm64.deb pgdg 4.6 73.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg24.04+1_amd64.deb pgdg 4.6 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-credcheck postgresql-14-credcheck_4.6-1.pgdg24.04+1_arm64.deb pgdg 4.6 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/c/credcheck/postgresql-14-credcheck_4.6-1.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `credcheck` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install credcheck;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y credcheck -v 18  # PG 18
pig ext install -y credcheck -v 17  # PG 17
pig ext install -y credcheck -v 16  # PG 16
pig ext install -y credcheck -v 15  # PG 15
pig ext install -y credcheck -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y credcheck_18       # PG 18
dnf install -y credcheck_17       # PG 17
dnf install -y credcheck_16       # PG 16
dnf install -y credcheck_15       # PG 15
dnf install -y credcheck_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-credcheck   # PG 18
apt install -y postgresql-17-credcheck   # PG 17
apt install -y postgresql-16-credcheck   # PG 16
apt install -y postgresql-15-credcheck   # PG 15
apt install -y postgresql-14-credcheck   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'credcheck';
```


**Create Extension**:

```sql
CREATE EXTENSION credcheck;
```




## Usage

> [credcheck: Credential checking for PostgreSQL usernames and passwords](https://github.com/MigOpsRepos/credcheck)

`credcheck` enforces configurable rules for username and password strength during `CREATE ROLE`, `ALTER ROLE`, and password changes. It also supports password reuse policies and authentication failure banning.

### Configuration Parameters

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'credcheck'
```

#### Username Checks

| Parameter | Description | Example |
|-----------|-------------|---------|
| `credcheck.username_min_length` | Minimum username length | `4` |
| `credcheck.username_min_special` | Minimum special characters | `1` |
| `credcheck.username_min_digit` | Minimum digit characters | `1` |
| `credcheck.username_min_upper` | Minimum uppercase characters | `2` |
| `credcheck.username_min_lower` | Minimum lowercase characters | `1` |
| `credcheck.username_min_repeat` | Max adjacent repeat characters | `2` |
| `credcheck.username_contain` | Must contain one of these chars | `a,b,c` |
| `credcheck.username_not_contain` | Must not contain these chars | `x,y,z` |
| `credcheck.username_contain_password` | Username must not contain password | `on` |

#### Password Checks

| Parameter | Description | Example |
|-----------|-------------|---------|
| `credcheck.password_min_length` | Minimum password length | `8` |
| `credcheck.password_min_special` | Minimum special characters | `1` |
| `credcheck.password_min_digit` | Minimum digit characters | `1` |
| `credcheck.password_min_upper` | Minimum uppercase characters | `1` |
| `credcheck.password_min_lower` | Minimum lowercase characters | `1` |
| `credcheck.password_min_repeat` | Max adjacent repeat characters | `3` |
| `credcheck.password_contain_username` | Password must not contain username | `on` |
| `credcheck.password_valid_until` | Minimum days for VALID UNTIL | `60` |
| `credcheck.password_valid_max` | Maximum days for VALID UNTIL | `365` |
| `credcheck.whitelist` | Usernames excluded from checks | `admin,super` |

### Examples

```sql
-- Rejected: username too short
CREATE USER abc WITH PASSWORD 'pass';
-- ERROR: username length should match the configured credcheck.username_min_length

-- Rejected: password contains username
CREATE USER abcd$ WITH PASSWORD 'abcd$xyz';
-- ERROR: password should not contain username
```

### Password Reuse Policy

```sql
SET credcheck.password_reuse_history = 2;
SET credcheck.password_reuse_interval = 365;  -- days
```

View password history:

```sql
SELECT rolename, password_hash FROM pg_password_history;
```

### Authentication Failure Ban

```sql
SET credcheck.max_auth_failure = 3;  -- ban after 3 failures
```

Reset banned users:

```sql
SELECT pg_banned_role_reset();              -- reset all
SELECT pg_banned_role_reset('username');     -- reset specific user
```
