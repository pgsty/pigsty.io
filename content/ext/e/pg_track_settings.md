---
title: "pg_track_settings"
linkTitle: "pg_track_settings"
description: "Track settings changes"
weight: 6260
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rjuju/pg_track_settings">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rjuju/pg_track_settings</div>
    <div class="ext-card__desc">https://github.com/rjuju/pg_track_settings</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_track_settings`**](/ext/e/pg_track_settings) | `2.1.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6260  | [**`pg_track_settings`**](/ext/e/pg_track_settings) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_show_plans`](/ext/e/pg_show_plans) [`powa`](/ext/e/powa) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_profile`](/ext/e/pg_profile) [`pg_store_plans`](/ext/e/pg_store_plans) [`auto_explain`](/ext/e/auto_explain) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pg_qualstats`](/ext/e/pg_qualstats) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_track_settings` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_track_settings_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-track-settings` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 2 | AVAIL PGDG 2.1.2 3 |
| el8.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 2 | AVAIL PGDG 2.1.2 2 |
| el9.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| el9.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| el10.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| el10.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| d12.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| d12.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| d13.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| d13.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| u22.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| u22.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| u24.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| u24.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| u26.x86_64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
| u26.aarch64 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 | AVAIL PGDG 2.1.2 1 |
@ el8.x86_64 18 pg_track_settings_18 pg_track_settings_18-2.1.2-3PGDG.rhel8.noarch.rpm pgdg 2.1.2 17.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_track_settings_18-2.1.2-3PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_track_settings_18 pg_track_settings_18-2.1.2-3PGDG.rhel8.noarch.rpm pgdg 2.1.2 17.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_track_settings_18-2.1.2-3PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_track_settings_18 pg_track_settings_18-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_track_settings_18-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_track_settings_18 pg_track_settings_18-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_track_settings_18-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 18 pg_track_settings_18 pg_track_settings_18-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_track_settings_18-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_track_settings_18 pg_track_settings_18-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_track_settings_18-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d12.aarch64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d13.x86_64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ d13.aarch64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ u22.x86_64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u22.aarch64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u24.x86_64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u24.aarch64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u26.x86_64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ u26.aarch64 18 postgresql-18-pg-track-settings postgresql-18-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-18-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ el8.x86_64 17 pg_track_settings_17 pg_track_settings_17-2.1.2-2PGDG.rhel8.x86_64.rpm pgdg 2.1.2 17.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_track_settings_17-2.1.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_track_settings_17 pg_track_settings_17-2.1.2-2PGDG.rhel8.aarch64.rpm pgdg 2.1.2 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_track_settings_17-2.1.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_track_settings_17 pg_track_settings_17-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_track_settings_17-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_track_settings_17 pg_track_settings_17-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_track_settings_17-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 17 pg_track_settings_17 pg_track_settings_17-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_track_settings_17-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_track_settings_17 pg_track_settings_17-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_track_settings_17-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d12.aarch64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d13.x86_64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ d13.aarch64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ u22.x86_64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u22.aarch64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u24.x86_64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u24.aarch64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u26.x86_64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ u26.aarch64 17 postgresql-17-pg-track-settings postgresql-17-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-17-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ el8.x86_64 16 pg_track_settings_16 pg_track_settings_16-2.1.2-2PGDG.rhel8.x86_64.rpm pgdg 2.1.2 17.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_track_settings_16-2.1.2-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_track_settings_16 pg_track_settings_16-2.1.2-2PGDG.rhel8.aarch64.rpm pgdg 2.1.2 17.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_track_settings_16-2.1.2-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_track_settings_16 pg_track_settings_16-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_track_settings_16-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_track_settings_16 pg_track_settings_16-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_track_settings_16-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 16 pg_track_settings_16 pg_track_settings_16-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_track_settings_16-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_track_settings_16 pg_track_settings_16-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_track_settings_16-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d12.aarch64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d13.x86_64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ d13.aarch64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ u22.x86_64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u22.aarch64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u24.x86_64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u24.aarch64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u26.x86_64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ u26.aarch64 16 postgresql-16-pg-track-settings postgresql-16-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-16-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ el8.x86_64 15 pg_track_settings_15 pg_track_settings_15-2.1.2-1.rhel8.x86_64.rpm pgdg 2.1.2 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_track_settings_15-2.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_track_settings_15 pg_track_settings_15-2.1.0-1.rhel8.x86_64.rpm pgdg 2.1.0 16.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_track_settings_15-2.1.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_track_settings_15 pg_track_settings_15-2.1.2-1.rhel8.aarch64.rpm pgdg 2.1.2 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_track_settings_15-2.1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_track_settings_15 pg_track_settings_15-2.1.0-1.rhel8.aarch64.rpm pgdg 2.1.0 16.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_track_settings_15-2.1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_track_settings_15 pg_track_settings_15-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_track_settings_15-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_track_settings_15 pg_track_settings_15-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_track_settings_15-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 15 pg_track_settings_15 pg_track_settings_15-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_track_settings_15-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_track_settings_15 pg_track_settings_15-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_track_settings_15-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d12.aarch64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d13.x86_64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ d13.aarch64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ u22.x86_64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u22.aarch64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u24.x86_64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u24.aarch64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u26.x86_64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ u26.aarch64 15 postgresql-15-pg-track-settings postgresql-15-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-15-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ el8.x86_64 14 pg_track_settings_14 pg_track_settings_14-2.1.2-1.rhel8.x86_64.rpm pgdg 2.1.2 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_track_settings_14-2.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_track_settings_14 pg_track_settings_14-2.1.0-1.rhel8.x86_64.rpm pgdg 2.1.0 16.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_track_settings_14-2.1.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_track_settings_14 pg_track_settings_14-2.0.1-3.rhel8.x86_64.rpm pgdg 2.0.1 15.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_track_settings_14-2.0.1-3.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_track_settings_14 pg_track_settings_14-2.1.2-1.rhel8.aarch64.rpm pgdg 2.1.2 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_track_settings_14-2.1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_track_settings_14 pg_track_settings_14-2.1.0-1.rhel8.aarch64.rpm pgdg 2.1.0 16.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_track_settings_14-2.1.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_track_settings_14 pg_track_settings_14-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_track_settings_14-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_track_settings_14 pg_track_settings_14-2.1.2-3PGDG.rhel9.8.noarch.rpm pgdg 2.1.2 15.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_track_settings_14-2.1.2-3PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 14 pg_track_settings_14 pg_track_settings_14-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_track_settings_14-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_track_settings_14 pg_track_settings_14-2.1.2-3PGDG.rhel10.2.noarch.rpm pgdg 2.1.2 16.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_track_settings_14-2.1.2-3PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d12.aarch64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg12+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg12+1_all.deb
@ d13.x86_64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ d13.aarch64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg13+1_all.deb pgdg 2.1.2 9.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg13+1_all.deb
@ u22.x86_64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u22.aarch64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg22.04+1_all.deb
@ u24.x86_64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u24.aarch64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg24.04+1_all.deb
@ u26.x86_64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
@ u26.aarch64 14 postgresql-14-pg-track-settings postgresql-14-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb pgdg 2.1.2 9.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-track-settings/postgresql-14-pg-track-settings_2.1.2-5.pgdg26.04+1_all.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_track_settings` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_track_settings;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_track_settings -v 18  # PG 18
pig ext install -y pg_track_settings -v 17  # PG 17
pig ext install -y pg_track_settings -v 16  # PG 16
pig ext install -y pg_track_settings -v 15  # PG 15
pig ext install -y pg_track_settings -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_track_settings_18       # PG 18
dnf install -y pg_track_settings_17       # PG 17
dnf install -y pg_track_settings_16       # PG 16
dnf install -y pg_track_settings_15       # PG 15
dnf install -y pg_track_settings_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-track-settings   # PG 18
apt install -y postgresql-17-pg-track-settings   # PG 17
apt install -y postgresql-16-pg-track-settings   # PG 16
apt install -y postgresql-15-pg-track-settings   # PG 15
apt install -y postgresql-14-pg-track-settings   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_track_settings;
```



## Usage

> [pg_track_settings: track PostgreSQL configuration changes](https://github.com/rjuju/pg_track_settings)

pg_track_settings records changes to PostgreSQL settings over time, tracking both global settings (`pg_settings`) and per-role/database overrides (`pg_db_role_setting`).

### Taking Snapshots

Call periodically (via cron or PoWA) to capture current settings:

```sql
SELECT pg_track_settings_snapshot();
```

### Viewing Settings at a Point in Time

```sql
-- All settings at a specific time
SELECT * FROM pg_track_settings('2024-01-15 10:00:00');

-- All overloaded (per-role/database) settings at a specific time
SELECT * FROM pg_track_db_role_settings('2024-01-15 10:00:00');
```

### Comparing Settings Between Two Times

```sql
-- Find what changed in the last hour
SELECT * FROM pg_track_settings_diff(now() - interval '1 hour', now());

-- Compare overloaded settings
SELECT * FROM pg_track_db_role_settings_diff(now() - interval '1 hour', now());
```

### Viewing Change History

```sql
-- History of a specific setting
SELECT * FROM pg_track_settings_log('work_mem');

-- History of an overloaded setting
SELECT * FROM pg_track_db_role_settings_log('work_mem');

-- PostgreSQL restart history
SELECT * FROM pg_reboot;
```

### Resetting History

```sql
SELECT pg_track_settings_reset();
```

### Functions Summary

| Function | Description |
|----------|-------------|
| `pg_track_settings_snapshot()` | Capture current settings |
| `pg_track_settings(timestamptz)` | All settings at a given time |
| `pg_track_settings_diff(timestamptz, timestamptz)` | Settings that changed between two times |
| `pg_track_settings_log(text)` | History of a specific setting |
| `pg_track_db_role_settings(timestamptz)` | Overloaded settings at a given time |
| `pg_track_db_role_settings_diff(timestamptz, timestamptz)` | Overloaded settings changes |
| `pg_track_db_role_settings_log(text)` | History of a specific overloaded setting |
| `pg_track_settings_reset()` | Clear all history |
