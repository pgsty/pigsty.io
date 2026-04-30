---
title: "pldbgapi"
linkTitle: "pldbgapi"
description: "server-side support for debugging PL/pgSQL functions"
weight: 3050
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/EnterpriseDB/pldebugger">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">EnterpriseDB/pldebugger</div>
    <div class="ext-card__desc">https://github.com/EnterpriseDB/pldebugger</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pldebugger`**](/ext/e/pldbgapi) | `1.9` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license artistic" href="/ext/license#artistic">Artistic</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3050  | [**`pldbgapi`**](/ext/e/pldbgapi) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql_check`](/ext/e/plpgsql_check) [`plprofiler`](/ext/e/plprofiler) [`plpgsql`](/ext/e/plpgsql) [`pgtap`](/ext/e/pgtap) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`plv8`](/ext/e/plv8) [`plperl`](/ext/e/plperl) [`plpython3u`](/ext/e/plpython3u) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9` | {{< pgvers "18,17,16,15,14" >}} | `pldebugger` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9` | {{< pgvers "18,17,16,15,14" >}} | `pldebugger_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pldebugger` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 3 |
| el8.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 |
| el9.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 |
| el9.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 | AVAIL PGDG 1.8 2 |
| el10.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 |
| el10.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 | AVAIL PGDG 1.8 1 |
| d12.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| d12.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| d13.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| d13.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| u22.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| u22.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| u24.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| u24.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| u26.x86_64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
| u26.aarch64 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 | AVAIL PGDG 1.9 1 |
@ el8.x86_64 18 pldebugger_18 pldebugger_18-1.9-1PGDG.rhel8.x86_64.rpm pgdg 1.9 38.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pldebugger_18-1.9-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pldebugger_18 pldebugger_18-1.9-1PGDG.rhel8.aarch64.rpm pgdg 1.9 37.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pldebugger_18-1.9-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pldebugger_18 pldebugger_18-1.9-1PGDG.rhel9.x86_64.rpm pgdg 1.9 36.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pldebugger_18-1.9-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pldebugger_18 pldebugger_18-1.9-1PGDG.rhel9.aarch64.rpm pgdg 1.9 36.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pldebugger_18-1.9-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pldebugger_18 pldebugger_18-1.9-1PGDG.rhel10.x86_64.rpm pgdg 1.9 37.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pldebugger_18-1.9-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pldebugger_18 pldebugger_18-1.9-1PGDG.rhel10.aarch64.rpm pgdg 1.9 37.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pldebugger_18-1.9-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg12+1_amd64.deb pgdg 1.9 71.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg12+1_arm64.deb pgdg 1.9 70.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg13+1_amd64.deb pgdg 1.9 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg13+1_arm64.deb pgdg 1.9 70.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg22.04+1_amd64.deb pgdg 1.9 72.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg22.04+1_arm64.deb pgdg 1.9 71.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg24.04+1_amd64.deb pgdg 1.9 70.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg24.04+1_arm64.deb pgdg 1.9 68.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg26.04+1_amd64.deb pgdg 1.9 70.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pldebugger postgresql-18-pldebugger_1.9-1.pgdg26.04+1_arm64.deb pgdg 1.9 68.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-18-pldebugger_1.9-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pldebugger_17 pldebugger_17-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 38.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pldebugger_17-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pldebugger_17 pldebugger_17-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 37.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pldebugger_17-1.8-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pldebugger_17 pldebugger_17-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 37.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pldebugger_17-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pldebugger_17 pldebugger_17-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 36.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pldebugger_17-1.8-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pldebugger_17 pldebugger_17-1.8-3PGDG.rhel10.x86_64.rpm pgdg 1.8 37.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pldebugger_17-1.8-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pldebugger_17 pldebugger_17-1.8-3PGDG.rhel10.aarch64.rpm pgdg 1.8 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pldebugger_17-1.8-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg12+1_amd64.deb pgdg 1.9 71.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg12+1_arm64.deb pgdg 1.9 70.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg13+1_amd64.deb pgdg 1.9 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg13+1_arm64.deb pgdg 1.9 70.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg22.04+1_amd64.deb pgdg 1.9 83.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg22.04+1_arm64.deb pgdg 1.9 81.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg24.04+1_amd64.deb pgdg 1.9 70.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg24.04+1_arm64.deb pgdg 1.9 68.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg26.04+1_amd64.deb pgdg 1.9 70.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pldebugger postgresql-17-pldebugger_1.9-1.pgdg26.04+1_arm64.deb pgdg 1.9 68.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-17-pldebugger_1.9-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pldebugger_16 pldebugger_16-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 38.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pldebugger_16-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pldebugger_16 pldebugger_16-1.5-3PGDG.rhel8.x86_64.rpm pgdg 1.5 38.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pldebugger_16-1.5-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pldebugger_16 pldebugger_16-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 37.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pldebugger_16-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pldebugger_16 pldebugger_16-1.5-3PGDG.rhel8.aarch64.rpm pgdg 1.5 37.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pldebugger_16-1.5-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pldebugger_16 pldebugger_16-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 37.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pldebugger_16-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pldebugger_16 pldebugger_16-1.5-3PGDG.rhel9.x86_64.rpm pgdg 1.5 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pldebugger_16-1.5-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pldebugger_16 pldebugger_16-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 36.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pldebugger_16-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pldebugger_16 pldebugger_16-1.5-3PGDG.rhel9.aarch64.rpm pgdg 1.5 35.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pldebugger_16-1.5-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pldebugger_16 pldebugger_16-1.8-3PGDG.rhel10.x86_64.rpm pgdg 1.8 37.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pldebugger_16-1.8-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pldebugger_16 pldebugger_16-1.8-3PGDG.rhel10.aarch64.rpm pgdg 1.8 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pldebugger_16-1.8-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg12+1_amd64.deb pgdg 1.9 71.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg12+1_arm64.deb pgdg 1.9 69.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg13+1_amd64.deb pgdg 1.9 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg13+1_arm64.deb pgdg 1.9 70.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg22.04+1_amd64.deb pgdg 1.9 82.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg22.04+1_arm64.deb pgdg 1.9 81.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg24.04+1_amd64.deb pgdg 1.9 70.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg24.04+1_arm64.deb pgdg 1.9 68.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg26.04+1_amd64.deb pgdg 1.9 70.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pldebugger postgresql-16-pldebugger_1.9-1.pgdg26.04+1_arm64.deb pgdg 1.9 68.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-16-pldebugger_1.9-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pldebugger_15 pldebugger_15-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 39.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pldebugger_15-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pldebugger_15 pldebugger_15-1.5-1.rhel8.x86_64.rpm pgdg 1.5 96.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pldebugger_15-1.5-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pldebugger_15 pldebugger_15-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 38.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pldebugger_15-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pldebugger_15 pldebugger_15-1.5-1.rhel8.aarch64.rpm pgdg 1.5 95.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pldebugger_15-1.5-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pldebugger_15 pldebugger_15-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pldebugger_15-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pldebugger_15 pldebugger_15-1.5-1.rhel9.x86_64.rpm pgdg 1.5 98.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pldebugger_15-1.5-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pldebugger_15 pldebugger_15-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 38.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pldebugger_15-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pldebugger_15 pldebugger_15-1.5-1.rhel9.aarch64.rpm pgdg 1.5 97.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pldebugger_15-1.5-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pldebugger_15 pldebugger_15-1.8-3PGDG.rhel10.x86_64.rpm pgdg 1.8 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pldebugger_15-1.8-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pldebugger_15 pldebugger_15-1.8-3PGDG.rhel10.aarch64.rpm pgdg 1.8 39.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pldebugger_15-1.8-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg12+1_amd64.deb pgdg 1.9 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg12+1_arm64.deb pgdg 1.9 70.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg13+1_amd64.deb pgdg 1.9 72.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg13+1_arm64.deb pgdg 1.9 71.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg22.04+1_amd64.deb pgdg 1.9 83.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg22.04+1_arm64.deb pgdg 1.9 82.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg24.04+1_amd64.deb pgdg 1.9 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg24.04+1_arm64.deb pgdg 1.9 70.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg26.04+1_amd64.deb pgdg 1.9 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pldebugger postgresql-15-pldebugger_1.9-1.pgdg26.04+1_arm64.deb pgdg 1.9 70.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-15-pldebugger_1.9-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pldebugger_14 pldebugger_14-1.8-1PGDG.rhel8.x86_64.rpm pgdg 1.8 39.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pldebugger_14-1.8-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pldebugger_14 pldebugger_14-1.5-1.rhel8.x86_64.rpm pgdg 1.5 95.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pldebugger_14-1.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pldebugger_14 pldebugger_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 95.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pldebugger_14-1.4-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pldebugger_14 pldebugger_14-1.8-1PGDG.rhel8.aarch64.rpm pgdg 1.8 37.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pldebugger_14-1.8-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pldebugger_14 pldebugger_14-1.5-1.rhel8.aarch64.rpm pgdg 1.5 93.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pldebugger_14-1.5-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pldebugger_14 pldebugger_14-1.8-1PGDG.rhel9.x86_64.rpm pgdg 1.8 39.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pldebugger_14-1.8-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pldebugger_14 pldebugger_14-1.5-1.rhel9.x86_64.rpm pgdg 1.5 96.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pldebugger_14-1.5-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pldebugger_14 pldebugger_14-1.8-1PGDG.rhel9.aarch64.rpm pgdg 1.8 38.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pldebugger_14-1.8-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pldebugger_14 pldebugger_14-1.5-1.rhel9.aarch64.rpm pgdg 1.5 95.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pldebugger_14-1.5-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pldebugger_14 pldebugger_14-1.8-3PGDG.rhel10.x86_64.rpm pgdg 1.8 39.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pldebugger_14-1.8-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pldebugger_14 pldebugger_14-1.8-3PGDG.rhel10.aarch64.rpm pgdg 1.8 39.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pldebugger_14-1.8-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg12+1_amd64.deb pgdg 1.9 71.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg12+1_arm64.deb pgdg 1.9 70.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg13+1_amd64.deb pgdg 1.9 71.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg13+1_arm64.deb pgdg 1.9 70.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg22.04+1_amd64.deb pgdg 1.9 82.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg22.04+1_arm64.deb pgdg 1.9 81.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg24.04+1_amd64.deb pgdg 1.9 71.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg24.04+1_arm64.deb pgdg 1.9 70.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg26.04+1_amd64.deb pgdg 1.9 71.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pldebugger postgresql-14-pldebugger_1.9-1.pgdg26.04+1_arm64.deb pgdg 1.9 69.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pldebugger/postgresql-14-pldebugger_1.9-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pldebugger` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pldebugger;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pldebugger -v 18  # PG 18
pig ext install -y pldebugger -v 17  # PG 17
pig ext install -y pldebugger -v 16  # PG 16
pig ext install -y pldebugger -v 15  # PG 15
pig ext install -y pldebugger -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pldebugger_18       # PG 18
dnf install -y pldebugger_17       # PG 17
dnf install -y pldebugger_16       # PG 16
dnf install -y pldebugger_15       # PG 15
dnf install -y pldebugger_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pldebugger   # PG 18
apt install -y postgresql-17-pldebugger   # PG 17
apt install -y postgresql-16-pldebugger   # PG 16
apt install -y postgresql-15-pldebugger   # PG 15
apt install -y postgresql-14-pldebugger   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pldbgapi';
```


**Create Extension**:

```sql
CREATE EXTENSION pldbgapi;
```




## Usage

> [pldbgapi: server-side support for debugging PL/pgSQL functions](https://github.com/EnterpriseDB/pldebugger)

`pldbgapi` provides a server-side API for interactive debugging of PL/pgSQL functions. It is typically used through a GUI client such as **pgAdmin**.

```sql
CREATE EXTENSION pldbgapi;
```

### Debugging with pgAdmin

The primary way to use the debugger is through pgAdmin's graphical interface:

- **Direct Debugging**: Right-click a function and select "Debug" to execute and step through it immediately
- **Global Breakpoints**: Select "Set Global Breakpoint" on a function, then wait for another session (e.g., a web application) to call that function -- the debugger will intercept the call and allow in-context debugging

### Debugging Capabilities

When connected through a debug client, you can:

- **Set breakpoints** on specific lines in PL/pgSQL functions
- **Step through** code line by line (step into, step over, step out)
- **Inspect variables** and their current values at each step
- **View the call stack** for nested function calls
- **Continue execution** to the next breakpoint

### Architecture

The debugging system has three components:

1. **Client GUI** (pgAdmin) -- displays source code, variables, and stack
2. **Target Backend** -- the session executing the PL/pgSQL code being debugged
3. **Debugging Proxy** -- coordinates between the client and target via a dedicated connection

### Supported Languages

The debugger works with PL/pgSQL functions and procedures. It requires the `pldbgapi` extension to be created in each database where debugging is needed.
