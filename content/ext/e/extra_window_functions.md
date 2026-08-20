---
title: "extra_window_functions"
linkTitle: "extra_window_functions"
description: "Extra Window Functions for PostgreSQL"
weight: 4720
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/xocolatl/extra_window_functions">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">xocolatl/extra_window_functions</div>
    <div class="ext-card__desc">https://github.com/xocolatl/extra_window_functions</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`extra_window_functions`**](/ext/e/extra_window_functions) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4720  | [**`extra_window_functions`**](/ext/e/extra_window_functions) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`tablefunc`](/ext/e/tablefunc) [`first_last_agg`](/ext/e/first_last_agg) [`pg_duckdb`](/ext/e/pg_duckdb) [`argm`](/ext/e/argm) [`pg_lake`](/ext/e/pg_lake) [`duckdb_fdw`](/ext/e/duckdb_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> no pg14 on el8/9


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `extra_window_functions` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `extra_window_functions_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-extra-window-functions` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 1 |
| el9.aarch64 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 |
| el10.x86_64 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 |
| el10.aarch64 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 | AVAIL PGDG 1.0 2 |
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
@ el8.x86_64 18 extra_window_functions_18 extra_window_functions_18-1.0-6PGDG.rhel8.x86_64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/extra_window_functions_18-1.0-6PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 extra_window_functions_18 extra_window_functions_18-1.0-6PGDG.rhel8.aarch64.rpm pgdg 1.0 24.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/extra_window_functions_18-1.0-6PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 extra_window_functions_18 extra_window_functions_18-1.0-8PGDG.rhel9.8.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/extra_window_functions_18-1.0-8PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 extra_window_functions_18 extra_window_functions_18-1.0-6PGDG.rhel9.x86_64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/extra_window_functions_18-1.0-6PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 extra_window_functions_18 extra_window_functions_18-1.0-8PGDG.rhel9.8.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/extra_window_functions_18-1.0-8PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 extra_window_functions_18 extra_window_functions_18-1.0-6PGDG.rhel9.aarch64.rpm pgdg 1.0 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/extra_window_functions_18-1.0-6PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 extra_window_functions_18 extra_window_functions_18-1.0-8PGDG.rhel10.2.x86_64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/extra_window_functions_18-1.0-8PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 extra_window_functions_18 extra_window_functions_18-1.0-6PGDG.rhel10.x86_64.rpm pgdg 1.0 25.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/extra_window_functions_18-1.0-6PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 extra_window_functions_18 extra_window_functions_18-1.0-8PGDG.rhel10.2.aarch64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/extra_window_functions_18-1.0-8PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 extra_window_functions_18 extra_window_functions_18-1.0-6PGDG.rhel10.aarch64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/extra_window_functions_18-1.0-6PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg12+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg12+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg13+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg13+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb pgdg 1.0 15.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb pgdg 1.0 15.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-extra-window-functions postgresql-18-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-18-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 extra_window_functions_17 extra_window_functions_17-1.0-5PGDG.rhel8.x86_64.rpm pgdg 1.0 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/extra_window_functions_17-1.0-5PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 extra_window_functions_17 extra_window_functions_17-1.0-5PGDG.rhel8.aarch64.rpm pgdg 1.0 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/extra_window_functions_17-1.0-5PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 extra_window_functions_17 extra_window_functions_17-1.0-8PGDG.rhel9.8.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/extra_window_functions_17-1.0-8PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 extra_window_functions_17 extra_window_functions_17-1.0-5PGDG.rhel9.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/extra_window_functions_17-1.0-5PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 extra_window_functions_17 extra_window_functions_17-1.0-8PGDG.rhel9.8.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/extra_window_functions_17-1.0-8PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 extra_window_functions_17 extra_window_functions_17-1.0-5PGDG.rhel9.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/extra_window_functions_17-1.0-5PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 extra_window_functions_17 extra_window_functions_17-1.0-8PGDG.rhel10.2.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/extra_window_functions_17-1.0-8PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 extra_window_functions_17 extra_window_functions_17-1.0-6PGDG.rhel10.x86_64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/extra_window_functions_17-1.0-6PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 extra_window_functions_17 extra_window_functions_17-1.0-8PGDG.rhel10.2.aarch64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/extra_window_functions_17-1.0-8PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 extra_window_functions_17 extra_window_functions_17-1.0-6PGDG.rhel10.aarch64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/extra_window_functions_17-1.0-6PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg12+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg12+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg13+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg13+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb pgdg 1.0 15.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-extra-window-functions postgresql-17-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-17-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 extra_window_functions_16 extra_window_functions_16-1.0-3.rhel8.1.x86_64.rpm pgdg 1.0 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/extra_window_functions_16-1.0-3.rhel8.1.x86_64.rpm
@ el8.aarch64 16 extra_window_functions_16 extra_window_functions_16-1.0-3.rhel8.1.aarch64.rpm pgdg 1.0 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/extra_window_functions_16-1.0-3.rhel8.1.aarch64.rpm
@ el9.x86_64 16 extra_window_functions_16 extra_window_functions_16-1.0-8PGDG.rhel9.8.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/extra_window_functions_16-1.0-8PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 extra_window_functions_16 extra_window_functions_16-1.0-3.rhel9.1.x86_64.rpm pgdg 1.0 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/extra_window_functions_16-1.0-3.rhel9.1.x86_64.rpm
@ el9.aarch64 16 extra_window_functions_16 extra_window_functions_16-1.0-8PGDG.rhel9.8.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/extra_window_functions_16-1.0-8PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 extra_window_functions_16 extra_window_functions_16-1.0-3.rhel9.1.aarch64.rpm pgdg 1.0 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/extra_window_functions_16-1.0-3.rhel9.1.aarch64.rpm
@ el10.x86_64 16 extra_window_functions_16 extra_window_functions_16-1.0-8PGDG.rhel10.2.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/extra_window_functions_16-1.0-8PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 extra_window_functions_16 extra_window_functions_16-1.0-6PGDG.rhel10.x86_64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/extra_window_functions_16-1.0-6PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 extra_window_functions_16 extra_window_functions_16-1.0-8PGDG.rhel10.2.aarch64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/extra_window_functions_16-1.0-8PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 extra_window_functions_16 extra_window_functions_16-1.0-6PGDG.rhel10.aarch64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/extra_window_functions_16-1.0-6PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg12+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg12+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg13+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg13+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb pgdg 1.0 15.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-extra-window-functions postgresql-16-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-16-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 extra_window_functions_15 extra_window_functions_15-1.0-2.rhel8.x86_64.rpm pgdg 1.0 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/extra_window_functions_15-1.0-2.rhel8.x86_64.rpm
@ el8.aarch64 15 extra_window_functions_15 extra_window_functions_15-1.0-2.rhel8.aarch64.rpm pgdg 1.0 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/extra_window_functions_15-1.0-2.rhel8.aarch64.rpm
@ el9.x86_64 15 extra_window_functions_15 extra_window_functions_15-1.0-8PGDG.rhel9.8.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/extra_window_functions_15-1.0-8PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 extra_window_functions_15 extra_window_functions_15-1.0-2.rhel9.x86_64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/extra_window_functions_15-1.0-2.rhel9.x86_64.rpm
@ el9.aarch64 15 extra_window_functions_15 extra_window_functions_15-1.0-8PGDG.rhel9.8.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/extra_window_functions_15-1.0-8PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 extra_window_functions_15 extra_window_functions_15-1.0-2.rhel9.aarch64.rpm pgdg 1.0 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/extra_window_functions_15-1.0-2.rhel9.aarch64.rpm
@ el10.x86_64 15 extra_window_functions_15 extra_window_functions_15-1.0-8PGDG.rhel10.2.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/extra_window_functions_15-1.0-8PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 extra_window_functions_15 extra_window_functions_15-1.0-6PGDG.rhel10.x86_64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/extra_window_functions_15-1.0-6PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 extra_window_functions_15 extra_window_functions_15-1.0-8PGDG.rhel10.2.aarch64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/extra_window_functions_15-1.0-8PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 extra_window_functions_15 extra_window_functions_15-1.0-6PGDG.rhel10.aarch64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/extra_window_functions_15-1.0-6PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg12+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg12+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg13+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg13+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb pgdg 1.0 15.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-extra-window-functions postgresql-15-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-15-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 extra_window_functions_14 extra_window_functions_14-1.0-2.rhel8.x86_64.rpm pgdg 1.0 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/extra_window_functions_14-1.0-2.rhel8.x86_64.rpm
@ el8.aarch64 14 extra_window_functions_14 extra_window_functions_14-1.0-2.rhel8.aarch64.rpm pgdg 1.0 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/extra_window_functions_14-1.0-2.rhel8.aarch64.rpm
@ el9.x86_64 14 extra_window_functions_14 extra_window_functions_14-1.0-8PGDG.rhel9.8.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/extra_window_functions_14-1.0-8PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 extra_window_functions_14 extra_window_functions_14-1.0-8PGDG.rhel9.8.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/extra_window_functions_14-1.0-8PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 extra_window_functions_14 extra_window_functions_14-1.0-2.rhel9.aarch64.rpm pgdg 1.0 24.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/extra_window_functions_14-1.0-2.rhel9.aarch64.rpm
@ el10.x86_64 14 extra_window_functions_14 extra_window_functions_14-1.0-8PGDG.rhel10.2.x86_64.rpm pgdg 1.0 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/extra_window_functions_14-1.0-8PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 extra_window_functions_14 extra_window_functions_14-1.0-6PGDG.rhel10.x86_64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/extra_window_functions_14-1.0-6PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 extra_window_functions_14 extra_window_functions_14-1.0-8PGDG.rhel10.2.aarch64.rpm pgdg 1.0 24.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/extra_window_functions_14-1.0-8PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 extra_window_functions_14 extra_window_functions_14-1.0-6PGDG.rhel10.aarch64.rpm pgdg 1.0 25.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/extra_window_functions_14-1.0-6PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg12+1_amd64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg12+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg13+1_amd64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg13+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb pgdg 1.0 15.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb pgdg 1.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-extra-window-functions postgresql-14-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb pgdg 1.0 15.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/e/extra-window-functions/postgresql-14-extra-window-functions_1.0-7.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `extra_window_functions` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install extra_window_functions;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y extra_window_functions -v 18  # PG 18
pig ext install -y extra_window_functions -v 17  # PG 17
pig ext install -y extra_window_functions -v 16  # PG 16
pig ext install -y extra_window_functions -v 15  # PG 15
pig ext install -y extra_window_functions -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y extra_window_functions_18       # PG 18
dnf install -y extra_window_functions_17       # PG 17
dnf install -y extra_window_functions_16       # PG 16
dnf install -y extra_window_functions_15       # PG 15
dnf install -y extra_window_functions_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-extra-window-functions   # PG 18
apt install -y postgresql-17-extra-window-functions   # PG 17
apt install -y postgresql-16-extra-window-functions   # PG 16
apt install -y postgresql-15-extra-window-functions   # PG 15
apt install -y postgresql-14-extra-window-functions   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION extra_window_functions;
```




## Usage

> [extra_window_functions: additional window functions for PostgreSQL](https://github.com/xocolatl/extra_window_functions)

Provides window functions that simulate SQL Standard features not available in PostgreSQL syntax, plus novel functions like `flip_flop`.

```sql
CREATE EXTENSION extra_window_functions;
```

### Functions Simulating SQL Standard

| Function | Description |
|---|---|
| `lag_ignore_nulls(expr [, offset [, default]])` | LAG that skips NULL values |
| `lead_ignore_nulls(expr [, offset [, default]])` | LEAD that skips NULL values |
| `first_value_ignore_nulls(expr)` | FIRST_VALUE skipping NULLs |
| `last_value_ignore_nulls(expr)` | LAST_VALUE skipping NULLs |
| `nth_value_from_last(expr, offset)` | NTH_VALUE counting from end of frame |
| `nth_value_ignore_nulls(expr, offset)` | NTH_VALUE skipping NULLs |
| `nth_value_from_last_ignore_nulls(expr, offset)` | NTH_VALUE from last, skipping NULLs |

### Functions Extending SQL Standard (with default values)

| Function | Description |
|---|---|
| `first_value_ignore_nulls(expr, default)` | FIRST_VALUE with default when out of frame |
| `last_value_ignore_nulls(expr, default)` | LAST_VALUE with default when out of frame |
| `nth_value_from_last(expr, offset, default)` | NTH_VALUE from last with default |
| `nth_value_ignore_nulls(expr, offset, default)` | NTH_VALUE with default, skipping NULLs |
| `nth_value_from_last_ignore_nulls(expr, offset, default)` | Combined from-last, ignore-nulls, with default |

### Non-Standard Functions

| Function | Description |
|---|---|
| `flip_flop(expr [, expr])` | Flip-flop operator: returns false until first expr is true, then true until second expr matches |

### Examples

```sql
-- Equivalent to SQL Standard: NTH_VALUE(x, 3) FROM LAST IGNORE NULLS OVER w
SELECT nth_value_from_last_ignore_nulls(x, 3) OVER w FROM t WINDOW w AS (ORDER BY id);

-- Fill forward: carry last non-null value
SELECT lead_ignore_nulls(val, 1) OVER (ORDER BY ts) FROM measurements;
```
