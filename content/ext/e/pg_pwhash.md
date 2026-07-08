---
title: "pg_pwhash"
linkTitle: "pg_pwhash"
description: "Advanced password hashing methods for PostgreSQL"
weight: 7330
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/pg_pwhash">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/pg_pwhash</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/pg_pwhash</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_pwhash`**](/ext/e/pg_pwhash) | `1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7330  | [**`pg_pwhash`**](/ext/e/pg_pwhash) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> RPM metadata shows license=PostgreSQL, but packaged LICENSE file is MIT


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_pwhash` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_pwhash_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-pwhash` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el9.aarch64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el10.x86_64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el10.aarch64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 2 |
| d12.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d12.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d13.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d13.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u22.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u22.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u24.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u24.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u26.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| u26.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
@ el8.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 31.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_pwhash_18-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 30.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_pwhash_18-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_pwhash_18-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_pwhash_18-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 33.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_pwhash_18-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_pwhash_18-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_pwhash_18-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_pwhash_18-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_pwhash_18-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_pwhash_18-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 33.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_pwhash_18-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_pwhash_18-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_pwhash_18-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_pwhash_18 pg_pwhash_18-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_pwhash_18-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg12+3_amd64.deb pgdg 1.0 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg12+3_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg12+3_arm64.deb pgdg 1.0 55.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg12+3_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg13+3_amd64.deb pgdg 1.0 56.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg13+3_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg13+3_arm64.deb pgdg 1.0 55.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg13+3_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb pgdg 1.0 56.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb pgdg 1.0 55.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb pgdg 1.0 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb pgdg 1.0 54.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb pgdg 1.0 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-pwhash postgresql-18-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb pgdg 1.0 55.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-18-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb
@ el8.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_pwhash_17-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 30.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_pwhash_17-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_pwhash_17-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_pwhash_17-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 33.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_pwhash_17-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_pwhash_17-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_pwhash_17-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_pwhash_17-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_pwhash_17-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_pwhash_17-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 33.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_pwhash_17-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_pwhash_17-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_pwhash_17-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_pwhash_17 pg_pwhash_17-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_pwhash_17-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg12+3_amd64.deb pgdg 1.0 56.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg12+3_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg12+3_arm64.deb pgdg 1.0 55.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg12+3_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg13+3_amd64.deb pgdg 1.0 56.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg13+3_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg13+3_arm64.deb pgdg 1.0 55.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg13+3_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb pgdg 1.0 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb pgdg 1.0 57.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb pgdg 1.0 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb pgdg 1.0 54.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb pgdg 1.0 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-pwhash postgresql-17-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb pgdg 1.0 55.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-17-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb
@ el8.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 31.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_pwhash_16-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_pwhash_16-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_pwhash_16-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 32.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_pwhash_16-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 33.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_pwhash_16-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_pwhash_16-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_pwhash_16-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_pwhash_16-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_pwhash_16-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_pwhash_16-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 33.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_pwhash_16-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_pwhash_16-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_pwhash_16-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_pwhash_16 pg_pwhash_16-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_pwhash_16-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg12+3_amd64.deb pgdg 1.0 56.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg12+3_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg12+3_arm64.deb pgdg 1.0 55.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg12+3_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg13+3_amd64.deb pgdg 1.0 56.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg13+3_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg13+3_arm64.deb pgdg 1.0 55.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg13+3_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb pgdg 1.0 59.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb pgdg 1.0 57.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb pgdg 1.0 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb pgdg 1.0 54.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb pgdg 1.0 57.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-pwhash postgresql-16-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb pgdg 1.0 55.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-16-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb
@ el8.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_pwhash_15-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_pwhash_15-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_pwhash_15-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_pwhash_15-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_pwhash_15-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_pwhash_15-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_pwhash_15-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_pwhash_15-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_pwhash_15-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_pwhash_15-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_pwhash_15-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_pwhash_15-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_pwhash_15-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_pwhash_15 pg_pwhash_15-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_pwhash_15-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg12+3_amd64.deb pgdg 1.0 56.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg12+3_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg12+3_arm64.deb pgdg 1.0 55.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg12+3_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg13+3_amd64.deb pgdg 1.0 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg13+3_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg13+3_arm64.deb pgdg 1.0 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg13+3_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb pgdg 1.0 59.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb pgdg 1.0 58.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb pgdg 1.0 56.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb pgdg 1.0 55.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb pgdg 1.0 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-pwhash postgresql-15-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb pgdg 1.0 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-15-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb
@ el8.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_pwhash_14-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_pwhash_14-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_pwhash_14-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_pwhash_14-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_pwhash_14-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_pwhash_14-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_pwhash_14-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_pwhash_14-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_pwhash_14-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_pwhash_14-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 33.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_pwhash_14-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_pwhash_14-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_pwhash_14 pg_pwhash_14-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_pwhash_14-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg12+3_amd64.deb pgdg 1.0 56.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg12+3_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg12+3_arm64.deb pgdg 1.0 55.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg12+3_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg13+3_amd64.deb pgdg 1.0 56.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg13+3_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg13+3_arm64.deb pgdg 1.0 55.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg13+3_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb pgdg 1.0 59.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg22.04+3_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb pgdg 1.0 57.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg22.04+3_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb pgdg 1.0 56.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg24.04+3_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb pgdg 1.0 55.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg24.04+3_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb pgdg 1.0 57.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg26.04+3_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-pwhash postgresql-14-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb pgdg 1.0 55.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-pwhash/postgresql-14-pg-pwhash_1.0-2.pgdg26.04+3_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_pwhash` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_pwhash;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_pwhash -v 18  # PG 18
pig ext install -y pg_pwhash -v 17  # PG 17
pig ext install -y pg_pwhash -v 16  # PG 16
pig ext install -y pg_pwhash -v 15  # PG 15
pig ext install -y pg_pwhash -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_pwhash_18       # PG 18
dnf install -y pg_pwhash_17       # PG 17
dnf install -y pg_pwhash_16       # PG 16
dnf install -y pg_pwhash_15       # PG 15
dnf install -y pg_pwhash_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-pwhash   # PG 18
apt install -y postgresql-17-pg-pwhash   # PG 17
apt install -y postgresql-16-pg-pwhash   # PG 16
apt install -y postgresql-15-pg-pwhash   # PG 15
apt install -y postgresql-14-pg-pwhash   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_pwhash;
```




## Usage

> [pg_pwhash: Advanced password hashing for PostgreSQL](https://github.com/cybertec-postgresql/pg_pwhash)

`pg_pwhash` provides modern adaptive password hashing algorithms including Argon2, scrypt, and yescrypt for PostgreSQL.

```sql
CREATE EXTENSION pg_pwhash;
```

### Supported Algorithms

| Identifier | Algorithm | Salt Pattern |
|------------|-----------|--------------|
| `argon2i` | Argon2i | `$argon2i$v=19$m=4096,t=3,p=1$<salt>` |
| `argon2d` | Argon2d | `$argon2d$v=19$m=4096,t=3,p=1$<salt>` |
| `argon2id` | Argon2id | `$argon2id$v=19$m=4096,t=3,p=1$<salt>` |
| `scrypt` | Scrypt | `$scrypt$ln=16,r=8,p=1$<salt>` |
| `$7$` | Scrypt (crypt) | `$7$BU<salt>` |
| `yescrypt` | yescrypt (crypt) | `$y$j9T$<salt>` |

### Core Functions

#### Generate Salt and Hash

```sql
-- Argon2id (recommended)
SELECT pwhash_crypt('password', pwhash_gen_salt('argon2id'));
-- $argon2id$v=19$m=4096,t=3,p=1$<salt>$<hash>

-- Scrypt
SELECT pwhash_crypt('password', pwhash_gen_salt('scrypt'));

-- Yescrypt
SELECT pwhash_crypt('password', pwhash_gen_salt('yescrypt'));
```

#### Verify Password

```sql
-- Hash matches if output equals stored hash
SELECT stored_hash = pwhash_crypt('entered_password', stored_hash) AS valid;
```

#### Direct Hashing Functions

```sql
SELECT pwhash_argon2('password', pwhash_gen_salt('argon2id'));
SELECT pwhash_scrypt('password', pwhash_gen_salt('scrypt'));
SELECT pwhash_yescrypt_crypt('password', pwhash_gen_salt('yescrypt'));
```

### Custom Salt Parameters

```sql
-- Argon2 with custom memory/time/parallelism
SELECT pwhash_gen_salt('argon2id', 'm=65536', 't=4', 'p=2');

-- Scrypt with custom parameters
SELECT pwhash_gen_salt('scrypt', 'ln=20', 'r=8', 'p=1');
```

### Configuration

| Parameter | Description |
|-----------|-------------|
| `pg_pwhash.argon2_default_backend` | Backend for Argon2: `libargon2` or `openssl` |
