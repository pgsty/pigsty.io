---
title: "first_last_agg"
linkTitle: "first_last_agg"
description: "first() and last() aggregate functions"
weight: 4710
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/wulczer/first_last_agg">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">wulczer/first_last_agg</div>
    <div class="ext-card__desc">https://github.com/wulczer/first_last_agg</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/first_last_agg-0.1.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">first_last_agg-0.1.4.tar.gz</div>
    <div class="ext-card__desc">first_last_agg-0.1.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`first_last_agg`**](/ext/e/first_last_agg) | `0.1.4` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4710  | [**`first_last_agg`**](/ext/e/first_last_agg) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`count_distinct`](/ext/e/count_distinct) [`arraymath`](/ext/e/arraymath) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.1.4` | {{< pgvers "18,17,16,15,14" >}} | `first_last_agg` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.4` | {{< pgvers "18,17,16,15,14" >}} | `first_last_agg_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.1.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-first-last-agg` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 | AVAIL PIGSTY 0.1.4 1 |
| d12.x86_64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| d12.aarch64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| d13.x86_64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| d13.aarch64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| u22.x86_64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| u22.aarch64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| u24.x86_64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| u24.aarch64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| u26.x86_64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
| u26.aarch64 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 | AVAIL PGDG 0.1.4 1 |
@ el8.x86_64 18 first_last_agg_18 first_last_agg_18-0.1.4-1PIGSTY.el8.x86_64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/first_last_agg_18-0.1.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 first_last_agg_18 first_last_agg_18-0.1.4-1PIGSTY.el8.aarch64.rpm pigsty 0.1.4 12.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/first_last_agg_18-0.1.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 first_last_agg_18 first_last_agg_18-0.1.4-1PIGSTY.el9.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/first_last_agg_18-0.1.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 first_last_agg_18 first_last_agg_18-0.1.4-1PIGSTY.el9.aarch64.rpm pigsty 0.1.4 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/first_last_agg_18-0.1.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 first_last_agg_18 first_last_agg_18-0.1.4-1PIGSTY.el10.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/first_last_agg_18-0.1.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 first_last_agg_18 first_last_agg_18-0.1.4-1PIGSTY.el10.aarch64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/first_last_agg_18-0.1.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb pgdg 0.1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-first-last-agg postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb pgdg 0.1.4 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-18-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 first_last_agg_17 first_last_agg_17-0.1.4-1PIGSTY.el8.x86_64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/first_last_agg_17-0.1.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 first_last_agg_17 first_last_agg_17-0.1.4-1PIGSTY.el8.aarch64.rpm pigsty 0.1.4 12.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/first_last_agg_17-0.1.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 first_last_agg_17 first_last_agg_17-0.1.4-1PIGSTY.el9.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/first_last_agg_17-0.1.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 first_last_agg_17 first_last_agg_17-0.1.4-1PIGSTY.el9.aarch64.rpm pigsty 0.1.4 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/first_last_agg_17-0.1.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 first_last_agg_17 first_last_agg_17-0.1.4-1PIGSTY.el10.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/first_last_agg_17-0.1.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 first_last_agg_17 first_last_agg_17-0.1.4-1PIGSTY.el10.aarch64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/first_last_agg_17-0.1.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb pgdg 0.1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-first-last-agg postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb pgdg 0.1.4 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-17-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 first_last_agg_16 first_last_agg_16-0.1.4-1PIGSTY.el8.x86_64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/first_last_agg_16-0.1.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 first_last_agg_16 first_last_agg_16-0.1.4-1PIGSTY.el8.aarch64.rpm pigsty 0.1.4 12.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/first_last_agg_16-0.1.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 first_last_agg_16 first_last_agg_16-0.1.4-1PIGSTY.el9.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/first_last_agg_16-0.1.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 first_last_agg_16 first_last_agg_16-0.1.4-1PIGSTY.el9.aarch64.rpm pigsty 0.1.4 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/first_last_agg_16-0.1.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 first_last_agg_16 first_last_agg_16-0.1.4-1PIGSTY.el10.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/first_last_agg_16-0.1.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 first_last_agg_16 first_last_agg_16-0.1.4-1PIGSTY.el10.aarch64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/first_last_agg_16-0.1.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb pgdg 0.1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-first-last-agg postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb pgdg 0.1.4 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-16-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 first_last_agg_15 first_last_agg_15-0.1.4-1PIGSTY.el8.x86_64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/first_last_agg_15-0.1.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 first_last_agg_15 first_last_agg_15-0.1.4-1PIGSTY.el8.aarch64.rpm pigsty 0.1.4 12.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/first_last_agg_15-0.1.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 first_last_agg_15 first_last_agg_15-0.1.4-1PIGSTY.el9.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/first_last_agg_15-0.1.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 first_last_agg_15 first_last_agg_15-0.1.4-1PIGSTY.el9.aarch64.rpm pigsty 0.1.4 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/first_last_agg_15-0.1.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 first_last_agg_15 first_last_agg_15-0.1.4-1PIGSTY.el10.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/first_last_agg_15-0.1.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 first_last_agg_15 first_last_agg_15-0.1.4-1PIGSTY.el10.aarch64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/first_last_agg_15-0.1.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb pgdg 0.1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-first-last-agg postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb pgdg 0.1.4 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-15-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 first_last_agg_14 first_last_agg_14-0.1.4-1PIGSTY.el8.x86_64.rpm pigsty 0.1.4 11.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/first_last_agg_14-0.1.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 first_last_agg_14 first_last_agg_14-0.1.4-1PIGSTY.el8.aarch64.rpm pigsty 0.1.4 12.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/first_last_agg_14-0.1.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 first_last_agg_14 first_last_agg_14-0.1.4-1PIGSTY.el9.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/first_last_agg_14-0.1.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 first_last_agg_14 first_last_agg_14-0.1.4-1PIGSTY.el9.aarch64.rpm pigsty 0.1.4 11.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/first_last_agg_14-0.1.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 first_last_agg_14 first_last_agg_14-0.1.4-1PIGSTY.el10.x86_64.rpm pigsty 0.1.4 11.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/first_last_agg_14-0.1.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 first_last_agg_14 first_last_agg_14-0.1.4-1PIGSTY.el10.aarch64.rpm pigsty 0.1.4 11.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/first_last_agg_14-0.1.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb pgdg 0.1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb pgdg 0.1.4 8.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb pgdg 0.1.4 8.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb pgdg 0.1.4 8.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-first-last-agg postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb pgdg 0.1.4 8.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/f/first-last-agg/postgresql-14-first-last-agg_0.1.4-4-gd63ea3b-9.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `first_last_agg` using `pig build`:

```bash
pig build pkg first_last_agg         # build RPM packages
```


## Install

You can install `first_last_agg` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install first_last_agg;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y first_last_agg -v 18  # PG 18
pig ext install -y first_last_agg -v 17  # PG 17
pig ext install -y first_last_agg -v 16  # PG 16
pig ext install -y first_last_agg -v 15  # PG 15
pig ext install -y first_last_agg -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y first_last_agg_18       # PG 18
dnf install -y first_last_agg_17       # PG 17
dnf install -y first_last_agg_16       # PG 16
dnf install -y first_last_agg_15       # PG 15
dnf install -y first_last_agg_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-first-last-agg   # PG 18
apt install -y postgresql-17-first-last-agg   # PG 17
apt install -y postgresql-16-first-last-agg   # PG 16
apt install -y postgresql-15-first-last-agg   # PG 15
apt install -y postgresql-14-first-last-agg   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION first_last_agg;
```



## Usage

> [first_last_agg: first and last aggregate functions for PostgreSQL](https://github.com/wulczer/first_last_agg)

Provides `first` and `last` aggregate functions that return the first or last value in a group, operating on any element type.

```sql
CREATE EXTENSION first_last_agg;
```

### Functions

| Function | Description |
|---|---|
| `first(anyelement)` | Return the first value in the group |
| `last(anyelement)` | Return the last value in the group |

### Examples

```sql
-- Get the first and last values (use ORDER BY for deterministic results)
SELECT id, first(val ORDER BY ts), last(val ORDER BY ts)
FROM events
GROUP BY id;

-- Without ORDER BY, the ordering within groups is undefined
SELECT department, first(salary ORDER BY hire_date)
FROM employees
GROUP BY department;
```
