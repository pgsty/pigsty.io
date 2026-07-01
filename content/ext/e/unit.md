---
title: "unit"
linkTitle: "unit"
description: "SI units extension"
weight: 3550
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/df7cb/postgresql-unit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">df7cb/postgresql-unit</div>
    <div class="ext-card__desc">https://github.com/df7cb/postgresql-unit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql-unit-7.10.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql-unit-7.10.tar.gz</div>
    <div class="ext-card__desc">postgresql-unit-7.10.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgunit`**](/ext/e/unit) | `7.10` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license gpl20" href="/ext/license#gpl20">GPL-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3550  | [**`unit`**](/ext/e/unit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pgmp`](/ext/e/pgmp) [`numeral`](/ext/e/numeral) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `7.10` | {{< pgvers "18,17,16,15,14" >}} | `pgunit` | `plpgsql` |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `7.10` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-unit_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `7.10` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-unit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 3 | AVAIL PGDG 7.10 3 | AVAIL PGDG 7.10 3 |
| el8.aarch64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 3 | AVAIL PGDG 7.10 3 |
| el9.x86_64 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 3 | AVAIL PGDG 7.10 4 | AVAIL PGDG 7.10 4 | AVAIL PGDG 7.10 4 |
| el9.aarch64 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 3 | AVAIL PGDG 7.10 3 | AVAIL PGDG 7.10 4 | AVAIL PGDG 7.10 4 |
| el10.x86_64 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 |
| el10.aarch64 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 |
| d12.x86_64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| d12.aarch64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| d13.x86_64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| d13.aarch64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| u22.x86_64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| u22.aarch64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| u24.x86_64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| u24.aarch64 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 | AVAIL PGDG 7.10 1 |
| u26.x86_64 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 |
| u26.aarch64 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 | AVAIL PGDG 7.10 2 |
@ el8.x86_64 18 postgresql-unit_18 postgresql-unit_18-7.10-4PGDG.rhel8.x86_64.rpm pgdg 7.10 128.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgresql-unit_18-7.10-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 postgresql-unit_18 postgresql-unit_18-7.10-4PGDG.rhel8.aarch64.rpm pgdg 7.10 127.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgresql-unit_18-7.10-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 postgresql-unit_18 postgresql-unit_18-7.10-6PGDG.rhel9.8.x86_64.rpm pgdg 7.10 123.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgresql-unit_18-7.10-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 postgresql-unit_18 postgresql-unit_18-7.10-4PGDG.rhel9.x86_64.rpm pgdg 7.10 123.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgresql-unit_18-7.10-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 postgresql-unit_18 postgresql-unit_18-7.10-6PGDG.rhel9.8.aarch64.rpm pgdg 7.10 122.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgresql-unit_18-7.10-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 postgresql-unit_18 postgresql-unit_18-7.10-4PGDG.rhel9.aarch64.rpm pgdg 7.10 122.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgresql-unit_18-7.10-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 postgresql-unit_18 postgresql-unit_18-7.10-6PGDG.rhel10.2.x86_64.rpm pgdg 7.10 123.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgresql-unit_18-7.10-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 postgresql-unit_18 postgresql-unit_18-7.10-4PGDG.rhel10.x86_64.rpm pgdg 7.10 123.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgresql-unit_18-7.10-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 postgresql-unit_18 postgresql-unit_18-7.10-6PGDG.rhel10.2.aarch64.rpm pgdg 7.10 123.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgresql-unit_18-7.10-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 postgresql-unit_18 postgresql-unit_18-7.10-4PGDG.rhel10.aarch64.rpm pgdg 7.10 123.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgresql-unit_18-7.10-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg12+1_amd64.deb pgdg 7.10 158.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg12+1_arm64.deb pgdg 7.10 157.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg13+1_amd64.deb pgdg 7.10 158.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg13+1_arm64.deb pgdg 7.10 157.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg22.04+1_amd64.deb pgdg 7.10 160.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg22.04+1_arm64.deb pgdg 7.10 158.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg24.04+1_amd64.deb pgdg 7.10 158.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg24.04+1_arm64.deb pgdg 7.10 157.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg26.04+1_amd64.deb pgdg 7.10 157.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-unit postgresql-18-unit_7.10-1PIGSTY~resolute_amd64.deb pigsty 7.10 168.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-unit postgresql-18-unit_7.10-2.pgdg26.04+1_arm64.deb pgdg 7.10 156.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-unit postgresql-18-unit_7.10-1PIGSTY~resolute_arm64.deb pigsty 7.10 168.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-18-unit_7.10-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.10-1PGDG.rhel8.x86_64.rpm pgdg 7.10 128.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgresql-unit_17-7.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.9-1PGDG.rhel8.x86_64.rpm pgdg 7.9 90.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgresql-unit_17-7.9-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.10-1PGDG.rhel8.aarch64.rpm pgdg 7.10 127.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgresql-unit_17-7.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.9-1PGDG.rhel8.aarch64.rpm pgdg 7.9 89.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgresql-unit_17-7.9-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.10-6PGDG.rhel9.8.x86_64.rpm pgdg 7.10 123.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgresql-unit_17-7.10-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.10-1PGDG.rhel9.x86_64.rpm pgdg 7.10 123.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgresql-unit_17-7.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.9-1PGDG.rhel9.x86_64.rpm pgdg 7.9 88.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgresql-unit_17-7.9-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.10-6PGDG.rhel9.8.aarch64.rpm pgdg 7.10 122.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgresql-unit_17-7.10-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.10-1PGDG.rhel9.aarch64.rpm pgdg 7.10 122.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgresql-unit_17-7.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.9-1PGDG.rhel9.aarch64.rpm pgdg 7.9 87.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgresql-unit_17-7.9-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.10-6PGDG.rhel10.2.x86_64.rpm pgdg 7.10 123.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgresql-unit_17-7.10-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 postgresql-unit_17 postgresql-unit_17-7.10-3PGDG.rhel10.x86_64.rpm pgdg 7.10 123.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgresql-unit_17-7.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.10-6PGDG.rhel10.2.aarch64.rpm pgdg 7.10 123.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgresql-unit_17-7.10-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 postgresql-unit_17 postgresql-unit_17-7.10-3PGDG.rhel10.aarch64.rpm pgdg 7.10 123.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgresql-unit_17-7.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg12+1_amd64.deb pgdg 7.10 158.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg12+1_arm64.deb pgdg 7.10 157.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg13+1_amd64.deb pgdg 7.10 158.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg13+1_arm64.deb pgdg 7.10 157.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg22.04+1_amd64.deb pgdg 7.10 164.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg22.04+1_arm64.deb pgdg 7.10 162.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg24.04+1_amd64.deb pgdg 7.10 158.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg24.04+1_arm64.deb pgdg 7.10 157.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg26.04+1_amd64.deb pgdg 7.10 158.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-unit postgresql-17-unit_7.10-1PIGSTY~resolute_amd64.deb pigsty 7.10 168.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-unit postgresql-17-unit_7.10-2.pgdg26.04+1_arm64.deb pgdg 7.10 156.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-unit postgresql-17-unit_7.10-1PIGSTY~resolute_arm64.deb pigsty 7.10 168.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-17-unit_7.10-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.10-1PGDG.rhel8.x86_64.rpm pgdg 7.10 128.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgresql-unit_16-7.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.9-1PGDG.rhel8.x86_64.rpm pgdg 7.9 90.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgresql-unit_16-7.9-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.7-1PIGSTY.el8.x86_64.rpm pigsty 7.7 90.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/postgresql-unit_16-7.7-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.10-1PGDG.rhel8.aarch64.rpm pgdg 7.10 127.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgresql-unit_16-7.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.9-1PGDG.rhel8.aarch64.rpm pgdg 7.9 89.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgresql-unit_16-7.9-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.10-6PGDG.rhel9.8.x86_64.rpm pgdg 7.10 123.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgresql-unit_16-7.10-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.10-1PGDG.rhel9.x86_64.rpm pgdg 7.10 123.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgresql-unit_16-7.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.9-1PGDG.rhel9.x86_64.rpm pgdg 7.9 88.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgresql-unit_16-7.9-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.7-1PIGSTY.el9.x86_64.rpm pigsty 7.7 88.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/postgresql-unit_16-7.7-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.10-6PGDG.rhel9.8.aarch64.rpm pgdg 7.10 122.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgresql-unit_16-7.10-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.10-1PGDG.rhel9.aarch64.rpm pgdg 7.10 122.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgresql-unit_16-7.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.9-1PGDG.rhel9.aarch64.rpm pgdg 7.9 87.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgresql-unit_16-7.9-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.10-6PGDG.rhel10.2.x86_64.rpm pgdg 7.10 123.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgresql-unit_16-7.10-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 postgresql-unit_16 postgresql-unit_16-7.10-3PGDG.rhel10.x86_64.rpm pgdg 7.10 123.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgresql-unit_16-7.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.10-6PGDG.rhel10.2.aarch64.rpm pgdg 7.10 123.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgresql-unit_16-7.10-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 postgresql-unit_16 postgresql-unit_16-7.10-3PGDG.rhel10.aarch64.rpm pgdg 7.10 123.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgresql-unit_16-7.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg12+1_amd64.deb pgdg 7.10 158.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg12+1_arm64.deb pgdg 7.10 157.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg13+1_amd64.deb pgdg 7.10 158.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg13+1_arm64.deb pgdg 7.10 157.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg22.04+1_amd64.deb pgdg 7.10 164.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg22.04+1_arm64.deb pgdg 7.10 162.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg24.04+1_amd64.deb pgdg 7.10 158.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg24.04+1_arm64.deb pgdg 7.10 157.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg26.04+1_amd64.deb pgdg 7.10 157.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-unit postgresql-16-unit_7.10-1PIGSTY~resolute_amd64.deb pigsty 7.10 168.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-unit postgresql-16-unit_7.10-2.pgdg26.04+1_arm64.deb pgdg 7.10 156.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-unit postgresql-16-unit_7.10-1PIGSTY~resolute_arm64.deb pigsty 7.10 168.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-16-unit_7.10-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.10-1PGDG.rhel8.x86_64.rpm pgdg 7.10 129.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgresql-unit_15-7.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.9-1PGDG.rhel8.x86_64.rpm pgdg 7.9 91.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgresql-unit_15-7.9-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.4-1.rhel8.x86_64.rpm pgdg 7.4 134.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgresql-unit_15-7.4-1.rhel8.x86_64.rpm
@ el8.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.10-1PGDG.rhel8.aarch64.rpm pgdg 7.10 127.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgresql-unit_15-7.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.9-1PGDG.rhel8.aarch64.rpm pgdg 7.9 89.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgresql-unit_15-7.9-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.4-1.rhel8.aarch64.rpm pgdg 7.4 133.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgresql-unit_15-7.4-1.rhel8.aarch64.rpm
@ el9.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.10-6PGDG.rhel9.8.x86_64.rpm pgdg 7.10 125.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql-unit_15-7.10-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.10-1PGDG.rhel9.x86_64.rpm pgdg 7.10 125.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql-unit_15-7.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.9-1PGDG.rhel9.x86_64.rpm pgdg 7.9 90.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql-unit_15-7.9-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.4-1.rhel9.x86_64.rpm pgdg 7.4 136.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql-unit_15-7.4-1.rhel9.x86_64.rpm
@ el9.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.10-6PGDG.rhel9.8.aarch64.rpm pgdg 7.10 124.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql-unit_15-7.10-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.10-1PGDG.rhel9.aarch64.rpm pgdg 7.10 124.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql-unit_15-7.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.9-1PGDG.rhel9.aarch64.rpm pgdg 7.9 89.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql-unit_15-7.9-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.4-1.rhel9.aarch64.rpm pgdg 7.4 134.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql-unit_15-7.4-1.rhel9.aarch64.rpm
@ el10.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.10-6PGDG.rhel10.2.x86_64.rpm pgdg 7.10 125.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgresql-unit_15-7.10-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 postgresql-unit_15 postgresql-unit_15-7.10-3PGDG.rhel10.x86_64.rpm pgdg 7.10 125.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgresql-unit_15-7.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.10-6PGDG.rhel10.2.aarch64.rpm pgdg 7.10 124.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgresql-unit_15-7.10-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 postgresql-unit_15 postgresql-unit_15-7.10-3PGDG.rhel10.aarch64.rpm pgdg 7.10 124.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgresql-unit_15-7.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg12+1_amd64.deb pgdg 7.10 159.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg12+1_arm64.deb pgdg 7.10 157.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg13+1_amd64.deb pgdg 7.10 159.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg13+1_arm64.deb pgdg 7.10 157.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg22.04+1_amd64.deb pgdg 7.10 165.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg22.04+1_arm64.deb pgdg 7.10 163.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg24.04+1_amd64.deb pgdg 7.10 159.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg24.04+1_arm64.deb pgdg 7.10 158.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg26.04+1_amd64.deb pgdg 7.10 159.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-unit postgresql-15-unit_7.10-1PIGSTY~resolute_amd64.deb pigsty 7.10 169.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-unit postgresql-15-unit_7.10-2.pgdg26.04+1_arm64.deb pgdg 7.10 157.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-unit postgresql-15-unit_7.10-1PIGSTY~resolute_arm64.deb pigsty 7.10 169.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-15-unit_7.10-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.10-1PGDG.rhel8.x86_64.rpm pgdg 7.10 129.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql-unit_14-7.10-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.9-1PGDG.rhel8.x86_64.rpm pgdg 7.9 91.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql-unit_14-7.9-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.4-1.rhel8.x86_64.rpm pgdg 7.4 134.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql-unit_14-7.4-1.rhel8.x86_64.rpm
@ el8.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.10-1PGDG.rhel8.aarch64.rpm pgdg 7.10 127.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgresql-unit_14-7.10-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.9-1PGDG.rhel8.aarch64.rpm pgdg 7.9 90.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgresql-unit_14-7.9-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.4-1.rhel8.aarch64.rpm pgdg 7.4 133.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgresql-unit_14-7.4-1.rhel8.aarch64.rpm
@ el9.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.10-6PGDG.rhel9.8.x86_64.rpm pgdg 7.10 125.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql-unit_14-7.10-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.10-1PGDG.rhel9.x86_64.rpm pgdg 7.10 125.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql-unit_14-7.10-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.9-1PGDG.rhel9.x86_64.rpm pgdg 7.9 90.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql-unit_14-7.9-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.4-1.rhel9.x86_64.rpm pgdg 7.4 136.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql-unit_14-7.4-1.rhel9.x86_64.rpm
@ el9.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.10-6PGDG.rhel9.8.aarch64.rpm pgdg 7.10 124.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql-unit_14-7.10-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.10-1PGDG.rhel9.aarch64.rpm pgdg 7.10 124.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql-unit_14-7.10-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.9-1PGDG.rhel9.aarch64.rpm pgdg 7.9 89.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql-unit_14-7.9-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.4-1.rhel9.aarch64.rpm pgdg 7.4 134.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql-unit_14-7.4-1.rhel9.aarch64.rpm
@ el10.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.10-6PGDG.rhel10.2.x86_64.rpm pgdg 7.10 125.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgresql-unit_14-7.10-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 postgresql-unit_14 postgresql-unit_14-7.10-3PGDG.rhel10.x86_64.rpm pgdg 7.10 125.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgresql-unit_14-7.10-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.10-6PGDG.rhel10.2.aarch64.rpm pgdg 7.10 124.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgresql-unit_14-7.10-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 postgresql-unit_14 postgresql-unit_14-7.10-3PGDG.rhel10.aarch64.rpm pgdg 7.10 124.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgresql-unit_14-7.10-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg12+1_amd64.deb pgdg 7.10 159.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg12+1_arm64.deb pgdg 7.10 157.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg13+1_amd64.deb pgdg 7.10 159.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg13+1_arm64.deb pgdg 7.10 157.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg22.04+1_amd64.deb pgdg 7.10 165.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg22.04+1_arm64.deb pgdg 7.10 163.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg24.04+1_amd64.deb pgdg 7.10 159.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg24.04+1_arm64.deb pgdg 7.10 158.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg26.04+1_amd64.deb pgdg 7.10 159.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-unit postgresql-14-unit_7.10-1PIGSTY~resolute_amd64.deb pigsty 7.10 169.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-unit postgresql-14-unit_7.10-2.pgdg26.04+1_arm64.deb pgdg 7.10 157.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-unit postgresql-14-unit_7.10-1PIGSTY~resolute_arm64.deb pigsty 7.10 169.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-unit/postgresql-14-unit_7.10-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgunit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgunit;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgunit -v 18  # PG 18
pig ext install -y pgunit -v 17  # PG 17
pig ext install -y pgunit -v 16  # PG 16
pig ext install -y pgunit -v 15  # PG 15
pig ext install -y pgunit -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y postgresql-unit_18       # PG 18
dnf install -y postgresql-unit_17       # PG 17
dnf install -y postgresql-unit_16       # PG 16
dnf install -y postgresql-unit_15       # PG 15
dnf install -y postgresql-unit_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-unit   # PG 18
apt install -y postgresql-17-unit   # PG 17
apt install -y postgresql-16-unit   # PG 16
apt install -y postgresql-15-unit   # PG 15
apt install -y postgresql-14-unit   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION unit CASCADE;  -- requires: plpgsql
```



## Usage

> [unit: SI unit data type for PostgreSQL](https://github.com/df7cb/postgresql-unit)

The `unit` extension provides a data type for SI units, enabling dimensional analysis and unit conversion directly in SQL.

```sql
CREATE EXTENSION unit;

SELECT '9.81 m/s^2'::unit;
SELECT '120 km/h'::unit @ 'm/s' AS velocity;  -- 33.3333333333333 m/s
```

### Base Units

meter (m), kilogram (kg), second (s), ampere (A), kelvin (K), mole (mol), candela (cd), byte (B).

### Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `+`, `-` | Add/subtract (same dimensions) | `'1 m'::unit + '50 cm'::unit` |
| `*`, `/` | Multiply/divide | `'5 kg'::unit * '9.81 m/s^2'::unit` |
| `^` | Exponentiation by integer | `'2 m'::unit ^ 3` |
| `@` | Convert to unit (returns unit) | `'2 MB/min'::unit @ 'GB/d'` |
| `@@` | Convert to unit (returns double precision) | `'1 km'::unit @@ 'm'` |

### Functions

Mathematical: `sqrt()`, `exp()`, `ln()`, `log2()`, `cbrt()`, `asin()`, `tan()`, etc.

Aggregates: `sum(unit)`, `avg(unit)`, `min(unit)`, `max(unit)`, `stddev()`, `variance()`.

### Input Formats

```sql
SELECT '3|4 m'::unit;            -- fractions: 0.75 m
SELECT '10:05:30 s'::unit;       -- time format: 36330 s
SELECT 'm⁻²'::unit;              -- Unicode superscripts
```

### Unit Conversion

```sql
SELECT '2 MB/min'::unit @ 'GB/d';       -- 2.88 GB/d
SELECT '1 hl'::unit @ '0.5 l';          -- 200 * 0.5 l
SELECT '100 degC'::unit @ 'degF';        -- Fahrenheit conversion
```

### Range Type

```sql
SELECT unitrange('earthradius_polar', 'earthradius_equatorial');
```

### Configuration

- `unit.byte_output_iec`: Binary prefixes (Ki, Mi, Gi)
- `unit.output_base_units`: Show only base units
- `unit.time_output_custom`: Format times using minutes/hours/days
- `unit.output_superscript`: Unicode superscript exponents
