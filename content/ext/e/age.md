---
title: "age"
linkTitle: "age"
description: "AGE graph database extension"
weight: 2600
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/apache/age">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">apache/age</div>
    <div class="ext-card__desc">https://github.com/apache/age</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/age-1.7.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">age-1.7.0.tar.gz</div>
    <div class="ext-card__desc">age-1.7.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`age`**](/ext/e/age) | `1.7.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2600  | [**`age`**](/ext/e/age) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `ag_catalog` |
{.ext-table}

| **Related** | [`pg_graphql`](/ext/e/pg_graphql) [`rum`](/ext/e/rum) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`ltree`](/ext/e/ltree) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`citus`](/ext/e/citus) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pg18/17 = 1.7.0


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `age` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `apache-age_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-age` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 | AVAIL PIGSTY 1.6.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.7.0 2 | AVAIL PIGSTY 1.7.0 2 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
@ el8.x86_64 18 apache-age_18 apache-age_18-1.7.0-2PIGSTY.el8.x86_64.rpm pigsty 1.7.0 247.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/apache-age_18-1.7.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 apache-age_18 apache-age_18-1.7.0-2PIGSTY.el8.aarch64.rpm pigsty 1.7.0 229.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/apache-age_18-1.7.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 apache-age_18 apache-age_18-1.7.0-2PIGSTY.el9.x86_64.rpm pigsty 1.7.0 229.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/apache-age_18-1.7.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 apache-age_18 apache-age_18-1.7.0-2PIGSTY.el9.aarch64.rpm pigsty 1.7.0 220.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/apache-age_18-1.7.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 apache-age_18 apache-age_18-1.7.0-2PIGSTY.el10.x86_64.rpm pigsty 1.7.0 231.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/apache-age_18-1.7.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 apache-age_18 apache-age_18-1.7.0-2PIGSTY.el10.aarch64.rpm pigsty 1.7.0 221.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/apache-age_18-1.7.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 683.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.7.0 680.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 662.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.7.0 661.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 683.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.7.0 682.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 664.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.7.0 662.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 763.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 702.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 753.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 682.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 727.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 681.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 717.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-18-age_1.7.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-age postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 660.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-18-age/postgresql-18-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 17 apache-age_17 apache-age_17-1.7.0-2PIGSTY.el8.x86_64.rpm pigsty 1.7.0 247.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/apache-age_17-1.7.0-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 apache-age_17 apache-age_17-1.7.0-2PIGSTY.el8.aarch64.rpm pigsty 1.7.0 229.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/apache-age_17-1.7.0-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 apache-age_17 apache-age_17-1.7.0-2PIGSTY.el9.x86_64.rpm pigsty 1.7.0 229.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/apache-age_17-1.7.0-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 apache-age_17 apache-age_17-1.7.0-2PIGSTY.el9.aarch64.rpm pigsty 1.7.0 220.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/apache-age_17-1.7.0-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 apache-age_17 apache-age_17-1.7.0-2PIGSTY.el10.x86_64.rpm pigsty 1.7.0 231.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/apache-age_17-1.7.0-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 apache-age_17 apache-age_17-1.7.0-2PIGSTY.el10.aarch64.rpm pigsty 1.7.0 222.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/apache-age_17-1.7.0-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 683.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.7.0 680.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 661.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.7.0 660.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 683.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.7.0 681.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 664.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.7.0 661.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 863.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.7.0 800.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 854.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.7.0 778.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 733.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.7.0 680.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 717.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/age/postgresql-17-age_1.7.0-1PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-age postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.7.0 660.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-17-age/postgresql-17-age_1.7.0~rc0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 16 apache-age_16 apache-age_16-1.6.0-1PIGSTY.el8.x86_64.rpm pigsty 1.6.0 246.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/apache-age_16-1.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 apache-age_16 apache-age_16-1.6.0-1PIGSTY.el8.aarch64.rpm pigsty 1.6.0 228.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/apache-age_16-1.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 apache-age_16 apache-age_16-1.6.0-1PIGSTY.el9.x86_64.rpm pigsty 1.6.0 226.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/apache-age_16-1.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 apache-age_16 apache-age_16-1.6.0-1PIGSTY.el9.aarch64.rpm pigsty 1.6.0 219.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/apache-age_16-1.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 apache-age_16 apache-age_16-1.6.0-1PIGSTY.el10.x86_64.rpm pigsty 1.6.0 230.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/apache-age_16-1.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 apache-age_16 apache-age_16-1.6.0-1PIGSTY.el10.aarch64.rpm pigsty 1.6.0 219.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/apache-age_16-1.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg12+1_amd64.deb pgdg 1.6.0 680.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg12+1_arm64.deb pgdg 1.6.0 657.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg13+1_amd64.deb pgdg 1.6.0 678.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg13+1_arm64.deb pgdg 1.6.0 658.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 789.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 769.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 677.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-age postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 656.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-16-age/postgresql-16-age_1.6.0~rc0-2.pgdg24.04+1_arm64.deb
@ el8.x86_64 15 apache-age_15 apache-age_15-1.6.0-1PIGSTY.el8.x86_64.rpm pigsty 1.6.0 250.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/apache-age_15-1.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 apache-age_15 apache-age_15-1.6.0-1PIGSTY.el8.aarch64.rpm pigsty 1.6.0 233.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/apache-age_15-1.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 apache-age_15 apache-age_15-1.6.0-1PIGSTY.el9.x86_64.rpm pigsty 1.6.0 233.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/apache-age_15-1.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 apache-age_15 apache-age_15-1.6.0-1PIGSTY.el9.aarch64.rpm pigsty 1.6.0 224.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/apache-age_15-1.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 apache-age_15 apache-age_15-1.6.0-1PIGSTY.el10.x86_64.rpm pigsty 1.6.0 236.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/apache-age_15-1.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 apache-age_15 apache-age_15-1.6.0-1PIGSTY.el10.aarch64.rpm pigsty 1.6.0 227.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/apache-age_15-1.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.6.0 680.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.6.0 660.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.6.0 681.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.6.0 663.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.6.0 792.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.6.0 771.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.6.0 679.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-age postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.6.0 661.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-15-age/postgresql-15-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb
@ el8.x86_64 14 apache-age_14 apache-age_14-1.6.0-1PIGSTY.el8.x86_64.rpm pigsty 1.6.0 250.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/apache-age_14-1.6.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 apache-age_14 apache-age_14-1.6.0-1PIGSTY.el8.aarch64.rpm pigsty 1.6.0 232.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/apache-age_14-1.6.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 apache-age_14 apache-age_14-1.6.0-1PIGSTY.el9.x86_64.rpm pigsty 1.6.0 233.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/apache-age_14-1.6.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 apache-age_14 apache-age_14-1.6.0-1PIGSTY.el9.aarch64.rpm pigsty 1.6.0 222.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/apache-age_14-1.6.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 apache-age_14 apache-age_14-1.6.0-1PIGSTY.el10.x86_64.rpm pigsty 1.6.0 235.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/apache-age_14-1.6.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 apache-age_14 apache-age_14-1.6.0-1PIGSTY.el10.aarch64.rpm pigsty 1.6.0 227.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/apache-age_14-1.6.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg12+1_amd64.deb pgdg 1.6.0 680.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg12+1_arm64.deb pgdg 1.6.0 660.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg13+1_amd64.deb pgdg 1.6.0 681.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg13+1_arm64.deb pgdg 1.6.0 661.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb pgdg 1.6.0 793.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb pgdg 1.6.0 771.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb pgdg 1.6.0 679.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-age postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb pgdg 1.6.0 660.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-14-age/postgresql-14-age_1.6.0~rc0-1.pgdg24.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `age` using `pig build`:

```bash
pig build pkg age         # build RPM / DEB packages
```


## Install

You can install `age` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install age;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y age -v 18  # PG 18
pig ext install -y age -v 17  # PG 17
pig ext install -y age -v 16  # PG 16
pig ext install -y age -v 15  # PG 15
pig ext install -y age -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y apache-age_18       # PG 18
dnf install -y apache-age_17       # PG 17
dnf install -y apache-age_16       # PG 16
dnf install -y apache-age_15       # PG 15
dnf install -y apache-age_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-age   # PG 18
apt install -y postgresql-17-age   # PG 17
apt install -y postgresql-16-age   # PG 16
apt install -y postgresql-15-age   # PG 15
apt install -y postgresql-14-age   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'age';
```


**Create Extension**:

```sql
CREATE EXTENSION age;
```




## Usage

> [age: AGE graph database extension](https://github.com/apache/age)

Apache AGE brings graph database capabilities to PostgreSQL using the openCypher query language. It enables hybrid querying that combines SQL and Cypher, property indexes on vertices and edges, and the ability to query multiple graphs.

Each session requires loading the extension:

```sql
CREATE EXTENSION age;
LOAD 'age';
SET search_path = ag_catalog, "$user", public;
```

### Graph Operations

Create a graph:

```sql
SELECT create_graph('my_graph');
```

Create vertices:

```sql
SELECT * FROM cypher('my_graph', $$
    CREATE (:Person {name: 'Alice', age: 30})
$$) AS (v agtype);

SELECT * FROM cypher('my_graph', $$
    CREATE (:Person {name: 'Bob', age: 25})
$$) AS (v agtype);
```

Create edges:

```sql
SELECT * FROM cypher('my_graph', $$
    MATCH (a:Person), (b:Person)
    WHERE a.name = 'Alice' AND b.name = 'Bob'
    CREATE (a)-[e:KNOWS {since: 2020}]->(b)
    RETURN e
$$) AS (e agtype);
```

Query the graph:

```sql
SELECT * FROM cypher('my_graph', $$
    MATCH (v)-[r]-(v2)
    RETURN v, r, v2
$$) AS (v agtype, r agtype, v2 agtype);
```

### Cypher Query Features

AGE supports standard Cypher clauses including `MATCH`, `CREATE`, `SET`, `DELETE`, `RETURN`, `WITH`, `WHERE`, `ORDER BY`, `SKIP`, and `LIMIT`. Data is stored using the `agtype` data type, which extends JSON with graph-specific types for vertices, edges, and paths.

Pattern matching with variable-length paths:

```sql
SELECT * FROM cypher('my_graph', $$
    MATCH (a:Person)-[:KNOWS*1..3]->(b:Person)
    RETURN a.name, b.name
$$) AS (source agtype, target agtype);
```

Hybrid SQL/Cypher queries allow joining graph results with relational tables:

```sql
SELECT t.*, c.* FROM my_table t
JOIN cypher('my_graph', $$
    MATCH (n:Person) RETURN n.name, id(n)
$$) AS c(name agtype, id agtype)
ON t.graph_id = c.id;
```
