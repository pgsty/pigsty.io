---
title: "topn"
linkTitle: "topn"
description: "type for top-n JSONB"
weight: 4600
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/citusdata/postgresql-topn">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">citusdata/postgresql-topn</div>
    <div class="ext-card__desc">https://github.com/citusdata/postgresql-topn</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql-topn-2.7.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql-topn-2.7.0.tar.gz</div>
    <div class="ext-card__desc">postgresql-topn-2.7.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`topn`**](/ext/e/topn) | `2.7.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4600  | [**`topn`**](/ext/e/topn) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`count_distinct`](/ext/e/count_distinct) [`quantile`](/ext/e/quantile) [`lower_quantile`](/ext/e/lower_quantile) [`first_last_agg`](/ext/e/first_last_agg) [`omnisketch`](/ext/e/omnisketch) [`ddsketch`](/ext/e/ddsketch) [`aggs_for_arrays`](/ext/e/aggs_for_arrays) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.7.0` | {{< pgvers "18,17,16,15,14" >}} | `topn` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.7.0` | {{< pgvers "18,17,16,15,14" >}} | `topn_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-topn` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 |
| el8.aarch64 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 |
| el9.x86_64 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 1 |
| el9.aarch64 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 | AVAIL PGDG 2.7.0 2 |
| el10.x86_64 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 |
| el10.aarch64 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 | AVAIL PGDG 2.7.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 | AVAIL PIGSTY 2.7.0 1 |
@ el8.x86_64 18 topn_18 topn_18-2.7.0-2PGDG.rhel8.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/topn_18-2.7.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 topn_18 topn_18-2.7.0-2PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/topn_18-2.7.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 topn_18 topn_18-2.7.0-2PGDG.rhel9.x86_64.rpm pgdg 2.7.0 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/topn_18-2.7.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 topn_18 topn_18-2.7.0-2PGDG.rhel9.aarch64.rpm pgdg 2.7.0 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/topn_18-2.7.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 topn_18 topn_18-2.7.0-2PGDG.rhel10.x86_64.rpm pgdg 2.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/topn_18-2.7.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 topn_18 topn_18-2.7.0-2PGDG.rhel10.aarch64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/topn_18-2.7.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~bookworm_amd64.deb pigsty 2.7.0 28.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~bookworm_arm64.deb pigsty 2.7.0 28.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~trixie_amd64.deb pigsty 2.7.0 28.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~trixie_arm64.deb pigsty 2.7.0 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~jammy_amd64.deb pigsty 2.7.0 29.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~jammy_arm64.deb pigsty 2.7.0 29.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~noble_amd64.deb pigsty 2.7.0 29.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-topn postgresql-18-topn_2.7.0-1PIGSTY~noble_arm64.deb pigsty 2.7.0 29.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-18-topn_2.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 topn_17 topn_17-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/topn_17-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 topn_17 topn_17-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/topn_17-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 topn_17 topn_17-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/topn_17-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 topn_17 topn_17-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 23.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/topn_17-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 topn_17 topn_17-2.7.0-2PGDG.rhel10.x86_64.rpm pgdg 2.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/topn_17-2.7.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 topn_17 topn_17-2.7.0-2PGDG.rhel10.aarch64.rpm pgdg 2.7.0 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/topn_17-2.7.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~bookworm_amd64.deb pigsty 2.7.0 28.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~bookworm_arm64.deb pigsty 2.7.0 28.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~trixie_amd64.deb pigsty 2.7.0 28.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~trixie_arm64.deb pigsty 2.7.0 28.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~jammy_amd64.deb pigsty 2.7.0 33.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~jammy_arm64.deb pigsty 2.7.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~noble_amd64.deb pigsty 2.7.0 29.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-topn postgresql-17-topn_2.7.0-1PIGSTY~noble_arm64.deb pigsty 2.7.0 29.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-17-topn_2.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 topn_16 topn_16-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/topn_16-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 topn_16 topn_16-2.6.0-1PGDG.rhel8.x86_64.rpm pgdg 2.6.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/topn_16-2.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 topn_16 topn_16-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/topn_16-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 topn_16 topn_16-2.6.0-1PGDG.rhel8.aarch64.rpm pgdg 2.6.0 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/topn_16-2.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 topn_16 topn_16-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/topn_16-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 topn_16 topn_16-2.6.0-1PGDG.rhel9.x86_64.rpm pgdg 2.6.0 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/topn_16-2.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 topn_16 topn_16-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/topn_16-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 topn_16 topn_16-2.6.0-1PGDG.rhel9.aarch64.rpm pgdg 2.6.0 22.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/topn_16-2.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 topn_16 topn_16-2.7.0-2PGDG.rhel10.x86_64.rpm pgdg 2.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/topn_16-2.7.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 topn_16 topn_16-2.7.0-2PGDG.rhel10.aarch64.rpm pgdg 2.7.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/topn_16-2.7.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~bookworm_amd64.deb pigsty 2.7.0 28.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~bookworm_arm64.deb pigsty 2.7.0 28.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~trixie_amd64.deb pigsty 2.7.0 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~trixie_arm64.deb pigsty 2.7.0 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~jammy_amd64.deb pigsty 2.7.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~jammy_arm64.deb pigsty 2.7.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~noble_amd64.deb pigsty 2.7.0 29.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-topn postgresql-16-topn_2.7.0-1PIGSTY~noble_arm64.deb pigsty 2.7.0 28.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-16-topn_2.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 topn_15 topn_15-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/topn_15-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 topn_15 topn_15-2.4.0-2.rhel8.x86_64.rpm pgdg 2.4.0 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/topn_15-2.4.0-2.rhel8.x86_64.rpm
@ el8.aarch64 15 topn_15 topn_15-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/topn_15-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 topn_15 topn_15-2.4.0-2.rhel8.aarch64.rpm pgdg 2.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/topn_15-2.4.0-2.rhel8.aarch64.rpm
@ el9.x86_64 15 topn_15 topn_15-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/topn_15-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 topn_15 topn_15-2.4.0-2.rhel9.x86_64.rpm pgdg 2.4.0 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/topn_15-2.4.0-2.rhel9.x86_64.rpm
@ el9.aarch64 15 topn_15 topn_15-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 23.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/topn_15-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 topn_15 topn_15-2.4.0-2.rhel9.aarch64.rpm pgdg 2.4.0 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/topn_15-2.4.0-2.rhel9.aarch64.rpm
@ el10.x86_64 15 topn_15 topn_15-2.7.0-2PGDG.rhel10.x86_64.rpm pgdg 2.7.0 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/topn_15-2.7.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 topn_15 topn_15-2.7.0-2PGDG.rhel10.aarch64.rpm pgdg 2.7.0 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/topn_15-2.7.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~bookworm_amd64.deb pigsty 2.7.0 28.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~bookworm_arm64.deb pigsty 2.7.0 28.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~trixie_amd64.deb pigsty 2.7.0 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~trixie_arm64.deb pigsty 2.7.0 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~jammy_amd64.deb pigsty 2.7.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~jammy_arm64.deb pigsty 2.7.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~noble_amd64.deb pigsty 2.7.0 29.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-topn postgresql-15-topn_2.7.0-1PIGSTY~noble_arm64.deb pigsty 2.7.0 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-15-topn_2.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 topn_14 topn_14-2.7.0-1PGDG.rhel8.x86_64.rpm pgdg 2.7.0 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/topn_14-2.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 topn_14 topn_14-2.4.0-1.rhel8.x86_64.rpm pgdg 2.4.0 43.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/topn_14-2.4.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 topn_14 topn_14-2.7.0-1PGDG.rhel8.aarch64.rpm pgdg 2.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/topn_14-2.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 topn_14 topn_14-2.4.0-2.rhel8.aarch64.rpm pgdg 2.4.0 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/topn_14-2.4.0-2.rhel8.aarch64.rpm
@ el9.x86_64 14 topn_14 topn_14-2.7.0-1PGDG.rhel9.x86_64.rpm pgdg 2.7.0 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/topn_14-2.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 topn_14 topn_14-2.7.0-1PGDG.rhel9.aarch64.rpm pgdg 2.7.0 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/topn_14-2.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 topn_14 topn_14-2.4.0-2.rhel9.aarch64.rpm pgdg 2.4.0 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/topn_14-2.4.0-2.rhel9.aarch64.rpm
@ el10.x86_64 14 topn_14 topn_14-2.7.0-2PGDG.rhel10.x86_64.rpm pgdg 2.7.0 24.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/topn_14-2.7.0-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 topn_14 topn_14-2.7.0-2PGDG.rhel10.aarch64.rpm pgdg 2.7.0 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/topn_14-2.7.0-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~bookworm_amd64.deb pigsty 2.7.0 28.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~bookworm_arm64.deb pigsty 2.7.0 28.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~trixie_amd64.deb pigsty 2.7.0 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~trixie_arm64.deb pigsty 2.7.0 28.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~jammy_amd64.deb pigsty 2.7.0 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~jammy_arm64.deb pigsty 2.7.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~noble_amd64.deb pigsty 2.7.0 29.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-topn postgresql-14-topn_2.7.0-1PIGSTY~noble_arm64.deb pigsty 2.7.0 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/t/topn/postgresql-14-topn_2.7.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `topn` using `pig build`:

```bash
pig build pkg topn         # build DEB packages
```


## Install

You can install `topn` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install topn;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y topn -v 18  # PG 18
pig ext install -y topn -v 17  # PG 17
pig ext install -y topn -v 16  # PG 16
pig ext install -y topn -v 15  # PG 15
pig ext install -y topn -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y topn_18       # PG 18
dnf install -y topn_17       # PG 17
dnf install -y topn_16       # PG 16
dnf install -y topn_15       # PG 15
dnf install -y topn_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-topn   # PG 18
apt install -y postgresql-17-topn   # PG 17
apt install -y postgresql-16-topn   # PG 16
apt install -y postgresql-15-topn   # PG 15
apt install -y postgresql-14-topn   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION topn;
```



## Usage

> [topn: top-N values approximation for PostgreSQL](https://github.com/citusdata/postgresql-topn)

Provides approximate top-N value tracking using an approximation algorithm that keeps a predefined number of frequent items and counters. Supports materialization, incremental updates, and merging across time intervals.

```sql
CREATE EXTENSION topn;
```

### Data Type

Uses `JSONB` to store the frequent items and their frequencies.

### Aggregates

| Function | Description |
|---|---|
| `topn_add_agg(text)` | Aggregate that creates a JSONB counter from a text column |
| `topn_union_agg(jsonb)` | Aggregate that merges multiple JSONB counter lists |

### Functions

| Function | Description |
|---|---|
| `topn(jsonb, n)` | Return the top-N elements and frequencies as rows |
| `topn_add(jsonb, text)` | Add a text value to a JSONB counter |
| `topn_union(jsonb, jsonb)` | Merge two JSONB counter lists |

### Configuration

- `topn.number_of_counters` -- number of counters to track (default: 1000)

### Examples

```sql
-- Materialize top products by date
CREATE TABLE popular_products (
  review_date date UNIQUE,
  agg_data jsonb
);

INSERT INTO popular_products
SELECT review_date, topn_add_agg(product_id)
FROM customer_reviews GROUP BY review_date;

-- Get the top-1 product for each day
SELECT review_date, (topn(agg_data, 1)).*
FROM popular_products ORDER BY review_date;

-- Top 10 across a time range (merging daily summaries)
SELECT (topn(topn_union_agg(agg_data), 10)).*
FROM popular_products
WHERE review_date >= '2000-01-01' AND review_date < '2000-02-01'
ORDER BY 2 DESC;
```
